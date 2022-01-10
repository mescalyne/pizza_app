// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unique_page_fragment.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GUniquePageFragmentData> _$gUniquePageFragmentDataSerializer =
    new _$GUniquePageFragmentDataSerializer();
Serializer<GUniquePageFragmentData_icon>
    _$gUniquePageFragmentDataIconSerializer =
    new _$GUniquePageFragmentData_iconSerializer();

class _$GUniquePageFragmentDataSerializer
    implements StructuredSerializer<GUniquePageFragmentData> {
  @override
  final Iterable<Type> types = const [
    GUniquePageFragmentData,
    _$GUniquePageFragmentData
  ];
  @override
  final String wireName = 'GUniquePageFragmentData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUniquePageFragmentData object,
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
            specifiedType: const FullType(GUniquePageFragmentData_icon)));
    }
    return result;
  }

  @override
  GUniquePageFragmentData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUniquePageFragmentDataBuilder();

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
                  specifiedType: const FullType(GUniquePageFragmentData_icon))!
              as GUniquePageFragmentData_icon);
          break;
      }
    }

    return result.build();
  }
}

class _$GUniquePageFragmentData_iconSerializer
    implements StructuredSerializer<GUniquePageFragmentData_icon> {
  @override
  final Iterable<Type> types = const [
    GUniquePageFragmentData_icon,
    _$GUniquePageFragmentData_icon
  ];
  @override
  final String wireName = 'GUniquePageFragmentData_icon';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUniquePageFragmentData_icon object,
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
            specifiedType: const FullType(_i1.GTypeFile)));
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
  GUniquePageFragmentData_icon deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUniquePageFragmentData_iconBuilder();

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
              specifiedType: const FullType(_i1.GTypeFile)) as _i1.GTypeFile?;
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

class _$GUniquePageFragmentData extends GUniquePageFragmentData {
  @override
  final String G__typename;
  @override
  final String title;
  @override
  final String slug;
  @override
  final GUniquePageFragmentData_icon? icon;

  factory _$GUniquePageFragmentData(
          [void Function(GUniquePageFragmentDataBuilder)? updates]) =>
      (new GUniquePageFragmentDataBuilder()..update(updates)).build();

  _$GUniquePageFragmentData._(
      {required this.G__typename,
      required this.title,
      required this.slug,
      this.icon})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GUniquePageFragmentData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        title, 'GUniquePageFragmentData', 'title');
    BuiltValueNullFieldError.checkNotNull(
        slug, 'GUniquePageFragmentData', 'slug');
  }

  @override
  GUniquePageFragmentData rebuild(
          void Function(GUniquePageFragmentDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUniquePageFragmentDataBuilder toBuilder() =>
      new GUniquePageFragmentDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUniquePageFragmentData &&
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
    return (newBuiltValueToStringHelper('GUniquePageFragmentData')
          ..add('G__typename', G__typename)
          ..add('title', title)
          ..add('slug', slug)
          ..add('icon', icon))
        .toString();
  }
}

class GUniquePageFragmentDataBuilder
    implements
        Builder<GUniquePageFragmentData, GUniquePageFragmentDataBuilder> {
  _$GUniquePageFragmentData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _slug;
  String? get slug => _$this._slug;
  set slug(String? slug) => _$this._slug = slug;

  GUniquePageFragmentData_iconBuilder? _icon;
  GUniquePageFragmentData_iconBuilder get icon =>
      _$this._icon ??= new GUniquePageFragmentData_iconBuilder();
  set icon(GUniquePageFragmentData_iconBuilder? icon) => _$this._icon = icon;

  GUniquePageFragmentDataBuilder() {
    GUniquePageFragmentData._initializeBuilder(this);
  }

  GUniquePageFragmentDataBuilder get _$this {
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
  void replace(GUniquePageFragmentData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUniquePageFragmentData;
  }

  @override
  void update(void Function(GUniquePageFragmentDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GUniquePageFragmentData build() {
    _$GUniquePageFragmentData _$result;
    try {
      _$result = _$v ??
          new _$GUniquePageFragmentData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GUniquePageFragmentData', 'G__typename'),
              title: BuiltValueNullFieldError.checkNotNull(
                  title, 'GUniquePageFragmentData', 'title'),
              slug: BuiltValueNullFieldError.checkNotNull(
                  slug, 'GUniquePageFragmentData', 'slug'),
              icon: _icon?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'icon';
        _icon?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GUniquePageFragmentData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUniquePageFragmentData_icon extends GUniquePageFragmentData_icon {
  @override
  final String G__typename;
  @override
  final _i1.GTypeFile? type;
  @override
  final String? url;
  @override
  final String? url_thumbnail;

  factory _$GUniquePageFragmentData_icon(
          [void Function(GUniquePageFragmentData_iconBuilder)? updates]) =>
      (new GUniquePageFragmentData_iconBuilder()..update(updates)).build();

  _$GUniquePageFragmentData_icon._(
      {required this.G__typename, this.type, this.url, this.url_thumbnail})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GUniquePageFragmentData_icon', 'G__typename');
  }

  @override
  GUniquePageFragmentData_icon rebuild(
          void Function(GUniquePageFragmentData_iconBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUniquePageFragmentData_iconBuilder toBuilder() =>
      new GUniquePageFragmentData_iconBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUniquePageFragmentData_icon &&
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
    return (newBuiltValueToStringHelper('GUniquePageFragmentData_icon')
          ..add('G__typename', G__typename)
          ..add('type', type)
          ..add('url', url)
          ..add('url_thumbnail', url_thumbnail))
        .toString();
  }
}

class GUniquePageFragmentData_iconBuilder
    implements
        Builder<GUniquePageFragmentData_icon,
            GUniquePageFragmentData_iconBuilder> {
  _$GUniquePageFragmentData_icon? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  _i1.GTypeFile? _type;
  _i1.GTypeFile? get type => _$this._type;
  set type(_i1.GTypeFile? type) => _$this._type = type;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  String? _url_thumbnail;
  String? get url_thumbnail => _$this._url_thumbnail;
  set url_thumbnail(String? url_thumbnail) =>
      _$this._url_thumbnail = url_thumbnail;

  GUniquePageFragmentData_iconBuilder() {
    GUniquePageFragmentData_icon._initializeBuilder(this);
  }

  GUniquePageFragmentData_iconBuilder get _$this {
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
  void replace(GUniquePageFragmentData_icon other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUniquePageFragmentData_icon;
  }

  @override
  void update(void Function(GUniquePageFragmentData_iconBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GUniquePageFragmentData_icon build() {
    final _$result = _$v ??
        new _$GUniquePageFragmentData_icon._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, 'GUniquePageFragmentData_icon', 'G__typename'),
            type: type,
            url: url,
            url_thumbnail: url_thumbnail);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
