// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_restaurants.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetRestaurantsQueryData> _$gGetRestaurantsQueryDataSerializer =
    new _$GGetRestaurantsQueryDataSerializer();
Serializer<GGetRestaurantsQueryData_getRestaurants>
    _$gGetRestaurantsQueryDataGetRestaurantsSerializer =
    new _$GGetRestaurantsQueryData_getRestaurantsSerializer();
Serializer<GGetRestaurantsQueryData_getRestaurants_terminal_kitchen>
    _$gGetRestaurantsQueryDataGetRestaurantsTerminalKitchenSerializer =
    new _$GGetRestaurantsQueryData_getRestaurants_terminal_kitchenSerializer();
Serializer<GGetRestaurantsQueryData_getRestaurants_terminal_delivery>
    _$gGetRestaurantsQueryDataGetRestaurantsTerminalDeliverySerializer =
    new _$GGetRestaurantsQueryData_getRestaurants_terminal_deliverySerializer();
Serializer<GGetRestaurantsQueryData_getRestaurants_city>
    _$gGetRestaurantsQueryDataGetRestaurantsCitySerializer =
    new _$GGetRestaurantsQueryData_getRestaurants_citySerializer();

class _$GGetRestaurantsQueryDataSerializer
    implements StructuredSerializer<GGetRestaurantsQueryData> {
  @override
  final Iterable<Type> types = const [
    GGetRestaurantsQueryData,
    _$GGetRestaurantsQueryData
  ];
  @override
  final String wireName = 'GGetRestaurantsQueryData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetRestaurantsQueryData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.getRestaurants;
    if (value != null) {
      result
        ..add('getRestaurants')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(GGetRestaurantsQueryData_getRestaurants)
            ])));
    }
    return result;
  }

  @override
  GGetRestaurantsQueryData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetRestaurantsQueryDataBuilder();

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
        case 'getRestaurants':
          result.getRestaurants.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GGetRestaurantsQueryData_getRestaurants)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetRestaurantsQueryData_getRestaurantsSerializer
    implements StructuredSerializer<GGetRestaurantsQueryData_getRestaurants> {
  @override
  final Iterable<Type> types = const [
    GGetRestaurantsQueryData_getRestaurants,
    _$GGetRestaurantsQueryData_getRestaurants
  ];
  @override
  final String wireName = 'GGetRestaurantsQueryData_getRestaurants';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetRestaurantsQueryData_getRestaurants object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.address;
    if (value != null) {
      result
        ..add('address')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.terminal_kitchen;
    if (value != null) {
      result
        ..add('terminal_kitchen')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GGetRestaurantsQueryData_getRestaurants_terminal_kitchen)));
    }
    value = object.terminal_delivery;
    if (value != null) {
      result
        ..add('terminal_delivery')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GGetRestaurantsQueryData_getRestaurants_terminal_delivery)));
    }
    value = object.latitude;
    if (value != null) {
      result
        ..add('latitude')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.longitude;
    if (value != null) {
      result
        ..add('longitude')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.open_at;
    if (value != null) {
      result
        ..add('open_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.close_at;
    if (value != null) {
      result
        ..add('close_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.is_open;
    if (value != null) {
      result
        ..add('is_open')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.delivery_open_at;
    if (value != null) {
      result
        ..add('delivery_open_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.delivery_close_at;
    if (value != null) {
      result
        ..add('delivery_close_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.is_delivery_open;
    if (value != null) {
      result
        ..add('is_delivery_open')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.city;
    if (value != null) {
      result
        ..add('city')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GGetRestaurantsQueryData_getRestaurants_city)));
    }
    return result;
  }

  @override
  GGetRestaurantsQueryData_getRestaurants deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetRestaurantsQueryData_getRestaurantsBuilder();

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
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'address':
          result.address = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'terminal_kitchen':
          result.terminal_kitchen.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GGetRestaurantsQueryData_getRestaurants_terminal_kitchen))!
              as GGetRestaurantsQueryData_getRestaurants_terminal_kitchen);
          break;
        case 'terminal_delivery':
          result.terminal_delivery.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GGetRestaurantsQueryData_getRestaurants_terminal_delivery))!
              as GGetRestaurantsQueryData_getRestaurants_terminal_delivery);
          break;
        case 'latitude':
          result.latitude = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'longitude':
          result.longitude = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'open_at':
          result.open_at = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'close_at':
          result.close_at = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'is_open':
          result.is_open = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'delivery_open_at':
          result.delivery_open_at = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'delivery_close_at':
          result.delivery_close_at = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'is_delivery_open':
          result.is_delivery_open = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'city':
          result.city.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GGetRestaurantsQueryData_getRestaurants_city))!
              as GGetRestaurantsQueryData_getRestaurants_city);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetRestaurantsQueryData_getRestaurants_terminal_kitchenSerializer
    implements
        StructuredSerializer<
            GGetRestaurantsQueryData_getRestaurants_terminal_kitchen> {
  @override
  final Iterable<Type> types = const [
    GGetRestaurantsQueryData_getRestaurants_terminal_kitchen,
    _$GGetRestaurantsQueryData_getRestaurants_terminal_kitchen
  ];
  @override
  final String wireName =
      'GGetRestaurantsQueryData_getRestaurants_terminal_kitchen';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GGetRestaurantsQueryData_getRestaurants_terminal_kitchen object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GGetRestaurantsQueryData_getRestaurants_terminal_kitchen deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GGetRestaurantsQueryData_getRestaurants_terminal_kitchenBuilder();

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
      }
    }

    return result.build();
  }
}

