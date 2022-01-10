// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_delivery_address.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetAllDeliveryAddressesData>
    _$gGetAllDeliveryAddressesDataSerializer =
    new _$GGetAllDeliveryAddressesDataSerializer();
Serializer<GGetAllDeliveryAddressesData_getAllDeliveryAddresses>
    _$gGetAllDeliveryAddressesDataGetAllDeliveryAddressesSerializer =
    new _$GGetAllDeliveryAddressesData_getAllDeliveryAddressesSerializer();
Serializer<GGetAllDeliveryAddressesData_getAllDeliveryAddresses_city>
    _$gGetAllDeliveryAddressesDataGetAllDeliveryAddressesCitySerializer =
    new _$GGetAllDeliveryAddressesData_getAllDeliveryAddresses_citySerializer();

class _$GGetAllDeliveryAddressesDataSerializer
    implements StructuredSerializer<GGetAllDeliveryAddressesData> {
  @override
  final Iterable<Type> types = const [
    GGetAllDeliveryAddressesData,
    _$GGetAllDeliveryAddressesData
  ];
  @override
  final String wireName = 'GGetAllDeliveryAddressesData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetAllDeliveryAddressesData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.getAllDeliveryAddresses;
    if (value != null) {
      result
        ..add('getAllDeliveryAddresses')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  GGetAllDeliveryAddressesData_getAllDeliveryAddresses)
            ])));
    }
    return result;
  }

  @override
  GGetAllDeliveryAddressesData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetAllDeliveryAddressesDataBuilder();

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
        case 'getAllDeliveryAddresses':
          result.getAllDeliveryAddresses.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    GGetAllDeliveryAddressesData_getAllDeliveryAddresses)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetAllDeliveryAddressesData_getAllDeliveryAddressesSerializer
    implements
        StructuredSerializer<
            GGetAllDeliveryAddressesData_getAllDeliveryAddresses> {
  @override
  final Iterable<Type> types = const [
    GGetAllDeliveryAddressesData_getAllDeliveryAddresses,
    _$GGetAllDeliveryAddressesData_getAllDeliveryAddresses
  ];
  @override
  final String wireName =
      'GGetAllDeliveryAddressesData_getAllDeliveryAddresses';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GGetAllDeliveryAddressesData_getAllDeliveryAddresses object,
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
            specifiedType: const FullType(
                GGetAllDeliveryAddressesData_getAllDeliveryAddresses_city)));
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
  GGetAllDeliveryAddressesData_getAllDeliveryAddresses deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GGetAllDeliveryAddressesData_getAllDeliveryAddressesBuilder();

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
                  specifiedType: const FullType(
                      GGetAllDeliveryAddressesData_getAllDeliveryAddresses_city))!
              as GGetAllDeliveryAddressesData_getAllDeliveryAddresses_city);
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

class _$GGetAllDeliveryAddressesData_getAllDeliveryAddresses_citySerializer
    implements
        StructuredSerializer<
            GGetAllDeliveryAddressesData_getAllDeliveryAddresses_city> {
  @override
  final Iterable<Type> types = const [
    GGetAllDeliveryAddressesData_getAllDeliveryAddresses_city,
    _$GGetAllDeliveryAddressesData_getAllDeliveryAddresses_city
  ];
  @override
  final String wireName =
      'GGetAllDeliveryAddressesData_getAllDeliveryAddresses_city';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GGetAllDeliveryAddressesData_getAllDeliveryAddresses_city object,
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
  GGetAllDeliveryAddressesData_getAllDeliveryAddresses_city deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GGetAllDeliveryAddressesData_getAllDeliveryAddresses_cityBuilder();

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

class _$GGetAllDeliveryAddressesData extends GGetAllDeliveryAddressesData {
  @override
  final String G__typename;
  @override
  final BuiltList<GGetAllDeliveryAddressesData_getAllDeliveryAddresses>?
      getAllDeliveryAddresses;

  factory _$GGetAllDeliveryAddressesData(
          [void Function(GGetAllDeliveryAddressesDataBuilder)? updates]) =>
      (new GGetAllDeliveryAddressesDataBuilder()..update(updates)).build();

  _$GGetAllDeliveryAddressesData._(
      {required this.G__typename, this.getAllDeliveryAddresses})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGetAllDeliveryAddressesData', 'G__typename');
  }

  @override
  GGetAllDeliveryAddressesData rebuild(
          void Function(GGetAllDeliveryAddressesDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetAllDeliveryAddressesDataBuilder toBuilder() =>
      new GGetAllDeliveryAddressesDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetAllDeliveryAddressesData &&
        G__typename == other.G__typename &&
        getAllDeliveryAddresses == other.getAllDeliveryAddresses;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc(0, G__typename.hashCode), getAllDeliveryAddresses.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetAllDeliveryAddressesData')
          ..add('G__typename', G__typename)
          ..add('getAllDeliveryAddresses', getAllDeliveryAddresses))
        .toString();
  }
}

