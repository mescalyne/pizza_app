// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_contacts.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetContactsQueryData> _$gGetContactsQueryDataSerializer =
    new _$GGetContactsQueryDataSerializer();
Serializer<GGetContactsQueryData_getContacts>
    _$gGetContactsQueryDataGetContactsSerializer =
    new _$GGetContactsQueryData_getContactsSerializer();
Serializer<GGetContactsQueryData_getContacts_city>
    _$gGetContactsQueryDataGetContactsCitySerializer =
    new _$GGetContactsQueryData_getContacts_citySerializer();
Serializer<GGetContactsQueryData_getContacts_contents>
    _$gGetContactsQueryDataGetContactsContentsSerializer =
    new _$GGetContactsQueryData_getContacts_contentsSerializer();
Serializer<GGetContactsQueryData_getContacts_contents_data>
    _$gGetContactsQueryDataGetContactsContentsDataSerializer =
    new _$GGetContactsQueryData_getContacts_contents_dataSerializer();
Serializer<GGetContactsQueryData_getContacts_contents_data_social_networks>
    _$gGetContactsQueryDataGetContactsContentsDataSocialNetworksSerializer =
    new _$GGetContactsQueryData_getContacts_contents_data_social_networksSerializer();

class _$GGetContactsQueryDataSerializer
    implements StructuredSerializer<GGetContactsQueryData> {
  @override
  final Iterable<Type> types = const [
    GGetContactsQueryData,
    _$GGetContactsQueryData
  ];
  @override
  final String wireName = 'GGetContactsQueryData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetContactsQueryData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.getContacts;
    if (value != null) {
      result
        ..add('getContacts')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GGetContactsQueryData_getContacts)));
    }
    return result;
  }

  @override
  GGetContactsQueryData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetContactsQueryDataBuilder();

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
        case 'getContacts':
          result.getContacts.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GGetContactsQueryData_getContacts))!
              as GGetContactsQueryData_getContacts);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetContactsQueryData_getContactsSerializer
    implements StructuredSerializer<GGetContactsQueryData_getContacts> {
  @override
  final Iterable<Type> types = const [
    GGetContactsQueryData_getContacts,
    _$GGetContactsQueryData_getContacts
  ];
  @override
  final String wireName = 'GGetContactsQueryData_getContacts';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetContactsQueryData_getContacts object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.city;
    if (value != null) {
      result
        ..add('city')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GGetContactsQueryData_getContacts_city)));
    }
    value = object.contents;
    if (value != null) {
      result
        ..add('contents')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(GGetContactsQueryData_getContacts_contents)
            ])));
    }
    return result;
  }

  @override
  GGetContactsQueryData_getContacts deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetContactsQueryData_getContactsBuilder();

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
        case 'city':
          result.city.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GGetContactsQueryData_getContacts_city))!
              as GGetContactsQueryData_getContacts_city);
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'contents':
          result.contents.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GGetContactsQueryData_getContacts_contents)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetContactsQueryData_getContacts_citySerializer
    implements StructuredSerializer<GGetContactsQueryData_getContacts_city> {
  @override
  final Iterable<Type> types = const [
    GGetContactsQueryData_getContacts_city,
    _$GGetContactsQueryData_getContacts_city
  ];
  @override
  final String wireName = 'GGetContactsQueryData_getContacts_city';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetContactsQueryData_getContacts_city object,
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
  GGetContactsQueryData_getContacts_city deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetContactsQueryData_getContacts_cityBuilder();

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

class _$GGetContactsQueryData_getContacts_contentsSerializer
    implements
        StructuredSerializer<GGetContactsQueryData_getContacts_contents> {
  @override
  final Iterable<Type> types = const [
    GGetContactsQueryData_getContacts_contents,
    _$GGetContactsQueryData_getContacts_contents
  ];
  @override
  final String wireName = 'GGetContactsQueryData_getContacts_contents';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GGetContactsQueryData_getContacts_contents object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'data',
      serializers.serialize(object.data,
          specifiedType:
              const FullType(GGetContactsQueryData_getContacts_contents_data)),
    ];

    return result;
  }

  @override
  GGetContactsQueryData_getContacts_contents deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetContactsQueryData_getContacts_contentsBuilder();

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
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GGetContactsQueryData_getContacts_contents_data))!
              as GGetContactsQueryData_getContacts_contents_data);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetContactsQueryData_getContacts_contents_dataSerializer
    implements
        StructuredSerializer<GGetContactsQueryData_getContacts_contents_data> {
  @override
  final Iterable<Type> types = const [
    GGetContactsQueryData_getContacts_contents_data,
    _$GGetContactsQueryData_getContacts_contents_data
  ];
  @override
  final String wireName = 'GGetContactsQueryData_getContacts_contents_data';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GGetContactsQueryData_getContacts_contents_data object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.logo;
    if (value != null) {
      result
        ..add('logo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.telephones;
    if (value != null) {
      result
        ..add('telephones')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.social_networks;
    if (value != null) {
      result
        ..add('social_networks')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  GGetContactsQueryData_getContacts_contents_data_social_networks)
            ])));
    }
    return result;
  }

  @override
  GGetContactsQueryData_getContacts_contents_data deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetContactsQueryData_getContacts_contents_dataBuilder();

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
        case 'logo':
          result.logo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'telephones':
          result.telephones.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'social_networks':
          result.social_networks.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    GGetContactsQueryData_getContacts_contents_data_social_networks)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetContactsQueryData_getContacts_contents_data_social_networksSerializer
    implements
        StructuredSerializer<
            GGetContactsQueryData_getContacts_contents_data_social_networks> {
  @override
  final Iterable<Type> types = const [
    GGetContactsQueryData_getContacts_contents_data_social_networks,
    _$GGetContactsQueryData_getContacts_contents_data_social_networks
  ];
  @override
  final String wireName =
      'GGetContactsQueryData_getContacts_contents_data_social_networks';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GGetContactsQueryData_getContacts_contents_data_social_networks object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'icon',
      serializers.serialize(object.icon,
          specifiedType: const FullType(_i3.GSocialNetworkIcon)),
      'href',
      serializers.serialize(object.href, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GGetContactsQueryData_getContacts_contents_data_social_networks deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GGetContactsQueryData_getContacts_contents_data_social_networksBuilder();

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
        case 'icon':
          result.icon = serializers.deserialize(value,
                  specifiedType: const FullType(_i3.GSocialNetworkIcon))
              as _i3.GSocialNetworkIcon;
          break;
        case 'href':
          result.href = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetContactsQueryData extends GGetContactsQueryData {
  @override
  final String G__typename;
  @override
  final GGetContactsQueryData_getContacts? getContacts;

  factory _$GGetContactsQueryData(
          [void Function(GGetContactsQueryDataBuilder)? updates]) =>
      (new GGetContactsQueryDataBuilder()..update(updates)).build();

  _$GGetContactsQueryData._({required this.G__typename, this.getContacts})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGetContactsQueryData', 'G__typename');
  }

  @override
  GGetContactsQueryData rebuild(
          void Function(GGetContactsQueryDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetContactsQueryDataBuilder toBuilder() =>
      new GGetContactsQueryDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetContactsQueryData &&
        G__typename == other.G__typename &&
        getContacts == other.getContacts;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), getContacts.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetContactsQueryData')
          ..add('G__typename', G__typename)
          ..add('getContacts', getContacts))
        .toString();
  }
}