class _$GGetRestaurantsQueryData_getRestaurants_terminal_deliverySerializer
    implements
        StructuredSerializer<
            GGetRestaurantsQueryData_getRestaurants_terminal_delivery> {
  @override
  final Iterable<Type> types = const [
    GGetRestaurantsQueryData_getRestaurants_terminal_delivery,
    _$GGetRestaurantsQueryData_getRestaurants_terminal_delivery
  ];
  @override
  final String wireName =
      'GGetRestaurantsQueryData_getRestaurants_terminal_delivery';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GGetRestaurantsQueryData_getRestaurants_terminal_delivery object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GGetRestaurantsQueryData_getRestaurants_terminal_delivery deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GGetRestaurantsQueryData_getRestaurants_terminal_deliveryBuilder();

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
      }
    }

    return result.build();
  }
}

class _$GGetRestaurantsQueryData_getRestaurants_citySerializer
    implements
        StructuredSerializer<GGetRestaurantsQueryData_getRestaurants_city> {
  @override
  final Iterable<Type> types = const [
    GGetRestaurantsQueryData_getRestaurants_city,
    _$GGetRestaurantsQueryData_getRestaurants_city
  ];
  @override
  final String wireName = 'GGetRestaurantsQueryData_getRestaurants_city';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GGetRestaurantsQueryData_getRestaurants_city object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.prefix;
    if (value != null) {
      result
        ..add('prefix')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.postal_code;
    if (value != null) {
      result
        ..add('postal_code')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.city_type;
    if (value != null) {
      result
        ..add('city_type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.available;
    if (value != null) {
      result
        ..add('available')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GGetRestaurantsQueryData_getRestaurants_city deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetRestaurantsQueryData_getRestaurants_cityBuilder();

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
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'prefix':
          result.prefix = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'postal_code':
          result.postal_code = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'city_type':
          result.city_type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'available':
          result.available = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetRestaurantsQueryData extends GGetRestaurantsQueryData {
  @override
  final String G__typename;
  @override
  final BuiltList<GGetRestaurantsQueryData_getRestaurants>? getRestaurants;

  factory _$GGetRestaurantsQueryData(
          [void Function(GGetRestaurantsQueryDataBuilder)? updates]) =>
      (new GGetRestaurantsQueryDataBuilder()..update(updates)).build();

  _$GGetRestaurantsQueryData._({required this.G__typename, this.getRestaurants})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGetRestaurantsQueryData', 'G__typename');
  }

  @override
  GGetRestaurantsQueryData rebuild(
          void Function(GGetRestaurantsQueryDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetRestaurantsQueryDataBuilder toBuilder() =>
      new GGetRestaurantsQueryDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetRestaurantsQueryData &&
        G__typename == other.G__typename &&
        getRestaurants == other.getRestaurants;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), getRestaurants.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetRestaurantsQueryData')
          ..add('G__typename', G__typename)
          ..add('getRestaurants', getRestaurants))
        .toString();
  }
}

class GGetRestaurantsQueryDataBuilder
    implements
        Builder<GGetRestaurantsQueryData, GGetRestaurantsQueryDataBuilder> {
  _$GGetRestaurantsQueryData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GGetRestaurantsQueryData_getRestaurants>? _getRestaurants;
  ListBuilder<GGetRestaurantsQueryData_getRestaurants> get getRestaurants =>
      _$this._getRestaurants ??=
          new ListBuilder<GGetRestaurantsQueryData_getRestaurants>();
  set getRestaurants(
          ListBuilder<GGetRestaurantsQueryData_getRestaurants>?
              getRestaurants) =>
      _$this._getRestaurants = getRestaurants;

  GGetRestaurantsQueryDataBuilder() {
    GGetRestaurantsQueryData._initializeBuilder(this);
  }

  GGetRestaurantsQueryDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _getRestaurants = $v.getRestaurants?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetRestaurantsQueryData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetRestaurantsQueryData;
  }

  @override
  void update(void Function(GGetRestaurantsQueryDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetRestaurantsQueryData build() {
    _$GGetRestaurantsQueryData _$result;
    try {
      _$result = _$v ??
          new _$GGetRestaurantsQueryData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GGetRestaurantsQueryData', 'G__typename'),
              getRestaurants: _getRestaurants?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'getRestaurants';
        _getRestaurants?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GGetRestaurantsQueryData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetRestaurantsQueryData_getRestaurants
    extends GGetRestaurantsQueryData_getRestaurants {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String name;
  @override
  final String? address;
  @override
  final GGetRestaurantsQueryData_getRestaurants_terminal_kitchen?
      terminal_kitchen;
  @override
  final GGetRestaurantsQueryData_getRestaurants_terminal_delivery?
      terminal_delivery;
  @override
  final String? latitude;
  @override
  final String? longitude;
  @override
  final String? open_at;
  @override
  final String? close_at;
  @override
  final bool? is_open;
  @override
  final String? delivery_open_at;
  @override
  final String? delivery_close_at;
  @override
  final bool? is_delivery_open;
  @override
  final GGetRestaurantsQueryData_getRestaurants_city? city;

  factory _$GGetRestaurantsQueryData_getRestaurants(
          [void Function(GGetRestaurantsQueryData_getRestaurantsBuilder)?
              updates]) =>
      (new GGetRestaurantsQueryData_getRestaurantsBuilder()..update(updates))
          .build();

  _$GGetRestaurantsQueryData_getRestaurants._(
      {required this.G__typename,
      required this.id,
      required this.name,
      this.address,
      this.terminal_kitchen,
      this.terminal_delivery,
      this.latitude,
      this.longitude,
      this.open_at,
      this.close_at,
      this.is_open,
      this.delivery_open_at,
      this.delivery_close_at,
      this.is_delivery_open,
      this.city})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGetRestaurantsQueryData_getRestaurants', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GGetRestaurantsQueryData_getRestaurants', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, 'GGetRestaurantsQueryData_getRestaurants', 'name');
  }

  @override
  GGetRestaurantsQueryData_getRestaurants rebuild(
          void Function(GGetRestaurantsQueryData_getRestaurantsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetRestaurantsQueryData_getRestaurantsBuilder toBuilder() =>
      new GGetRestaurantsQueryData_getRestaurantsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetRestaurantsQueryData_getRestaurants &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        address == other.address &&
        terminal_kitchen == other.terminal_kitchen &&
        terminal_delivery == other.terminal_delivery &&
        latitude == other.latitude &&
        longitude == other.longitude &&
        open_at == other.open_at &&
        close_at == other.close_at &&
        is_open == other.is_open &&
        delivery_open_at == other.delivery_open_at &&
        delivery_close_at == other.delivery_close_at &&
        is_delivery_open == other.is_delivery_open &&
        city == other.city;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                0,
                                                                G__typename
                                                                    .hashCode),
                                                            id.hashCode),
                                                        name.hashCode),
                                                    address.hashCode),
                                                terminal_kitchen.hashCode),
                                            terminal_delivery.hashCode),
                                        latitude.hashCode),
                                    longitude.hashCode),
                                open_at.hashCode),
                            close_at.hashCode),
                        is_open.hashCode),
                    delivery_open_at.hashCode),
                delivery_close_at.hashCode),
            is_delivery_open.hashCode),
        city.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GGetRestaurantsQueryData_getRestaurants')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('address', address)
          ..add('terminal_kitchen', terminal_kitchen)
          ..add('terminal_delivery', terminal_delivery)
          ..add('latitude', latitude)
          ..add('longitude', longitude)
          ..add('open_at', open_at)
          ..add('close_at', close_at)
          ..add('is_open', is_open)
          ..add('delivery_open_at', delivery_open_at)
          ..add('delivery_close_at', delivery_close_at)
          ..add('is_delivery_open', is_delivery_open)
          ..add('city', city))
        .toString();
  }
}

