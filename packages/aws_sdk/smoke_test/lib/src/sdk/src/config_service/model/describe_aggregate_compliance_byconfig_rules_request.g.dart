// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.describe_aggregate_compliance_byconfig_rules_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DescribeAggregateComplianceByconfigRulesRequest
    extends DescribeAggregateComplianceByconfigRulesRequest {
  @override
  final String configurationAggregatorName;
  @override
  final _i3.ConfigRuleComplianceFilters? filters;
  @override
  final int limit;
  @override
  final String? nextToken;

  factory _$DescribeAggregateComplianceByconfigRulesRequest(
          [void Function(
                  DescribeAggregateComplianceByconfigRulesRequestBuilder)?
              updates]) =>
      (new DescribeAggregateComplianceByconfigRulesRequestBuilder()
            ..update(updates))
          ._build();

  _$DescribeAggregateComplianceByconfigRulesRequest._(
      {required this.configurationAggregatorName,
      this.filters,
      required this.limit,
      this.nextToken})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        configurationAggregatorName,
        r'DescribeAggregateComplianceByconfigRulesRequest',
        'configurationAggregatorName');
    BuiltValueNullFieldError.checkNotNull(
        limit, r'DescribeAggregateComplianceByconfigRulesRequest', 'limit');
  }

  @override
  DescribeAggregateComplianceByconfigRulesRequest rebuild(
          void Function(DescribeAggregateComplianceByconfigRulesRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DescribeAggregateComplianceByconfigRulesRequestBuilder toBuilder() =>
      new DescribeAggregateComplianceByconfigRulesRequestBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DescribeAggregateComplianceByconfigRulesRequest &&
        configurationAggregatorName == other.configurationAggregatorName &&
        filters == other.filters &&
        limit == other.limit &&
        nextToken == other.nextToken;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, configurationAggregatorName.hashCode), filters.hashCode),
            limit.hashCode),
        nextToken.hashCode));
  }
}

class DescribeAggregateComplianceByconfigRulesRequestBuilder
    implements
        Builder<DescribeAggregateComplianceByconfigRulesRequest,
            DescribeAggregateComplianceByconfigRulesRequestBuilder> {
  _$DescribeAggregateComplianceByconfigRulesRequest? _$v;

  String? _configurationAggregatorName;
  String? get configurationAggregatorName =>
      _$this._configurationAggregatorName;
  set configurationAggregatorName(String? configurationAggregatorName) =>
      _$this._configurationAggregatorName = configurationAggregatorName;

  _i3.ConfigRuleComplianceFiltersBuilder? _filters;
  _i3.ConfigRuleComplianceFiltersBuilder get filters =>
      _$this._filters ??= new _i3.ConfigRuleComplianceFiltersBuilder();
  set filters(_i3.ConfigRuleComplianceFiltersBuilder? filters) =>
      _$this._filters = filters;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  DescribeAggregateComplianceByconfigRulesRequestBuilder() {
    DescribeAggregateComplianceByconfigRulesRequest._init(this);
  }

  DescribeAggregateComplianceByconfigRulesRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _configurationAggregatorName = $v.configurationAggregatorName;
      _filters = $v.filters?.toBuilder();
      _limit = $v.limit;
      _nextToken = $v.nextToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DescribeAggregateComplianceByconfigRulesRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DescribeAggregateComplianceByconfigRulesRequest;
  }

  @override
  void update(
      void Function(DescribeAggregateComplianceByconfigRulesRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  DescribeAggregateComplianceByconfigRulesRequest build() => _build();

  _$DescribeAggregateComplianceByconfigRulesRequest _build() {
    _$DescribeAggregateComplianceByconfigRulesRequest _$result;
    try {
      _$result = _$v ??
          new _$DescribeAggregateComplianceByconfigRulesRequest._(
              configurationAggregatorName:
                  BuiltValueNullFieldError.checkNotNull(
                      configurationAggregatorName,
                      r'DescribeAggregateComplianceByconfigRulesRequest',
                      'configurationAggregatorName'),
              filters: _filters?.build(),
              limit: BuiltValueNullFieldError.checkNotNull(limit,
                  r'DescribeAggregateComplianceByconfigRulesRequest', 'limit'),
              nextToken: nextToken);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'filters';
        _filters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DescribeAggregateComplianceByconfigRulesRequest',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas