// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_page_fragment.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GContactPageFragmentData> _$gContactPageFragmentDataSerializer =
    new _$GContactPageFragmentDataSerializer();
Serializer<GContactPageFragmentData_city>
    _$gContactPageFragmentDataCitySerializer =
    new _$GContactPageFragmentData_citySerializer();
Serializer<GContactPageFragmentData_contents>
    _$gContactPageFragmentDataContentsSerializer =
    new _$GContactPageFragmentData_contentsSerializer();
Serializer<GContactPageFragmentData_contents_data>
    _$gContactPageFragmentDataContentsDataSerializer =
    new _$GContactPageFragmentData_contents_dataSerializer();
Serializer<GContactPageFragmentData_contents_data_social_networks>
    _$gContactPageFragmentDataContentsDataSocialNetworksSerializer =
    new _$GContactPageFragmentData_contents_data_social_networksSerializer();

class _$GContactPageFragmentDataSerializer
    implements StructuredSerializer<GContactPageFragmentData> {
  @override
  final Iterable<Type> types = const [
    GContactPageFragmentData,
    _$GContactPageFragmentData
  ];
  @override
  final String wireName = 'GContactPageFragmentData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GContactPageFragmentData object,
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
            specifiedType: const FullType(GContactPageFragmentData_city)));
    }
    value = object.contents;
    if (value != null) {
      result
        ..add('contents')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList,
                const [const FullType(GContactPageFragmentData_contents)])));
    }
    return result;
  }

  @override
  GContactPageFragmentData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GContactPageFragmentDataBuilder();

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
                  specifiedType: const FullType(GContactPageFragmentData_city))!
              as GContactPageFragmentData_city);
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'contents':
          result.contents.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GContactPageFragmentData_contents)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GContactPageFragmentData_citySerializer
    implements StructuredSerializer<GContactPageFragmentData_city> {
  @override
  final Iterable<Type> types = const [
    GContactPageFragmentData_city,
    _$GContactPageFragmentData_city
  ];
  @override
  final String wireName = 'GContactPageFragmentData_city';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GContactPageFragmentData_city object,
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
  GContactPageFragmentData_city deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GContactPageFragmentData_cityBuilder();

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

class _$GContactPageFragmentData_contentsSerializer
    implements StructuredSerializer<GContactPageFragmentData_contents> {
  @override
  final Iterable<Type> types = const [
    GContactPageFragmentData_contents,
    _$GContactPageFragmentData_contents
  ];
  @override
  final String wireName = 'GContactPageFragmentData_contents';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GContactPageFragmentData_contents object,
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
              const FullType(GContactPageFragmentData_contents_data)),
    ];

    return result;
  }

  @override
  GContactPageFragmentData_contents deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GContactPageFragmentData_contentsBuilder();

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
                  specifiedType:
                      const FullType(GContactPageFragmentData_contents_data))!
              as GContactPageFragmentData_contents_data);
          break;
      }
    }

    return result.build();
  }
}

