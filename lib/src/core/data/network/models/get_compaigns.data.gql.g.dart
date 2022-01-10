// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_compaigns.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetCompaignsData> _$gGetCompaignsDataSerializer =
    new _$GGetCompaignsDataSerializer();
Serializer<GGetCompaignsData_getMarketingCampaigns>
    _$gGetCompaignsDataGetMarketingCampaignsSerializer =
    new _$GGetCompaignsData_getMarketingCampaignsSerializer();
Serializer<GGetCompaignsData_getMarketingCampaigns_image>
    _$gGetCompaignsDataGetMarketingCampaignsImageSerializer =
    new _$GGetCompaignsData_getMarketingCampaigns_imageSerializer();

class _$GGetCompaignsDataSerializer
    implements StructuredSerializer<GGetCompaignsData> {
  @override
  final Iterable<Type> types = const [GGetCompaignsData, _$GGetCompaignsData];
  @override
  final String wireName = 'GGetCompaignsData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GGetCompaignsData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.getMarketingCampaigns;
    if (value != null) {
      result
        ..add('getMarketingCampaigns')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(GGetCompaignsData_getMarketingCampaigns)
            ])));
    }
    return result;
  }

  @override
  GGetCompaignsData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetCompaignsDataBuilder();

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
        case 'getMarketingCampaigns':
          result.getMarketingCampaigns.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GGetCompaignsData_getMarketingCampaigns)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetCompaignsData_getMarketingCampaignsSerializer
    implements StructuredSerializer<GGetCompaignsData_getMarketingCampaigns> {
  @override
  final Iterable<Type> types = const [
    GGetCompaignsData_getMarketingCampaigns,
    _$GGetCompaignsData_getMarketingCampaigns
  ];
  @override
  final String wireName = 'GGetCompaignsData_getMarketingCampaigns';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetCompaignsData_getMarketingCampaigns object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GGetCompaignsData_getMarketingCampaigns_image)));
    }
    value = object.period_from;
    if (value != null) {
      result
        ..add('period_from')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.period_to;
    if (value != null) {
      result
        ..add('period_to')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.active;
    if (value != null) {
      result
        ..add('active')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GGetCompaignsData_getMarketingCampaigns deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetCompaignsData_getMarketingCampaignsBuilder();

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
              specifiedType: const FullType(String)) as String?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'image':
          result.image.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GGetCompaignsData_getMarketingCampaigns_image))!
              as GGetCompaignsData_getMarketingCampaigns_image);
          break;
        case 'period_from':
          result.period_from = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'period_to':
          result.period_to = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'active':
          result.active = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetCompaignsData_getMarketingCampaigns_imageSerializer
    implements
        StructuredSerializer<GGetCompaignsData_getMarketingCampaigns_image> {
  @override
  final Iterable<Type> types = const [
    GGetCompaignsData_getMarketingCampaigns_image,
    _$GGetCompaignsData_getMarketingCampaigns_image
  ];
  @override
  final String wireName = 'GGetCompaignsData_getMarketingCampaigns_image';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GGetCompaignsData_getMarketingCampaigns_image object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.size;
    if (value != null) {
      result
        ..add('size')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.author;
    if (value != null) {
      result
        ..add('author')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  GGetCompaignsData_getMarketingCampaigns_image deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetCompaignsData_getMarketingCampaigns_imageBuilder();

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
        case 'size':
          result.size = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'author':
          result.author = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$GGetCompaignsData extends GGetCompaignsData {
  @override
  final String G__typename;
  @override
  final BuiltList<GGetCompaignsData_getMarketingCampaigns>?
      getMarketingCampaigns;

  factory _$GGetCompaignsData(
          [void Function(GGetCompaignsDataBuilder)? updates]) =>
      (new GGetCompaignsDataBuilder()..update(updates)).build();

  _$GGetCompaignsData._({required this.G__typename, this.getMarketingCampaigns})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGetCompaignsData', 'G__typename');
  }

  @override
  GGetCompaignsData rebuild(void Function(GGetCompaignsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetCompaignsDataBuilder toBuilder() =>
      new GGetCompaignsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetCompaignsData &&
        G__typename == other.G__typename &&
        getMarketingCampaigns == other.getMarketingCampaigns;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc(0, G__typename.hashCode), getMarketingCampaigns.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetCompaignsData')
          ..add('G__typename', G__typename)
          ..add('getMarketingCampaigns', getMarketingCampaigns))
        .toString();
  }
}

class GGetCompaignsDataBuilder
    implements Builder<GGetCompaignsData, GGetCompaignsDataBuilder> {
  _$GGetCompaignsData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GGetCompaignsData_getMarketingCampaigns>? _getMarketingCampaigns;
  ListBuilder<GGetCompaignsData_getMarketingCampaigns>
      get getMarketingCampaigns => _$this._getMarketingCampaigns ??=
          new ListBuilder<GGetCompaignsData_getMarketingCampaigns>();
  set getMarketingCampaigns(
          ListBuilder<GGetCompaignsData_getMarketingCampaigns>?
              getMarketingCampaigns) =>
      _$this._getMarketingCampaigns = getMarketingCampaigns;

  GGetCompaignsDataBuilder() {
    GGetCompaignsData._initializeBuilder(this);
  }

  GGetCompaignsDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _getMarketingCampaigns = $v.getMarketingCampaigns?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetCompaignsData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetCompaignsData;
  }

  @override
  void update(void Function(GGetCompaignsDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetCompaignsData build() {
    _$GGetCompaignsData _$result;
    try {
      _$result = _$v ??
          new _$GGetCompaignsData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GGetCompaignsData', 'G__typename'),
              getMarketingCampaigns: _getMarketingCampaigns?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'getMarketingCampaigns';
        _getMarketingCampaigns?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GGetCompaignsData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetCompaignsData_getMarketingCampaigns
    extends GGetCompaignsData_getMarketingCampaigns {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final GGetCompaignsData_getMarketingCampaigns_image? image;
  @override
  final DateTime? period_from;
  @override
  final DateTime? period_to;
  @override
  final bool? active;

  factory _$GGetCompaignsData_getMarketingCampaigns(
          [void Function(GGetCompaignsData_getMarketingCampaignsBuilder)?
              updates]) =>
      (new GGetCompaignsData_getMarketingCampaignsBuilder()..update(updates))
          .build();

  _$GGetCompaignsData_getMarketingCampaigns._(
      {required this.G__typename,
      required this.id,
      this.name,
      this.description,
      this.image,
      this.period_from,
      this.period_to,
      this.active})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGetCompaignsData_getMarketingCampaigns', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GGetCompaignsData_getMarketingCampaigns', 'id');
  }

  @override
  GGetCompaignsData_getMarketingCampaigns rebuild(
          void Function(GGetCompaignsData_getMarketingCampaignsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetCompaignsData_getMarketingCampaignsBuilder toBuilder() =>
      new GGetCompaignsData_getMarketingCampaignsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetCompaignsData_getMarketingCampaigns &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        description == other.description &&
        image == other.image &&
        period_from == other.period_from &&
        period_to == other.period_to &&
        active == other.active;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, G__typename.hashCode), id.hashCode),
                            name.hashCode),
                        description.hashCode),
                    image.hashCode),
                period_from.hashCode),
            period_to.hashCode),
        active.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GGetCompaignsData_getMarketingCampaigns')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('description', description)
          ..add('image', image)
          ..add('period_from', period_from)
          ..add('period_to', period_to)
          ..add('active', active))
        .toString();
  }
}