class GGetContactsQueryDataBuilder
    implements Builder<GGetContactsQueryData, GGetContactsQueryDataBuilder> {
  _$GGetContactsQueryData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GGetContactsQueryData_getContactsBuilder? _getContacts;
  GGetContactsQueryData_getContactsBuilder get getContacts =>
      _$this._getContacts ??= new GGetContactsQueryData_getContactsBuilder();
  set getContacts(GGetContactsQueryData_getContactsBuilder? getContacts) =>
      _$this._getContacts = getContacts;

  GGetContactsQueryDataBuilder() {
    GGetContactsQueryData._initializeBuilder(this);
  }

  GGetContactsQueryDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _getContacts = $v.getContacts?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetContactsQueryData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetContactsQueryData;
  }

  @override
  void update(void Function(GGetContactsQueryDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetContactsQueryData build() {
    _$GGetContactsQueryData _$result;
    try {
      _$result = _$v ??
          new _$GGetContactsQueryData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GGetContactsQueryData', 'G__typename'),
              getContacts: _getContacts?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'getContacts';
        _getContacts?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GGetContactsQueryData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetContactsQueryData_getContacts
    extends GGetContactsQueryData_getContacts {
  @override
  final String G__typename;
  @override
  final GGetContactsQueryData_getContacts_city? city;
  @override
  final String title;
  @override
  final BuiltList<GGetContactsQueryData_getContacts_contents>? contents;

  factory _$GGetContactsQueryData_getContacts(
          [void Function(GGetContactsQueryData_getContactsBuilder)? updates]) =>
      (new GGetContactsQueryData_getContactsBuilder()..update(updates)).build();

  _$GGetContactsQueryData_getContacts._(
      {required this.G__typename,
      this.city,
      required this.title,
      this.contents})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGetContactsQueryData_getContacts', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        title, 'GGetContactsQueryData_getContacts', 'title');
  }

  @override
  GGetContactsQueryData_getContacts rebuild(
          void Function(GGetContactsQueryData_getContactsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetContactsQueryData_getContactsBuilder toBuilder() =>
      new GGetContactsQueryData_getContactsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetContactsQueryData_getContacts &&
        G__typename == other.G__typename &&
        city == other.city &&
        title == other.title &&
        contents == other.contents;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, G__typename.hashCode), city.hashCode), title.hashCode),
        contents.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetContactsQueryData_getContacts')
          ..add('G__typename', G__typename)
          ..add('city', city)
          ..add('title', title)
          ..add('contents', contents))
        .toString();
  }
}

