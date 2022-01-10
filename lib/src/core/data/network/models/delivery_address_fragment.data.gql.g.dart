// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_address_fragment.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GDeliveryAddressFragmentData>
    _$gDeliveryAddressFragmentDataSerializer =
    new _$GDeliveryAddressFragmentDataSerializer();
Serializer<GDeliveryAddressFragmentData_city>
    _$gDeliveryAddressFragmentDataCitySerializer =
    new _$GDeliveryAddressFragmentData_citySerializer();

class _$GDeliveryAddressFragmentDataSerializer
    implements StructuredSerializer<GDeliveryAddressFragmentData> {
  @override
  final Iterable<Type> types = const [
    GDeliveryAddressFragmentData,
    _$GDeliveryAddressFragmentData
  ];
  @override
  final String wireName = 'GDeliveryAddressFragmentData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GDeliveryAddressFragmentData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'street',
      serializers.serialize(object.street,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.city_name;
    if (value != null) {
      result
        ..add('city_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.home;
    if (value != null) {
      result
        ..add('home')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.housing;
    if (value != null) {
      result
        ..add('housing')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.apartment;
    if (value != null) {
      result
        ..add('apartment')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.comment;
    if (value != null) {
      result
        ..add('comment')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.latitude;
    if (value != null) {
      result
        ..add('latitude')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.longitude;
    if (value != null) {
      result
        ..add('longitude')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.city;
    if (value != null) {
      result
        ..add('city')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GDeliveryAddressFragmentData_city)));
    }
    value = object.address_in_zone;
    if (value != null) {
      result
        ..add('address_in_zone')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GDeliveryAddressFragmentData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GDeliveryAddressFragmentDataBuilder();

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
              specifiedType: const FullType(int)) as int;
          break;
        case 'city_name':
          result.city_name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'street':
          result.street = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'home':
          result.home = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'housing':
          result.housing = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'apartment':
          result.apartment = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'comment':
          result.comment = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'latitude':
          result.latitude = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'longitude':
          result.longitude = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'city':
          result.city.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GDeliveryAddressFragmentData_city))!
              as GDeliveryAddressFragmentData_city);
          break;
        case 'address_in_zone':
          result.address_in_zone = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GDeliveryAddressFragmentData_citySerializer
    implements StructuredSerializer<GDeliveryAddressFragmentData_city> {
  @override
  final Iterable<Type> types = const [
    GDeliveryAddressFragmentData_city,
    _$GDeliveryAddressFragmentData_city
  ];
  @override
  final String wireName = 'GDeliveryAddressFragmentData_city';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GDeliveryAddressFragmentData_city object,
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
  GDeliveryAddressFragmentData_city deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GDeliveryAddressFragmentData_cityBuilder();

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

class _$GDeliveryAddressFragmentData extends GDeliveryAddressFragmentData {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final String? city_name;
  @override
  final String street;
  @override
  final String? home;
  @override
  final String? housing;
  @override
  final String? apartment;
  @override
  final String? comment;
  @override
  final double? latitude;
  @override
  final double? longitude;
  @override
  final GDeliveryAddressFragmentData_city? city;
  @override
  final bool? address_in_zone;

  factory _$GDeliveryAddressFragmentData(
          [void Function(GDeliveryAddressFragmentDataBuilder)? updates]) =>
      (new GDeliveryAddressFragmentDataBuilder()..update(updates)).build();

  _$GDeliveryAddressFragmentData._(
      {required this.G__typename,
      required this.id,
      this.city_name,
      required this.street,
      this.home,
      this.housing,
      this.apartment,
      this.comment,
      this.latitude,
      this.longitude,
      this.city,
      this.address_in_zone})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GDeliveryAddressFragmentData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GDeliveryAddressFragmentData', 'id');
    BuiltValueNullFieldError.checkNotNull(
        street, 'GDeliveryAddressFragmentData', 'street');
  }

  @override
  GDeliveryAddressFragmentData rebuild(
          void Function(GDeliveryAddressFragmentDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDeliveryAddressFragmentDataBuilder toBuilder() =>
      new GDeliveryAddressFragmentDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDeliveryAddressFragmentData &&
        G__typename == other.G__typename &&
        id == other.id &&
        city_name == other.city_name &&
        street == other.street &&
        home == other.home &&
        housing == other.housing &&
        apartment == other.apartment &&
        comment == other.comment &&
        latitude == other.latitude &&
        longitude == other.longitude &&
        city == other.city &&
        address_in_zone == other.address_in_zone;
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
                                            $jc($jc(0, G__typename.hashCode),
                                                id.hashCode),
                                            city_name.hashCode),
                                        street.hashCode),
                                    home.hashCode),
                                housing.hashCode),
                            apartment.hashCode),
                        comment.hashCode),
                    latitude.hashCode),
                longitude.hashCode),
            city.hashCode),
        address_in_zone.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GDeliveryAddressFragmentData')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('city_name', city_name)
          ..add('street', street)
          ..add('home', home)
          ..add('housing', housing)
          ..add('apartment', apartment)
          ..add('comment', comment)
          ..add('latitude', latitude)
          ..add('longitude', longitude)
          ..add('city', city)
          ..add('address_in_zone', address_in_zone))
        .toString();
  }
}

