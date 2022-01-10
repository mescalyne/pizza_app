// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_unique_pages.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetUniquePagesData> _$gGetUniquePagesDataSerializer =
    new _$GGetUniquePagesDataSerializer();
Serializer<GGetUniquePagesData_getUniquePages>
    _$gGetUniquePagesDataGetUniquePagesSerializer =
    new _$GGetUniquePagesData_getUniquePagesSerializer();
Serializer<GGetUniquePagesData_getUniquePages_icon>
    _$gGetUniquePagesDataGetUniquePagesIconSerializer =
    new _$GGetUniquePagesData_getUniquePages_iconSerializer();

class _$GGetUniquePagesDataSerializer
    implements StructuredSerializer<GGetUniquePagesData> {
  @override
  final Iterable<Type> types = const [
    GGetUniquePagesData,
    _$GGetUniquePagesData
  ];
  @override
  final String wireName = 'GGetUniquePagesData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetUniquePagesData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.getUniquePages;
    if (value != null) {
      result
        ..add('getUniquePages')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList,
                const [const FullType(GGetUniquePagesData_getUniquePages)])));
    }
    return result;
  }

  @override
  GGetUniquePagesData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetUniquePagesDataBuilder();

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
        case 'getUniquePages':
          result.getUniquePages.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GGetUniquePagesData_getUniquePages)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetUniquePagesData_getUniquePagesSerializer
    implements StructuredSerializer<GGetUniquePagesData_getUniquePages> {
  @override
  final Iterable<Type> types = const [
    GGetUniquePagesData_getUniquePages,
    _$GGetUniquePagesData_getUniquePages
  ];
  @override
  final String wireName = 'GGetUniquePagesData_getUniquePages';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetUniquePagesData_getUniquePages object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'slug',
      serializers.serialize(object.slug, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.icon;
    if (value != null) {
      result
        ..add('icon')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GGetUniquePagesData_getUniquePages_icon)));
    }
    return result;
  }

  @override
  GGetUniquePagesData_getUniquePages deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetUniquePagesData_getUniquePagesBuilder();

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
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'slug':
          result.slug = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'icon':
          result.icon.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GGetUniquePagesData_getUniquePages_icon))!
              as GGetUniquePagesData_getUniquePages_icon);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetUniquePagesData_getUniquePages_iconSerializer
    implements StructuredSerializer<GGetUniquePagesData_getUniquePages_icon> {
  @override
  final Iterable<Type> types = const [
    GGetUniquePagesData_getUniquePages_icon,
    _$GGetUniquePagesData_getUniquePages_icon
  ];
  @override
  final String wireName = 'GGetUniquePagesData_getUniquePages_icon';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetUniquePagesData_getUniquePages_icon object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i3.GTypeFile)));
    }
    value = object.url;
    if (value != null) {
      result
        ..add('url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.url_thumbnail;
    if (value != null) {
      result
        ..add('url_thumbnail')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GGetUniquePagesData_getUniquePages_icon deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetUniquePagesData_getUniquePages_iconBuilder();

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
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(_i3.GTypeFile)) as _i3.GTypeFile?;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'url_thumbnail':
          result.url_thumbnail = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetUniquePagesData extends GGetUniquePagesData {
  @override
  final String G__typename;
  @override
  final BuiltList<GGetUniquePagesData_getUniquePages>? getUniquePages;

  factory _$GGetUniquePagesData(
          [void Function(GGetUniquePagesDataBuilder)? updates]) =>
      (new GGetUniquePagesDataBuilder()..update(updates)).build();

  _$GGetUniquePagesData._({required this.G__typename, this.getUniquePages})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGetUniquePagesData', 'G__typename');
  }

  @override
  GGetUniquePagesData rebuild(
          void Function(GGetUniquePagesDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetUniquePagesDataBuilder toBuilder() =>
      new GGetUniquePagesDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetUniquePagesData &&
        G__typename == other.G__typename &&
        getUniquePages == other.getUniquePages;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), getUniquePages.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetUniquePagesData')
          ..add('G__typename', G__typename)
          ..add('getUniquePages', getUniquePages))
        .toString();
  }
}

