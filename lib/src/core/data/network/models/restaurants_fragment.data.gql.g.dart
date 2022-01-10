// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurants_fragment.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GRestaurantFragmentData> _$gRestaurantFragmentDataSerializer =
    new _$GRestaurantFragmentDataSerializer();
Serializer<GRestaurantFragmentData_terminal_kitchen>
    _$gRestaurantFragmentDataTerminalKitchenSerializer =
    new _$GRestaurantFragmentData_terminal_kitchenSerializer();
Serializer<GRestaurantFragmentData_terminal_delivery>
    _$gRestaurantFragmentDataTerminalDeliverySerializer =
    new _$GRestaurantFragmentData_terminal_deliverySerializer();
Serializer<GRestaurantFragmentData_city>
    _$gRestaurantFragmentDataCitySerializer =
    new _$GRestaurantFragmentData_citySerializer();

class _$GRestaurantFragmentDataSerializer
    implements StructuredSerializer<GRestaurantFragmentData> {
  @override
  final Iterable<Type> types = const [
    GRestaurantFragmentData,
    _$GRestaurantFragmentData
  ];
  @override
  final String wireName = 'GRestaurantFragmentData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GRestaurantFragmentData object,
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
            specifiedType:
                const FullType(GRestaurantFragmentData_terminal_kitchen)));
    }
    value = object.terminal_delivery;
    if (value != null) {
      result
        ..add('terminal_delivery')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GRestaurantFragmentData_terminal_delivery)));
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
            specifiedType: const FullType(GRestaurantFragmentData_city)));
    }
    return result;
  }

  @override
  GRestaurantFragmentData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GRestaurantFragmentDataBuilder();

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
                  specifiedType:
                      const FullType(GRestaurantFragmentData_terminal_kitchen))!
              as GRestaurantFragmentData_terminal_kitchen);
          break;
        case 'terminal_delivery':
          result.terminal_delivery.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GRestaurantFragmentData_terminal_delivery))!
              as GRestaurantFragmentData_terminal_delivery);
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
                  specifiedType: const FullType(GRestaurantFragmentData_city))!
              as GRestaurantFragmentData_city);
          break;
      }
    }

    return result.build();
  }
}