class GDeliveryAddressFragmentDataBuilder
    implements
        Builder<GDeliveryAddressFragmentData,
            GDeliveryAddressFragmentDataBuilder> {
  _$GDeliveryAddressFragmentData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _city_name;
  String? get city_name => _$this._city_name;
  set city_name(String? city_name) => _$this._city_name = city_name;

  String? _street;
  String? get street => _$this._street;
  set street(String? street) => _$this._street = street;

  String? _home;
  String? get home => _$this._home;
  set home(String? home) => _$this._home = home;

  String? _housing;
  String? get housing => _$this._housing;
  set housing(String? housing) => _$this._housing = housing;

  String? _apartment;
  String? get apartment => _$this._apartment;
  set apartment(String? apartment) => _$this._apartment = apartment;

  String? _comment;
  String? get comment => _$this._comment;
  set comment(String? comment) => _$this._comment = comment;

  double? _latitude;
  double? get latitude => _$this._latitude;
  set latitude(double? latitude) => _$this._latitude = latitude;

  double? _longitude;
  double? get longitude => _$this._longitude;
  set longitude(double? longitude) => _$this._longitude = longitude;

  GDeliveryAddressFragmentData_cityBuilder? _city;
  GDeliveryAddressFragmentData_cityBuilder get city =>
      _$this._city ??= new GDeliveryAddressFragmentData_cityBuilder();
  set city(GDeliveryAddressFragmentData_cityBuilder? city) =>
      _$this._city = city;

  bool? _address_in_zone;
  bool? get address_in_zone => _$this._address_in_zone;
  set address_in_zone(bool? address_in_zone) =>
      _$this._address_in_zone = address_in_zone;

  GDeliveryAddressFragmentDataBuilder() {
    GDeliveryAddressFragmentData._initializeBuilder(this);
  }

  GDeliveryAddressFragmentDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _city_name = $v.city_name;
      _street = $v.street;
      _home = $v.home;
      _housing = $v.housing;
      _apartment = $v.apartment;
      _comment = $v.comment;
      _latitude = $v.latitude;
      _longitude = $v.longitude;
      _city = $v.city?.toBuilder();
      _address_in_zone = $v.address_in_zone;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDeliveryAddressFragmentData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GDeliveryAddressFragmentData;
  }

  @override
  void update(void Function(GDeliveryAddressFragmentDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GDeliveryAddressFragmentData build() {
    _$GDeliveryAddressFragmentData _$result;
    try {
      _$result = _$v ??
          new _$GDeliveryAddressFragmentData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GDeliveryAddressFragmentData', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, 'GDeliveryAddressFragmentData', 'id'),
              city_name: city_name,
              street: BuiltValueNullFieldError.checkNotNull(
                  street, 'GDeliveryAddressFragmentData', 'street'),
              home: home,
              housing: housing,
              apartment: apartment,
              comment: comment,
              latitude: latitude,
              longitude: longitude,
              city: _city?.build(),
              address_in_zone: address_in_zone);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'city';
        _city?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GDeliveryAddressFragmentData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GDeliveryAddressFragmentData_city
    extends GDeliveryAddressFragmentData_city {
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

  factory _$GDeliveryAddressFragmentData_city(
          [void Function(GDeliveryAddressFragmentData_cityBuilder)? updates]) =>
      (new GDeliveryAddressFragmentData_cityBuilder()..update(updates)).build();

  _$GDeliveryAddressFragmentData_city._(
      {required this.G__typename,
      required this.id,
      required this.name,
      this.prefix,
      this.postal_code,
      this.city_type,
      this.available})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GDeliveryAddressFragmentData_city', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GDeliveryAddressFragmentData_city', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, 'GDeliveryAddressFragmentData_city', 'name');
  }

  @override
  GDeliveryAddressFragmentData_city rebuild(
          void Function(GDeliveryAddressFragmentData_cityBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDeliveryAddressFragmentData_cityBuilder toBuilder() =>
      new GDeliveryAddressFragmentData_cityBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDeliveryAddressFragmentData_city &&
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
    return (newBuiltValueToStringHelper('GDeliveryAddressFragmentData_city')
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

class GDeliveryAddressFragmentData_cityBuilder
    implements
        Builder<GDeliveryAddressFragmentData_city,
            GDeliveryAddressFragmentData_cityBuilder> {
  _$GDeliveryAddressFragmentData_city? _$v;

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

  GDeliveryAddressFragmentData_cityBuilder() {
    GDeliveryAddressFragmentData_city._initializeBuilder(this);
  }

  GDeliveryAddressFragmentData_cityBuilder get _$this {
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
  void replace(GDeliveryAddressFragmentData_city other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GDeliveryAddressFragmentData_city;
  }

  @override
  void update(
      void Function(GDeliveryAddressFragmentData_cityBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GDeliveryAddressFragmentData_city build() {
    final _$result = _$v ??
        new _$GDeliveryAddressFragmentData_city._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                'GDeliveryAddressFragmentData_city', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'GDeliveryAddressFragmentData_city', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, 'GDeliveryAddressFragmentData_city', 'name'),
            prefix: prefix,
            postal_code: postal_code,
            city_type: city_type,
            available: available);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
