// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_create_order.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GCheckCreateOrderData> _$gCheckCreateOrderDataSerializer =
    new _$GCheckCreateOrderDataSerializer();
Serializer<GCheckCreateOrderData_checkCreateOrder>
    _$gCheckCreateOrderDataCheckCreateOrderSerializer =
    new _$GCheckCreateOrderData_checkCreateOrderSerializer();

class _$GCheckCreateOrderDataSerializer
    implements StructuredSerializer<GCheckCreateOrderData> {
  @override
  final Iterable<Type> types = const [
    GCheckCreateOrderData,
    _$GCheckCreateOrderData
  ];
  @override
  final String wireName = 'GCheckCreateOrderData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCheckCreateOrderData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'checkCreateOrder',
      serializers.serialize(object.checkCreateOrder,
          specifiedType:
              const FullType(GCheckCreateOrderData_checkCreateOrder)),
    ];

    return result;
  }

  @override
  GCheckCreateOrderData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCheckCreateOrderDataBuilder();

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
        case 'checkCreateOrder':
          result.checkCreateOrder.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GCheckCreateOrderData_checkCreateOrder))!
              as GCheckCreateOrderData_checkCreateOrder);
          break;
      }
    }

    return result.build();
  }
}

class _$GCheckCreateOrderData_checkCreateOrderSerializer
    implements StructuredSerializer<GCheckCreateOrderData_checkCreateOrder> {
  @override
  final Iterable<Type> types = const [
    GCheckCreateOrderData_checkCreateOrder,
    _$GCheckCreateOrderData_checkCreateOrder
  ];
  @override
  final String wireName = 'GCheckCreateOrderData_checkCreateOrder';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCheckCreateOrderData_checkCreateOrder object,
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
  GCheckCreateOrderData_checkCreateOrder deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCheckCreateOrderData_checkCreateOrderBuilder();

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

class _$GCheckCreateOrderData extends GCheckCreateOrderData {
  @override
  final String G__typename;
  @override
  final GCheckCreateOrderData_checkCreateOrder checkCreateOrder;

  factory _$GCheckCreateOrderData(
          [void Function(GCheckCreateOrderDataBuilder)? updates]) =>
      (new GCheckCreateOrderDataBuilder()..update(updates)).build();

  _$GCheckCreateOrderData._(
      {required this.G__typename, required this.checkCreateOrder})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GCheckCreateOrderData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        checkCreateOrder, 'GCheckCreateOrderData', 'checkCreateOrder');
  }

  @override
  GCheckCreateOrderData rebuild(
          void Function(GCheckCreateOrderDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCheckCreateOrderDataBuilder toBuilder() =>
      new GCheckCreateOrderDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCheckCreateOrderData &&
        G__typename == other.G__typename &&
        checkCreateOrder == other.checkCreateOrder;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), checkCreateOrder.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GCheckCreateOrderData')
          ..add('G__typename', G__typename)
          ..add('checkCreateOrder', checkCreateOrder))
        .toString();
  }
}

class GCheckCreateOrderDataBuilder
    implements Builder<GCheckCreateOrderData, GCheckCreateOrderDataBuilder> {
  _$GCheckCreateOrderData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GCheckCreateOrderData_checkCreateOrderBuilder? _checkCreateOrder;
  GCheckCreateOrderData_checkCreateOrderBuilder get checkCreateOrder =>
      _$this._checkCreateOrder ??=
          new GCheckCreateOrderData_checkCreateOrderBuilder();
  set checkCreateOrder(
          GCheckCreateOrderData_checkCreateOrderBuilder? checkCreateOrder) =>
      _$this._checkCreateOrder = checkCreateOrder;

  GCheckCreateOrderDataBuilder() {
    GCheckCreateOrderData._initializeBuilder(this);
  }

  GCheckCreateOrderDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _checkCreateOrder = $v.checkCreateOrder.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCheckCreateOrderData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCheckCreateOrderData;
  }

  @override
  void update(void Function(GCheckCreateOrderDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GCheckCreateOrderData build() {
    _$GCheckCreateOrderData _$result;
    try {
      _$result = _$v ??
          new _$GCheckCreateOrderData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GCheckCreateOrderData', 'G__typename'),
              checkCreateOrder: checkCreateOrder.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'checkCreateOrder';
        checkCreateOrder.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GCheckCreateOrderData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GCheckCreateOrderData_checkCreateOrder
    extends GCheckCreateOrderData_checkCreateOrder {
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

  factory _$GCheckCreateOrderData_checkCreateOrder(
          [void Function(GCheckCreateOrderData_checkCreateOrderBuilder)?
              updates]) =>
      (new GCheckCreateOrderData_checkCreateOrderBuilder()..update(updates))
          .build();

  _$GCheckCreateOrderData_checkCreateOrder._(
      {required this.G__typename,
      this.deliveryRestriction,
      this.problem,
      this.resultState,
      this.deliveryDurationInMinutes,
      this.deliveryServiceProductInfo})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GCheckCreateOrderData_checkCreateOrder', 'G__typename');
  }

  @override
  GCheckCreateOrderData_checkCreateOrder rebuild(
          void Function(GCheckCreateOrderData_checkCreateOrderBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCheckCreateOrderData_checkCreateOrderBuilder toBuilder() =>
      new GCheckCreateOrderData_checkCreateOrderBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCheckCreateOrderData_checkCreateOrder &&
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
    return (newBuiltValueToStringHelper(
            'GCheckCreateOrderData_checkCreateOrder')
          ..add('G__typename', G__typename)
          ..add('deliveryRestriction', deliveryRestriction)
          ..add('problem', problem)
          ..add('resultState', resultState)
          ..add('deliveryDurationInMinutes', deliveryDurationInMinutes)
          ..add('deliveryServiceProductInfo', deliveryServiceProductInfo))
        .toString();
  }
}

class GCheckCreateOrderData_checkCreateOrderBuilder
    implements
        Builder<GCheckCreateOrderData_checkCreateOrder,
            GCheckCreateOrderData_checkCreateOrderBuilder> {
  _$GCheckCreateOrderData_checkCreateOrder? _$v;

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

  GCheckCreateOrderData_checkCreateOrderBuilder() {
    GCheckCreateOrderData_checkCreateOrder._initializeBuilder(this);
  }

  GCheckCreateOrderData_checkCreateOrderBuilder get _$this {
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
  void replace(GCheckCreateOrderData_checkCreateOrder other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCheckCreateOrderData_checkCreateOrder;
  }

  @override
  void update(
      void Function(GCheckCreateOrderData_checkCreateOrderBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GCheckCreateOrderData_checkCreateOrder build() {
    final _$result = _$v ??
        new _$GCheckCreateOrderData_checkCreateOrder._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                'GCheckCreateOrderData_checkCreateOrder', 'G__typename'),
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
