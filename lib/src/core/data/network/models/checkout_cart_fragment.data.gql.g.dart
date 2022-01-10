// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checkout_cart_fragment.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GCheckoutResponseFragmentData>
    _$gCheckoutResponseFragmentDataSerializer =
    new _$GCheckoutResponseFragmentDataSerializer();

class _$GCheckoutResponseFragmentDataSerializer
    implements StructuredSerializer<GCheckoutResponseFragmentData> {
  @override
  final Iterable<Type> types = const [
    GCheckoutResponseFragmentData,
    _$GCheckoutResponseFragmentData
  ];
  @override
  final String wireName = 'GCheckoutResponseFragmentData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCheckoutResponseFragmentData object,
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
  GCheckoutResponseFragmentData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCheckoutResponseFragmentDataBuilder();

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

class _$GCheckoutResponseFragmentData extends GCheckoutResponseFragmentData {
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

  factory _$GCheckoutResponseFragmentData(
          [void Function(GCheckoutResponseFragmentDataBuilder)? updates]) =>
      (new GCheckoutResponseFragmentDataBuilder()..update(updates)).build();

  _$GCheckoutResponseFragmentData._(
      {required this.G__typename,
      this.deliveryRestriction,
      this.problem,
      this.resultState,
      this.deliveryDurationInMinutes,
      this.deliveryServiceProductInfo,
      this.url})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GCheckoutResponseFragmentData', 'G__typename');
  }

  @override
  GCheckoutResponseFragmentData rebuild(
          void Function(GCheckoutResponseFragmentDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCheckoutResponseFragmentDataBuilder toBuilder() =>
      new GCheckoutResponseFragmentDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCheckoutResponseFragmentData &&
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
    return (newBuiltValueToStringHelper('GCheckoutResponseFragmentData')
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

class GCheckoutResponseFragmentDataBuilder
    implements
        Builder<GCheckoutResponseFragmentData,
            GCheckoutResponseFragmentDataBuilder> {
  _$GCheckoutResponseFragmentData? _$v;

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

  GCheckoutResponseFragmentDataBuilder() {
    GCheckoutResponseFragmentData._initializeBuilder(this);
  }

  GCheckoutResponseFragmentDataBuilder get _$this {
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
  void replace(GCheckoutResponseFragmentData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCheckoutResponseFragmentData;
  }

  @override
  void update(void Function(GCheckoutResponseFragmentDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GCheckoutResponseFragmentData build() {
    final _$result = _$v ??
        new _$GCheckoutResponseFragmentData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, 'GCheckoutResponseFragmentData', 'G__typename'),
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
