// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_fragment.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GFileFragmentData> _$gFileFragmentDataSerializer =
    new _$GFileFragmentDataSerializer();

class _$GFileFragmentDataSerializer
    implements StructuredSerializer<GFileFragmentData> {
  @override
  final Iterable<Type> types = const [GFileFragmentData, _$GFileFragmentData];
  @override
  final String wireName = 'GFileFragmentData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GFileFragmentData object,
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
  GFileFragmentData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GFileFragmentDataBuilder();

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

class _$GFileFragmentData extends GFileFragmentData {
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

  factory _$GFileFragmentData(
          [void Function(GFileFragmentDataBuilder)? updates]) =>
      (new GFileFragmentDataBuilder()..update(updates)).build();

  _$GFileFragmentData._(
      {required this.G__typename,
      required this.id,
      this.size,
      this.author,
      this.url})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GFileFragmentData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(id, 'GFileFragmentData', 'id');
  }

  @override
  GFileFragmentData rebuild(void Function(GFileFragmentDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFileFragmentDataBuilder toBuilder() =>
      new GFileFragmentDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFileFragmentData &&
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
    return (newBuiltValueToStringHelper('GFileFragmentData')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('size', size)
          ..add('author', author)
          ..add('url', url))
        .toString();
  }
}

class GFileFragmentDataBuilder
    implements Builder<GFileFragmentData, GFileFragmentDataBuilder> {
  _$GFileFragmentData? _$v;

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

  GFileFragmentDataBuilder() {
    GFileFragmentData._initializeBuilder(this);
  }

  GFileFragmentDataBuilder get _$this {
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
  void replace(GFileFragmentData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GFileFragmentData;
  }

  @override
  void update(void Function(GFileFragmentDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GFileFragmentData build() {
    final _$result = _$v ??
        new _$GFileFragmentData._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, 'GFileFragmentData', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'GFileFragmentData', 'id'),
            size: size,
            author: author,
            url: url);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