class GGetRestaurantsQueryData_getRestaurantsBuilder
    implements
        Builder<GGetRestaurantsQueryData_getRestaurants,
            GGetRestaurantsQueryData_getRestaurantsBuilder> {
  _$GGetRestaurantsQueryData_getRestaurants? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  GGetRestaurantsQueryData_getRestaurants_terminal_kitchenBuilder?
      _terminal_kitchen;
  GGetRestaurantsQueryData_getRestaurants_terminal_kitchenBuilder
      get terminal_kitchen => _$this._terminal_kitchen ??=
          new GGetRestaurantsQueryData_getRestaurants_terminal_kitchenBuilder();
  set terminal_kitchen(
          GGetRestaurantsQueryData_getRestaurants_terminal_kitchenBuilder?
              terminal_kitchen) =>
      _$this._terminal_kitchen = terminal_kitchen;

  GGetRestaurantsQueryData_getRestaurants_terminal_deliveryBuilder?
      _terminal_delivery;
  GGetRestaurantsQueryData_getRestaurants_terminal_deliveryBuilder
      get terminal_delivery => _$this._terminal_delivery ??=
          new GGetRestaurantsQueryData_getRestaurants_terminal_deliveryBuilder();
  set terminal_delivery(
          GGetRestaurantsQueryData_getRestaurants_terminal_deliveryBuilder?
              terminal_delivery) =>
      _$this._terminal_delivery = terminal_delivery;

  String? _latitude;
  String? get latitude => _$this._latitude;
  set latitude(String? latitude) => _$this._latitude = latitude;

  String? _longitude;
  String? get longitude => _$this._longitude;
  set longitude(String? longitude) => _$this._longitude = longitude;

  String? _open_at;
  String? get open_at => _$this._open_at;
  set open_at(String? open_at) => _$this._open_at = open_at;

  String? _close_at;
  String? get close_at => _$this._close_at;
  set close_at(String? close_at) => _$this._close_at = close_at;

  bool? _is_open;
  bool? get is_open => _$this._is_open;
  set is_open(bool? is_open) => _$this._is_open = is_open;

  String? _delivery_open_at;
  String? get delivery_open_at => _$this._delivery_open_at;
  set delivery_open_at(String? delivery_open_at) =>
      _$this._delivery_open_at = delivery_open_at;

  String? _delivery_close_at;
  String? get delivery_close_at => _$this._delivery_close_at;
  set delivery_close_at(String? delivery_close_at) =>
      _$this._delivery_close_at = delivery_close_at;

  bool? _is_delivery_open;
  bool? get is_delivery_open => _$this._is_delivery_open;
  set is_delivery_open(bool? is_delivery_open) =>
      _$this._is_delivery_open = is_delivery_open;

  GGetRestaurantsQueryData_getRestaurants_cityBuilder? _city;
  GGetRestaurantsQueryData_getRestaurants_cityBuilder get city =>
      _$this._city ??=
          new GGetRestaurantsQueryData_getRestaurants_cityBuilder();
  set city(GGetRestaurantsQueryData_getRestaurants_cityBuilder? city) =>
      _$this._city = city;

  GGetRestaurantsQueryData_getRestaurantsBuilder() {
    GGetRestaurantsQueryData_getRestaurants._initializeBuilder(this);
  }

  GGetRestaurantsQueryData_getRestaurantsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _address = $v.address;
      _terminal_kitchen = $v.terminal_kitchen?.toBuilder();
      _terminal_delivery = $v.terminal_delivery?.toBuilder();
      _latitude = $v.latitude;
      _longitude = $v.longitude;
      _open_at = $v.open_at;
      _close_at = $v.close_at;
      _is_open = $v.is_open;
      _delivery_open_at = $v.delivery_open_at;
      _delivery_close_at = $v.delivery_close_at;
      _is_delivery_open = $v.is_delivery_open;
      _city = $v.city?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetRestaurantsQueryData_getRestaurants other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetRestaurantsQueryData_getRestaurants;
  }

  @override
  void update(
      void Function(GGetRestaurantsQueryData_getRestaurantsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetRestaurantsQueryData_getRestaurants build() {
    _$GGetRestaurantsQueryData_getRestaurants _$result;
    try {
      _$result = _$v ??
          new _$GGetRestaurantsQueryData_getRestaurants._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  'GGetRestaurantsQueryData_getRestaurants', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, 'GGetRestaurantsQueryData_getRestaurants', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, 'GGetRestaurantsQueryData_getRestaurants', 'name'),
              address: address,
              terminal_kitchen: _terminal_kitchen?.build(),
              terminal_delivery: _terminal_delivery?.build(),
              latitude: latitude,
              longitude: longitude,
              open_at: open_at,
              close_at: close_at,
              is_open: is_open,
              delivery_open_at: delivery_open_at,
              delivery_close_at: delivery_close_at,
              is_delivery_open: is_delivery_open,
              city: _city?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'terminal_kitchen';
        _terminal_kitchen?.build();
        _$failedField = 'terminal_delivery';
        _terminal_delivery?.build();

        _$failedField = 'city';
        _city?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GGetRestaurantsQueryData_getRestaurants',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetRestaurantsQueryData_getRestaurants_terminal_kitchen
    extends GGetRestaurantsQueryData_getRestaurants_terminal_kitchen {
  @override
  final String G__typename;
  @override
  final String id;

  factory _$GGetRestaurantsQueryData_getRestaurants_terminal_kitchen(
          [void Function(
                  GGetRestaurantsQueryData_getRestaurants_terminal_kitchenBuilder)?
              updates]) =>
      (new GGetRestaurantsQueryData_getRestaurants_terminal_kitchenBuilder()
            ..update(updates))
          .build();

  _$GGetRestaurantsQueryData_getRestaurants_terminal_kitchen._(
      {required this.G__typename, required this.id})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        'GGetRestaurantsQueryData_getRestaurants_terminal_kitchen',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GGetRestaurantsQueryData_getRestaurants_terminal_kitchen', 'id');
  }

  @override
  GGetRestaurantsQueryData_getRestaurants_terminal_kitchen rebuild(
          void Function(
                  GGetRestaurantsQueryData_getRestaurants_terminal_kitchenBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetRestaurantsQueryData_getRestaurants_terminal_kitchenBuilder toBuilder() =>
      new GGetRestaurantsQueryData_getRestaurants_terminal_kitchenBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetRestaurantsQueryData_getRestaurants_terminal_kitchen &&
        G__typename == other.G__typename &&
        id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GGetRestaurantsQueryData_getRestaurants_terminal_kitchen')
          ..add('G__typename', G__typename)
          ..add('id', id))
        .toString();
  }
}

class GGetRestaurantsQueryData_getRestaurants_terminal_kitchenBuilder
    implements
        Builder<GGetRestaurantsQueryData_getRestaurants_terminal_kitchen,
            GGetRestaurantsQueryData_getRestaurants_terminal_kitchenBuilder> {
  _$GGetRestaurantsQueryData_getRestaurants_terminal_kitchen? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GGetRestaurantsQueryData_getRestaurants_terminal_kitchenBuilder() {
    GGetRestaurantsQueryData_getRestaurants_terminal_kitchen._initializeBuilder(
        this);
  }

  GGetRestaurantsQueryData_getRestaurants_terminal_kitchenBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetRestaurantsQueryData_getRestaurants_terminal_kitchen other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetRestaurantsQueryData_getRestaurants_terminal_kitchen;
  }

  @override
  void update(
      void Function(
              GGetRestaurantsQueryData_getRestaurants_terminal_kitchenBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetRestaurantsQueryData_getRestaurants_terminal_kitchen build() {
    final _$result = _$v ??
        new _$GGetRestaurantsQueryData_getRestaurants_terminal_kitchen._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                'GGetRestaurantsQueryData_getRestaurants_terminal_kitchen',
                'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id,
                'GGetRestaurantsQueryData_getRestaurants_terminal_kitchen',
                'id'));
    replace(_$result);
    return _$result;
  }
}

class _$GGetRestaurantsQueryData_getRestaurants_terminal_delivery
    extends GGetRestaurantsQueryData_getRestaurants_terminal_delivery {
  @override
  final String G__typename;
  @override
  final String id;

  factory _$GGetRestaurantsQueryData_getRestaurants_terminal_delivery(
          [void Function(
                  GGetRestaurantsQueryData_getRestaurants_terminal_deliveryBuilder)?
              updates]) =>
      (new GGetRestaurantsQueryData_getRestaurants_terminal_deliveryBuilder()
            ..update(updates))
          .build();

  _$GGetRestaurantsQueryData_getRestaurants_terminal_delivery._(
      {required this.G__typename, required this.id})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        'GGetRestaurantsQueryData_getRestaurants_terminal_delivery',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GGetRestaurantsQueryData_getRestaurants_terminal_delivery', 'id');
  }

  @override
  GGetRestaurantsQueryData_getRestaurants_terminal_delivery rebuild(
          void Function(
                  GGetRestaurantsQueryData_getRestaurants_terminal_deliveryBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetRestaurantsQueryData_getRestaurants_terminal_deliveryBuilder
      toBuilder() =>
          new GGetRestaurantsQueryData_getRestaurants_terminal_deliveryBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetRestaurantsQueryData_getRestaurants_terminal_delivery &&
        G__typename == other.G__typename &&
        id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GGetRestaurantsQueryData_getRestaurants_terminal_delivery')
          ..add('G__typename', G__typename)
          ..add('id', id))
        .toString();
  }
}

