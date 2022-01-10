// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_create_order_response.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GCheckCreateOrderResponseFragmentData>
    _$gCheckCreateOrderResponseFragmentDataSerializer =
    new _$GCheckCreateOrderResponseFragmentDataSerializer();

class _$GCheckCreateOrderResponseFragmentDataSerializer
    implements StructuredSerializer<GCheckCreateOrderResponseFragmentData> {
  @override
  final Iterable<Type> types = const [
    GCheckCreateOrderResponseFragmentData,
    _$GCheckCreateOrderResponseFragmentData
  ];
  @override
  final String wireName = 'GCheckCreateOrderResponseFragmentData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCheckCreateOrderResponseFragmentData object,
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
    return result;
  }

  @override
  GCheckCreateOrderResponseFragmentData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCheckCreateOrderResponseFragmentDataBuilder();

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
      }
    }

    return result.build();
  }
}

class _$GCheckCreateOrderResponseFragmentData
    extends GCheckCreateOrderResponseFragmentData {
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

  factory _$GCheckCreateOrderResponseFragmentData(
          [void Function(GCheckCreateOrderResponseFragmentDataBuilder)?
              updates]) =>
      (new GCheckCreateOrderResponseFragmentDataBuilder()..update(updates))
          .build();

  _$GCheckCreateOrderResponseFragmentData._(
      {required this.G__typename,
      this.deliveryRestriction,
      this.problem,
      this.resultState,
      this.deliveryDurationInMinutes,
      this.deliveryServiceProductInfo})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GCheckCreateOrderResponseFragmentData', 'G__typename');
  }

  @override
  GCheckCreateOrderResponseFragmentData rebuild(
          void Function(GCheckCreateOrderResponseFragmentDataBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCheckCreateOrderResponseFragmentDataBuilder toBuilder() =>
      new GCheckCreateOrderResponseFragmentDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCheckCreateOrderResponseFragmentData &&
        G__typename == other.G__typename &&
        deliveryRestriction == other.deliveryRestriction &&
        problem == other.problem &&
        resultState == other.resultState &&
        deliveryDurationInMinutes == other.deliveryDurationInMinutes &&
        deliveryServiceProductInfo == other.deliveryServiceProductInfo;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc(0, G__typename.hashCode),
                        deliveryRestriction.hashCode),
                    problem.hashCode),
                resultState.hashCode),
            deliveryDurationInMinutes.hashCode),
        deliveryServiceProductInfo.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GCheckCreateOrderResponseFragmentData')
          ..add('G__typename', G__typename)
          ..add('deliveryRestriction', deliveryRestriction)
          ..add('problem', problem)
          ..add('resultState', resultState)
          ..add('deliveryDurationInMinutes', deliveryDurationInMinutes)
          ..add('deliveryServiceProductInfo', deliveryServiceProductInfo))
        .toString();
  }
}

class GCheckCreateOrderResponseFragmentDataBuilder
    implements
        Builder<GCheckCreateOrderResponseFragmentData,
            GCheckCreateOrderResponseFragmentDataBuilder> {
  _$GCheckCreateOrderResponseFragmentData? _$v;

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

  GCheckCreateOrderResponseFragmentDataBuilder() {
    GCheckCreateOrderResponseFragmentData._initializeBuilder(this);
  }

  GCheckCreateOrderResponseFragmentDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _deliveryRestriction = $v.deliveryRestriction;
      _problem = $v.problem;
      _resultState = $v.resultState;
      _deliveryDurationInMinutes = $v.deliveryDurationInMinutes;
      _deliveryServiceProductInfo = $v.deliveryServiceProductInfo;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCheckCreateOrderResponseFragmentData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCheckCreateOrderResponseFragmentData;
  }

  @override
  void update(
      void Function(GCheckCreateOrderResponseFragmentDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GCheckCreateOrderResponseFragmentData build() {
    final _$result = _$v ??
        new _$GCheckCreateOrderResponseFragmentData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                'GCheckCreateOrderResponseFragmentData', 'G__typename'),
            deliveryRestriction: deliveryRestriction,
            problem: problem,
            resultState: resultState,
            deliveryDurationInMinutes: deliveryDurationInMinutes,
            deliveryServiceProductInfo: deliveryServiceProductInfo);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