class _$GContactPageFragmentData_contents_dataSerializer
    implements StructuredSerializer<GContactPageFragmentData_contents_data> {
  @override
  final Iterable<Type> types = const [
    GContactPageFragmentData_contents_data,
    _$GContactPageFragmentData_contents_data
  ];
  @override
  final String wireName = 'GContactPageFragmentData_contents_data';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GContactPageFragmentData_contents_data object,
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
                  GContactPageFragmentData_contents_data_social_networks)
            ])));
    }
    return result;
  }

  @override
  GContactPageFragmentData_contents_data deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GContactPageFragmentData_contents_dataBuilder();

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
                    GContactPageFragmentData_contents_data_social_networks)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GContactPageFragmentData_contents_data_social_networksSerializer
    implements
        StructuredSerializer<
            GContactPageFragmentData_contents_data_social_networks> {
  @override
  final Iterable<Type> types = const [
    GContactPageFragmentData_contents_data_social_networks,
    _$GContactPageFragmentData_contents_data_social_networks
  ];
  @override
  final String wireName =
      'GContactPageFragmentData_contents_data_social_networks';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GContactPageFragmentData_contents_data_social_networks object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'icon',
      serializers.serialize(object.icon,
          specifiedType: const FullType(_i1.GSocialNetworkIcon)),
      'href',
      serializers.serialize(object.href, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GContactPageFragmentData_contents_data_social_networks deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GContactPageFragmentData_contents_data_social_networksBuilder();

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
                  specifiedType: const FullType(_i1.GSocialNetworkIcon))
              as _i1.GSocialNetworkIcon;
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

class _$GContactPageFragmentData extends GContactPageFragmentData {
  @override
  final String G__typename;
  @override
  final GContactPageFragmentData_city? city;
  @override
  final String title;
  @override
  final BuiltList<GContactPageFragmentData_contents>? contents;

  factory _$GContactPageFragmentData(
          [void Function(GContactPageFragmentDataBuilder)? updates]) =>
      (new GContactPageFragmentDataBuilder()..update(updates)).build();

  _$GContactPageFragmentData._(
      {required this.G__typename,
      this.city,
      required this.title,
      this.contents})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GContactPageFragmentData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        title, 'GContactPageFragmentData', 'title');
  }

  @override
  GContactPageFragmentData rebuild(
          void Function(GContactPageFragmentDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GContactPageFragmentDataBuilder toBuilder() =>
      new GContactPageFragmentDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GContactPageFragmentData &&
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
    return (newBuiltValueToStringHelper('GContactPageFragmentData')
          ..add('G__typename', G__typename)
          ..add('city', city)
          ..add('title', title)
          ..add('contents', contents))
        .toString();
  }
}