class GGetContactsQueryData_getContactsBuilder
    implements
        Builder<GGetContactsQueryData_getContacts,
            GGetContactsQueryData_getContactsBuilder> {
  _$GGetContactsQueryData_getContacts? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GGetContactsQueryData_getContacts_cityBuilder? _city;
  GGetContactsQueryData_getContacts_cityBuilder get city =>
      _$this._city ??= new GGetContactsQueryData_getContacts_cityBuilder();
  set city(GGetContactsQueryData_getContacts_cityBuilder? city) =>
      _$this._city = city;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  ListBuilder<GGetContactsQueryData_getContacts_contents>? _contents;
  ListBuilder<GGetContactsQueryData_getContacts_contents> get contents =>
      _$this._contents ??=
          new ListBuilder<GGetContactsQueryData_getContacts_contents>();
  set contents(
          ListBuilder<GGetContactsQueryData_getContacts_contents>? contents) =>
      _$this._contents = contents;

  GGetContactsQueryData_getContactsBuilder() {
    GGetContactsQueryData_getContacts._initializeBuilder(this);
  }

  GGetContactsQueryData_getContactsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _city = $v.city?.toBuilder();
      _title = $v.title;
      _contents = $v.contents?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetContactsQueryData_getContacts other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetContactsQueryData_getContacts;
  }

  @override
  void update(
      void Function(GGetContactsQueryData_getContactsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetContactsQueryData_getContacts build() {
    _$GGetContactsQueryData_getContacts _$result;
    try {
      _$result = _$v ??
          new _$GGetContactsQueryData_getContacts._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  'GGetContactsQueryData_getContacts', 'G__typename'),
              city: _city?.build(),
              title: BuiltValueNullFieldError.checkNotNull(
                  title, 'GGetContactsQueryData_getContacts', 'title'),
              contents: _contents?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'city';
        _city?.build();

        _$failedField = 'contents';
        _contents?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GGetContactsQueryData_getContacts', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetContactsQueryData_getContacts_city
    extends GGetContactsQueryData_getContacts_city {
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

  factory _$GGetContactsQueryData_getContacts_city(
          [void Function(GGetContactsQueryData_getContacts_cityBuilder)?
              updates]) =>
      (new GGetContactsQueryData_getContacts_cityBuilder()..update(updates))
          .build();

  _$GGetContactsQueryData_getContacts_city._(
      {required this.G__typename,
      required this.id,
      required this.name,
      this.prefix,
      this.postal_code,
      this.city_type,
      this.available})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGetContactsQueryData_getContacts_city', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GGetContactsQueryData_getContacts_city', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, 'GGetContactsQueryData_getContacts_city', 'name');
  }

  @override
  GGetContactsQueryData_getContacts_city rebuild(
          void Function(GGetContactsQueryData_getContacts_cityBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetContactsQueryData_getContacts_cityBuilder toBuilder() =>
      new GGetContactsQueryData_getContacts_cityBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetContactsQueryData_getContacts_city &&
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
            'GGetContactsQueryData_getContacts_city')
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

class GGetContactsQueryData_getContacts_cityBuilder
    implements
        Builder<GGetContactsQueryData_getContacts_city,
            GGetContactsQueryData_getContacts_cityBuilder> {
  _$GGetContactsQueryData_getContacts_city? _$v;

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

  GGetContactsQueryData_getContacts_cityBuilder() {
    GGetContactsQueryData_getContacts_city._initializeBuilder(this);
  }

  GGetContactsQueryData_getContacts_cityBuilder get _$this {
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
  void replace(GGetContactsQueryData_getContacts_city other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetContactsQueryData_getContacts_city;
  }

  @override
  void update(
      void Function(GGetContactsQueryData_getContacts_cityBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetContactsQueryData_getContacts_city build() {
    final _$result = _$v ??
        new _$GGetContactsQueryData_getContacts_city._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                'GGetContactsQueryData_getContacts_city', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'GGetContactsQueryData_getContacts_city', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, 'GGetContactsQueryData_getContacts_city', 'name'),
            prefix: prefix,
            postal_code: postal_code,
            city_type: city_type,
            available: available);
    replace(_$result);
    return _$result;
  }
}

class _$GGetContactsQueryData_getContacts_contents
    extends GGetContactsQueryData_getContacts_contents {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final GGetContactsQueryData_getContacts_contents_data data;

  factory _$GGetContactsQueryData_getContacts_contents(
          [void Function(GGetContactsQueryData_getContacts_contentsBuilder)?
              updates]) =>
      (new GGetContactsQueryData_getContacts_contentsBuilder()..update(updates))
          .build();

  _$GGetContactsQueryData_getContacts_contents._(
      {required this.G__typename, required this.id, required this.data})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        'GGetContactsQueryData_getContacts_contents', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GGetContactsQueryData_getContacts_contents', 'id');
    BuiltValueNullFieldError.checkNotNull(
        data, 'GGetContactsQueryData_getContacts_contents', 'data');
  }

  @override
  GGetContactsQueryData_getContacts_contents rebuild(
          void Function(GGetContactsQueryData_getContacts_contentsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetContactsQueryData_getContacts_contentsBuilder toBuilder() =>
      new GGetContactsQueryData_getContacts_contentsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetContactsQueryData_getContacts_contents &&
        G__typename == other.G__typename &&
        id == other.id &&
        data == other.data;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, G__typename.hashCode), id.hashCode), data.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GGetContactsQueryData_getContacts_contents')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('data', data))
        .toString();
  }
}

class GGetContactsQueryData_getContacts_contentsBuilder
    implements
        Builder<GGetContactsQueryData_getContacts_contents,
            GGetContactsQueryData_getContacts_contentsBuilder> {
  _$GGetContactsQueryData_getContacts_contents? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GGetContactsQueryData_getContacts_contents_dataBuilder? _data;
  GGetContactsQueryData_getContacts_contents_dataBuilder get data =>
      _$this._data ??=
          new GGetContactsQueryData_getContacts_contents_dataBuilder();
  set data(GGetContactsQueryData_getContacts_contents_dataBuilder? data) =>
      _$this._data = data;

  GGetContactsQueryData_getContacts_contentsBuilder() {
    GGetContactsQueryData_getContacts_contents._initializeBuilder(this);
  }

  GGetContactsQueryData_getContacts_contentsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _data = $v.data.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetContactsQueryData_getContacts_contents other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetContactsQueryData_getContacts_contents;
  }

  @override
  void update(
      void Function(GGetContactsQueryData_getContacts_contentsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetContactsQueryData_getContacts_contents build() {
    _$GGetContactsQueryData_getContacts_contents _$result;
    try {
      _$result = _$v ??
          new _$GGetContactsQueryData_getContacts_contents._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  'GGetContactsQueryData_getContacts_contents', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, 'GGetContactsQueryData_getContacts_contents', 'id'),
              data: data.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GGetContactsQueryData_getContacts_contents',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetContactsQueryData_getContacts_contents_data
    extends GGetContactsQueryData_getContacts_contents_data {
  @override
  final String G__typename;
  @override
  final String? logo;
  @override
  final String? email;
  @override
  final BuiltList<String>? telephones;
  @override
  final BuiltList<
          GGetContactsQueryData_getContacts_contents_data_social_networks>?
      social_networks;

  factory _$GGetContactsQueryData_getContacts_contents_data(
          [void Function(
                  GGetContactsQueryData_getContacts_contents_dataBuilder)?
              updates]) =>
      (new GGetContactsQueryData_getContacts_contents_dataBuilder()
            ..update(updates))
          .build();

  _$GGetContactsQueryData_getContacts_contents_data._(
      {required this.G__typename,
      this.logo,
      this.email,
      this.telephones,
      this.social_networks})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        'GGetContactsQueryData_getContacts_contents_data', 'G__typename');
  }

  @override
  GGetContactsQueryData_getContacts_contents_data rebuild(
          void Function(GGetContactsQueryData_getContacts_contents_dataBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetContactsQueryData_getContacts_contents_dataBuilder toBuilder() =>
      new GGetContactsQueryData_getContacts_contents_dataBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetContactsQueryData_getContacts_contents_data &&
        G__typename == other.G__typename &&
        logo == other.logo &&
        email == other.email &&
        telephones == other.telephones &&
        social_networks == other.social_networks;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, G__typename.hashCode), logo.hashCode),
                email.hashCode),
            telephones.hashCode),
        social_networks.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GGetContactsQueryData_getContacts_contents_data')
          ..add('G__typename', G__typename)
          ..add('logo', logo)
          ..add('email', email)
          ..add('telephones', telephones)
          ..add('social_networks', social_networks))
        .toString();
  }
}