class GGetRestaurantsQueryData_getRestaurants_terminal_deliveryBuilder
    implements
        Builder<GGetRestaurantsQueryData_getRestaurants_terminal_delivery,
            GGetRestaurantsQueryData_getRestaurants_terminal_deliveryBuilder> {
  _$GGetRestaurantsQueryData_getRestaurants_terminal_delivery? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GGetRestaurantsQueryData_getRestaurants_terminal_deliveryBuilder() {
    GGetRestaurantsQueryData_getRestaurants_terminal_delivery
        ._initializeBuilder(this);
  }

  GGetRestaurantsQueryData_getRestaurants_terminal_deliveryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GGetRestaurantsQueryData_getRestaurants_terminal_delivery other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetRestaurantsQueryData_getRestaurants_terminal_delivery;
  }

  @override
  void update(
      void Function(
              GGetRestaurantsQueryData_getRestaurants_terminal_deliveryBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetRestaurantsQueryData_getRestaurants_terminal_delivery build() {
    final _$result = _$v ??
        new _$GGetRestaurantsQueryData_getRestaurants_terminal_delivery._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                'GGetRestaurantsQueryData_getRestaurants_terminal_delivery',
                'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id,
                'GGetRestaurantsQueryData_getRestaurants_terminal_delivery',
                'id'));
    replace(_$result);
    return _$result;
  }
}

