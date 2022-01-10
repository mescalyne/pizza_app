// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_area_fragment.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GDeliveryAreaFragmentData> _$gDeliveryAreaFragmentDataSerializer =
    new _$GDeliveryAreaFragmentDataSerializer();

class _$GDeliveryAreaFragmentDataSerializer
    implements StructuredSerializer<GDeliveryAreaFragmentData> {
  @override
  final Iterable<Type> types = const [
    GDeliveryAreaFragmentData,
    _$GDeliveryAreaFragmentData
  ];
  @override
  final String wireName = 'GDeliveryAreaFragmentData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GDeliveryAreaFragmentData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'company_name',
      serializers.serialize(object.company_name,
          specifiedType: const FullType(String)),
      'delivery_terminal_id',
      serializers.serialize(object.delivery_terminal_id,
          specifiedType: const FullType(String)),
      'kitchen_terminal_id',
      serializers.serialize(object.kitchen_terminal_id,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.free_delivery;
    if (value != null) {
      result
        ..add('free_delivery')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.delivery_product_id;
    if (value != null) {
      result
        ..add('delivery_product_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.area;
    if (value != null) {
      result
        ..add('area')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i1.GJsonData)));
    }
    value = object.main_area;
    if (value != null) {
      result
        ..add('main_area')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GDeliveryAreaFragmentData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GDeliveryAreaFragmentDataBuilder();

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
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'company_name':
          result.company_name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'delivery_terminal_id':
          result.delivery_terminal_id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'kitchen_terminal_id':
          result.kitchen_terminal_id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'free_delivery':
          result.free_delivery = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'delivery_product_id':
          result.delivery_product_id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'area':
          result.area.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i1.GJsonData))! as _i1.GJsonData);
          break;
        case 'main_area':
          result.main_area = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GDeliveryAreaFragmentData extends GDeliveryAreaFragmentData {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String company_name;
  @override
  final String delivery_terminal_id;
  @override
  final String kitchen_terminal_id;
  @override
  final String? free_delivery;
  @override
  final String? delivery_product_id;
  @override
  final _i1.GJsonData? area;
  @override
  final bool? main_area;

  factory _$GDeliveryAreaFragmentData(
          [void Function(GDeliveryAreaFragmentDataBuilder)? updates]) =>
      (new GDeliveryAreaFragmentDataBuilder()..update(updates)).build();

  _$GDeliveryAreaFragmentData._(
      {required this.G__typename,
      required this.id,
      required this.company_name,
      required this.delivery_terminal_id,
      required this.kitchen_terminal_id,
      this.free_delivery,
      this.delivery_product_id,
      this.area,
      this.main_area})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GDeliveryAreaFragmentData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GDeliveryAreaFragmentData', 'id');
    BuiltValueNullFieldError.checkNotNull(
        company_name, 'GDeliveryAreaFragmentData', 'company_name');
    BuiltValueNullFieldError.checkNotNull(delivery_terminal_id,
        'GDeliveryAreaFragmentData', 'delivery_terminal_id');
    BuiltValueNullFieldError.checkNotNull(kitchen_terminal_id,
        'GDeliveryAreaFragmentData', 'kitchen_terminal_id');
  }

  @override
  GDeliveryAreaFragmentData rebuild(
          void Function(GDeliveryAreaFragmentDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDeliveryAreaFragmentDataBuilder toBuilder() =>
      new GDeliveryAreaFragmentDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDeliveryAreaFragmentData &&
        G__typename == other.G__typename &&
        id == other.id &&
        company_name == other.company_name &&
        delivery_terminal_id == other.delivery_terminal_id &&
        kitchen_terminal_id == other.kitchen_terminal_id &&
        free_delivery == other.free_delivery &&
        delivery_product_id == other.delivery_product_id &&
        area == other.area &&
        main_area == other.main_area;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, G__typename.hashCode), id.hashCode),
                                company_name.hashCode),
                            delivery_terminal_id.hashCode),
                        kitchen_terminal_id.hashCode),
                    free_delivery.hashCode),
                delivery_product_id.hashCode),
            area.hashCode),
        main_area.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GDeliveryAreaFragmentData')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('company_name', company_name)
          ..add('delivery_terminal_id', delivery_terminal_id)
          ..add('kitchen_terminal_id', kitchen_terminal_id)
          ..add('free_delivery', free_delivery)
          ..add('delivery_product_id', delivery_product_id)
          ..add('area', area)
          ..add('main_area', main_area))
        .toString();
  }
}

