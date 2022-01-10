// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_fragment.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GPageFragmentData> _$gPageFragmentDataSerializer =
    new _$GPageFragmentDataSerializer();
Serializer<GPageFragmentData_contents> _$gPageFragmentDataContentsSerializer =
    new _$GPageFragmentData_contentsSerializer();

class _$GPageFragmentDataSerializer
    implements StructuredSerializer<GPageFragmentData> {
  @override
  final Iterable<Type> types = const [GPageFragmentData, _$GPageFragmentData];
  @override
  final String wireName = 'GPageFragmentData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GPageFragmentData object,
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
                const [const FullType(GPageFragmentData_contents)])));
    }
    return result;
  }

  @override
  GPageFragmentData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GPageFragmentDataBuilder();

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
                const FullType(GPageFragmentData_contents)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GPageFragmentData_contentsSerializer
    implements StructuredSerializer<GPageFragmentData_contents> {
  @override
  final Iterable<Type> types = const [
    GPageFragmentData_contents,
    _$GPageFragmentData_contents
  ];
  @override
  final String wireName = 'GPageFragmentData_contents';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GPageFragmentData_contents object,
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
            specifiedType: const FullType(_i1.GJsonData)));
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
  GPageFragmentData_contents deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GPageFragmentData_contentsBuilder();

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
              specifiedType: const FullType(_i1.GJsonData))! as _i1.GJsonData);
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

class _$GPageFragmentData extends GPageFragmentData {
  @override
  final String G__typename;
  @override
  final String title;
  @override
  final BuiltList<GPageFragmentData_contents>? contents;

  factory _$GPageFragmentData(
          [void Function(GPageFragmentDataBuilder)? updates]) =>
      (new GPageFragmentDataBuilder()..update(updates)).build();

  _$GPageFragmentData._(
      {required this.G__typename, required this.title, this.contents})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GPageFragmentData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(title, 'GPageFragmentData', 'title');
  }

  @override
  GPageFragmentData rebuild(void Function(GPageFragmentDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPageFragmentDataBuilder toBuilder() =>
      new GPageFragmentDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GPageFragmentData &&
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
    return (newBuiltValueToStringHelper('GPageFragmentData')
          ..add('G__typename', G__typename)
          ..add('title', title)
          ..add('contents', contents))
        .toString();
  }
}

class GPageFragmentDataBuilder
    implements Builder<GPageFragmentData, GPageFragmentDataBuilder> {
  _$GPageFragmentData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  ListBuilder<GPageFragmentData_contents>? _contents;
  ListBuilder<GPageFragmentData_contents> get contents =>
      _$this._contents ??= new ListBuilder<GPageFragmentData_contents>();
  set contents(ListBuilder<GPageFragmentData_contents>? contents) =>
      _$this._contents = contents;

  GPageFragmentDataBuilder() {
    GPageFragmentData._initializeBuilder(this);
  }

  GPageFragmentDataBuilder get _$this {
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
  void replace(GPageFragmentData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPageFragmentData;
  }

  @override
  void update(void Function(GPageFragmentDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GPageFragmentData build() {
    _$GPageFragmentData _$result;
    try {
      _$result = _$v ??
          new _$GPageFragmentData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GPageFragmentData', 'G__typename'),
              title: BuiltValueNullFieldError.checkNotNull(
                  title, 'GPageFragmentData', 'title'),
              contents: _contents?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'contents';
        _contents?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GPageFragmentData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GPageFragmentData_contents extends GPageFragmentData_contents {
  @override
  final String G__typename;
  @override
  final _i1.GJsonData? data;
  @override
  final int? order;

  factory _$GPageFragmentData_contents(
          [void Function(GPageFragmentData_contentsBuilder)? updates]) =>
      (new GPageFragmentData_contentsBuilder()..update(updates)).build();

  _$GPageFragmentData_contents._(
      {required this.G__typename, this.data, this.order})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GPageFragmentData_contents', 'G__typename');
  }

  @override
  GPageFragmentData_contents rebuild(
          void Function(GPageFragmentData_contentsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPageFragmentData_contentsBuilder toBuilder() =>
      new GPageFragmentData_contentsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GPageFragmentData_contents &&
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
    return (newBuiltValueToStringHelper('GPageFragmentData_contents')
          ..add('G__typename', G__typename)
          ..add('data', data)
          ..add('order', order))
        .toString();
  }
}

class GPageFragmentData_contentsBuilder
    implements
        Builder<GPageFragmentData_contents, GPageFragmentData_contentsBuilder> {
  _$GPageFragmentData_contents? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  _i1.GJsonDataBuilder? _data;
  _i1.GJsonDataBuilder get data => _$this._data ??= new _i1.GJsonDataBuilder();
  set data(_i1.GJsonDataBuilder? data) => _$this._data = data;

  int? _order;
  int? get order => _$this._order;
  set order(int? order) => _$this._order = order;

  GPageFragmentData_contentsBuilder() {
    GPageFragmentData_contents._initializeBuilder(this);
  }

  GPageFragmentData_contentsBuilder get _$this {
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
  void replace(GPageFragmentData_contents other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPageFragmentData_contents;
  }

  @override
  void update(void Function(GPageFragmentData_contentsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GPageFragmentData_contents build() {
    _$GPageFragmentData_contents _$result;
    try {
      _$result = _$v ??
          new _$GPageFragmentData_contents._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GPageFragmentData_contents', 'G__typename'),
              data: _data?.build(),
              order: order);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GPageFragmentData_contents', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
