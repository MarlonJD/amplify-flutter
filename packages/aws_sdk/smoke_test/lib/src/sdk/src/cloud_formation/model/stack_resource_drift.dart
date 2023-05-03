// Generated with smithy-dart 0.3.1. DO NOT MODIFY.

library smoke_test.cloud_formation.model.stack_resource_drift; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i6;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i7;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/module_info.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/physical_resource_id_context_key_value_pair.dart'
    as _i2;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/property_difference.dart'
    as _i3;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_resource_drift_status.dart'
    as _i4;

part 'stack_resource_drift.g.dart';

/// Contains the drift information for a resource that has been checked for drift. This includes actual and expected property values for resources in which CloudFormation has detected drift. Only resource properties explicitly defined in the stack template are checked for drift. For more information, see [Detecting Unregulated Configuration Changes to Stacks and Resources](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift.html).
///
/// Resources that don't currently support drift detection can't be checked. For a list of resources that support drift detection, see [Resources that Support Drift Detection](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift-resource-list.html).
///
/// Use DetectStackResourceDrift to detect drift on individual resources, or DetectStackDrift to detect drift on all resources in a given stack that support drift detection.
abstract class StackResourceDrift
    with _i1.AWSEquatable<StackResourceDrift>
    implements Built<StackResourceDrift, StackResourceDriftBuilder> {
  /// Contains the drift information for a resource that has been checked for drift. This includes actual and expected property values for resources in which CloudFormation has detected drift. Only resource properties explicitly defined in the stack template are checked for drift. For more information, see [Detecting Unregulated Configuration Changes to Stacks and Resources](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift.html).
  ///
  /// Resources that don't currently support drift detection can't be checked. For a list of resources that support drift detection, see [Resources that Support Drift Detection](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift-resource-list.html).
  ///
  /// Use DetectStackResourceDrift to detect drift on individual resources, or DetectStackDrift to detect drift on all resources in a given stack that support drift detection.
  factory StackResourceDrift({
    required String stackId,
    required String logicalResourceId,
    String? physicalResourceId,
    List<_i2.PhysicalResourceIdContextKeyValuePair>? physicalResourceIdContext,
    required String resourceType,
    String? expectedProperties,
    String? actualProperties,
    List<_i3.PropertyDifference>? propertyDifferences,
    required _i4.StackResourceDriftStatus stackResourceDriftStatus,
    required DateTime timestamp,
    _i5.ModuleInfo? moduleInfo,
  }) {
    return _$StackResourceDrift._(
      stackId: stackId,
      logicalResourceId: logicalResourceId,
      physicalResourceId: physicalResourceId,
      physicalResourceIdContext: physicalResourceIdContext == null
          ? null
          : _i6.BuiltList(physicalResourceIdContext),
      resourceType: resourceType,
      expectedProperties: expectedProperties,
      actualProperties: actualProperties,
      propertyDifferences: propertyDifferences == null
          ? null
          : _i6.BuiltList(propertyDifferences),
      stackResourceDriftStatus: stackResourceDriftStatus,
      timestamp: timestamp,
      moduleInfo: moduleInfo,
    );
  }

  /// Contains the drift information for a resource that has been checked for drift. This includes actual and expected property values for resources in which CloudFormation has detected drift. Only resource properties explicitly defined in the stack template are checked for drift. For more information, see [Detecting Unregulated Configuration Changes to Stacks and Resources](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift.html).
  ///
  /// Resources that don't currently support drift detection can't be checked. For a list of resources that support drift detection, see [Resources that Support Drift Detection](http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift-resource-list.html).
  ///
  /// Use DetectStackResourceDrift to detect drift on individual resources, or DetectStackDrift to detect drift on all resources in a given stack that support drift detection.
  factory StackResourceDrift.build(
          [void Function(StackResourceDriftBuilder) updates]) =
      _$StackResourceDrift;

  const StackResourceDrift._();

  static const List<_i7.SmithySerializer> serializers = [
    StackResourceDriftAwsQuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(StackResourceDriftBuilder b) {}

  /// The ID of the stack.
  String get stackId;

  /// The logical name of the resource specified in the template.
  String get logicalResourceId;

  /// The name or unique identifier that corresponds to a physical instance ID of a resource supported by CloudFormation.
  String? get physicalResourceId;

  /// Context information that enables CloudFormation to uniquely identify a resource. CloudFormation uses context key-value pairs in cases where a resource's logical and physical IDs aren't enough to uniquely identify that resource. Each context key-value pair specifies a unique resource that contains the targeted resource.
  _i6.BuiltList<_i2.PhysicalResourceIdContextKeyValuePair>?
      get physicalResourceIdContext;

  /// The type of the resource.
  String get resourceType;

  /// A JSON structure containing the expected property values of the stack resource, as defined in the stack template and any values specified as template parameters.
  ///
  /// For resources whose `StackResourceDriftStatus` is `DELETED`, this structure will not be present.
  String? get expectedProperties;

  /// A JSON structure containing the actual property values of the stack resource.
  ///
  /// For resources whose `StackResourceDriftStatus` is `DELETED`, this structure will not be present.
  String? get actualProperties;

  /// A collection of the resource properties whose actual values differ from their expected values. These will be present only for resources whose `StackResourceDriftStatus` is `MODIFIED`.
  _i6.BuiltList<_i3.PropertyDifference>? get propertyDifferences;

  /// Status of the resource's actual configuration compared to its expected configuration.
  ///
  /// *   `DELETED`: The resource differs from its expected template configuration because the resource has been deleted.
  ///
  /// *   `MODIFIED`: One or more resource properties differ from their expected values (as defined in the stack template and any values specified as template parameters).
  ///
  /// *   `IN_SYNC`: The resource's actual configuration matches its expected template configuration.
  ///
  /// *   `NOT_CHECKED`: CloudFormation does not currently return this value.
  _i4.StackResourceDriftStatus get stackResourceDriftStatus;

  /// Time at which CloudFormation performed drift detection on the stack resource.
  DateTime get timestamp;

  /// Contains information about the module from which the resource was created, if the resource was created from a module included in the stack template.
  _i5.ModuleInfo? get moduleInfo;
  @override
  List<Object?> get props => [
        stackId,
        logicalResourceId,
        physicalResourceId,
        physicalResourceIdContext,
        resourceType,
        expectedProperties,
        actualProperties,
        propertyDifferences,
        stackResourceDriftStatus,
        timestamp,
        moduleInfo,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('StackResourceDrift');
    helper.add(
      'stackId',
      stackId,
    );
    helper.add(
      'logicalResourceId',
      logicalResourceId,
    );
    helper.add(
      'physicalResourceId',
      physicalResourceId,
    );
    helper.add(
      'physicalResourceIdContext',
      physicalResourceIdContext,
    );
    helper.add(
      'resourceType',
      resourceType,
    );
    helper.add(
      'expectedProperties',
      expectedProperties,
    );
    helper.add(
      'actualProperties',
      actualProperties,
    );
    helper.add(
      'propertyDifferences',
      propertyDifferences,
    );
    helper.add(
      'stackResourceDriftStatus',
      stackResourceDriftStatus,
    );
    helper.add(
      'timestamp',
      timestamp,
    );
    helper.add(
      'moduleInfo',
      moduleInfo,
    );
    return helper.toString();
  }
}

class StackResourceDriftAwsQuerySerializer
    extends _i7.StructuredSmithySerializer<StackResourceDrift> {
  const StackResourceDriftAwsQuerySerializer() : super('StackResourceDrift');

  @override
  Iterable<Type> get types => const [
        StackResourceDrift,
        _$StackResourceDrift,
      ];
  @override
  Iterable<_i7.ShapeId> get supportedProtocols => const [
        _i7.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  StackResourceDrift deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StackResourceDriftBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current;
      iterator.moveNext();
      final value = iterator.current;
      switch (key as String) {
        case 'StackId':
          result.stackId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'LogicalResourceId':
          result.logicalResourceId = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'PhysicalResourceId':
          if (value != null) {
            result.physicalResourceId = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'PhysicalResourceIdContext':
          if (value != null) {
            result.physicalResourceIdContext.replace(
                (const _i7.XmlBuiltListSerializer(
                        indexer: _i7.XmlIndexer.awsQueryList)
                    .deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i6.BuiltList,
                [FullType(_i2.PhysicalResourceIdContextKeyValuePair)],
              ),
            ) as _i6.BuiltList<_i2.PhysicalResourceIdContextKeyValuePair>));
          }
          break;
        case 'ResourceType':
          result.resourceType = (serializers.deserialize(
            value!,
            specifiedType: const FullType(String),
          ) as String);
          break;
        case 'ExpectedProperties':
          if (value != null) {
            result.expectedProperties = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'ActualProperties':
          if (value != null) {
            result.actualProperties = (serializers.deserialize(
              value,
              specifiedType: const FullType(String),
            ) as String);
          }
          break;
        case 'PropertyDifferences':
          if (value != null) {
            result.propertyDifferences.replace(
                (const _i7.XmlBuiltListSerializer(
                        indexer: _i7.XmlIndexer.awsQueryList)
                    .deserialize(
              serializers,
              value is String ? const [] : (value as Iterable<Object?>),
              specifiedType: const FullType(
                _i6.BuiltList,
                [FullType(_i3.PropertyDifference)],
              ),
            ) as _i6.BuiltList<_i3.PropertyDifference>));
          }
          break;
        case 'StackResourceDriftStatus':
          result.stackResourceDriftStatus = (serializers.deserialize(
            value!,
            specifiedType: const FullType(_i4.StackResourceDriftStatus),
          ) as _i4.StackResourceDriftStatus);
          break;
        case 'Timestamp':
          result.timestamp = (serializers.deserialize(
            value!,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
          break;
        case 'ModuleInfo':
          if (value != null) {
            result.moduleInfo.replace((serializers.deserialize(
              value,
              specifiedType: const FullType(_i5.ModuleInfo),
            ) as _i5.ModuleInfo));
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
    final payload = (object as StackResourceDrift);
    final result = <Object?>[
      const _i7.XmlElementName(
        'StackResourceDriftResponse',
        _i7.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    result
      ..add(const _i7.XmlElementName('StackId'))
      ..add(serializers.serialize(
        payload.stackId,
        specifiedType: const FullType(String),
      ));
    result
      ..add(const _i7.XmlElementName('LogicalResourceId'))
      ..add(serializers.serialize(
        payload.logicalResourceId,
        specifiedType: const FullType(String),
      ));
    if (payload.physicalResourceId != null) {
      result
        ..add(const _i7.XmlElementName('PhysicalResourceId'))
        ..add(serializers.serialize(
          payload.physicalResourceId!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.physicalResourceIdContext != null) {
      result
        ..add(const _i7.XmlElementName('PhysicalResourceIdContext'))
        ..add(const _i7.XmlBuiltListSerializer(
                indexer: _i7.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          payload.physicalResourceIdContext!,
          specifiedType: const FullType.nullable(
            _i6.BuiltList,
            [FullType(_i2.PhysicalResourceIdContextKeyValuePair)],
          ),
        ));
    }
    result
      ..add(const _i7.XmlElementName('ResourceType'))
      ..add(serializers.serialize(
        payload.resourceType,
        specifiedType: const FullType(String),
      ));
    if (payload.expectedProperties != null) {
      result
        ..add(const _i7.XmlElementName('ExpectedProperties'))
        ..add(serializers.serialize(
          payload.expectedProperties!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.actualProperties != null) {
      result
        ..add(const _i7.XmlElementName('ActualProperties'))
        ..add(serializers.serialize(
          payload.actualProperties!,
          specifiedType: const FullType(String),
        ));
    }
    if (payload.propertyDifferences != null) {
      result
        ..add(const _i7.XmlElementName('PropertyDifferences'))
        ..add(const _i7.XmlBuiltListSerializer(
                indexer: _i7.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          payload.propertyDifferences!,
          specifiedType: const FullType.nullable(
            _i6.BuiltList,
            [FullType(_i3.PropertyDifference)],
          ),
        ));
    }
    result
      ..add(const _i7.XmlElementName('StackResourceDriftStatus'))
      ..add(serializers.serialize(
        payload.stackResourceDriftStatus,
        specifiedType: const FullType.nullable(_i4.StackResourceDriftStatus),
      ));
    result
      ..add(const _i7.XmlElementName('Timestamp'))
      ..add(serializers.serialize(
        payload.timestamp,
        specifiedType: const FullType.nullable(DateTime),
      ));
    if (payload.moduleInfo != null) {
      result
        ..add(const _i7.XmlElementName('ModuleInfo'))
        ..add(serializers.serialize(
          payload.moduleInfo!,
          specifiedType: const FullType(_i5.ModuleInfo),
        ));
    }
    return result;
  }
}