class _$GGetRestaurantsQueryData_getRestaurants_city
    extends GGetRestaurantsQueryData_getRestaurants_city {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String name;
  @override
  final String? prefix;
  @override
  final String? postal_code;
  @override
  final String? city_type;
  @override
  final bool? available;

  factory _$GGetRestaurantsQueryData_getRestaurants_city(
          [void Function(GGetRestaurantsQueryData_getRestaurants_cityBuilder)?
              updates]) =>
      (new GGetRestaurantsQueryData_getRestaurants_cityBuilder()
            ..update(updates))
          .build();

  _$GGetRestaurantsQueryData_getRestaurants_city._(
      {required this.G__typename,
      required this.id,
      required this.name,
      this.prefix,
      this.postal_code,
      this.city_type,
      this.available})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        'GGetRestaurantsQueryData_getRestaurants_city', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GGetRestaurantsQueryData_getRestaurants_city', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, 'GGetRestaurantsQueryData_getRestaurants_city', 'name');
  }

  @override
  GGetRestaurantsQueryData_getRestaurants_city rebuild(
          void Function(GGetRestaurantsQueryData_getRestaurants_cityBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetRestaurantsQueryData_getRestaurants_cityBuilder toBuilder() =>
      new GGetRestaurantsQueryData_getRestaurants_cityBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetRestaurantsQueryData_getRestaurants_city &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        prefix == other.prefix &&
        postal_code == other.postal_code &&
        city_type == other.city_type &&
        available == other.available;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, G__typename.hashCode), id.hashCode),
                        name.hashCode),
                    prefix.hashCode),
                postal_code.hashCode),
            city_type.hashCode),
        available.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GGetRestaurantsQueryData_getRestaurants_city')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('prefix', prefix)
          ..add('postal_code', postal_code)
          ..add('city_type', city_type)
          ..add('available', available))
        .toString();
  }
}