class GGetUniquePagesDataBuilder
    implements Builder<GGetUniquePagesData, GGetUniquePagesDataBuilder> {
  _$GGetUniquePagesData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GGetUniquePagesData_getUniquePages>? _getUniquePages;
  ListBuilder<GGetUniquePagesData_getUniquePages> get getUniquePages =>
      _$this._getUniquePages ??=
          new ListBuilder<GGetUniquePagesData_getUniquePages>();
  set getUniquePages(
          ListBuilder<GGetUniquePagesData_getUniquePages>? getUniquePages) =>
      _$this._getUniquePages = getUniquePages;

  GGetUniquePagesDataBuilder() {
    GGetUniquePagesData._initializeBuilder(this);
  }

  GGetUniquePagesDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _getUniquePages = $v.getUniquePages?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetUniquePagesData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetUniquePagesData;
  }

  @override
  void update(void Function(GGetUniquePagesDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetUniquePagesData build() {
    _$GGetUniquePagesData _$result;
    try {
      _$result = _$v ??
          new _$GGetUniquePagesData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GGetUniquePagesData', 'G__typename'),
              getUniquePages: _getUniquePages?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'getUniquePages';
        _getUniquePages?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GGetUniquePagesData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetUniquePagesData_getUniquePages
    extends GGetUniquePagesData_getUniquePages {
  @override
  final String G__typename;
  @override
  final String title;
  @override
  final String slug;
  @override
  final GGetUniquePagesData_getUniquePages_icon? icon;

  factory _$GGetUniquePagesData_getUniquePages(
          [void Function(GGetUniquePagesData_getUniquePagesBuilder)?
              updates]) =>
      (new GGetUniquePagesData_getUniquePagesBuilder()..update(updates))
          .build();

  _$GGetUniquePagesData_getUniquePages._(
      {required this.G__typename,
      required this.title,
      required this.slug,
      this.icon})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGetUniquePagesData_getUniquePages', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        title, 'GGetUniquePagesData_getUniquePages', 'title');
    BuiltValueNullFieldError.checkNotNull(
        slug, 'GGetUniquePagesData_getUniquePages', 'slug');
  }

  @override
  GGetUniquePagesData_getUniquePages rebuild(
          void Function(GGetUniquePagesData_getUniquePagesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetUniquePagesData_getUniquePagesBuilder toBuilder() =>
      new GGetUniquePagesData_getUniquePagesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetUniquePagesData_getUniquePages &&
        G__typename == other.G__typename &&
        title == other.title &&
        slug == other.slug &&
        icon == other.icon;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, G__typename.hashCode), title.hashCode), slug.hashCode),
        icon.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetUniquePagesData_getUniquePages')
          ..add('G__typename', G__typename)
          ..add('title', title)
          ..add('slug', slug)
          ..add('icon', icon))
        .toString();
  }
}

