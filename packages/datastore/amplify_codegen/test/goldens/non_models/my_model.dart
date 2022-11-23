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

// NOTE: This file is generated and may not follow lint rules defined in your app
// Generated files can be excluded from analysis in analysis_options.yaml
// For more info, see: https://dart.dev/guides/language/analysis-options#excluding-code-from-analysis

// ignore_for_file: non_constant_identifier_names,inference_failure_on_collection_literal

library models.my_model;

import 'package:amplify_core/amplify_core.dart';
import 'package:amplify_core/src/types/models/mipr.dart' as mipr;

import 'scalar_non_model.dart';

class MyModelType extends ModelType<String, MyModel, PartialMyModel> {
  const MyModelType();

  @override
  T fromJson<T extends PartialModel<String, MyModel>>(
    Map<String, Object?> json,
  ) {
    if (T == MyModel || T == Model<String, MyModel>) {
      return MyModel.fromJson(json) as T;
    }
    if (T == RemoteMyModel || T == RemoteModel<String, MyModel>) {
      return _RemoteMyModel.fromJson(json) as T;
    }
    return _PartialMyModel.fromJson(json) as T;
  }

  @override
  String get modelName => 'MyModel';
}

class MyModelQueryFields<ModelIdentifier extends Object,
    M extends Model<ModelIdentifier, M>> {
  const MyModelQueryFields([this._root]);

  final QueryField<ModelIdentifier, M, MyModel>? _root;

  /// Query field for the [MyModel.createdAt] field.
  QueryField<ModelIdentifier, M, TemporalDateTime> get $createdAt =>
      NestedQueryField<ModelIdentifier, M, String, MyModel, TemporalDateTime>(
        const QueryField<String, MyModel, TemporalDateTime>(
          fieldName: 'createdAt',
        ),
        root: _root,
      );

  /// Query field for the [MyModel.updatedAt] field.
  QueryField<ModelIdentifier, M, TemporalDateTime> get $updatedAt =>
      NestedQueryField<ModelIdentifier, M, String, MyModel, TemporalDateTime>(
        const QueryField<String, MyModel, TemporalDateTime>(
          fieldName: 'updatedAt',
        ),
        root: _root,
      );

  /// Query field for the [MyModel.id] field.
  QueryField<ModelIdentifier, M, String> get $id =>
      NestedQueryField<ModelIdentifier, M, String, MyModel, String>(
        const QueryField<String, MyModel, String>(fieldName: 'id'),
        root: _root,
      );

  /// Query field for the [MyModel] model identifier.
  QueryField<ModelIdentifier, M, String> get $modelIdentifier =>
      NestedQueryField<ModelIdentifier, M, String, MyModel, String>(
        const QueryField<String, MyModel, String>(fieldName: 'modelIdentifier'),
        root: _root,
      );
}

abstract class PartialMyModel extends PartialModel<String, MyModel>
    with AWSEquatable<PartialMyModel> {
  const PartialMyModel._();

  ScalarNonModel? get embeddedNonModel;
  ScalarNonModel? get requiredEmbeddedNonModel;
  TemporalDateTime? get createdAt;
  TemporalDateTime? get updatedAt;
  String get id;
  @override
  String get modelIdentifier => id;
  @override
  MyModelType get modelType => MyModel.classType;
  @override
  List<Object?> get props => [
        embeddedNonModel,
        requiredEmbeddedNonModel,
        createdAt,
        updatedAt,
        id,
      ];
  @override
  Map<String, Object?> toJson() => {
        'embeddedNonModel': embeddedNonModel?.toJson(),
        'requiredEmbeddedNonModel': requiredEmbeddedNonModel?.toJson(),
        'createdAt': createdAt?.format(),
        'updatedAt': updatedAt?.format(),
        'id': id,
        'version': version,
        'deleted': deleted,
        'lastChangedAt': lastChangedAt?.format(),
      };
  @override
  String get runtimeTypeName => 'MyModel';
}

class _PartialMyModel extends PartialMyModel {
  const _PartialMyModel({
    this.embeddedNonModel,
    this.requiredEmbeddedNonModel,
    this.createdAt,
    this.updatedAt,
    required this.id,
  }) : super._();

  factory _PartialMyModel.fromJson(Map<String, Object?> json) {
    final embeddedNonModel = json['embeddedNonModel'] == null
        ? null
        : ScalarNonModel.fromJson(
            (json['embeddedNonModel'] as Map<String, Object?>),
          );
    final requiredEmbeddedNonModel = json['requiredEmbeddedNonModel'] == null
        ? null
        : ScalarNonModel.fromJson(
            (json['requiredEmbeddedNonModel'] as Map<String, Object?>),
          );
    final createdAt = json['createdAt'] == null
        ? null
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? null
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    final id = json['id'] == null
        ? (throw ModelFieldError(
            'MyModel',
            'id',
          ))
        : (json['id'] as String);
    return _PartialMyModel(
      embeddedNonModel: embeddedNonModel,
      requiredEmbeddedNonModel: requiredEmbeddedNonModel,
      createdAt: createdAt,
      updatedAt: updatedAt,
      id: id,
    );
  }

