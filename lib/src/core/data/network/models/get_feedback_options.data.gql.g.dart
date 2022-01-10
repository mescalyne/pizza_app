// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_feedback_options.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetFeedbackOptionsData> _$gGetFeedbackOptionsDataSerializer =
    new _$GGetFeedbackOptionsDataSerializer();
Serializer<GGetFeedbackOptionsData_getFeedbackOptions>
    _$gGetFeedbackOptionsDataGetFeedbackOptionsSerializer =
    new _$GGetFeedbackOptionsData_getFeedbackOptionsSerializer();
Serializer<GGetFeedbackOptionsData_getFeedbackOptions_icon>
    _$gGetFeedbackOptionsDataGetFeedbackOptionsIconSerializer =
    new _$GGetFeedbackOptionsData_getFeedbackOptions_iconSerializer();

class _$GGetFeedbackOptionsDataSerializer
    implements StructuredSerializer<GGetFeedbackOptionsData> {
  @override
  final Iterable<Type> types = const [
    GGetFeedbackOptionsData,
    _$GGetFeedbackOptionsData
  ];
  @override
  final String wireName = 'GGetFeedbackOptionsData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetFeedbackOptionsData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.getFeedbackOptions;
    if (value != null) {
      result
        ..add('getFeedbackOptions')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(GGetFeedbackOptionsData_getFeedbackOptions)
            ])));
    }
    return result;
  }

  @override
  GGetFeedbackOptionsData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetFeedbackOptionsDataBuilder();

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
        case 'getFeedbackOptions':
          result.getFeedbackOptions.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GGetFeedbackOptionsData_getFeedbackOptions)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetFeedbackOptionsData_getFeedbackOptionsSerializer
    implements
        StructuredSerializer<GGetFeedbackOptionsData_getFeedbackOptions> {
  @override
  final Iterable<Type> types = const [
    GGetFeedbackOptionsData_getFeedbackOptions,
    _$GGetFeedbackOptionsData_getFeedbackOptions
  ];
  @override
  final String wireName = 'GGetFeedbackOptionsData_getFeedbackOptions';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GGetFeedbackOptionsData_getFeedbackOptions object,
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
            specifiedType: const FullType(
                GGetFeedbackOptionsData_getFeedbackOptions_icon)));
    }
    return result;
  }

  @override
  GGetFeedbackOptionsData_getFeedbackOptions deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetFeedbackOptionsData_getFeedbackOptionsBuilder();

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
                  specifiedType: const FullType(
                      GGetFeedbackOptionsData_getFeedbackOptions_icon))!
              as GGetFeedbackOptionsData_getFeedbackOptions_icon);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetFeedbackOptionsData_getFeedbackOptions_iconSerializer
    implements
        StructuredSerializer<GGetFeedbackOptionsData_getFeedbackOptions_icon> {
  @override
  final Iterable<Type> types = const [
    GGetFeedbackOptionsData_getFeedbackOptions_icon,
    _$GGetFeedbackOptionsData_getFeedbackOptions_icon
  ];
  @override
  final String wireName = 'GGetFeedbackOptionsData_getFeedbackOptions_icon';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GGetFeedbackOptionsData_getFeedbackOptions_icon object,
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
  GGetFeedbackOptionsData_getFeedbackOptions_icon deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetFeedbackOptionsData_getFeedbackOptions_iconBuilder();

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

class _$GGetFeedbackOptionsData extends GGetFeedbackOptionsData {
  @override
  final String G__typename;
  @override
  final BuiltList<GGetFeedbackOptionsData_getFeedbackOptions>?
      getFeedbackOptions;

  factory _$GGetFeedbackOptionsData(
          [void Function(GGetFeedbackOptionsDataBuilder)? updates]) =>
      (new GGetFeedbackOptionsDataBuilder()..update(updates)).build();

  _$GGetFeedbackOptionsData._(
      {required this.G__typename, this.getFeedbackOptions})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGetFeedbackOptionsData', 'G__typename');
  }

  @override
  GGetFeedbackOptionsData rebuild(
          void Function(GGetFeedbackOptionsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetFeedbackOptionsDataBuilder toBuilder() =>
      new GGetFeedbackOptionsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetFeedbackOptionsData &&
        G__typename == other.G__typename &&
        getFeedbackOptions == other.getFeedbackOptions;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), getFeedbackOptions.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetFeedbackOptionsData')
          ..add('G__typename', G__typename)
          ..add('getFeedbackOptions', getFeedbackOptions))
        .toString();
  }
}

