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

import 'package:aws_common/aws_common.dart';
import 'package:meta/meta.dart';

/// {@template amplify_core.state}
/// Base class for the discrete states of a state machine.
/// {@endtemplate}
@immutable
abstract class StateMachineState<StateType>
    with AWSEquatable<StateMachineState<StateType>>, AWSDebuggable {
  /// {@macro amplify_core.state}
  const StateMachineState();

  /// The state's discrete type, expressed as an enum.
  StateType get type;
}

/// Mixin for the success/idle states of a state machine.
mixin SuccessState<StateType> on StateMachineState<StateType> {}

/// Mixin for the error/failure states of a state machine.
mixin ErrorState<StateType> on StateMachineState<StateType> {
  /// The exception which triggered this state.
  Exception get exception;
}
