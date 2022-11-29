// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library rest_json1_v2.rest_json_validation_protocol.operation.sensitive_validation_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i8;

import 'package:aws_common/aws_common.dart' as _i6;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/common/endpoint_resolver.dart'
    as _i5;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/common/serializers.dart'
    as _i4;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/sensitive_validation_input.dart'
    as _i2;
import 'package:rest_json1_v2/src/rest_json_validation_protocol/model/validation_exception.dart'
    as _i7;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i3;

class SensitiveValidationOperation extends _i1.HttpOperation<
    _i2.SensitiveValidationInput,
    _i2.SensitiveValidationInput,
    _i1.Unit,
    _i1.Unit> {
  SensitiveValidationOperation({
    required String region,
    Uri? baseUri,
  })  : _region = region,
        _baseUri = baseUri;

  @override
  late final List<
      _i1.HttpProtocol<_i2.SensitiveValidationInput,
          _i2.SensitiveValidationInput, _i1.Unit, _i1.Unit>> protocols = [
    _i3.RestJson1Protocol(
      serializers: _i4.serializers,
      builderFactories: _i4.builderFactories,
      requestInterceptors: [
        const _i1.WithHost(),
        const _i1.WithContentLength(),
        const _i1.WithUserAgent('aws-sdk-dart/0.1.1'),
        const _i3.WithSdkInvocationId(),
        const _i3.WithSdkRequest(),
      ],
      responseInterceptors: [],
    )
  ];

  late final _i3.AWSEndpoint _awsEndpoint = _i5.endpointResolver.resolve(
    _i5.sdkId,
    _region,
  );

  final String _region;

  final Uri? _baseUri;

  @override
  _i1.HttpRequest buildRequest(_i2.SensitiveValidationInput input) =>
      _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/SensitiveValidation';
      });
  @override
  int successCode([_i1.Unit? output]) => 200;
  @override
  _i1.Unit buildOutput(
    _i1.Unit payload,
    _i6.AWSBaseHttpResponse response,
  ) =>
      payload;
  @override
  List<_i1.SmithyError> get errorTypes => const [
        _i1.SmithyError(
          _i1.ShapeId(
            namespace: 'smithy.framework',
            shape: 'ValidationException',
          ),
          _i1.ErrorKind.client,
          _i7.ValidationException,
          builder: _i7.ValidationException.fromResponse,
        )
      ];
  @override
  String get runtimeTypeName => 'SensitiveValidation';
  @override
  _i3.AWSRetryer get retryer => _i3.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i1.SmithyOperation<_i1.Unit> run(
    _i2.SensitiveValidationInput input, {
    _i6.AWSHttpClient? client,
    _i1.ShapeId? useProtocol,
  }) {
    return _i8.runZoned(
      () => super.run(
        input,
        client: client,
        useProtocol: useProtocol,
      ),
      zoneValues: {
        ...?_awsEndpoint.credentialScope?.zoneValues,
        ...{_i6.AWSHeaders.sdkInvocationId: _i6.uuid(secure: true)}
      },
    );
  }
}