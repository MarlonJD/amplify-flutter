// GENERATED CODE - DO NOT MODIFY BY HAND

part of amplify_storage_s3_dart.s3.model.upload_part_copy_output;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UploadPartCopyOutput extends UploadPartCopyOutput {
  @override
  final bool bucketKeyEnabled;
  @override
  final _i3.CopyPartResult? copyPartResult;
  @override
  final String? copySourceVersionId;
  @override
  final _i4.RequestCharged? requestCharged;
  @override
  final _i5.ServerSideEncryption? serverSideEncryption;
  @override
  final String? sseCustomerAlgorithm;
  @override
  final String? sseCustomerKeyMd5;
  @override
  final String? ssekmsKeyId;

  factory _$UploadPartCopyOutput(
          [void Function(UploadPartCopyOutputBuilder)? updates]) =>
      (new UploadPartCopyOutputBuilder()..update(updates))._build();

  _$UploadPartCopyOutput._(
      {required this.bucketKeyEnabled,
      this.copyPartResult,
      this.copySourceVersionId,
      this.requestCharged,
      this.serverSideEncryption,
      this.sseCustomerAlgorithm,
      this.sseCustomerKeyMd5,
      this.ssekmsKeyId})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bucketKeyEnabled, r'UploadPartCopyOutput', 'bucketKeyEnabled');
  }

  @override
  UploadPartCopyOutput rebuild(
          void Function(UploadPartCopyOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UploadPartCopyOutputBuilder toBuilder() =>
      new UploadPartCopyOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UploadPartCopyOutput &&
        bucketKeyEnabled == other.bucketKeyEnabled &&
        copyPartResult == other.copyPartResult &&
        copySourceVersionId == other.copySourceVersionId &&
        requestCharged == other.requestCharged &&
        serverSideEncryption == other.serverSideEncryption &&
        sseCustomerAlgorithm == other.sseCustomerAlgorithm &&
        sseCustomerKeyMd5 == other.sseCustomerKeyMd5 &&
        ssekmsKeyId == other.ssekmsKeyId;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc(0, bucketKeyEnabled.hashCode),
                                copyPartResult.hashCode),
                            copySourceVersionId.hashCode),
                        requestCharged.hashCode),
                    serverSideEncryption.hashCode),
                sseCustomerAlgorithm.hashCode),
            sseCustomerKeyMd5.hashCode),
        ssekmsKeyId.hashCode));
  }
}

class UploadPartCopyOutputBuilder
    implements Builder<UploadPartCopyOutput, UploadPartCopyOutputBuilder> {
  _$UploadPartCopyOutput? _$v;

  bool? _bucketKeyEnabled;
  bool? get bucketKeyEnabled => _$this._bucketKeyEnabled;
  set bucketKeyEnabled(bool? bucketKeyEnabled) =>
      _$this._bucketKeyEnabled = bucketKeyEnabled;

  _i3.CopyPartResultBuilder? _copyPartResult;
  _i3.CopyPartResultBuilder get copyPartResult =>
      _$this._copyPartResult ??= new _i3.CopyPartResultBuilder();
  set copyPartResult(_i3.CopyPartResultBuilder? copyPartResult) =>
      _$this._copyPartResult = copyPartResult;

  String? _copySourceVersionId;
  String? get copySourceVersionId => _$this._copySourceVersionId;
  set copySourceVersionId(String? copySourceVersionId) =>
      _$this._copySourceVersionId = copySourceVersionId;

  _i4.RequestCharged? _requestCharged;
  _i4.RequestCharged? get requestCharged => _$this._requestCharged;
  set requestCharged(_i4.RequestCharged? requestCharged) =>
      _$this._requestCharged = requestCharged;

  _i5.ServerSideEncryption? _serverSideEncryption;
  _i5.ServerSideEncryption? get serverSideEncryption =>
      _$this._serverSideEncryption;
  set serverSideEncryption(_i5.ServerSideEncryption? serverSideEncryption) =>
      _$this._serverSideEncryption = serverSideEncryption;

  String? _sseCustomerAlgorithm;
  String? get sseCustomerAlgorithm => _$this._sseCustomerAlgorithm;
  set sseCustomerAlgorithm(String? sseCustomerAlgorithm) =>
      _$this._sseCustomerAlgorithm = sseCustomerAlgorithm;

  String? _sseCustomerKeyMd5;
  String? get sseCustomerKeyMd5 => _$this._sseCustomerKeyMd5;
  set sseCustomerKeyMd5(String? sseCustomerKeyMd5) =>
      _$this._sseCustomerKeyMd5 = sseCustomerKeyMd5;

  String? _ssekmsKeyId;
  String? get ssekmsKeyId => _$this._ssekmsKeyId;
  set ssekmsKeyId(String? ssekmsKeyId) => _$this._ssekmsKeyId = ssekmsKeyId;

  UploadPartCopyOutputBuilder() {
    UploadPartCopyOutput._init(this);
  }

  UploadPartCopyOutputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucketKeyEnabled = $v.bucketKeyEnabled;
      _copyPartResult = $v.copyPartResult?.toBuilder();
      _copySourceVersionId = $v.copySourceVersionId;
      _requestCharged = $v.requestCharged;
      _serverSideEncryption = $v.serverSideEncryption;
      _sseCustomerAlgorithm = $v.sseCustomerAlgorithm;
      _sseCustomerKeyMd5 = $v.sseCustomerKeyMd5;
      _ssekmsKeyId = $v.ssekmsKeyId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UploadPartCopyOutput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UploadPartCopyOutput;
  }

  @override
  void update(void Function(UploadPartCopyOutputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UploadPartCopyOutput build() => _build();

  _$UploadPartCopyOutput _build() {
    _$UploadPartCopyOutput _$result;
    try {
      _$result = _$v ??
          new _$UploadPartCopyOutput._(
              bucketKeyEnabled: BuiltValueNullFieldError.checkNotNull(
                  bucketKeyEnabled,
                  r'UploadPartCopyOutput',
                  'bucketKeyEnabled'),
              copyPartResult: _copyPartResult?.build(),
              copySourceVersionId: copySourceVersionId,
              requestCharged: requestCharged,
              serverSideEncryption: serverSideEncryption,
              sseCustomerAlgorithm: sseCustomerAlgorithm,
              sseCustomerKeyMd5: sseCustomerKeyMd5,
              ssekmsKeyId: ssekmsKeyId);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'copyPartResult';
        _copyPartResult?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UploadPartCopyOutput', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas