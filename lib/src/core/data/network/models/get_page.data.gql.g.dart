// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_page.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetPageQueryData> _$gGetPageQueryDataSerializer =
    new _$GGetPageQueryDataSerializer();
Serializer<GGetPageQueryData_getPage> _$gGetPageQueryDataGetPageSerializer =
    new _$GGetPageQueryData_getPageSerializer();
Serializer<GGetPageQueryData_getPage_contents>
    _$gGetPageQueryDataGetPageContentsSerializer =
    new _$GGetPageQueryData_getPage_contentsSerializer();

class _$GGetPageQueryDataSerializer
    implements StructuredSerializer<GGetPageQueryData> {
  @override
  final Iterable<Type> types = const [GGetPageQueryData, _$GGetPageQueryData];
  @override
  final String wireName = 'GGetPageQueryData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GGetPageQueryData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.getPage;
    if (value != null) {
      result
        ..add('getPage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GGetPageQueryData_getPage)));
    }
    return result;
  }

  @override
  GGetPageQueryData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetPageQueryDataBuilder();

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
        case 'getPage':
          result.getPage.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GGetPageQueryData_getPage))!
              as GGetPageQueryData_getPage);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetPageQueryData_getPageSerializer
    implements StructuredSerializer<GGetPageQueryData_getPage> {
  @override
  final Iterable<Type> types = const [
    GGetPageQueryData_getPage,
    _$GGetPageQueryData_getPage
  ];
  @override
  final String wireName = 'GGetPageQueryData_getPage';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetPageQueryData_getPage object,
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
    value = object.contents;
    if (value != null) {
      result
        ..add('contents')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList,
                const [const FullType(GGetPageQueryData_getPage_contents)])));
    }
    return result;
  }

  @override
  GGetPageQueryData_getPage deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetPageQueryData_getPageBuilder();

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
        case 'contents':
          result.contents.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GGetPageQueryData_getPage_contents)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetPageQueryData_getPage_contentsSerializer
    implements StructuredSerializer<GGetPageQueryData_getPage_contents> {
  @override
  final Iterable<Type> types = const [
    GGetPageQueryData_getPage_contents,
    _$GGetPageQueryData_getPage_contents
  ];
  @override
  final String wireName = 'GGetPageQueryData_getPage_contents';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetPageQueryData_getPage_contents object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.data;
    if (value != null) {
      result
        ..add('data')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i3.GJsonData)));
    }
    value = object.order;
    if (value != null) {
      result
        ..add('order')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GGetPageQueryData_getPage_contents deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetPageQueryData_getPage_contentsBuilder();

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
        case 'data':
          result.data.replace(serializers.deserialize(value,
              specifiedType: const FullType(_i3.GJsonData))! as _i3.GJsonData);
          break;
        case 'order':
          result.order = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetPageQueryData extends GGetPageQueryData {
  @override
  final String G__typename;
  @override
  final GGetPageQueryData_getPage? getPage;

  factory _$GGetPageQueryData(
          [void Function(GGetPageQueryDataBuilder)? updates]) =>
      (new GGetPageQueryDataBuilder()..update(updates)).build();

  _$GGetPageQueryData._({required this.G__typename, this.getPage}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGetPageQueryData', 'G__typename');
  }

  @override
  GGetPageQueryData rebuild(void Function(GGetPageQueryDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetPageQueryDataBuilder toBuilder() =>
      new GGetPageQueryDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetPageQueryData &&
        G__typename == other.G__typename &&
        getPage == other.getPage;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), getPage.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetPageQueryData')
          ..add('G__typename', G__typename)
          ..add('getPage', getPage))
        .toString();
  }
}

