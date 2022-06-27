// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.dynamo_db.model.export_table_to_point_in_time_output; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/dynamo_db/model/export_description.dart'
    as _i2;

part 'export_table_to_point_in_time_output.g.dart';

abstract class ExportTableToPointInTimeOutput
    with
        _i1.AWSEquatable<ExportTableToPointInTimeOutput>
    implements
        Built<ExportTableToPointInTimeOutput,
            ExportTableToPointInTimeOutputBuilder> {
  factory ExportTableToPointInTimeOutput(
      {_i2.ExportDescription? exportDescription}) {
    return _$ExportTableToPointInTimeOutput._(
        exportDescription: exportDescription);
  }

  factory ExportTableToPointInTimeOutput.build(
          [void Function(ExportTableToPointInTimeOutputBuilder) updates]) =
      _$ExportTableToPointInTimeOutput;

  const ExportTableToPointInTimeOutput._();

  /// Constructs a [ExportTableToPointInTimeOutput] from a [payload] and [response].
  factory ExportTableToPointInTimeOutput.fromResponse(
    ExportTableToPointInTimeOutput payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i3.SmithySerializer> serializers = [
    ExportTableToPointInTimeOutputAwsJson10Serializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(ExportTableToPointInTimeOutputBuilder b) {}

  /// Contains a description of the table export.
  _i2.ExportDescription? get exportDescription;
  @override
  List<Object?> get props => [exportDescription];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ExportTableToPointInTimeOutput');
    helper.add(
      'exportDescription',
      exportDescription,
    );
    return helper.toString();
  }
}

class ExportTableToPointInTimeOutputAwsJson10Serializer
    extends _i3.StructuredSmithySerializer<ExportTableToPointInTimeOutput> {
  const ExportTableToPointInTimeOutputAwsJson10Serializer()
      : super('ExportTableToPointInTimeOutput');

  @override
  Iterable<Type> get types => const [
        ExportTableToPointInTimeOutput,
        _$ExportTableToPointInTimeOutput,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsJson1_0',
        )
      ];
  @override
  ExportTableToPointInTimeOutput deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExportTableToPointInTimeOutputBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      switch (key) {
        case 'ExportDescription':
          if (value != null) {
            result.exportDescription.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i2.ExportDescription),
            ) as _i2.ExportDescription));
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
    final payload = (object as ExportTableToPointInTimeOutput);
    final result = <Object?>[];
    if (payload.exportDescription != null) {
      result
        ..add('ExportDescription')
        ..add(serializers.serialize(
          payload.exportDescription!,
          specifiedType: const FullType(_i2.ExportDescription),
        ));
    }
    return result;
  }
}