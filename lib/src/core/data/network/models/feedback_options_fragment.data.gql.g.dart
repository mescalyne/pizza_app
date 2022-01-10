// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feedback_options_fragment.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GFeedbackOptionFragmentData>
    _$gFeedbackOptionFragmentDataSerializer =
    new _$GFeedbackOptionFragmentDataSerializer();
Serializer<GFeedbackOptionFragmentData_icon>
    _$gFeedbackOptionFragmentDataIconSerializer =
    new _$GFeedbackOptionFragmentData_iconSerializer();

class _$GFeedbackOptionFragmentDataSerializer
    implements StructuredSerializer<GFeedbackOptionFragmentData> {
  @override
  final Iterable<Type> types = const [
    GFeedbackOptionFragmentData,
    _$GFeedbackOptionFragmentData
  ];
  @override
  final String wireName = 'GFeedbackOptionFragmentData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GFeedbackOptionFragmentData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'type',
      serializers.serialize(object.type, specifiedType: const FullType(String)),
      'text',
      serializers.serialize(object.text, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.icon;
    if (value != null) {
      result
        ..add('icon')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GFeedbackOptionFragmentData_icon)));
    }
    return result;
  }

  @override
  GFeedbackOptionFragmentData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GFeedbackOptionFragmentDataBuilder();

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
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'text':
          result.text = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'icon':
          result.icon.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GFeedbackOptionFragmentData_icon))!
              as GFeedbackOptionFragmentData_icon);
          break;
      }
    }

    return result.build();
  }
}

class _$GFeedbackOptionFragmentData_iconSerializer
    implements StructuredSerializer<GFeedbackOptionFragmentData_icon> {
  @override
  final Iterable<Type> types = const [
    GFeedbackOptionFragmentData_icon,
    _$GFeedbackOptionFragmentData_icon
  ];
  @override
  final String wireName = 'GFeedbackOptionFragmentData_icon';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GFeedbackOptionFragmentData_icon object,
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
  GFeedbackOptionFragmentData_icon deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GFeedbackOptionFragmentData_iconBuilder();

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

class _$GFeedbackOptionFragmentData extends GFeedbackOptionFragmentData {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final String type;
  @override
  final String text;
  @override
  final GFeedbackOptionFragmentData_icon? icon;

  factory _$GFeedbackOptionFragmentData(
          [void Function(GFeedbackOptionFragmentDataBuilder)? updates]) =>
      (new GFeedbackOptionFragmentDataBuilder()..update(updates)).build();

  _$GFeedbackOptionFragmentData._(
      {required this.G__typename,
      required this.id,
      required this.type,
      required this.text,
      this.icon})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GFeedbackOptionFragmentData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GFeedbackOptionFragmentData', 'id');
    BuiltValueNullFieldError.checkNotNull(
        type, 'GFeedbackOptionFragmentData', 'type');
    BuiltValueNullFieldError.checkNotNull(
        text, 'GFeedbackOptionFragmentData', 'text');
  }

  @override
  GFeedbackOptionFragmentData rebuild(
          void Function(GFeedbackOptionFragmentDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFeedbackOptionFragmentDataBuilder toBuilder() =>
      new GFeedbackOptionFragmentDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFeedbackOptionFragmentData &&
        G__typename == other.G__typename &&
        id == other.id &&
        type == other.type &&
        text == other.text &&
        icon == other.icon;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, G__typename.hashCode), id.hashCode), type.hashCode),
            text.hashCode),
        icon.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GFeedbackOptionFragmentData')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('type', type)
          ..add('text', text)
          ..add('icon', icon))
        .toString();
  }
}

class GFeedbackOptionFragmentDataBuilder
    implements
        Builder<GFeedbackOptionFragmentData,
            GFeedbackOptionFragmentDataBuilder> {
  _$GFeedbackOptionFragmentData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _text;
  String? get text => _$this._text;
  set text(String? text) => _$this._text = text;

  GFeedbackOptionFragmentData_iconBuilder? _icon;
  GFeedbackOptionFragmentData_iconBuilder get icon =>
      _$this._icon ??= new GFeedbackOptionFragmentData_iconBuilder();
  set icon(GFeedbackOptionFragmentData_iconBuilder? icon) =>
      _$this._icon = icon;

  GFeedbackOptionFragmentDataBuilder() {
    GFeedbackOptionFragmentData._initializeBuilder(this);
  }

  GFeedbackOptionFragmentDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _type = $v.type;
      _text = $v.text;
      _icon = $v.icon?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GFeedbackOptionFragmentData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GFeedbackOptionFragmentData;
  }

  @override
  void update(void Function(GFeedbackOptionFragmentDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GFeedbackOptionFragmentData build() {
    _$GFeedbackOptionFragmentData _$result;
    try {
      _$result = _$v ??
          new _$GFeedbackOptionFragmentData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GFeedbackOptionFragmentData', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, 'GFeedbackOptionFragmentData', 'id'),
              type: BuiltValueNullFieldError.checkNotNull(
                  type, 'GFeedbackOptionFragmentData', 'type'),
              text: BuiltValueNullFieldError.checkNotNull(
                  text, 'GFeedbackOptionFragmentData', 'text'),
              icon: _icon?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'icon';
        _icon?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GFeedbackOptionFragmentData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GFeedbackOptionFragmentData_icon
    extends GFeedbackOptionFragmentData_icon {
  @override
  final String G__typename;
  @override
  final _i1.GTypeFile? type;
  @override
  final String? url;
  @override
  final String? url_thumbnail;

  factory _$GFeedbackOptionFragmentData_icon(
          [void Function(GFeedbackOptionFragmentData_iconBuilder)? updates]) =>
      (new GFeedbackOptionFragmentData_iconBuilder()..update(updates)).build();

  _$GFeedbackOptionFragmentData_icon._(
      {required this.G__typename, this.type, this.url, this.url_thumbnail})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GFeedbackOptionFragmentData_icon', 'G__typename');
  }

  @override
  GFeedbackOptionFragmentData_icon rebuild(
          void Function(GFeedbackOptionFragmentData_iconBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFeedbackOptionFragmentData_iconBuilder toBuilder() =>
      new GFeedbackOptionFragmentData_iconBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFeedbackOptionFragmentData_icon &&
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
    return (newBuiltValueToStringHelper('GFeedbackOptionFragmentData_icon')
          ..add('G__typename', G__typename)
          ..add('type', type)
          ..add('url', url)
          ..add('url_thumbnail', url_thumbnail))
        .toString();
  }
}

class GFeedbackOptionFragmentData_iconBuilder
    implements
        Builder<GFeedbackOptionFragmentData_icon,
            GFeedbackOptionFragmentData_iconBuilder> {
  _$GFeedbackOptionFragmentData_icon? _$v;

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

  GFeedbackOptionFragmentData_iconBuilder() {
    GFeedbackOptionFragmentData_icon._initializeBuilder(this);
  }

  GFeedbackOptionFragmentData_iconBuilder get _$this {
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
  void replace(GFeedbackOptionFragmentData_icon other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GFeedbackOptionFragmentData_icon;
  }

  @override
  void update(void Function(GFeedbackOptionFragmentData_iconBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GFeedbackOptionFragmentData_icon build() {
    final _$result = _$v ??
        new _$GFeedbackOptionFragmentData_icon._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, 'GFeedbackOptionFragmentData_icon', 'G__typename'),
            type: type,
            url: url,
            url_thumbnail: url_thumbnail);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