class GGetCompaignsData_getMarketingCampaignsBuilder
    implements
        Builder<GGetCompaignsData_getMarketingCampaigns,
            GGetCompaignsData_getMarketingCampaignsBuilder> {
  _$GGetCompaignsData_getMarketingCampaigns? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  GGetCompaignsData_getMarketingCampaigns_imageBuilder? _image;
  GGetCompaignsData_getMarketingCampaigns_imageBuilder get image =>
      _$this._image ??=
          new GGetCompaignsData_getMarketingCampaigns_imageBuilder();
  set image(GGetCompaignsData_getMarketingCampaigns_imageBuilder? image) =>
      _$this._image = image;

  DateTime? _period_from;
  DateTime? get period_from => _$this._period_from;
  set period_from(DateTime? period_from) => _$this._period_from = period_from;

  DateTime? _period_to;
  DateTime? get period_to => _$this._period_to;
  set period_to(DateTime? period_to) => _$this._period_to = period_to;

  bool? _active;
  bool? get active => _$this._active;
  set active(bool? active) => _$this._active = active;

  GGetCompaignsData_getMarketingCampaignsBuilder() {
    GGetCompaignsData_getMarketingCampaigns._initializeBuilder(this);
  }

  GGetCompaignsData_getMarketingCampaignsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _description = $v.description;
      _image = $v.image?.toBuilder();
      _period_from = $v.period_from;
      _period_to = $v.period_to;
      _active = $v.active;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetCompaignsData_getMarketingCampaigns other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetCompaignsData_getMarketingCampaigns;
  }

  @override
  void update(
      void Function(GGetCompaignsData_getMarketingCampaignsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetCompaignsData_getMarketingCampaigns build() {
    _$GGetCompaignsData_getMarketingCampaigns _$result;
    try {
      _$result = _$v ??
          new _$GGetCompaignsData_getMarketingCampaigns._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  'GGetCompaignsData_getMarketingCampaigns', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, 'GGetCompaignsData_getMarketingCampaigns', 'id'),
              name: name,
              description: description,
              image: _image?.build(),
              period_from: period_from,
              period_to: period_to,
              active: active);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'image';
        _image?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GGetCompaignsData_getMarketingCampaigns',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetCompaignsData_getMarketingCampaigns_image
    extends GGetCompaignsData_getMarketingCampaigns_image {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String? size;
  @override
  final String? author;
  @override
  final String? url;

  factory _$GGetCompaignsData_getMarketingCampaigns_image(
          [void Function(GGetCompaignsData_getMarketingCampaigns_imageBuilder)?
              updates]) =>
      (new GGetCompaignsData_getMarketingCampaigns_imageBuilder()
            ..update(updates))
          .build();

  _$GGetCompaignsData_getMarketingCampaigns_image._(
      {required this.G__typename,
      required this.id,
      this.size,
      this.author,
      this.url})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        'GGetCompaignsData_getMarketingCampaigns_image', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GGetCompaignsData_getMarketingCampaigns_image', 'id');
  }

  @override
  GGetCompaignsData_getMarketingCampaigns_image rebuild(
          void Function(GGetCompaignsData_getMarketingCampaigns_imageBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetCompaignsData_getMarketingCampaigns_imageBuilder toBuilder() =>
      new GGetCompaignsData_getMarketingCampaigns_imageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetCompaignsData_getMarketingCampaigns_image &&
        G__typename == other.G__typename &&
        id == other.id &&
        size == other.size &&
        author == other.author &&
        url == other.url;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, G__typename.hashCode), id.hashCode), size.hashCode),
            author.hashCode),
        url.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GGetCompaignsData_getMarketingCampaigns_image')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('size', size)
          ..add('author', author)
          ..add('url', url))
        .toString();
  }
}

