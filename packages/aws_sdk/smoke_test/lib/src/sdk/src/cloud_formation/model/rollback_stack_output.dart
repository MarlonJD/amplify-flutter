// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.cloud_formation.model.rollback_stack_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;

part 'rollback_stack_output.g.dart';

abstract class RollbackStackOutput
    with _i1.AWSEquatable<RollbackStackOutput>
    implements Built<RollbackStackOutput, RollbackStackOutputBuilder> {
  factory RollbackStackOutput({String? stackId}) {
    return _$RollbackStackOutput._(stackId: stackId);
  }

  factory RollbackStackOutput.build(
          [void Function(RollbackStackOutputBuilder) updates]) =
      _$RollbackStackOutput;

  const RollbackStackOutput._();

  /// Constructs a [RollbackStackOutput] from a [payload] and [response].
  factory RollbackStackOutput.fromResponse(
    RollbackStackOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer> serializers = [
    RollbackStackOutputAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(RollbackStackOutputBuilder b) {}

  /// Unique identifier of the stack.
  String? get stackId;
  @override
  List<Object?> get props => [stackId];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('RollbackStackOutput');
    helper.add(
      'stackId',
      stackId,
    );
    return helper.toString();
  }
}

class RollbackStackOutputAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<RollbackStackOutput> {
  const RollbackStackOutputAwsQuerySerializer() : super('RollbackStackOutput');

  @override
  Iterable<Type> get types => const [
        RollbackStackOutput,
        _$RollbackStackOutput,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  RollbackStackOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RollbackStackOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'StackId':
          if (value != null) {
            result.stackId = (serializers.deserialize(
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
    final payload = (object as RollbackStackOutput);
    final result = <Object?>[
      const _i2.XmlElementName(
        'RollbackStackOutputResponse',
        _i2.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    if (payload.stackId != null) {
      result
        ..add(const _i2.XmlElementName('StackId'))
        ..add(serializers.serialize(
          payload.stackId!,
          specifiedType: const FullType(String),
        ));
    }
    return result;
  }
}