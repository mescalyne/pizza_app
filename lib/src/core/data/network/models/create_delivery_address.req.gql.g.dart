// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_delivery_address.req.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GCreateDeliveryAddressReq> _$gCreateDeliveryAddressReqSerializer =
    new _$GCreateDeliveryAddressReqSerializer();

class _$GCreateDeliveryAddressReqSerializer
    implements StructuredSerializer<GCreateDeliveryAddressReq> {
  @override
  final Iterable<Type> types = const [
    GCreateDeliveryAddressReq,
    _$GCreateDeliveryAddressReq
  ];
  @override
  final String wireName = 'GCreateDeliveryAddressReq';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCreateDeliveryAddressReq object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'vars',
      serializers.serialize(object.vars,
          specifiedType: const FullType(_i3.GCreateDeliveryAddressVars)),
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
            specifiedType: const FullType(_i2.GCreateDeliveryAddressData)));
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
  GCreateDeliveryAddressReq deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCreateDeliveryAddressReqBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vars':
          result.vars.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(_i3.GCreateDeliveryAddressVars))!
              as _i3.GCreateDeliveryAddressVars);
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
                  specifiedType:
                      const FullType(_i2.GCreateDeliveryAddressData))!
              as _i2.GCreateDeliveryAddressData);
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

class _$GCreateDeliveryAddressReq extends GCreateDeliveryAddressReq {
  @override
  final _i3.GCreateDeliveryAddressVars vars;
  @override
  final _i4.Operation operation;
  @override
  final String? requestId;
  @override
  final _i2.GCreateDeliveryAddressData? Function(
          _i2.GCreateDeliveryAddressData?, _i2.GCreateDeliveryAddressData?)?
      updateResult;
  @override
  final _i2.GCreateDeliveryAddressData? optimisticResponse;
  @override
  final String? updateCacheHandlerKey;
  @override
  final Map<String, dynamic>? updateCacheHandlerContext;
  @override
  final _i1.FetchPolicy? fetchPolicy;
  @override
  final bool executeOnListen;

  factory _$GCreateDeliveryAddressReq(
          [void Function(GCreateDeliveryAddressReqBuilder)? updates]) =>
      (new GCreateDeliveryAddressReqBuilder()..update(updates)).build();

  _$GCreateDeliveryAddressReq._(
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
        vars, 'GCreateDeliveryAddressReq', 'vars');
    BuiltValueNullFieldError.checkNotNull(
        operation, 'GCreateDeliveryAddressReq', 'operation');
    BuiltValueNullFieldError.checkNotNull(
        executeOnListen, 'GCreateDeliveryAddressReq', 'executeOnListen');
  }

  @override
  GCreateDeliveryAddressReq rebuild(
          void Function(GCreateDeliveryAddressReqBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCreateDeliveryAddressReqBuilder toBuilder() =>
      new GCreateDeliveryAddressReqBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    final dynamic _$dynamicOther = other;
    return other is GCreateDeliveryAddressReq &&
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
    return (newBuiltValueToStringHelper('GCreateDeliveryAddressReq')
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

class GCreateDeliveryAddressReqBuilder
    implements
        Builder<GCreateDeliveryAddressReq, GCreateDeliveryAddressReqBuilder> {
  _$GCreateDeliveryAddressReq? _$v;

  _i3.GCreateDeliveryAddressVarsBuilder? _vars;
  _i3.GCreateDeliveryAddressVarsBuilder get vars =>
      _$this._vars ??= new _i3.GCreateDeliveryAddressVarsBuilder();
  set vars(_i3.GCreateDeliveryAddressVarsBuilder? vars) => _$this._vars = vars;

  _i4.Operation? _operation;
  _i4.Operation? get operation => _$this._operation;
  set operation(_i4.Operation? operation) => _$this._operation = operation;

  String? _requestId;
  String? get requestId => _$this._requestId;
  set requestId(String? requestId) => _$this._requestId = requestId;

  _i2.GCreateDeliveryAddressData? Function(
          _i2.GCreateDeliveryAddressData?, _i2.GCreateDeliveryAddressData?)?
      _updateResult;
  _i2.GCreateDeliveryAddressData? Function(
          _i2.GCreateDeliveryAddressData?, _i2.GCreateDeliveryAddressData?)?
      get updateResult => _$this._updateResult;
  set updateResult(
          _i2.GCreateDeliveryAddressData? Function(
                  _i2.GCreateDeliveryAddressData?,
                  _i2.GCreateDeliveryAddressData?)?
              updateResult) =>
      _$this._updateResult = updateResult;

  _i2.GCreateDeliveryAddressDataBuilder? _optimisticResponse;
  _i2.GCreateDeliveryAddressDataBuilder get optimisticResponse =>
      _$this._optimisticResponse ??=
          new _i2.GCreateDeliveryAddressDataBuilder();
  set optimisticResponse(
          _i2.GCreateDeliveryAddressDataBuilder? optimisticResponse) =>
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

  GCreateDeliveryAddressReqBuilder() {
    GCreateDeliveryAddressReq._initializeBuilder(this);
  }

  GCreateDeliveryAddressReqBuilder get _$this {
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
  void replace(GCreateDeliveryAddressReq other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCreateDeliveryAddressReq;
  }

  @override
  void update(void Function(GCreateDeliveryAddressReqBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GCreateDeliveryAddressReq build() {
    _$GCreateDeliveryAddressReq _$result;
    try {
      _$result = _$v ??
          new _$GCreateDeliveryAddressReq._(
              vars: vars.build(),
              operation: BuiltValueNullFieldError.checkNotNull(
                  operation, 'GCreateDeliveryAddressReq', 'operation'),
              requestId: requestId,
              updateResult: updateResult,
              optimisticResponse: _optimisticResponse?.build(),
              updateCacheHandlerKey: updateCacheHandlerKey,
              updateCacheHandlerContext: updateCacheHandlerContext,
              fetchPolicy: fetchPolicy,
              executeOnListen: BuiltValueNullFieldError.checkNotNull(
                  executeOnListen,
                  'GCreateDeliveryAddressReq',
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
            'GCreateDeliveryAddressReq', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
