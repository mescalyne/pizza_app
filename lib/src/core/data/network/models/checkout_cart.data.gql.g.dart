// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checkout_cart.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GCheckoutCartData> _$gCheckoutCartDataSerializer =
    new _$GCheckoutCartDataSerializer();
Serializer<GCheckoutCartData_checkoutCart>
    _$gCheckoutCartDataCheckoutCartSerializer =
    new _$GCheckoutCartData_checkoutCartSerializer();

class _$GCheckoutCartDataSerializer
    implements StructuredSerializer<GCheckoutCartData> {
  @override
  final Iterable<Type> types = const [GCheckoutCartData, _$GCheckoutCartData];
  @override
  final String wireName = 'GCheckoutCartData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GCheckoutCartData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.checkoutCart;
    if (value != null) {
      result
        ..add('checkoutCart')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GCheckoutCartData_checkoutCart)));
    }
    return result;
  }

  @override
  GCheckoutCartData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCheckoutCartDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'checkoutCart':
          result.checkoutCart.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GCheckoutCartData_checkoutCart))!
              as GCheckoutCartData_checkoutCart);
          break;
      }
    }

    return result.build();
  }
}

class _$GCheckoutCartData_checkoutCartSerializer
    implements StructuredSerializer<GCheckoutCartData_checkoutCart> {
  @override
  final Iterable<Type> types = const [
    GCheckoutCartData_checkoutCart,
    _$GCheckoutCartData_checkoutCart
  ];
  @override
  final String wireName = 'GCheckoutCartData_checkoutCart';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCheckoutCartData_checkoutCart object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.deliveryRestriction;
    if (value != null) {
      result
        ..add('deliveryRestriction')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.problem;
    if (value != null) {
      result
        ..add('problem')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.resultState;
    if (value != null) {
      result
        ..add('resultState')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.deliveryDurationInMinutes;
    if (value != null) {
      result
        ..add('deliveryDurationInMinutes')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.deliveryServiceProductInfo;
    if (value != null) {
      result
        ..add('deliveryServiceProductInfo')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.url;
    if (value != null) {
      result
        ..add('url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GCheckoutCartData_checkoutCart deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCheckoutCartData_checkoutCartBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'deliveryRestriction':
          result.deliveryRestriction = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'problem':
          result.problem = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'resultState':
          result.resultState = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'deliveryDurationInMinutes':
          result.deliveryDurationInMinutes = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'deliveryServiceProductInfo':
          result.deliveryServiceProductInfo = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GCheckoutCartData extends GCheckoutCartData {
  @override
  final String G__typename;
  @override
  final GCheckoutCartData_checkoutCart? checkoutCart;

  factory _$GCheckoutCartData(
          [void Function(GCheckoutCartDataBuilder)? updates]) =>
      (new GCheckoutCartDataBuilder()..update(updates)).build();

  _$GCheckoutCartData._({required this.G__typename, this.checkoutCart})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GCheckoutCartData', 'G__typename');
  }

  @override
  GCheckoutCartData rebuild(void Function(GCheckoutCartDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCheckoutCartDataBuilder toBuilder() =>
      new GCheckoutCartDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCheckoutCartData &&
        G__typename == other.G__typename &&
        checkoutCart == other.checkoutCart;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), checkoutCart.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GCheckoutCartData')
          ..add('G__typename', G__typename)
          ..add('checkoutCart', checkoutCart))
        .toString();
  }
}

class GCheckoutCartDataBuilder
    implements Builder<GCheckoutCartData, GCheckoutCartDataBuilder> {
  _$GCheckoutCartData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GCheckoutCartData_checkoutCartBuilder? _checkoutCart;
  GCheckoutCartData_checkoutCartBuilder get checkoutCart =>
      _$this._checkoutCart ??= new GCheckoutCartData_checkoutCartBuilder();
  set checkoutCart(GCheckoutCartData_checkoutCartBuilder? checkoutCart) =>
      _$this._checkoutCart = checkoutCart;

  GCheckoutCartDataBuilder() {
    GCheckoutCartData._initializeBuilder(this);
  }

  GCheckoutCartDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _checkoutCart = $v.checkoutCart?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCheckoutCartData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCheckoutCartData;
  }

  @override
  void update(void Function(GCheckoutCartDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GCheckoutCartData build() {
    _$GCheckoutCartData _$result;
    try {
      _$result = _$v ??
          new _$GCheckoutCartData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GCheckoutCartData', 'G__typename'),
              checkoutCart: _checkoutCart?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'checkoutCart';
        _checkoutCart?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GCheckoutCartData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GCheckoutCartData_checkoutCart extends GCheckoutCartData_checkoutCart {
  @override
  final String G__typename;
  @override
  final String? deliveryRestriction;
  @override
  final String? problem;
  @override
  final int? resultState;
  @override
  final int? deliveryDurationInMinutes;
  @override
  final int? deliveryServiceProductInfo;
  @override
  final String? url;

  factory _$GCheckoutCartData_checkoutCart(
          [void Function(GCheckoutCartData_checkoutCartBuilder)? updates]) =>
      (new GCheckoutCartData_checkoutCartBuilder()..update(updates)).build();

  _$GCheckoutCartData_checkoutCart._(
      {required this.G__typename,
      this.deliveryRestriction,
      this.problem,
      this.resultState,
      this.deliveryDurationInMinutes,
      this.deliveryServiceProductInfo,
      this.url})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GCheckoutCartData_checkoutCart', 'G__typename');
  }

  @override
  GCheckoutCartData_checkoutCart rebuild(
          void Function(GCheckoutCartData_checkoutCartBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCheckoutCartData_checkoutCartBuilder toBuilder() =>
      new GCheckoutCartData_checkoutCartBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCheckoutCartData_checkoutCart &&
        G__typename == other.G__typename &&
        deliveryRestriction == other.deliveryRestriction &&
        problem == other.problem &&
        resultState == other.resultState &&
        deliveryDurationInMinutes == other.deliveryDurationInMinutes &&
        deliveryServiceProductInfo == other.deliveryServiceProductInfo &&
        url == other.url;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc(0, G__typename.hashCode),
                            deliveryRestriction.hashCode),
                        problem.hashCode),
                    resultState.hashCode),
                deliveryDurationInMinutes.hashCode),
            deliveryServiceProductInfo.hashCode),
        url.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GCheckoutCartData_checkoutCart')
          ..add('G__typename', G__typename)
          ..add('deliveryRestriction', deliveryRestriction)
          ..add('problem', problem)
          ..add('resultState', resultState)
          ..add('deliveryDurationInMinutes', deliveryDurationInMinutes)
          ..add('deliveryServiceProductInfo', deliveryServiceProductInfo)
          ..add('url', url))
        .toString();
  }
}

class GCheckoutCartData_checkoutCartBuilder
    implements
        Builder<GCheckoutCartData_checkoutCart,
            GCheckoutCartData_checkoutCartBuilder> {
  _$GCheckoutCartData_checkoutCart? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _deliveryRestriction;
  String? get deliveryRestriction => _$this._deliveryRestriction;
  set deliveryRestriction(String? deliveryRestriction) =>
      _$this._deliveryRestriction = deliveryRestriction;

  String? _problem;
  String? get problem => _$this._problem;
  set problem(String? problem) => _$this._problem = problem;

  int? _resultState;
  int? get resultState => _$this._resultState;
  set resultState(int? resultState) => _$this._resultState = resultState;

  int? _deliveryDurationInMinutes;
  int? get deliveryDurationInMinutes => _$this._deliveryDurationInMinutes;
  set deliveryDurationInMinutes(int? deliveryDurationInMinutes) =>
      _$this._deliveryDurationInMinutes = deliveryDurationInMinutes;

  int? _deliveryServiceProductInfo;
  int? get deliveryServiceProductInfo => _$this._deliveryServiceProductInfo;
  set deliveryServiceProductInfo(int? deliveryServiceProductInfo) =>
      _$this._deliveryServiceProductInfo = deliveryServiceProductInfo;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  GCheckoutCartData_checkoutCartBuilder() {
    GCheckoutCartData_checkoutCart._initializeBuilder(this);
  }

  GCheckoutCartData_checkoutCartBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _deliveryRestriction = $v.deliveryRestriction;
      _problem = $v.problem;
      _resultState = $v.resultState;
      _deliveryDurationInMinutes = $v.deliveryDurationInMinutes;
      _deliveryServiceProductInfo = $v.deliveryServiceProductInfo;
      _url = $v.url;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCheckoutCartData_checkoutCart other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCheckoutCartData_checkoutCart;
  }

  @override
  void update(void Function(GCheckoutCartData_checkoutCartBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GCheckoutCartData_checkoutCart build() {
    final _$result = _$v ??
        new _$GCheckoutCartData_checkoutCart._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, 'GCheckoutCartData_checkoutCart', 'G__typename'),
            deliveryRestriction: deliveryRestriction,
            problem: problem,
            resultState: resultState,
            deliveryDurationInMinutes: deliveryDurationInMinutes,
            deliveryServiceProductInfo: deliveryServiceProductInfo,
            url: url);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
