// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_feedback_options.req.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetFeedbackOptionsReq> _$gGetFeedbackOptionsReqSerializer =
    new _$GGetFeedbackOptionsReqSerializer();

class _$GGetFeedbackOptionsReqSerializer
    implements StructuredSerializer<GGetFeedbackOptionsReq> {
  @override
  final Iterable<Type> types = const [
    GGetFeedbackOptionsReq,
    _$GGetFeedbackOptionsReq
  ];
  @override
  final String wireName = 'GGetFeedbackOptionsReq';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetFeedbackOptionsReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GGetFeedbackOptionsVars)),
      'operation',
      serializers.serialize(object.operation,
          specifiedType: const FullType(_i4.Operation)),
      'executeOnListen',
      serializers.serialize(object.executeOnListen,
          specifiedType: const FullType(bool)),
    ];
    Object? value;
    value = object.requestId;
    if (value != null) {
      result
        ..add('requestId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.optimisticResponse;
    if (value != null) {
      result
        ..add('optimisticResponse')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i2.GGetFeedbackOptionsData)));
    }
    value = object.updateCacheHandlerKey;
    if (value != null) {
      result
        ..add('updateCacheHandlerKey')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.updateCacheHandlerContext;
    if (value != null) {
      result
        ..add('updateCacheHandlerContext')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                Map, const [const FullType(String), const FullType(dynamic)])));
    }
    value = object.fetchPolicy;
    if (value != null) {
      result
        ..add('fetchPolicy')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i1.FetchPolicy)));
    }
    return result;
  }

  @override
  GGetFeedbackOptionsReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetFeedbackOptionsReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GGetFeedbackOptionsVars))!
              as _i3.GGetFeedbackOptionsVars);
          break;
        case 'operation':
          result.operation = serializers.deserialize(value,
              specifiedType: const FullType(_i4.Operation)) as _i4.Operation;
          break;
        case 'requestId':
          result.requestId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'optimisticResponse':
          result.optimisticResponse.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i2.GGetFeedbackOptionsData))!
              as _i2.GGetFeedbackOptionsData);
          break;
        case 'updateCacheHandlerKey':
          result.updateCacheHandlerKey = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'updateCacheHandlerContext':
          result.updateCacheHandlerContext = serializers.deserialize(value,
              specifiedType: const FullType(Map, const [
                const FullType(String),
                const FullType(dynamic)
              ])) as Map<String, dynamic>?;
          break;
        case 'fetchPolicy':
          result.fetchPolicy = serializers.deserialize(value,
                  specifiedType: const FullType(_i1.FetchPolicy))
              as _i1.FetchPolicy?;
          break;
        case 'executeOnListen':
          result.executeOnListen = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetFeedbackOptionsReq extends GGetFeedbackOptionsReq {
  @override
  final _i3.GGetFeedbackOptionsVars vars;
  @override
  final _i4.Operation operation;
  @override
  final String? requestId;
  @override
  final _i2.GGetFeedbackOptionsData? Function(
      _i2.GGetFeedbackOptionsData?, _i2.GGetFeedbackOptionsData?)? updateResult;
  @override
  final _i2.GGetFeedbackOptionsData? optimisticResponse;
  @override
  final String? updateCacheHandlerKey;
  @override
  final Map<String, dynamic>? updateCacheHandlerContext;
  @override
  final _i1.FetchPolicy? fetchPolicy;
  @override
  final bool executeOnListen;

  factory _$GGetFeedbackOptionsReq(
          [void Function(GGetFeedbackOptionsReqBuilder)? updates]) =>
      (new GGetFeedbackOptionsReqBuilder()..update(updates)).build();

  _$GGetFeedbackOptionsReq._(
      {required this.vars,
      required this.operation,
      this.requestId,
      this.updateResult,
      this.optimisticResponse,
      this.updateCacheHandlerKey,
      this.updateCacheHandlerContext,
      this.fetchPolicy,
      required this.executeOnListen})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        vars, 'GGetFeedbackOptionsReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        operation, 'GGetFeedbackOptionsReq', 'operation');
    BuiltValueNullFieldError.checkNotNull(
        executeOnListen, 'GGetFeedbackOptionsReq', 'executeOnListen');
  }

  @override
  GGetFeedbackOptionsReq rebuild(
          void Function(GGetFeedbackOptionsReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetFeedbackOptionsReqBuilder toBuilder() =>
      new GGetFeedbackOptionsReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    final dynamic _$dynamicOther = other;
    return other is GGetFeedbackOptionsReq &&
        vars == other.vars &&
        operation == other.operation &&
        requestId == other.requestId &&
        updateResult == _$dynamicOther.updateResult &&
        optimisticResponse == other.optimisticResponse &&
        updateCacheHandlerKey == other.updateCacheHandlerKey &&
        updateCacheHandlerContext == other.updateCacheHandlerContext &&
        fetchPolicy == other.fetchPolicy &&
        executeOnListen == other.executeOnListen;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, vars.hashCode), operation.hashCode),
                                requestId.hashCode),
                            updateResult.hashCode),
                        optimisticResponse.hashCode),
                    updateCacheHandlerKey.hashCode),
                updateCacheHandlerContext.hashCode),
            fetchPolicy.hashCode),
        executeOnListen.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetFeedbackOptionsReq')
          ..add('vars', vars)
          ..add('operation', operation)
          ..add('requestId', requestId)
          ..add('updateResult', updateResult)
          ..add('optimisticResponse', optimisticResponse)
          ..add('updateCacheHandlerKey', updateCacheHandlerKey)
          ..add('updateCacheHandlerContext', updateCacheHandlerContext)
          ..add('fetchPolicy', fetchPolicy)
          ..add('executeOnListen', executeOnListen))
        .toString();
  }
}