class GGetUniquePagesData_getUniquePagesBuilder
    implements
        Builder<GGetUniquePagesData_getUniquePages,
            GGetUniquePagesData_getUniquePagesBuilder> {
  _$GGetUniquePagesData_getUniquePages? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _slug;
  String? get slug => _$this._slug;
  set slug(String? slug) => _$this._slug = slug;

  GGetUniquePagesData_getUniquePages_iconBuilder? _icon;
  GGetUniquePagesData_getUniquePages_iconBuilder get icon =>
      _$this._icon ??= new GGetUniquePagesData_getUniquePages_iconBuilder();
  set icon(GGetUniquePagesData_getUniquePages_iconBuilder? icon) =>
      _$this._icon = icon;

  GGetUniquePagesData_getUniquePagesBuilder() {
    GGetUniquePagesData_getUniquePages._initializeBuilder(this);
  }

  GGetUniquePagesData_getUniquePagesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _title = $v.title;
      _slug = $v.slug;
      _icon = $v.icon?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetUniquePagesData_getUniquePages other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetUniquePagesData_getUniquePages;
  }

  @override
  void update(
      void Function(GGetUniquePagesData_getUniquePagesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetUniquePagesData_getUniquePages build() {
    _$GGetUniquePagesData_getUniquePages _$result;
    try {
      _$result = _$v ??
          new _$GGetUniquePagesData_getUniquePages._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  'GGetUniquePagesData_getUniquePages', 'G__typename'),
              title: BuiltValueNullFieldError.checkNotNull(
                  title, 'GGetUniquePagesData_getUniquePages', 'title'),
              slug: BuiltValueNullFieldError.checkNotNull(
                  slug, 'GGetUniquePagesData_getUniquePages', 'slug'),
              icon: _icon?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'icon';
        _icon?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GGetUniquePagesData_getUniquePages', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetUniquePagesData_getUniquePages_icon
    extends GGetUniquePagesData_getUniquePages_icon {
  @override
  final String G__typename;
  @override
  final _i3.GTypeFile? type;
  @override
  final String? url;
  @override
  final String? url_thumbnail;

  factory _$GGetUniquePagesData_getUniquePages_icon(
          [void Function(GGetUniquePagesData_getUniquePages_iconBuilder)?
              updates]) =>
      (new GGetUniquePagesData_getUniquePages_iconBuilder()..update(updates))
          .build();

  _$GGetUniquePagesData_getUniquePages_icon._(
      {required this.G__typename, this.type, this.url, this.url_thumbnail})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGetUniquePagesData_getUniquePages_icon', 'G__typename');
  }

  @override
  GGetUniquePagesData_getUniquePages_icon rebuild(
          void Function(GGetUniquePagesData_getUniquePages_iconBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetUniquePagesData_getUniquePages_iconBuilder toBuilder() =>
      new GGetUniquePagesData_getUniquePages_iconBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetUniquePagesData_getUniquePages_icon &&
        G__typename == other.G__typename &&
        type == other.type &&
        url == other.url &&
        url_thumbnail == other.url_thumbnail;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, G__typename.hashCode), type.hashCode), url.hashCode),
        url_thumbnail.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GGetUniquePagesData_getUniquePages_icon')
          ..add('G__typename', G__typename)
          ..add('type', type)
          ..add('url', url)
          ..add('url_thumbnail', url_thumbnail))
        .toString();
  }
}

class GGetUniquePagesData_getUniquePages_iconBuilder
    implements
        Builder<GGetUniquePagesData_getUniquePages_icon,
            GGetUniquePagesData_getUniquePages_iconBuilder> {
  _$GGetUniquePagesData_getUniquePages_icon? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  _i3.GTypeFile? _type;
  _i3.GTypeFile? get type => _$this._type;
  set type(_i3.GTypeFile? type) => _$this._type = type;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  String? _url_thumbnail;
  String? get url_thumbnail => _$this._url_thumbnail;
  set url_thumbnail(String? url_thumbnail) =>
      _$this._url_thumbnail = url_thumbnail;

  GGetUniquePagesData_getUniquePages_iconBuilder() {
    GGetUniquePagesData_getUniquePages_icon._initializeBuilder(this);
  }

  GGetUniquePagesData_getUniquePages_iconBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _type = $v.type;
      _url = $v.url;
      _url_thumbnail = $v.url_thumbnail;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetUniquePagesData_getUniquePages_icon other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetUniquePagesData_getUniquePages_icon;
  }

  @override
  void update(
      void Function(GGetUniquePagesData_getUniquePages_iconBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetUniquePagesData_getUniquePages_icon build() {
    final _$result = _$v ??
        new _$GGetUniquePagesData_getUniquePages_icon._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                'GGetUniquePagesData_getUniquePages_icon', 'G__typename'),
            type: type,
            url: url,
            url_thumbnail: url_thumbnail);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
