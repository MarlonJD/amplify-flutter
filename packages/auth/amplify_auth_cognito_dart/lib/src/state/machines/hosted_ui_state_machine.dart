// Copyright 2022 Amazon.com, Inc. or its affiliates. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'dart:async';
import 'dart:convert';

import 'package:amplify_auth_cognito_dart/amplify_auth_cognito_dart.dart';
import 'package:amplify_auth_cognito_dart/src/credentials/cognito_keys.dart';
import 'package:amplify_auth_cognito_dart/src/model/auth_user_ext.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_secure_storage_dart/amplify_secure_storage_dart.dart';

/// {@template amplify_auth_cognito.hosted_ui_state_machine}
/// Manages the Hosted UI lifecycle and OIDC flow.
/// {@endtemplate}
class HostedUiStateMachine extends StateMachine<HostedUiEvent, HostedUiState,
    CognitoAuthStateMachine> {
  /// {@macro amplify_auth_cognito.hosted_ui_state_machine}
  HostedUiStateMachine(super.manager);

  /// The [HostedUiStateMachine] type.
  static const type = StateMachineToken<HostedUiEvent, HostedUiState,
      CognitoAuthStateMachine, HostedUiStateMachine>();

  @override
  HostedUiState get initialState => const HostedUiState.notConfigured();

  @override
  String get runtimeTypeName => 'HostedUiStateMachine';

  CognitoOAuthConfig get _config => expect();
  HostedUiKeys get _keys => HostedUiKeys(_config);
  SecureStorageInterface get _secureStorage => getOrCreate();

  /// The platform-specific behavior.
  late final HostedUiPlatform _platform = getOrCreate(HostedUiPlatform.token);

  @override
  Future<void> resolve(HostedUiEvent event) async {
    switch (event.type) {
      case HostedUiEventType.configure:
        event as HostedUiConfigure;
        emit(const HostedUiState.configuring());
        await onConfigure(event);
        break;
      case HostedUiEventType.foundState:
        event as HostedUiFoundState;
        await onFoundState(event);
        break;
      case HostedUiEventType.exchange:
        event as HostedUiExchange;
        emit(const HostedUiState.signingIn());
        await onExchange(event);
        break;
      case HostedUiEventType.signIn:
        event as HostedUiSignIn;
        emit(const HostedUiState.signingIn());
        await onSignIn(event);
        break;
      case HostedUiEventType.cancelSignIn:
        await onCancelSignIn(event.cast());
        break;
      case HostedUiEventType.signOut:
        event as HostedUiSignOut;
        emit(const HostedUiState.signingOut());
        await onSignOut(event);
        break;
      case HostedUiEventType.succeeded:
        event as HostedUiSucceeded;
        await onSucceeded(event);
        break;
      case HostedUiEventType.failed:
        event as HostedUiFailed;
        emit(HostedUiState.failure(event.exception));
        await onFailed(event);
        break;
    }
  }

  @override
  HostedUiState? resolveError(Object error, [StackTrace? st]) {
    if (error is Exception) {
      return HostedUiFailure(error);
    }
    return null;
  }

  /// State machine callback for the [HostedUiConfigure] event.
  Future<void> onConfigure(HostedUiConfigure event) async {
    final result = await dispatcher.loadCredentials();
    final userPoolTokens = result.userPoolTokens;
    if (userPoolTokens != null &&
        userPoolTokens.signInMethod == CognitoSignInMethod.hostedUi) {
      emit(HostedUiState.signedIn(result.authUser));
      return;
    }

    final state = await _secureStorage.read(key: _keys[HostedUiKey.state]);
    final codeVerifier = await _secureStorage.read(
      key: _keys[HostedUiKey.codeVerifier],
    );
    if (state != null && codeVerifier != null) {
      dispatch(
        HostedUiEvent.foundState(
          state: state,
          codeVerifier: codeVerifier,
        ),
      );
      return;
    }

    emit(const HostedUiState.signedOut());
  }

  /// State machine callback for the [HostedUiFoundState] event.
  Future<void> onFoundState(HostedUiFoundState event) async {
    try {
      await _platform.onFoundState(
        state: event.state,
        codeVerifier: event.codeVerifier,
      );
    } on SignedOutException {
      emit(const HostedUiState.signedOut());
    }
  }

  Future<void> _handleSignIn(HostedUiSignIn event) async {
    try {
      _secureStorage.write(
        key: _keys[HostedUiKey.options],
        value: jsonEncode(event.options),
      );
      final provider = event.provider;
      if (provider != null) {
        _secureStorage.write(
          key: _keys[HostedUiKey.provider],
          value: jsonEncode(provider),
        );
      } else {
        _secureStorage.delete(key: _keys[HostedUiKey.provider]);
      }
      await _platform.signIn(
        options: event.options,
        provider: provider,
      );
    } on Exception catch (e) {
      dispatch(HostedUiEvent.failed(e));
    }
  }

  /// State machine callback for the [HostedUiSignIn] event.
  Future<void> onSignIn(HostedUiSignIn event) async {
    unawaited(_handleSignIn(event));
  }

  /// State machine callback for the [HostedUiCancelSignIn] event.
  Future<void> onCancelSignIn(HostedUiCancelSignIn event) async {
    await _platform.cancelSignIn();
    await dispatch(
      CredentialStoreEvent.clearCredentials(_keys),
    );
    dispatch(
      const HostedUiEvent.failed(
        UserCancelledException('The user cancelled the sign-in flow'),
      ),
    );
  }

  /// State machine callback for the [HostedUiExchange] event.
  Future<void> onExchange(HostedUiExchange event) async {
    try {
      final tokens = await _platform.exchange(event.parameters);
      dispatch(HostedUiEvent.succeeded(tokens));
    } on Exception catch (e) {
      dispatch(HostedUiEvent.failed(e));
    }
  }

  /// State machine callback for the [HostedUiSignOut] event.
  Future<void> onSignOut(HostedUiSignOut event) async {
    try {
      final optionsJson = await _secureStorage.read(
        key: _keys[HostedUiKey.options],
      );
      final options = optionsJson == null
          ? const CognitoSignOutWithWebUIOptions()
          : CognitoSignOutWithWebUIOptions.fromJson(
              jsonDecode(optionsJson) as Map<String, Object?>,
            );
      // Clear credentials before dispatching to platform since the platform
      // may redirect and only for the intention of clearing cookies. That is,
      // credentials should be cleared regardless of how the platform handles
      // the sign out.
      dispatch(
        CredentialStoreEvent.clearCredentials(_keys),
      );
      await dispatcher.loadCredentials();

      await _platform.signOut(options: options);
      emit(const HostedUiState.signedOut());
    } on Exception catch (e) {
      dispatch(HostedUiEvent.failed(e));
    }
  }

  /// State machine callback for the [HostedUiSucceeded] event.
  Future<void> onSucceeded(HostedUiSucceeded event) async {
    final provider = await _secureStorage.read(
      key: _keys[HostedUiKey.provider],
    );
    final signInDetails = CognitoSignInDetails.hostedUi(
      provider: provider == null
          ? null
          : AuthProvider.fromJson(
              jsonDecode(provider) as Map<String, Object?>,
            ),
    );
    dispatch(
      CredentialStoreEvent.storeCredentials(
        CredentialStoreData(
          userPoolTokens: event.tokens,
          signInDetails: signInDetails,
        ),
      ),
    );

    final idToken = event.tokens.idToken;
    final userId = idToken.userId;
    final username = CognitoIdToken(idToken).username;
    emit(
      HostedUiState.signedIn(
        CognitoAuthUser(
          userId: userId,
          username: username,
          signInDetails: signInDetails,
        ),
      ),
    );
  }

  /// State machine callback for the [HostedUiFailed] event.
  Future<void> onFailed(HostedUiFailed event) async {}

  @override
  Future<void> close() async {
    await _platform.close();
    return super.close();
  }
}
