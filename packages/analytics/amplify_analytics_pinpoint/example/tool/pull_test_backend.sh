#!/bin/bash
# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: Apache-2.0

set -e

aws s3 cp s3://$AFS_ANALYTICS_GEN2_BUCKET_NAME/amplify_outputs.dart lib/amplify_outputs.dart 