class GGetFeedbackOptionsDataBuilder
    implements
        Builder<GGetFeedbackOptionsData, GGetFeedbackOptionsDataBuilder> {
  _$GGetFeedbackOptionsData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GGetFeedbackOptionsData_getFeedbackOptions>? _getFeedbackOptions;
  ListBuilder<GGetFeedbackOptionsData_getFeedbackOptions>
      get getFeedbackOptions => _$this._getFeedbackOptions ??=
          new ListBuilder<GGetFeedbackOptionsData_getFeedbackOptions>();
  set getFeedbackOptions(
          ListBuilder<GGetFeedbackOptionsData_getFeedbackOptions>?
              getFeedbackOptions) =>
      _$this._getFeedbackOptions = getFeedbackOptions;

  GGetFeedbackOptionsDataBuilder() {
    GGetFeedbackOptionsData._initializeBuilder(this);
  }

  GGetFeedbackOptionsDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _getFeedbackOptions = $v.getFeedbackOptions?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetFeedbackOptionsData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetFeedbackOptionsData;
  }

  @override
  void update(void Function(GGetFeedbackOptionsDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetFeedbackOptionsData build() {
    _$GGetFeedbackOptionsData _$result;
    try {
      _$result = _$v ??
          new _$GGetFeedbackOptionsData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GGetFeedbackOptionsData', 'G__typename'),
              getFeedbackOptions: _getFeedbackOptions?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'getFeedbackOptions';
        _getFeedbackOptions?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GGetFeedbackOptionsData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetFeedbackOptionsData_getFeedbackOptions
    extends GGetFeedbackOptionsData_getFeedbackOptions {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final String type;
  @override
  final String text;
  @override
  final GGetFeedbackOptionsData_getFeedbackOptions_icon? icon;

  factory _$GGetFeedbackOptionsData_getFeedbackOptions(
          [void Function(GGetFeedbackOptionsData_getFeedbackOptionsBuilder)?
              updates]) =>
      (new GGetFeedbackOptionsData_getFeedbackOptionsBuilder()..update(updates))
          .build();

  _$GGetFeedbackOptionsData_getFeedbackOptions._(
      {required this.G__typename,
      required this.id,
      required this.type,
      required this.text,
      this.icon})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        'GGetFeedbackOptionsData_getFeedbackOptions', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GGetFeedbackOptionsData_getFeedbackOptions', 'id');
    BuiltValueNullFieldError.checkNotNull(
        type, 'GGetFeedbackOptionsData_getFeedbackOptions', 'type');
    BuiltValueNullFieldError.checkNotNull(
        text, 'GGetFeedbackOptionsData_getFeedbackOptions', 'text');
  }

  @override
  GGetFeedbackOptionsData_getFeedbackOptions rebuild(
          void Function(GGetFeedbackOptionsData_getFeedbackOptionsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetFeedbackOptionsData_getFeedbackOptionsBuilder toBuilder() =>
      new GGetFeedbackOptionsData_getFeedbackOptionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetFeedbackOptionsData_getFeedbackOptions &&
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
    return (newBuiltValueToStringHelper(
            'GGetFeedbackOptionsData_getFeedbackOptions')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('type', type)
          ..add('text', text)
          ..add('icon', icon))
        .toString();
  }
}

class GGetFeedbackOptionsData_getFeedbackOptionsBuilder
    implements
        Builder<GGetFeedbackOptionsData_getFeedbackOptions,
            GGetFeedbackOptionsData_getFeedbackOptionsBuilder> {
  _$GGetFeedbackOptionsData_getFeedbackOptions? _$v;

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

  GGetFeedbackOptionsData_getFeedbackOptions_iconBuilder? _icon;
  GGetFeedbackOptionsData_getFeedbackOptions_iconBuilder get icon =>
      _$this._icon ??=
          new GGetFeedbackOptionsData_getFeedbackOptions_iconBuilder();
  set icon(GGetFeedbackOptionsData_getFeedbackOptions_iconBuilder? icon) =>
      _$this._icon = icon;

  GGetFeedbackOptionsData_getFeedbackOptionsBuilder() {
    GGetFeedbackOptionsData_getFeedbackOptions._initializeBuilder(this);
  }

  GGetFeedbackOptionsData_getFeedbackOptionsBuilder get _$this {
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
  void replace(GGetFeedbackOptionsData_getFeedbackOptions other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetFeedbackOptionsData_getFeedbackOptions;
  }

  @override
  void update(
      void Function(GGetFeedbackOptionsData_getFeedbackOptionsBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetFeedbackOptionsData_getFeedbackOptions build() {
    _$GGetFeedbackOptionsData_getFeedbackOptions _$result;
    try {
      _$result = _$v ??
          new _$GGetFeedbackOptionsData_getFeedbackOptions._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  'GGetFeedbackOptionsData_getFeedbackOptions', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, 'GGetFeedbackOptionsData_getFeedbackOptions', 'id'),
              type: BuiltValueNullFieldError.checkNotNull(
                  type, 'GGetFeedbackOptionsData_getFeedbackOptions', 'type'),
              text: BuiltValueNullFieldError.checkNotNull(
                  text, 'GGetFeedbackOptionsData_getFeedbackOptions', 'text'),
              icon: _icon?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'icon';
        _icon?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GGetFeedbackOptionsData_getFeedbackOptions',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetFeedbackOptionsData_getFeedbackOptions_icon
    extends GGetFeedbackOptionsData_getFeedbackOptions_icon {
  @override
  final String G__typename;
  @override
  final _i3.GTypeFile? type;
  @override
  final String? url;
  @override
  final String? url_thumbnail;

  factory _$GGetFeedbackOptionsData_getFeedbackOptions_icon(
          [void Function(
                  GGetFeedbackOptionsData_getFeedbackOptions_iconBuilder)?
              updates]) =>
      (new GGetFeedbackOptionsData_getFeedbackOptions_iconBuilder()
            ..update(updates))
          .build();

  _$GGetFeedbackOptionsData_getFeedbackOptions_icon._(
      {required this.G__typename, this.type, this.url, this.url_thumbnail})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        'GGetFeedbackOptionsData_getFeedbackOptions_icon', 'G__typename');
  }

  @override
  GGetFeedbackOptionsData_getFeedbackOptions_icon rebuild(
          void Function(GGetFeedbackOptionsData_getFeedbackOptions_iconBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetFeedbackOptionsData_getFeedbackOptions_iconBuilder toBuilder() =>
      new GGetFeedbackOptionsData_getFeedbackOptions_iconBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetFeedbackOptionsData_getFeedbackOptions_icon &&
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
            'GGetFeedbackOptionsData_getFeedbackOptions_icon')
          ..add('G__typename', G__typename)
          ..add('type', type)
          ..add('url', url)
          ..add('url_thumbnail', url_thumbnail))
        .toString();
  }
}

class GGetFeedbackOptionsData_getFeedbackOptions_iconBuilder
    implements
        Builder<GGetFeedbackOptionsData_getFeedbackOptions_icon,
            GGetFeedbackOptionsData_getFeedbackOptions_iconBuilder> {
  _$GGetFeedbackOptionsData_getFeedbackOptions_icon? _$v;

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

  GGetFeedbackOptionsData_getFeedbackOptions_iconBuilder() {
    GGetFeedbackOptionsData_getFeedbackOptions_icon._initializeBuilder(this);
  }

  GGetFeedbackOptionsData_getFeedbackOptions_iconBuilder get _$this {
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
  void replace(GGetFeedbackOptionsData_getFeedbackOptions_icon other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetFeedbackOptionsData_getFeedbackOptions_icon;
  }

  @override
  void update(
      void Function(GGetFeedbackOptionsData_getFeedbackOptions_iconBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetFeedbackOptionsData_getFeedbackOptions_icon build() {
    final _$result = _$v ??
        new _$GGetFeedbackOptionsData_getFeedbackOptions_icon._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                'GGetFeedbackOptionsData_getFeedbackOptions_icon',
                'G__typename'),
            type: type,
            url: url,
            url_thumbnail: url_thumbnail);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