class GGetPageQueryDataBuilder
    implements Builder<GGetPageQueryData, GGetPageQueryDataBuilder> {
  _$GGetPageQueryData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GGetPageQueryData_getPageBuilder? _getPage;
  GGetPageQueryData_getPageBuilder get getPage =>
      _$this._getPage ??= new GGetPageQueryData_getPageBuilder();
  set getPage(GGetPageQueryData_getPageBuilder? getPage) =>
      _$this._getPage = getPage;

  GGetPageQueryDataBuilder() {
    GGetPageQueryData._initializeBuilder(this);
  }

  GGetPageQueryDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _getPage = $v.getPage?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetPageQueryData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetPageQueryData;
  }

  @override
  void update(void Function(GGetPageQueryDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetPageQueryData build() {
    _$GGetPageQueryData _$result;
    try {
      _$result = _$v ??
          new _$GGetPageQueryData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GGetPageQueryData', 'G__typename'),
              getPage: _getPage?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'getPage';
        _getPage?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GGetPageQueryData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetPageQueryData_getPage extends GGetPageQueryData_getPage {
  @override
  final String G__typename;
  @override
  final String title;
  @override
  final BuiltList<GGetPageQueryData_getPage_contents>? contents;

  factory _$GGetPageQueryData_getPage(
          [void Function(GGetPageQueryData_getPageBuilder)? updates]) =>
      (new GGetPageQueryData_getPageBuilder()..update(updates)).build();

  _$GGetPageQueryData_getPage._(
      {required this.G__typename, required this.title, this.contents})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGetPageQueryData_getPage', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        title, 'GGetPageQueryData_getPage', 'title');
  }

  @override
  GGetPageQueryData_getPage rebuild(
          void Function(GGetPageQueryData_getPageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetPageQueryData_getPageBuilder toBuilder() =>
      new GGetPageQueryData_getPageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetPageQueryData_getPage &&
        G__typename == other.G__typename &&
        title == other.title &&
        contents == other.contents;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, G__typename.hashCode), title.hashCode), contents.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetPageQueryData_getPage')
          ..add('G__typename', G__typename)
          ..add('title', title)
          ..add('contents', contents))
        .toString();
  }
}

class GGetPageQueryData_getPageBuilder
    implements
        Builder<GGetPageQueryData_getPage, GGetPageQueryData_getPageBuilder> {
  _$GGetPageQueryData_getPage? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  ListBuilder<GGetPageQueryData_getPage_contents>? _contents;
  ListBuilder<GGetPageQueryData_getPage_contents> get contents =>
      _$this._contents ??=
          new ListBuilder<GGetPageQueryData_getPage_contents>();
  set contents(ListBuilder<GGetPageQueryData_getPage_contents>? contents) =>
      _$this._contents = contents;

  GGetPageQueryData_getPageBuilder() {
    GGetPageQueryData_getPage._initializeBuilder(this);
  }

  GGetPageQueryData_getPageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _title = $v.title;
      _contents = $v.contents?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetPageQueryData_getPage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetPageQueryData_getPage;
  }

  @override
  void update(void Function(GGetPageQueryData_getPageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetPageQueryData_getPage build() {
    _$GGetPageQueryData_getPage _$result;
    try {
      _$result = _$v ??
          new _$GGetPageQueryData_getPage._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GGetPageQueryData_getPage', 'G__typename'),
              title: BuiltValueNullFieldError.checkNotNull(
                  title, 'GGetPageQueryData_getPage', 'title'),
              contents: _contents?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'contents';
        _contents?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GGetPageQueryData_getPage', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetPageQueryData_getPage_contents
    extends GGetPageQueryData_getPage_contents {
  @override
  final String G__typename;
  @override
  final _i3.GJsonData? data;
  @override
  final int? order;

  factory _$GGetPageQueryData_getPage_contents(
          [void Function(GGetPageQueryData_getPage_contentsBuilder)?
              updates]) =>
      (new GGetPageQueryData_getPage_contentsBuilder()..update(updates))
          .build();

  _$GGetPageQueryData_getPage_contents._(
      {required this.G__typename, this.data, this.order})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGetPageQueryData_getPage_contents', 'G__typename');
  }

  @override
  GGetPageQueryData_getPage_contents rebuild(
          void Function(GGetPageQueryData_getPage_contentsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetPageQueryData_getPage_contentsBuilder toBuilder() =>
      new GGetPageQueryData_getPage_contentsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetPageQueryData_getPage_contents &&
        G__typename == other.G__typename &&
        data == other.data &&
        order == other.order;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, G__typename.hashCode), data.hashCode), order.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetPageQueryData_getPage_contents')
          ..add('G__typename', G__typename)
          ..add('data', data)
          ..add('order', order))
        .toString();
  }
}

class GGetPageQueryData_getPage_contentsBuilder
    implements
        Builder<GGetPageQueryData_getPage_contents,
            GGetPageQueryData_getPage_contentsBuilder> {
  _$GGetPageQueryData_getPage_contents? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  _i3.GJsonDataBuilder? _data;
  _i3.GJsonDataBuilder get data => _$this._data ??= new _i3.GJsonDataBuilder();
  set data(_i3.GJsonDataBuilder? data) => _$this._data = data;

  int? _order;
  int? get order => _$this._order;
  set order(int? order) => _$this._order = order;

  GGetPageQueryData_getPage_contentsBuilder() {
    GGetPageQueryData_getPage_contents._initializeBuilder(this);
  }

  GGetPageQueryData_getPage_contentsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _data = $v.data?.toBuilder();
      _order = $v.order;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetPageQueryData_getPage_contents other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetPageQueryData_getPage_contents;
  }

  @override
  void update(
      void Function(GGetPageQueryData_getPage_contentsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetPageQueryData_getPage_contents build() {
    _$GGetPageQueryData_getPage_contents _$result;
    try {
      _$result = _$v ??
          new _$GGetPageQueryData_getPage_contents._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  'GGetPageQueryData_getPage_contents', 'G__typename'),
              data: _data?.build(),
              order: order);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GGetPageQueryData_getPage_contents', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