class GContactPageFragmentDataBuilder
    implements
        Builder<GContactPageFragmentData, GContactPageFragmentDataBuilder> {
  _$GContactPageFragmentData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GContactPageFragmentData_cityBuilder? _city;
  GContactPageFragmentData_cityBuilder get city =>
      _$this._city ??= new GContactPageFragmentData_cityBuilder();
  set city(GContactPageFragmentData_cityBuilder? city) => _$this._city = city;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  ListBuilder<GContactPageFragmentData_contents>? _contents;
  ListBuilder<GContactPageFragmentData_contents> get contents =>
      _$this._contents ??= new ListBuilder<GContactPageFragmentData_contents>();
  set contents(ListBuilder<GContactPageFragmentData_contents>? contents) =>
      _$this._contents = contents;

  GContactPageFragmentDataBuilder() {
    GContactPageFragmentData._initializeBuilder(this);
  }

  GContactPageFragmentDataBuilder get _$this {
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
  void replace(GContactPageFragmentData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GContactPageFragmentData;
  }

  @override
  void update(void Function(GContactPageFragmentDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GContactPageFragmentData build() {
    _$GContactPageFragmentData _$result;
    try {
      _$result = _$v ??
          new _$GContactPageFragmentData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GContactPageFragmentData', 'G__typename'),
              city: _city?.build(),
              title: BuiltValueNullFieldError.checkNotNull(
                  title, 'GContactPageFragmentData', 'title'),
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
            'GContactPageFragmentData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GContactPageFragmentData_city extends GContactPageFragmentData_city {
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

  factory _$GContactPageFragmentData_city(
          [void Function(GContactPageFragmentData_cityBuilder)? updates]) =>
      (new GContactPageFragmentData_cityBuilder()..update(updates)).build();

  _$GContactPageFragmentData_city._(
      {required this.G__typename,
      required this.id,
      required this.name,
      this.prefix,
      this.postal_code,
      this.city_type,
      this.available})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GContactPageFragmentData_city', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GContactPageFragmentData_city', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, 'GContactPageFragmentData_city', 'name');
  }

  @override
  GContactPageFragmentData_city rebuild(
          void Function(GContactPageFragmentData_cityBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GContactPageFragmentData_cityBuilder toBuilder() =>
      new GContactPageFragmentData_cityBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GContactPageFragmentData_city &&
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
    return (newBuiltValueToStringHelper('GContactPageFragmentData_city')
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

class GContactPageFragmentData_cityBuilder
    implements
        Builder<GContactPageFragmentData_city,
            GContactPageFragmentData_cityBuilder> {
  _$GContactPageFragmentData_city? _$v;

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

  GContactPageFragmentData_cityBuilder() {
    GContactPageFragmentData_city._initializeBuilder(this);
  }

  GContactPageFragmentData_cityBuilder get _$this {
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
  void replace(GContactPageFragmentData_city other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GContactPageFragmentData_city;
  }

  @override
  void update(void Function(GContactPageFragmentData_cityBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GContactPageFragmentData_city build() {
    final _$result = _$v ??
        new _$GContactPageFragmentData_city._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, 'GContactPageFragmentData_city', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'GContactPageFragmentData_city', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, 'GContactPageFragmentData_city', 'name'),
            prefix: prefix,
            postal_code: postal_code,
            city_type: city_type,
            available: available);
    replace(_$result);
    return _$result;
  }
}

class _$GContactPageFragmentData_contents
    extends GContactPageFragmentData_contents {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final GContactPageFragmentData_contents_data data;

  factory _$GContactPageFragmentData_contents(
          [void Function(GContactPageFragmentData_contentsBuilder)? updates]) =>
      (new GContactPageFragmentData_contentsBuilder()..update(updates)).build();

  _$GContactPageFragmentData_contents._(
      {required this.G__typename, required this.id, required this.data})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GContactPageFragmentData_contents', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GContactPageFragmentData_contents', 'id');
    BuiltValueNullFieldError.checkNotNull(
        data, 'GContactPageFragmentData_contents', 'data');
  }

  @override
  GContactPageFragmentData_contents rebuild(
          void Function(GContactPageFragmentData_contentsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GContactPageFragmentData_contentsBuilder toBuilder() =>
      new GContactPageFragmentData_contentsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GContactPageFragmentData_contents &&
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
    return (newBuiltValueToStringHelper('GContactPageFragmentData_contents')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('data', data))
        .toString();
  }
}

class GContactPageFragmentData_contentsBuilder
    implements
        Builder<GContactPageFragmentData_contents,
            GContactPageFragmentData_contentsBuilder> {
  _$GContactPageFragmentData_contents? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GContactPageFragmentData_contents_dataBuilder? _data;
  GContactPageFragmentData_contents_dataBuilder get data =>
      _$this._data ??= new GContactPageFragmentData_contents_dataBuilder();
  set data(GContactPageFragmentData_contents_dataBuilder? data) =>
      _$this._data = data;

  GContactPageFragmentData_contentsBuilder() {
    GContactPageFragmentData_contents._initializeBuilder(this);
  }

  GContactPageFragmentData_contentsBuilder get _$this {
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
  void replace(GContactPageFragmentData_contents other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GContactPageFragmentData_contents;
  }

  @override
  void update(
      void Function(GContactPageFragmentData_contentsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GContactPageFragmentData_contents build() {
    _$GContactPageFragmentData_contents _$result;
    try {
      _$result = _$v ??
          new _$GContactPageFragmentData_contents._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  'GContactPageFragmentData_contents', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, 'GContactPageFragmentData_contents', 'id'),
              data: data.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GContactPageFragmentData_contents', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GContactPageFragmentData_contents_data
    extends GContactPageFragmentData_contents_data {
  @override
  final String G__typename;
  @override
  final String? logo;
  @override
  final String? email;
  @override
  final BuiltList<String>? telephones;
  @override
  final BuiltList<GContactPageFragmentData_contents_data_social_networks>?
      social_networks;

  factory _$GContactPageFragmentData_contents_data(
          [void Function(GContactPageFragmentData_contents_dataBuilder)?
              updates]) =>
      (new GContactPageFragmentData_contents_dataBuilder()..update(updates))
          .build();

  _$GContactPageFragmentData_contents_data._(
      {required this.G__typename,
      this.logo,
      this.email,
      this.telephones,
      this.social_networks})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GContactPageFragmentData_contents_data', 'G__typename');
  }

  @override
  GContactPageFragmentData_contents_data rebuild(
          void Function(GContactPageFragmentData_contents_dataBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GContactPageFragmentData_contents_dataBuilder toBuilder() =>
      new GContactPageFragmentData_contents_dataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GContactPageFragmentData_contents_data &&
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
            'GContactPageFragmentData_contents_data')
          ..add('G__typename', G__typename)
          ..add('logo', logo)
          ..add('email', email)
          ..add('telephones', telephones)
          ..add('social_networks', social_networks))
        .toString();
  }
}

class GContactPageFragmentData_contents_dataBuilder
    implements
        Builder<GContactPageFragmentData_contents_data,
            GContactPageFragmentData_contents_dataBuilder> {
  _$GContactPageFragmentData_contents_data? _$v;

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

  ListBuilder<GContactPageFragmentData_contents_data_social_networks>?
      _social_networks;
  ListBuilder<GContactPageFragmentData_contents_data_social_networks>
      get social_networks => _$this._social_networks ??= new ListBuilder<
          GContactPageFragmentData_contents_data_social_networks>();
  set social_networks(
          ListBuilder<GContactPageFragmentData_contents_data_social_networks>?
              social_networks) =>
      _$this._social_networks = social_networks;

  GContactPageFragmentData_contents_dataBuilder() {
    GContactPageFragmentData_contents_data._initializeBuilder(this);
  }

  GContactPageFragmentData_contents_dataBuilder get _$this {
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
  void replace(GContactPageFragmentData_contents_data other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GContactPageFragmentData_contents_data;
  }

  @override
  void update(
      void Function(GContactPageFragmentData_contents_dataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GContactPageFragmentData_contents_data build() {
    _$GContactPageFragmentData_contents_data _$result;
    try {
      _$result = _$v ??
          new _$GContactPageFragmentData_contents_data._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  'GContactPageFragmentData_contents_data', 'G__typename'),
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
            'GContactPageFragmentData_contents_data',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GContactPageFragmentData_contents_data_social_networks
    extends GContactPageFragmentData_contents_data_social_networks {
  @override
  final String G__typename;
  @override
  final _i1.GSocialNetworkIcon icon;
  @override
  final String href;

  factory _$GContactPageFragmentData_contents_data_social_networks(
          [void Function(
                  GContactPageFragmentData_contents_data_social_networksBuilder)?
              updates]) =>
      (new GContactPageFragmentData_contents_data_social_networksBuilder()
            ..update(updates))
          .build();

  _$GContactPageFragmentData_contents_data_social_networks._(
      {required this.G__typename, required this.icon, required this.href})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        'GContactPageFragmentData_contents_data_social_networks',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        icon, 'GContactPageFragmentData_contents_data_social_networks', 'icon');
    BuiltValueNullFieldError.checkNotNull(
        href, 'GContactPageFragmentData_contents_data_social_networks', 'href');
  }

  @override
  GContactPageFragmentData_contents_data_social_networks rebuild(
          void Function(
                  GContactPageFragmentData_contents_data_social_networksBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GContactPageFragmentData_contents_data_social_networksBuilder toBuilder() =>
      new GContactPageFragmentData_contents_data_social_networksBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GContactPageFragmentData_contents_data_social_networks &&
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
            'GContactPageFragmentData_contents_data_social_networks')
          ..add('G__typename', G__typename)
          ..add('icon', icon)
          ..add('href', href))
        .toString();
  }
}

class GContactPageFragmentData_contents_data_social_networksBuilder
    implements
        Builder<GContactPageFragmentData_contents_data_social_networks,
            GContactPageFragmentData_contents_data_social_networksBuilder> {
  _$GContactPageFragmentData_contents_data_social_networks? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  _i1.GSocialNetworkIcon? _icon;
  _i1.GSocialNetworkIcon? get icon => _$this._icon;
  set icon(_i1.GSocialNetworkIcon? icon) => _$this._icon = icon;

  String? _href;
  String? get href => _$this._href;
  set href(String? href) => _$this._href = href;

  GContactPageFragmentData_contents_data_social_networksBuilder() {
    GContactPageFragmentData_contents_data_social_networks._initializeBuilder(
        this);
  }

  GContactPageFragmentData_contents_data_social_networksBuilder get _$this {
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
  void replace(GContactPageFragmentData_contents_data_social_networks other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GContactPageFragmentData_contents_data_social_networks;
  }

  @override
  void update(
      void Function(
              GContactPageFragmentData_contents_data_social_networksBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GContactPageFragmentData_contents_data_social_networks build() {
    final _$result = _$v ??
        new _$GContactPageFragmentData_contents_data_social_networks._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                'GContactPageFragmentData_contents_data_social_networks',
                'G__typename'),
            icon: BuiltValueNullFieldError.checkNotNull(
                icon,
                'GContactPageFragmentData_contents_data_social_networks',
                'icon'),
            href: BuiltValueNullFieldError.checkNotNull(
                href,
                'GContactPageFragmentData_contents_data_social_networks',
                'href'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