class GGetContactsQueryData_getContacts_contents_dataBuilder
    implements
        Builder<GGetContactsQueryData_getContacts_contents_data,
            GGetContactsQueryData_getContacts_contents_dataBuilder> {
  _$GGetContactsQueryData_getContacts_contents_data? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _logo;
  String? get logo => _$this._logo;
  set logo(String? logo) => _$this._logo = logo;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  ListBuilder<String>? _telephones;
  ListBuilder<String> get telephones =>
      _$this._telephones ??= new ListBuilder<String>();
  set telephones(ListBuilder<String>? telephones) =>
      _$this._telephones = telephones;

  ListBuilder<GGetContactsQueryData_getContacts_contents_data_social_networks>?
      _social_networks;
  ListBuilder<GGetContactsQueryData_getContacts_contents_data_social_networks>
      get social_networks => _$this._social_networks ??= new ListBuilder<
          GGetContactsQueryData_getContacts_contents_data_social_networks>();
  set social_networks(
          ListBuilder<
                  GGetContactsQueryData_getContacts_contents_data_social_networks>?
              social_networks) =>
      _$this._social_networks = social_networks;

  GGetContactsQueryData_getContacts_contents_dataBuilder() {
    GGetContactsQueryData_getContacts_contents_data._initializeBuilder(this);
  }

  GGetContactsQueryData_getContacts_contents_dataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _logo = $v.logo;
      _email = $v.email;
      _telephones = $v.telephones?.toBuilder();
      _social_networks = $v.social_networks?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetContactsQueryData_getContacts_contents_data other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetContactsQueryData_getContacts_contents_data;
  }

  @override
  void update(
      void Function(GGetContactsQueryData_getContacts_contents_dataBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetContactsQueryData_getContacts_contents_data build() {
    _$GGetContactsQueryData_getContacts_contents_data _$result;
    try {
      _$result = _$v ??
          new _$GGetContactsQueryData_getContacts_contents_data._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  'GGetContactsQueryData_getContacts_contents_data',
                  'G__typename'),
              logo: logo,
              email: email,
              telephones: _telephones?.build(),
              social_networks: _social_networks?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'telephones';
        _telephones?.build();
        _$failedField = 'social_networks';
        _social_networks?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GGetContactsQueryData_getContacts_contents_data',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetContactsQueryData_getContacts_contents_data_social_networks
    extends GGetContactsQueryData_getContacts_contents_data_social_networks {
  @override
  final String G__typename;
  @override
  final _i3.GSocialNetworkIcon icon;
  @override
  final String href;

  factory _$GGetContactsQueryData_getContacts_contents_data_social_networks(
          [void Function(
                  GGetContactsQueryData_getContacts_contents_data_social_networksBuilder)?
              updates]) =>
      (new GGetContactsQueryData_getContacts_contents_data_social_networksBuilder()
            ..update(updates))
          .build();

  _$GGetContactsQueryData_getContacts_contents_data_social_networks._(
      {required this.G__typename, required this.icon, required this.href})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        'GGetContactsQueryData_getContacts_contents_data_social_networks',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        icon,
        'GGetContactsQueryData_getContacts_contents_data_social_networks',
        'icon');
    BuiltValueNullFieldError.checkNotNull(
        href,
        'GGetContactsQueryData_getContacts_contents_data_social_networks',
        'href');
  }

  @override
  GGetContactsQueryData_getContacts_contents_data_social_networks rebuild(
          void Function(
                  GGetContactsQueryData_getContacts_contents_data_social_networksBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetContactsQueryData_getContacts_contents_data_social_networksBuilder
      toBuilder() =>
          new GGetContactsQueryData_getContacts_contents_data_social_networksBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GGetContactsQueryData_getContacts_contents_data_social_networks &&
        G__typename == other.G__typename &&
        icon == other.icon &&
        href == other.href;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, G__typename.hashCode), icon.hashCode), href.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GGetContactsQueryData_getContacts_contents_data_social_networks')
          ..add('G__typename', G__typename)
          ..add('icon', icon)
          ..add('href', href))
        .toString();
  }
}