class GGetCompaignsData_getMarketingCampaigns_imageBuilder
    implements
        Builder<GGetCompaignsData_getMarketingCampaigns_image,
            GGetCompaignsData_getMarketingCampaigns_imageBuilder> {
  _$GGetCompaignsData_getMarketingCampaigns_image? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _size;
  String? get size => _$this._size;
  set size(String? size) => _$this._size = size;

  String? _author;
  String? get author => _$this._author;
  set author(String? author) => _$this._author = author;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  GGetCompaignsData_getMarketingCampaigns_imageBuilder() {
    GGetCompaignsData_getMarketingCampaigns_image._initializeBuilder(this);
  }

  GGetCompaignsData_getMarketingCampaigns_imageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _size = $v.size;
      _author = $v.author;
      _url = $v.url;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetCompaignsData_getMarketingCampaigns_image other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetCompaignsData_getMarketingCampaigns_image;
  }

  @override
  void update(
      void Function(GGetCompaignsData_getMarketingCampaigns_imageBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetCompaignsData_getMarketingCampaigns_image build() {
    final _$result = _$v ??
        new _$GGetCompaignsData_getMarketingCampaigns_image._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                'GGetCompaignsData_getMarketingCampaigns_image', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'GGetCompaignsData_getMarketingCampaigns_image', 'id'),
            size: size,
            author: author,
            url: url);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
