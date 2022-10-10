// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.config_service.model.remediation_exception_resource_key; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'remediation_exception_resource_key.g.dart';

/// The details that identify a resource within Config, including the resource type and resource ID.
abstract class RemediationExceptionResourceKey
    with
        _i1.AWSEquatable<RemediationExceptionResourceKey>
    implements
        Built<RemediationExceptionResourceKey,
            RemediationExceptionResourceKeyBuilder> {
  /// The details that identify a resource within Config, including the resource type and resource ID.
  factory RemediationExceptionResourceKey({
    String? resourceId,
    String? resourceType,
  }) {
    return _$RemediationExceptionResourceKey._(
      resourceId: resourceId,
      resourceType: resourceType,
    );
  }

  /// The details that identify a resource within Config, including the resource type and resource ID.
  factory RemediationExceptionResourceKey.build(
          [void Function(RemediationExceptionResourceKeyBuilder) updates]) =
      _$RemediationExceptionResourceKey;

  const RemediationExceptionResourceKey._();

  static const List<_i2.SmithySerializer> serializers = [
    RemediationExceptionResourceKeyAwsJson11Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RemediationExceptionResourceKeyBuilder b) {}

  /// The ID of the resource (for example., sg-xxxxxx).
  String? get resourceId;

  /// The type of a resource.
  String? get resourceType;
  @override
  List<Object?> get props => [
        resourceId,
        resourceType,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('RemediationExceptionResourceKey');
    helper.add(
      'resourceId',
      resourceId,
    );
    helper.add(
      'resourceType',
      resourceType,
    );
    return helper.toString();
  }
}

class RemediationExceptionResourceKeyAwsJson11Serializer
    extends _i2.StructuredSmithySerializer<RemediationExceptionResourceKey> {
  const RemediationExceptionResourceKeyAwsJson11Serializer()
      : super('RemediationExceptionResourceKey');

  @override
  Iterable<Type> get types => const [
        RemediationExceptionResourceKey,
        _$RemediationExceptionResourceKey,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_1',
        )
      ];
  @override
  RemediationExceptionResourceKey deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RemediationExceptionResourceKeyBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'ResourceId':
          if (value != null) {
            result.resourceId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ResourceType':
          if (value != null) {
            result.resourceType = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Object? object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final payload = (object as RemediationExceptionResourceKey);
    final result = <Object?>[];
    if (payload.resourceId != null) {
      result
        ..add('ResourceId')
        ..add(serializers.serialize(
          payload.resourceId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.resourceType != null) {
      result
        ..add('ResourceType')
        ..add(serializers.serialize(
          payload.resourceType!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}