class GGetContactsQueryData_getContacts_contents_data_social_networksBuilder
    implements
        Builder<GGetContactsQueryData_getContacts_contents_data_social_networks,
            GGetContactsQueryData_getContacts_contents_data_social_networksBuilder> {
  _$GGetContactsQueryData_getContacts_contents_data_social_networks? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  _i3.GSocialNetworkIcon? _icon;
  _i3.GSocialNetworkIcon? get icon => _$this._icon;
  set icon(_i3.GSocialNetworkIcon? icon) => _$this._icon = icon;

  String? _href;
  String? get href => _$this._href;
  set href(String? href) => _$this._href = href;

  GGetContactsQueryData_getContacts_contents_data_social_networksBuilder() {
    GGetContactsQueryData_getContacts_contents_data_social_networks
        ._initializeBuilder(this);
  }

  GGetContactsQueryData_getContacts_contents_data_social_networksBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _icon = $v.icon;
      _href = $v.href;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GGetContactsQueryData_getContacts_contents_data_social_networks other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GGetContactsQueryData_getContacts_contents_data_social_networks;
  }

  @override
  void update(
      void Function(
              GGetContactsQueryData_getContacts_contents_data_social_networksBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetContactsQueryData_getContacts_contents_data_social_networks build() {
    final _$result = _$v ??
        new _$GGetContactsQueryData_getContacts_contents_data_social_networks._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                'GGetContactsQueryData_getContacts_contents_data_social_networks',
                'G__typename'),
            icon: BuiltValueNullFieldError.checkNotNull(
                icon,
                'GGetContactsQueryData_getContacts_contents_data_social_networks',
                'icon'),
            href: BuiltValueNullFieldError.checkNotNull(
                href,
                'GGetContactsQueryData_getContacts_contents_data_social_networks',
                'href'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