  @override
  final ScalarNonModel? embeddedNonModel;

  @override
  final ScalarNonModel? requiredEmbeddedNonModel;

  @override
  final TemporalDateTime? createdAt;

  @override
  final TemporalDateTime? updatedAt;

  @override
  final String id;
}

abstract class MyModel extends PartialMyModel
    implements Model<String, MyModel> {
  factory MyModel({
    ScalarNonModel? embeddedNonModel,
    required ScalarNonModel requiredEmbeddedNonModel,
    String? id,
  }) = _MyModel;

  const MyModel._() : super._();

  factory MyModel.fromJson(Map<String, Object?> json) {
    final embeddedNonModel = json['embeddedNonModel'] == null
        ? null
        : ScalarNonModel.fromJson(
            (json['embeddedNonModel'] as Map<String, Object?>),
          );
    final requiredEmbeddedNonModel = json['requiredEmbeddedNonModel'] == null
        ? (throw ModelFieldError(
            'MyModel',
            'requiredEmbeddedNonModel',
          ))
        : ScalarNonModel.fromJson(
            (json['requiredEmbeddedNonModel'] as Map<String, Object?>),
          );
    final createdAt = json['createdAt'] == null
        ? (throw ModelFieldError(
            'MyModel',
            'createdAt',
          ))
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? (throw ModelFieldError(
            'MyModel',
            'updatedAt',
          ))
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    final id = json['id'] == null
        ? (throw ModelFieldError(
            'MyModel',
            'id',
          ))
        : (json['id'] as String);
    return _MyModel._(
      embeddedNonModel: embeddedNonModel,
      requiredEmbeddedNonModel: requiredEmbeddedNonModel,
      createdAt: createdAt,
      updatedAt: updatedAt,
      id: id,
    );
  }

  static const MyModelType classType = MyModelType();

  static const MyModelQueryFields<String, MyModel> _queryFields =
      MyModelQueryFields();

  static final mipr.ModelTypeDefinition schema =
      mipr.serializers.deserializeWith(
    mipr.ModelTypeDefinition.serializer,
    const {
      'name': 'MyModel',
      'pluralName': 'MyModels',
      'fields': {
        'embeddedNonModel': {
          'name': 'embeddedNonModel',
          'type': {'nonModel': 'ScalarNonModel'},
          'isReadOnly': false,
          'authRules': [],
        },
        'requiredEmbeddedNonModel': {
          'name': 'requiredEmbeddedNonModel',
          'type': {'nonModel': 'ScalarNonModel'},
          'isReadOnly': false,
          'authRules': [],
        },
        'createdAt': {
          'name': 'createdAt',
          'type': {'scalar': 'AWSDateTime'},
          'isReadOnly': true,
          'authRules': [],
        },
        'updatedAt': {
          'name': 'updatedAt',
          'type': {'scalar': 'AWSDateTime'},
          'isReadOnly': true,
          'authRules': [],
        },
        'id': {
          'name': 'id',
          'type': {'scalar': 'ID'},
          'isReadOnly': false,
          'authRules': [],
        },
      },
      'authRules': [],
      'indexes': [
        {
          'type': 'primary',
          'primaryField': 'id',
          'sortKeyFields': [],
        }
      ],
    },
  )!;

  @override
  ScalarNonModel? get embeddedNonModel;
  @override
  ScalarNonModel get requiredEmbeddedNonModel;
  @override
  TemporalDateTime get createdAt;
  @override
  TemporalDateTime get updatedAt;
  @override
  String get id;

  /// Query field for the [id] field.
  QueryField<String, MyModel, String> get $id => _queryFields.$id;

  /// Query field for the [id] field.
  @Deprecated(r'Use $id instead')
  QueryField<String, MyModel, String> get ID => $id;

  /// Query field for the [modelIdentifier] field.
  QueryField<String, MyModel, String> get $modelIdentifier =>
      _queryFields.$modelIdentifier;

  /// Query field for the [modelIdentifier] field.
  @Deprecated(r'Use $modelIdentifier instead')
  QueryField<String, MyModel, String> get MODEL_IDENTIFIER => $modelIdentifier;
  MyModel copyWith({
    ScalarNonModel? embeddedNonModel,
    ScalarNonModel? requiredEmbeddedNonModel,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? id,
  }) {
    return _MyModel._(
      embeddedNonModel: embeddedNonModel ?? this.embeddedNonModel,
      requiredEmbeddedNonModel:
          requiredEmbeddedNonModel ?? this.requiredEmbeddedNonModel,
      createdAt:
          createdAt == null ? this.createdAt : TemporalDateTime(createdAt),
      updatedAt:
          updatedAt == null ? this.updatedAt : TemporalDateTime(updatedAt),
      id: id ?? this.id,
    );
  }

  @override
  T valueFor<T extends Object?>(QueryField<String, MyModel, T> field) {
    Object? value;
    switch (field.fieldName) {
      case r'embeddedNonModel':
        value = embeddedNonModel;
        break;
      case r'requiredEmbeddedNonModel':
        value = requiredEmbeddedNonModel;
        break;
      case r'createdAt':
        value = createdAt;
        break;
      case r'updatedAt':
        value = updatedAt;
        break;
      case r'id':
        value = id;
        break;
    }
    assert(
      value is T,
      'Invalid field ${field.fieldName}: $value (expected $T)',
    );
    return value as T;
  }
}