class GGetRestaurantsQueryData_getRestaurants_cityBuilder
    implements
        Builder<GGetRestaurantsQueryData_getRestaurants_city,
            GGetRestaurantsQueryData_getRestaurants_cityBuilder> {
  _$GGetRestaurantsQueryData_getRestaurants_city? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _prefix;
  String? get prefix => _$this._prefix;
  set prefix(String? prefix) => _$this._prefix = prefix;

  String? _postal_code;
  String? get postal_code => _$this._postal_code;
  set postal_code(String? postal_code) => _$this._postal_code = postal_code;

  String? _city_type;
  String? get city_type => _$this._city_type;
  set city_type(String? city_type) => _$this._city_type = city_type;

  bool? _available;
  bool? get available => _$this._available;
  set available(bool? available) => _$this._available = available;

  GGetRestaurantsQueryData_getRestaurants_cityBuilder() {
    GGetRestaurantsQueryData_getRestaurants_city._initializeBuilder(this);
  }

  GGetRestaurantsQueryData_getRestaurants_cityBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _prefix = $v.prefix;
      _postal_code = $v.postal_code;
      _city_type = $v.city_type;
      _available = $v.available;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetRestaurantsQueryData_getRestaurants_city other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetRestaurantsQueryData_getRestaurants_city;
  }

  @override
  void update(
      void Function(GGetRestaurantsQueryData_getRestaurants_cityBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetRestaurantsQueryData_getRestaurants_city build() {
    final _$result = _$v ??
        new _$GGetRestaurantsQueryData_getRestaurants_city._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                'GGetRestaurantsQueryData_getRestaurants_city', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'GGetRestaurantsQueryData_getRestaurants_city', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, 'GGetRestaurantsQueryData_getRestaurants_city', 'name'),
            prefix: prefix,
            postal_code: postal_code,
            city_type: city_type,
            available: available);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