class GDeliveryAreaFragmentDataBuilder
    implements
        Builder<GDeliveryAreaFragmentData, GDeliveryAreaFragmentDataBuilder> {
  _$GDeliveryAreaFragmentData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _company_name;
  String? get company_name => _$this._company_name;
  set company_name(String? company_name) => _$this._company_name = company_name;

  String? _delivery_terminal_id;
  String? get delivery_terminal_id => _$this._delivery_terminal_id;
  set delivery_terminal_id(String? delivery_terminal_id) =>
      _$this._delivery_terminal_id = delivery_terminal_id;

  String? _kitchen_terminal_id;
  String? get kitchen_terminal_id => _$this._kitchen_terminal_id;
  set kitchen_terminal_id(String? kitchen_terminal_id) =>
      _$this._kitchen_terminal_id = kitchen_terminal_id;

  String? _free_delivery;
  String? get free_delivery => _$this._free_delivery;
  set free_delivery(String? free_delivery) =>
      _$this._free_delivery = free_delivery;

  String? _delivery_product_id;
  String? get delivery_product_id => _$this._delivery_product_id;
  set delivery_product_id(String? delivery_product_id) =>
      _$this._delivery_product_id = delivery_product_id;

  _i1.GJsonDataBuilder? _area;
  _i1.GJsonDataBuilder get area => _$this._area ??= new _i1.GJsonDataBuilder();
  set area(_i1.GJsonDataBuilder? area) => _$this._area = area;

  bool? _main_area;
  bool? get main_area => _$this._main_area;
  set main_area(bool? main_area) => _$this._main_area = main_area;

  GDeliveryAreaFragmentDataBuilder() {
    GDeliveryAreaFragmentData._initializeBuilder(this);
  }

  GDeliveryAreaFragmentDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _company_name = $v.company_name;
      _delivery_terminal_id = $v.delivery_terminal_id;
      _kitchen_terminal_id = $v.kitchen_terminal_id;
      _free_delivery = $v.free_delivery;
      _delivery_product_id = $v.delivery_product_id;
      _area = $v.area?.toBuilder();
      _main_area = $v.main_area;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDeliveryAreaFragmentData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GDeliveryAreaFragmentData;
  }

  @override
  void update(void Function(GDeliveryAreaFragmentDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GDeliveryAreaFragmentData build() {
    _$GDeliveryAreaFragmentData _$result;
    try {
      _$result = _$v ??
          new _$GDeliveryAreaFragmentData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GDeliveryAreaFragmentData', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, 'GDeliveryAreaFragmentData', 'id'),
              company_name: BuiltValueNullFieldError.checkNotNull(
                  company_name, 'GDeliveryAreaFragmentData', 'company_name'),
              delivery_terminal_id: BuiltValueNullFieldError.checkNotNull(
                  delivery_terminal_id,
                  'GDeliveryAreaFragmentData',
                  'delivery_terminal_id'),
              kitchen_terminal_id: BuiltValueNullFieldError.checkNotNull(
                  kitchen_terminal_id,
                  'GDeliveryAreaFragmentData',
                  'kitchen_terminal_id'),
              free_delivery: free_delivery,
              delivery_product_id: delivery_product_id,
              area: _area?.build(),
              main_area: main_area);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'area';
        _area?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GDeliveryAreaFragmentData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