class _$GRestaurantFragmentData_terminal_kitchenSerializer
    implements StructuredSerializer<GRestaurantFragmentData_terminal_kitchen> {
  @override
  final Iterable<Type> types = const [
    GRestaurantFragmentData_terminal_kitchen,
    _$GRestaurantFragmentData_terminal_kitchen
  ];
  @override
  final String wireName = 'GRestaurantFragmentData_terminal_kitchen';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GRestaurantFragmentData_terminal_kitchen object,
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
  GRestaurantFragmentData_terminal_kitchen deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GRestaurantFragmentData_terminal_kitchenBuilder();

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

class _$GRestaurantFragmentData_terminal_deliverySerializer
    implements StructuredSerializer<GRestaurantFragmentData_terminal_delivery> {
  @override
  final Iterable<Type> types = const [
    GRestaurantFragmentData_terminal_delivery,
    _$GRestaurantFragmentData_terminal_delivery
  ];
  @override
  final String wireName = 'GRestaurantFragmentData_terminal_delivery';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GRestaurantFragmentData_terminal_delivery object,
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
  GRestaurantFragmentData_terminal_delivery deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GRestaurantFragmentData_terminal_deliveryBuilder();

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

class _$GRestaurantFragmentData_citySerializer
    implements StructuredSerializer<GRestaurantFragmentData_city> {
  @override
  final Iterable<Type> types = const [
    GRestaurantFragmentData_city,
    _$GRestaurantFragmentData_city
  ];
  @override
  final String wireName = 'GRestaurantFragmentData_city';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GRestaurantFragmentData_city object,
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
  GRestaurantFragmentData_city deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GRestaurantFragmentData_cityBuilder();

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

class _$GRestaurantFragmentData extends GRestaurantFragmentData {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String name;
  @override
  final String? address;
  @override
  final GRestaurantFragmentData_terminal_kitchen? terminal_kitchen;
  @override
  final GRestaurantFragmentData_terminal_delivery? terminal_delivery;
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
  final GRestaurantFragmentData_city? city;

  factory _$GRestaurantFragmentData(
          [void Function(GRestaurantFragmentDataBuilder)? updates]) =>
      (new GRestaurantFragmentDataBuilder()..update(updates)).build();

  _$GRestaurantFragmentData._(
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
        G__typename, 'GRestaurantFragmentData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(id, 'GRestaurantFragmentData', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, 'GRestaurantFragmentData', 'name');
  }

  @override
  GRestaurantFragmentData rebuild(
          void Function(GRestaurantFragmentDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GRestaurantFragmentDataBuilder toBuilder() =>
      new GRestaurantFragmentDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GRestaurantFragmentData &&
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
    return (newBuiltValueToStringHelper('GRestaurantFragmentData')
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

class GRestaurantFragmentDataBuilder
    implements
        Builder<GRestaurantFragmentData, GRestaurantFragmentDataBuilder> {
  _$GRestaurantFragmentData? _$v;

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

  GRestaurantFragmentData_terminal_kitchenBuilder? _terminal_kitchen;
  GRestaurantFragmentData_terminal_kitchenBuilder get terminal_kitchen =>
      _$this._terminal_kitchen ??=
          new GRestaurantFragmentData_terminal_kitchenBuilder();
  set terminal_kitchen(
          GRestaurantFragmentData_terminal_kitchenBuilder? terminal_kitchen) =>
      _$this._terminal_kitchen = terminal_kitchen;

  GRestaurantFragmentData_terminal_deliveryBuilder? _terminal_delivery;
  GRestaurantFragmentData_terminal_deliveryBuilder get terminal_delivery =>
      _$this._terminal_delivery ??=
          new GRestaurantFragmentData_terminal_deliveryBuilder();
  set terminal_delivery(
          GRestaurantFragmentData_terminal_deliveryBuilder?
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

  GRestaurantFragmentData_cityBuilder? _city;
  GRestaurantFragmentData_cityBuilder get city =>
      _$this._city ??= new GRestaurantFragmentData_cityBuilder();
  set city(GRestaurantFragmentData_cityBuilder? city) => _$this._city = city;

  GRestaurantFragmentDataBuilder() {
    GRestaurantFragmentData._initializeBuilder(this);
  }

  GRestaurantFragmentDataBuilder get _$this {
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
  void replace(GRestaurantFragmentData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GRestaurantFragmentData;
  }

  @override
  void update(void Function(GRestaurantFragmentDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GRestaurantFragmentData build() {
    _$GRestaurantFragmentData _$result;
    try {
      _$result = _$v ??
          new _$GRestaurantFragmentData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GRestaurantFragmentData', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, 'GRestaurantFragmentData', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, 'GRestaurantFragmentData', 'name'),
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
            'GRestaurantFragmentData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GRestaurantFragmentData_terminal_kitchen
    extends GRestaurantFragmentData_terminal_kitchen {
  @override
  final String G__typename;
  @override
  final String id;

  factory _$GRestaurantFragmentData_terminal_kitchen(
          [void Function(GRestaurantFragmentData_terminal_kitchenBuilder)?
              updates]) =>
      (new GRestaurantFragmentData_terminal_kitchenBuilder()..update(updates))
          .build();

  _$GRestaurantFragmentData_terminal_kitchen._(
      {required this.G__typename, required this.id})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GRestaurantFragmentData_terminal_kitchen', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GRestaurantFragmentData_terminal_kitchen', 'id');
  }

  @override
  GRestaurantFragmentData_terminal_kitchen rebuild(
          void Function(GRestaurantFragmentData_terminal_kitchenBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GRestaurantFragmentData_terminal_kitchenBuilder toBuilder() =>
      new GRestaurantFragmentData_terminal_kitchenBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GRestaurantFragmentData_terminal_kitchen &&
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
            'GRestaurantFragmentData_terminal_kitchen')
          ..add('G__typename', G__typename)
          ..add('id', id))
        .toString();
  }
}

class GRestaurantFragmentData_terminal_kitchenBuilder
    implements
        Builder<GRestaurantFragmentData_terminal_kitchen,
            GRestaurantFragmentData_terminal_kitchenBuilder> {
  _$GRestaurantFragmentData_terminal_kitchen? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GRestaurantFragmentData_terminal_kitchenBuilder() {
    GRestaurantFragmentData_terminal_kitchen._initializeBuilder(this);
  }

  GRestaurantFragmentData_terminal_kitchenBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GRestaurantFragmentData_terminal_kitchen other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GRestaurantFragmentData_terminal_kitchen;
  }

  @override
  void update(
      void Function(GRestaurantFragmentData_terminal_kitchenBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GRestaurantFragmentData_terminal_kitchen build() {
    final _$result = _$v ??
        new _$GRestaurantFragmentData_terminal_kitchen._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                'GRestaurantFragmentData_terminal_kitchen', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'GRestaurantFragmentData_terminal_kitchen', 'id'));
    replace(_$result);
    return _$result;
  }
}

class _$GRestaurantFragmentData_terminal_delivery
    extends GRestaurantFragmentData_terminal_delivery {
  @override
  final String G__typename;
  @override
  final String id;

  factory _$GRestaurantFragmentData_terminal_delivery(
          [void Function(GRestaurantFragmentData_terminal_deliveryBuilder)?
              updates]) =>
      (new GRestaurantFragmentData_terminal_deliveryBuilder()..update(updates))
          .build();

  _$GRestaurantFragmentData_terminal_delivery._(
      {required this.G__typename, required this.id})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        'GRestaurantFragmentData_terminal_delivery', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GRestaurantFragmentData_terminal_delivery', 'id');
  }

  @override
  GRestaurantFragmentData_terminal_delivery rebuild(
          void Function(GRestaurantFragmentData_terminal_deliveryBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GRestaurantFragmentData_terminal_deliveryBuilder toBuilder() =>
      new GRestaurantFragmentData_terminal_deliveryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GRestaurantFragmentData_terminal_delivery &&
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
            'GRestaurantFragmentData_terminal_delivery')
          ..add('G__typename', G__typename)
          ..add('id', id))
        .toString();
  }
}

class GRestaurantFragmentData_terminal_deliveryBuilder
    implements
        Builder<GRestaurantFragmentData_terminal_delivery,
            GRestaurantFragmentData_terminal_deliveryBuilder> {
  _$GRestaurantFragmentData_terminal_delivery? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GRestaurantFragmentData_terminal_deliveryBuilder() {
    GRestaurantFragmentData_terminal_delivery._initializeBuilder(this);
  }

  GRestaurantFragmentData_terminal_deliveryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GRestaurantFragmentData_terminal_delivery other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GRestaurantFragmentData_terminal_delivery;
  }

  @override
  void update(
      void Function(GRestaurantFragmentData_terminal_deliveryBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GRestaurantFragmentData_terminal_delivery build() {
    final _$result = _$v ??
        new _$GRestaurantFragmentData_terminal_delivery._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                'GRestaurantFragmentData_terminal_delivery', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'GRestaurantFragmentData_terminal_delivery', 'id'));
    replace(_$result);
    return _$result;
  }
}

class _$GRestaurantFragmentData_city extends GRestaurantFragmentData_city {
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

  factory _$GRestaurantFragmentData_city(
          [void Function(GRestaurantFragmentData_cityBuilder)? updates]) =>
      (new GRestaurantFragmentData_cityBuilder()..update(updates)).build();

  _$GRestaurantFragmentData_city._(
      {required this.G__typename,
      required this.id,
      required this.name,
      this.prefix,
      this.postal_code,
      this.city_type,
      this.available})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GRestaurantFragmentData_city', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GRestaurantFragmentData_city', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, 'GRestaurantFragmentData_city', 'name');
  }

  @override
  GRestaurantFragmentData_city rebuild(
          void Function(GRestaurantFragmentData_cityBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GRestaurantFragmentData_cityBuilder toBuilder() =>
      new GRestaurantFragmentData_cityBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GRestaurantFragmentData_city &&
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
    return (newBuiltValueToStringHelper('GRestaurantFragmentData_city')
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

class GRestaurantFragmentData_cityBuilder
    implements
        Builder<GRestaurantFragmentData_city,
            GRestaurantFragmentData_cityBuilder> {
  _$GRestaurantFragmentData_city? _$v;

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

  GRestaurantFragmentData_cityBuilder() {
    GRestaurantFragmentData_city._initializeBuilder(this);
  }

  GRestaurantFragmentData_cityBuilder get _$this {
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
  void replace(GRestaurantFragmentData_city other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GRestaurantFragmentData_city;
  }

  @override
  void update(void Function(GRestaurantFragmentData_cityBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GRestaurantFragmentData_city build() {
    final _$result = _$v ??
        new _$GRestaurantFragmentData_city._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, 'GRestaurantFragmentData_city', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'GRestaurantFragmentData_city', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, 'GRestaurantFragmentData_city', 'name'),
            prefix: prefix,
            postal_code: postal_code,
            city_type: city_type,
            available: available);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
