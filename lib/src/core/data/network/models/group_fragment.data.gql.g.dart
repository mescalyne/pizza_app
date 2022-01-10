// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_fragment.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGroupFragmentData> _$gGroupFragmentDataSerializer =
    new _$GGroupFragmentDataSerializer();
Serializer<GGroupFragmentData_images> _$gGroupFragmentDataImagesSerializer =
    new _$GGroupFragmentData_imagesSerializer();

class _$GGroupFragmentDataSerializer
    implements StructuredSerializer<GGroupFragmentData> {
  @override
  final Iterable<Type> types = const [GGroupFragmentData, _$GGroupFragmentData];
  @override
  final String wireName = 'GGroupFragmentData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGroupFragmentData object,
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
    value = object.parentGroup;
    if (value != null) {
      result
        ..add('parentGroup')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.images;
    if (value != null) {
      result
        ..add('images')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(GGroupFragmentData_images)])));
    }
    return result;
  }

  @override
  GGroupFragmentData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGroupFragmentDataBuilder();

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
        case 'parentGroup':
          result.parentGroup = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'images':
          result.images.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GGroupFragmentData_images)
              ]))! as BuiltList<Object?>);
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GGroupFragmentData_imagesSerializer
    implements StructuredSerializer<GGroupFragmentData_images> {
  @override
  final Iterable<Type> types = const [
    GGroupFragmentData_images,
    _$GGroupFragmentData_images
  ];
  @override
  final String wireName = 'GGroupFragmentData_images';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGroupFragmentData_images object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.imageUrl;
    if (value != null) {
      result
        ..add('imageUrl')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GGroupFragmentData_images deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGroupFragmentData_imagesBuilder();

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
        case 'imageUrl':
          result.imageUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GGroupFragmentData extends GGroupFragmentData {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String? parentGroup;
  @override
  final BuiltList<GGroupFragmentData_images>? images;
  @override
  final String name;

  factory _$GGroupFragmentData(
          [void Function(GGroupFragmentDataBuilder)? updates]) =>
      (new GGroupFragmentDataBuilder()..update(updates)).build();

  _$GGroupFragmentData._(
      {required this.G__typename,
      required this.id,
      this.parentGroup,
      this.images,
      required this.name})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGroupFragmentData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(id, 'GGroupFragmentData', 'id');
    BuiltValueNullFieldError.checkNotNull(name, 'GGroupFragmentData', 'name');
  }

  @override
  GGroupFragmentData rebuild(
          void Function(GGroupFragmentDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGroupFragmentDataBuilder toBuilder() =>
      new GGroupFragmentDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGroupFragmentData &&
        G__typename == other.G__typename &&
        id == other.id &&
        parentGroup == other.parentGroup &&
        images == other.images &&
        name == other.name;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, G__typename.hashCode), id.hashCode),
                parentGroup.hashCode),
            images.hashCode),
        name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGroupFragmentData')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('parentGroup', parentGroup)
          ..add('images', images)
          ..add('name', name))
        .toString();
  }
}

class GGroupFragmentDataBuilder
    implements Builder<GGroupFragmentData, GGroupFragmentDataBuilder> {
  _$GGroupFragmentData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _parentGroup;
  String? get parentGroup => _$this._parentGroup;
  set parentGroup(String? parentGroup) => _$this._parentGroup = parentGroup;

  ListBuilder<GGroupFragmentData_images>? _images;
  ListBuilder<GGroupFragmentData_images> get images =>
      _$this._images ??= new ListBuilder<GGroupFragmentData_images>();
  set images(ListBuilder<GGroupFragmentData_images>? images) =>
      _$this._images = images;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GGroupFragmentDataBuilder() {
    GGroupFragmentData._initializeBuilder(this);
  }

  GGroupFragmentDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _parentGroup = $v.parentGroup;
      _images = $v.images?.toBuilder();
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGroupFragmentData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGroupFragmentData;
  }

  @override
  void update(void Function(GGroupFragmentDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGroupFragmentData build() {
    _$GGroupFragmentData _$result;
    try {
      _$result = _$v ??
          new _$GGroupFragmentData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GGroupFragmentData', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, 'GGroupFragmentData', 'id'),
              parentGroup: parentGroup,
              images: _images?.build(),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, 'GGroupFragmentData', 'name'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'images';
        _images?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GGroupFragmentData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGroupFragmentData_images extends GGroupFragmentData_images {
  @override
  final String G__typename;
  @override
  final String? imageUrl;

  factory _$GGroupFragmentData_images(
          [void Function(GGroupFragmentData_imagesBuilder)? updates]) =>
      (new GGroupFragmentData_imagesBuilder()..update(updates)).build();

  _$GGroupFragmentData_images._({required this.G__typename, this.imageUrl})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGroupFragmentData_images', 'G__typename');
  }

  @override
  GGroupFragmentData_images rebuild(
          void Function(GGroupFragmentData_imagesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGroupFragmentData_imagesBuilder toBuilder() =>
      new GGroupFragmentData_imagesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGroupFragmentData_images &&
        G__typename == other.G__typename &&
        imageUrl == other.imageUrl;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), imageUrl.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGroupFragmentData_images')
          ..add('G__typename', G__typename)
          ..add('imageUrl', imageUrl))
        .toString();
  }
}

class GGroupFragmentData_imagesBuilder
    implements
        Builder<GGroupFragmentData_images, GGroupFragmentData_imagesBuilder> {
  _$GGroupFragmentData_images? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _imageUrl;
  String? get imageUrl => _$this._imageUrl;
  set imageUrl(String? imageUrl) => _$this._imageUrl = imageUrl;

  GGroupFragmentData_imagesBuilder() {
    GGroupFragmentData_images._initializeBuilder(this);
  }

  GGroupFragmentData_imagesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _imageUrl = $v.imageUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGroupFragmentData_images other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGroupFragmentData_images;
  }

  @override
  void update(void Function(GGroupFragmentData_imagesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGroupFragmentData_images build() {
    final _$result = _$v ??
        new _$GGroupFragmentData_images._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, 'GGroupFragmentData_images', 'G__typename'),
            imageUrl: imageUrl);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
