/*
 * Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License").
 * You may not use this file except in compliance with the License.
 * A copy of the License is located at
 *
 *  http://aws.amazon.com/apache2.0
 *
 * or in the "license" file accompanying this file. This file is distributed
 * on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

import 'package:integration_test/integration_test.dart';
import 'package:flutter_test/flutter_test.dart';

import '../utils/setup_utils.dart';
import '../utils/test_cloud_synced_model_operation.dart';
import 'models/belongs_to/ModelProvider.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('BelongsTo (child refers to parent with explicit connection field)',
      () {
    // schema
    // type BelongsToParent @model {
    //   id: ID!
    //   name: String
    //   explicitChild: BelongsToChildExplicit @hasOne
    // }
    // type BelongsToChildExplicit @model {
    //   id: ID!
    //   name: String
    //   belongsToParentID: ID
    //   belongsToParent: BelongsToParent @belongsTo(fields: ["belongsToParentID"])
    // }
    final enableCloudSync = shouldEnableCloudSync();
    var rootModels = [BelongsToParent(name: 'belongs to parent')];
    var associatedModels = [
      BelongsToChildExplicit(
        name: 'belongs to child (explicit)',
        belongsToParent: rootModels.first,
      )
    ];

    testRootAndAssociatedModelsRelationship(
      modelProvider: ModelProvider.instance,
      rootModelType: BelongsToParent.classType,
      rootModels: rootModels,
      rootModelQueryIdentifier: BelongsToParent.MODEL_IDENTIFIER,
      associatedModelType: BelongsToChildExplicit.classType,
      associatedModels: associatedModels,
      associatedModelQueryIdentifier: BelongsToChildExplicit.MODEL_IDENTIFIER,
      supportCascadeDelete: true,
      enableCloudSync: enableCloudSync,
    );
  });
}