class GGetFeedbackOptionsReqBuilder
    implements Builder<GGetFeedbackOptionsReq, GGetFeedbackOptionsReqBuilder> {
  _$GGetFeedbackOptionsReq? _$v;

  _i3.GGetFeedbackOptionsVarsBuilder? _vars;
  _i3.GGetFeedbackOptionsVarsBuilder get vars =>
      _$this._vars ??= new _i3.GGetFeedbackOptionsVarsBuilder();
  set vars(_i3.GGetFeedbackOptionsVarsBuilder? vars) => _$this._vars = vars;

  _i4.Operation? _operation;
  _i4.Operation? get operation => _$this._operation;
  set operation(_i4.Operation? operation) => _$this._operation = operation;

  String? _requestId;
  String? get requestId => _$this._requestId;
  set requestId(String? requestId) => _$this._requestId = requestId;

  _i2.GGetFeedbackOptionsData? Function(
          _i2.GGetFeedbackOptionsData?, _i2.GGetFeedbackOptionsData?)?
      _updateResult;
  _i2.GGetFeedbackOptionsData? Function(
          _i2.GGetFeedbackOptionsData?, _i2.GGetFeedbackOptionsData?)?
      get updateResult => _$this._updateResult;
  set updateResult(
          _i2.GGetFeedbackOptionsData? Function(
                  _i2.GGetFeedbackOptionsData?, _i2.GGetFeedbackOptionsData?)?
              updateResult) =>
      _$this._updateResult = updateResult;

  _i2.GGetFeedbackOptionsDataBuilder? _optimisticResponse;
  _i2.GGetFeedbackOptionsDataBuilder get optimisticResponse =>
      _$this._optimisticResponse ??= new _i2.GGetFeedbackOptionsDataBuilder();
  set optimisticResponse(
          _i2.GGetFeedbackOptionsDataBuilder? optimisticResponse) =>
      _$this._optimisticResponse = optimisticResponse;

  String? _updateCacheHandlerKey;
  String? get updateCacheHandlerKey => _$this._updateCacheHandlerKey;
  set updateCacheHandlerKey(String? updateCacheHandlerKey) =>
      _$this._updateCacheHandlerKey = updateCacheHandlerKey;

  Map<String, dynamic>? _updateCacheHandlerContext;
  Map<String, dynamic>? get updateCacheHandlerContext =>
      _$this._updateCacheHandlerContext;
  set updateCacheHandlerContext(
          Map<String, dynamic>? updateCacheHandlerContext) =>
      _$this._updateCacheHandlerContext = updateCacheHandlerContext;

  _i1.FetchPolicy? _fetchPolicy;
  _i1.FetchPolicy? get fetchPolicy => _$this._fetchPolicy;
  set fetchPolicy(_i1.FetchPolicy? fetchPolicy) =>
      _$this._fetchPolicy = fetchPolicy;

  bool? _executeOnListen;
  bool? get executeOnListen => _$this._executeOnListen;
  set executeOnListen(bool? executeOnListen) =>
      _$this._executeOnListen = executeOnListen;

  GGetFeedbackOptionsReqBuilder() {
    GGetFeedbackOptionsReq._initializeBuilder(this);
  }

  GGetFeedbackOptionsReqBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vars = $v.vars.toBuilder();
      _operation = $v.operation;
      _requestId = $v.requestId;
      _updateResult = $v.updateResult;
      _optimisticResponse = $v.optimisticResponse?.toBuilder();
      _updateCacheHandlerKey = $v.updateCacheHandlerKey;
      _updateCacheHandlerContext = $v.updateCacheHandlerContext;
      _fetchPolicy = $v.fetchPolicy;
      _executeOnListen = $v.executeOnListen;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetFeedbackOptionsReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetFeedbackOptionsReq;
  }

  @override
  void update(void Function(GGetFeedbackOptionsReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetFeedbackOptionsReq build() {
    _$GGetFeedbackOptionsReq _$result;
    try {
      _$result = _$v ??
          new _$GGetFeedbackOptionsReq._(
              vars: vars.build(),
              operation: BuiltValueNullFieldError.checkNotNull(
                  operation, 'GGetFeedbackOptionsReq', 'operation'),
              requestId: requestId,
              updateResult: updateResult,
              optimisticResponse: _optimisticResponse?.build(),
              updateCacheHandlerKey: updateCacheHandlerKey,
              updateCacheHandlerContext: updateCacheHandlerContext,
              fetchPolicy: fetchPolicy,
              executeOnListen: BuiltValueNullFieldError.checkNotNull(
                  executeOnListen,
                  'GGetFeedbackOptionsReq',
                  'executeOnListen'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'vars';
        vars.build();

        _$failedField = 'optimisticResponse';
        _optimisticResponse?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GGetFeedbackOptionsReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
