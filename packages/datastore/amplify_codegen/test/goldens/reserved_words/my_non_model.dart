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

library models.my_non_model;

import 'package:amplify_core/amplify_core.dart';

class MyNonModel
    with
        AWSEquatable<MyNonModel>,
        AWSSerializable<Map<String, Object?>>,
        AWSDebuggable {
  const MyNonModel({required this.enum_});

  factory MyNonModel.fromJson(Map<String, Object?> json) {
    final enum_ = json['enum'] == null
        ? (throw ModelFieldError(
            'MyNonModel',
            'enum_',
          ))
        : (json['enum'] as String);
    return MyNonModel(enum_: enum_);
  }

  final String enum_;

  @override
  List<Object?> get props => [enum_];
  @override
  String get runtimeTypeName => 'MyNonModel';
  @override
  Map<String, Object?> toJson() => {'enum': enum_};
}