class _MyModel extends MyModel {
  _MyModel({
    this.embeddedNonModel,
    required this.requiredEmbeddedNonModel,
    String? id,
  })  : createdAt = TemporalDateTime.now(),
        updatedAt = TemporalDateTime.now(),
        id = id ?? uuid(),
        super._();

  const _MyModel._({
    this.embeddedNonModel,
    required this.requiredEmbeddedNonModel,
    required this.createdAt,
    required this.updatedAt,
    required this.id,
  }) : super._();

  @override
  final ScalarNonModel? embeddedNonModel;

  @override
  final ScalarNonModel requiredEmbeddedNonModel;

  @override
  final TemporalDateTime createdAt;

  @override
  final TemporalDateTime updatedAt;

  @override
  final String id;
}

abstract class RemoteMyModel extends MyModel
    implements RemoteModel<String, MyModel> {
  const RemoteMyModel._() : super._();
}

class _RemoteMyModel extends RemoteMyModel {
  const _RemoteMyModel({
    this.embeddedNonModel,
    required this.requiredEmbeddedNonModel,
    required this.createdAt,
    required this.updatedAt,
    required this.id,
    required this.version,
    required this.deleted,
    required this.lastChangedAt,
  }) : super._();

  factory _RemoteMyModel.fromJson(Map<String, Object?> json) {
    final embeddedNonModel = json['embeddedNonModel'] == null
        ? null
        : ScalarNonModel.fromJson(
            (json['embeddedNonModel'] as Map<String, Object?>),
          );
    final requiredEmbeddedNonModel = json['requiredEmbeddedNonModel'] == null
        ? (throw ModelFieldError(
            'MyModel',
            'requiredEmbeddedNonModel',
          ))
        : ScalarNonModel.fromJson(
            (json['requiredEmbeddedNonModel'] as Map<String, Object?>),
          );
    final createdAt = json['createdAt'] == null
        ? (throw ModelFieldError(
            'MyModel',
            'createdAt',
          ))
        : TemporalDateTime.fromString((json['createdAt'] as String));
    final updatedAt = json['updatedAt'] == null
        ? (throw ModelFieldError(
            'MyModel',
            'updatedAt',
          ))
        : TemporalDateTime.fromString((json['updatedAt'] as String));
    final id = json['id'] == null
        ? (throw ModelFieldError(
            'MyModel',
            'id',
          ))
        : (json['id'] as String);
    final version = json['version'] == null
        ? (throw ModelFieldError(
            'MyModel',
            'version',
          ))
        : (json['version'] as int);
    final deleted = json['deleted'] == null
        ? (throw ModelFieldError(
            'MyModel',
            'deleted',
          ))
        : (json['deleted'] as bool);
    final lastChangedAt = json['lastChangedAt'] == null
        ? (throw ModelFieldError(
            'MyModel',
            'lastChangedAt',
          ))
        : TemporalDateTime.fromString((json['lastChangedAt'] as String));
    return _RemoteMyModel(
      embeddedNonModel: embeddedNonModel,
      requiredEmbeddedNonModel: requiredEmbeddedNonModel,
      createdAt: createdAt,
      updatedAt: updatedAt,
      id: id,
      version: version,
      deleted: deleted,
      lastChangedAt: lastChangedAt,
    );
  }

  @override
  final ScalarNonModel? embeddedNonModel;

  @override
  final ScalarNonModel requiredEmbeddedNonModel;

  @override
  final TemporalDateTime createdAt;

  @override
  final TemporalDateTime updatedAt;

  @override
  final String id;

  @override
  final int version;

  @override
  final bool deleted;

  @override
  final TemporalDateTime lastChangedAt;
}