class GGetAllDeliveryAddressesDataBuilder
    implements
        Builder<GGetAllDeliveryAddressesData,
            GGetAllDeliveryAddressesDataBuilder> {
  _$GGetAllDeliveryAddressesData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GGetAllDeliveryAddressesData_getAllDeliveryAddresses>?
      _getAllDeliveryAddresses;
  ListBuilder<GGetAllDeliveryAddressesData_getAllDeliveryAddresses>
      get getAllDeliveryAddresses =>
          _$this._getAllDeliveryAddresses ??= new ListBuilder<
              GGetAllDeliveryAddressesData_getAllDeliveryAddresses>();
  set getAllDeliveryAddresses(
          ListBuilder<GGetAllDeliveryAddressesData_getAllDeliveryAddresses>?
              getAllDeliveryAddresses) =>
      _$this._getAllDeliveryAddresses = getAllDeliveryAddresses;

  GGetAllDeliveryAddressesDataBuilder() {
    GGetAllDeliveryAddressesData._initializeBuilder(this);
  }

  GGetAllDeliveryAddressesDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _getAllDeliveryAddresses = $v.getAllDeliveryAddresses?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetAllDeliveryAddressesData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetAllDeliveryAddressesData;
  }

  @override
  void update(void Function(GGetAllDeliveryAddressesDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetAllDeliveryAddressesData build() {
    _$GGetAllDeliveryAddressesData _$result;
    try {
      _$result = _$v ??
          new _$GGetAllDeliveryAddressesData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GGetAllDeliveryAddressesData', 'G__typename'),
              getAllDeliveryAddresses: _getAllDeliveryAddresses?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'getAllDeliveryAddresses';
        _getAllDeliveryAddresses?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GGetAllDeliveryAddressesData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetAllDeliveryAddressesData_getAllDeliveryAddresses
    extends GGetAllDeliveryAddressesData_getAllDeliveryAddresses {
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
  final GGetAllDeliveryAddressesData_getAllDeliveryAddresses_city? city;
  @override
  final bool? address_in_zone;

  factory _$GGetAllDeliveryAddressesData_getAllDeliveryAddresses(
          [void Function(
                  GGetAllDeliveryAddressesData_getAllDeliveryAddressesBuilder)?
              updates]) =>
      (new GGetAllDeliveryAddressesData_getAllDeliveryAddressesBuilder()
            ..update(updates))
          .build();

  _$GGetAllDeliveryAddressesData_getAllDeliveryAddresses._(
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
    BuiltValueNullFieldError.checkNotNull(G__typename,
        'GGetAllDeliveryAddressesData_getAllDeliveryAddresses', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GGetAllDeliveryAddressesData_getAllDeliveryAddresses', 'id');
    BuiltValueNullFieldError.checkNotNull(street,
        'GGetAllDeliveryAddressesData_getAllDeliveryAddresses', 'street');
  }

  @override
  GGetAllDeliveryAddressesData_getAllDeliveryAddresses rebuild(
          void Function(
                  GGetAllDeliveryAddressesData_getAllDeliveryAddressesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetAllDeliveryAddressesData_getAllDeliveryAddressesBuilder toBuilder() =>
      new GGetAllDeliveryAddressesData_getAllDeliveryAddressesBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetAllDeliveryAddressesData_getAllDeliveryAddresses &&
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
    return (newBuiltValueToStringHelper(
            'GGetAllDeliveryAddressesData_getAllDeliveryAddresses')
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

class GGetAllDeliveryAddressesData_getAllDeliveryAddressesBuilder
    implements
        Builder<GGetAllDeliveryAddressesData_getAllDeliveryAddresses,
            GGetAllDeliveryAddressesData_getAllDeliveryAddressesBuilder> {
  _$GGetAllDeliveryAddressesData_getAllDeliveryAddresses? _$v;

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

  GGetAllDeliveryAddressesData_getAllDeliveryAddresses_cityBuilder? _city;
  GGetAllDeliveryAddressesData_getAllDeliveryAddresses_cityBuilder get city =>
      _$this._city ??=
          new GGetAllDeliveryAddressesData_getAllDeliveryAddresses_cityBuilder();
  set city(
          GGetAllDeliveryAddressesData_getAllDeliveryAddresses_cityBuilder?
              city) =>
      _$this._city = city;

  bool? _address_in_zone;
  bool? get address_in_zone => _$this._address_in_zone;
  set address_in_zone(bool? address_in_zone) =>
      _$this._address_in_zone = address_in_zone;

  GGetAllDeliveryAddressesData_getAllDeliveryAddressesBuilder() {
    GGetAllDeliveryAddressesData_getAllDeliveryAddresses._initializeBuilder(
        this);
  }

  GGetAllDeliveryAddressesData_getAllDeliveryAddressesBuilder get _$this {
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
  void replace(GGetAllDeliveryAddressesData_getAllDeliveryAddresses other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetAllDeliveryAddressesData_getAllDeliveryAddresses;
  }

  @override
  void update(
      void Function(
              GGetAllDeliveryAddressesData_getAllDeliveryAddressesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetAllDeliveryAddressesData_getAllDeliveryAddresses build() {
    _$GGetAllDeliveryAddressesData_getAllDeliveryAddresses _$result;
    try {
      _$result = _$v ??
          new _$GGetAllDeliveryAddressesData_getAllDeliveryAddresses._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  'GGetAllDeliveryAddressesData_getAllDeliveryAddresses',
                  'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(id,
                  'GGetAllDeliveryAddressesData_getAllDeliveryAddresses', 'id'),
              city_name: city_name,
              street: BuiltValueNullFieldError.checkNotNull(
                  street,
                  'GGetAllDeliveryAddressesData_getAllDeliveryAddresses',
                  'street'),
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
            'GGetAllDeliveryAddressesData_getAllDeliveryAddresses',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetAllDeliveryAddressesData_getAllDeliveryAddresses_city
    extends GGetAllDeliveryAddressesData_getAllDeliveryAddresses_city {
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

  factory _$GGetAllDeliveryAddressesData_getAllDeliveryAddresses_city(
          [void Function(
                  GGetAllDeliveryAddressesData_getAllDeliveryAddresses_cityBuilder)?
              updates]) =>
      (new GGetAllDeliveryAddressesData_getAllDeliveryAddresses_cityBuilder()
            ..update(updates))
          .build();

  _$GGetAllDeliveryAddressesData_getAllDeliveryAddresses_city._(
      {required this.G__typename,
      required this.id,
      required this.name,
      this.prefix,
      this.postal_code,
      this.city_type,
      this.available})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        'GGetAllDeliveryAddressesData_getAllDeliveryAddresses_city',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GGetAllDeliveryAddressesData_getAllDeliveryAddresses_city', 'id');
    BuiltValueNullFieldError.checkNotNull(name,
        'GGetAllDeliveryAddressesData_getAllDeliveryAddresses_city', 'name');
  }

  @override
  GGetAllDeliveryAddressesData_getAllDeliveryAddresses_city rebuild(
          void Function(
                  GGetAllDeliveryAddressesData_getAllDeliveryAddresses_cityBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetAllDeliveryAddressesData_getAllDeliveryAddresses_cityBuilder
      toBuilder() =>
          new GGetAllDeliveryAddressesData_getAllDeliveryAddresses_cityBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetAllDeliveryAddressesData_getAllDeliveryAddresses_city &&
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
            'GGetAllDeliveryAddressesData_getAllDeliveryAddresses_city')
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

class GGetAllDeliveryAddressesData_getAllDeliveryAddresses_cityBuilder
    implements
        Builder<GGetAllDeliveryAddressesData_getAllDeliveryAddresses_city,
            GGetAllDeliveryAddressesData_getAllDeliveryAddresses_cityBuilder> {
  _$GGetAllDeliveryAddressesData_getAllDeliveryAddresses_city? _$v;

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

  GGetAllDeliveryAddressesData_getAllDeliveryAddresses_cityBuilder() {
    GGetAllDeliveryAddressesData_getAllDeliveryAddresses_city
        ._initializeBuilder(this);
  }

  GGetAllDeliveryAddressesData_getAllDeliveryAddresses_cityBuilder get _$this {
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
  void replace(
      GGetAllDeliveryAddressesData_getAllDeliveryAddresses_city other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetAllDeliveryAddressesData_getAllDeliveryAddresses_city;
  }

  @override
  void update(
      void Function(
              GGetAllDeliveryAddressesData_getAllDeliveryAddresses_cityBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetAllDeliveryAddressesData_getAllDeliveryAddresses_city build() {
    final _$result = _$v ??
        new _$GGetAllDeliveryAddressesData_getAllDeliveryAddresses_city._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                'GGetAllDeliveryAddressesData_getAllDeliveryAddresses_city',
                'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id,
                'GGetAllDeliveryAddressesData_getAllDeliveryAddresses_city',
                'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name,
                'GGetAllDeliveryAddressesData_getAllDeliveryAddresses_city',
                'name'),
            prefix: prefix,
            postal_code: postal_code,
            city_type: city_type,
            available: available);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
