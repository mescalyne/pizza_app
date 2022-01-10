// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_group.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetGroupQueryData> _$gGetGroupQueryDataSerializer =
    new _$GGetGroupQueryDataSerializer();
Serializer<GGetGroupQueryData_getGroup> _$gGetGroupQueryDataGetGroupSerializer =
    new _$GGetGroupQueryData_getGroupSerializer();
Serializer<GGetGroupQueryData_getGroup_images>
    _$gGetGroupQueryDataGetGroupImagesSerializer =
    new _$GGetGroupQueryData_getGroup_imagesSerializer();

class _$GGetGroupQueryDataSerializer
    implements StructuredSerializer<GGetGroupQueryData> {
  @override
  final Iterable<Type> types = const [GGetGroupQueryData, _$GGetGroupQueryData];
  @override
  final String wireName = 'GGetGroupQueryData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetGroupQueryData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.getGroup;
    if (value != null) {
      result
        ..add('getGroup')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GGetGroupQueryData_getGroup)));
    }
    return result;
  }

  @override
  GGetGroupQueryData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetGroupQueryDataBuilder();

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
        case 'getGroup':
          result.getGroup.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GGetGroupQueryData_getGroup))!
              as GGetGroupQueryData_getGroup);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetGroupQueryData_getGroupSerializer
    implements StructuredSerializer<GGetGroupQueryData_getGroup> {
  @override
  final Iterable<Type> types = const [
    GGetGroupQueryData_getGroup,
    _$GGetGroupQueryData_getGroup
  ];
  @override
  final String wireName = 'GGetGroupQueryData_getGroup';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetGroupQueryData_getGroup object,
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
            specifiedType: const FullType(BuiltList,
                const [const FullType(GGetGroupQueryData_getGroup_images)])));
    }
    return result;
  }

  @override
  GGetGroupQueryData_getGroup deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetGroupQueryData_getGroupBuilder();

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
                const FullType(GGetGroupQueryData_getGroup_images)
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

class _$GGetGroupQueryData_getGroup_imagesSerializer
    implements StructuredSerializer<GGetGroupQueryData_getGroup_images> {
  @override
  final Iterable<Type> types = const [
    GGetGroupQueryData_getGroup_images,
    _$GGetGroupQueryData_getGroup_images
  ];
  @override
  final String wireName = 'GGetGroupQueryData_getGroup_images';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetGroupQueryData_getGroup_images object,
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
  GGetGroupQueryData_getGroup_images deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetGroupQueryData_getGroup_imagesBuilder();

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

class _$GGetGroupQueryData extends GGetGroupQueryData {
  @override
  final String G__typename;
  @override
  final GGetGroupQueryData_getGroup? getGroup;

  factory _$GGetGroupQueryData(
          [void Function(GGetGroupQueryDataBuilder)? updates]) =>
      (new GGetGroupQueryDataBuilder()..update(updates)).build();

  _$GGetGroupQueryData._({required this.G__typename, this.getGroup})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGetGroupQueryData', 'G__typename');
  }

  @override
  GGetGroupQueryData rebuild(
          void Function(GGetGroupQueryDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetGroupQueryDataBuilder toBuilder() =>
      new GGetGroupQueryDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetGroupQueryData &&
        G__typename == other.G__typename &&
        getGroup == other.getGroup;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), getGroup.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetGroupQueryData')
          ..add('G__typename', G__typename)
          ..add('getGroup', getGroup))
        .toString();
  }
}

class GGetGroupQueryDataBuilder
    implements Builder<GGetGroupQueryData, GGetGroupQueryDataBuilder> {
  _$GGetGroupQueryData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GGetGroupQueryData_getGroupBuilder? _getGroup;
  GGetGroupQueryData_getGroupBuilder get getGroup =>
      _$this._getGroup ??= new GGetGroupQueryData_getGroupBuilder();
  set getGroup(GGetGroupQueryData_getGroupBuilder? getGroup) =>
      _$this._getGroup = getGroup;

  GGetGroupQueryDataBuilder() {
    GGetGroupQueryData._initializeBuilder(this);
  }

  GGetGroupQueryDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _getGroup = $v.getGroup?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetGroupQueryData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetGroupQueryData;
  }

  @override
  void update(void Function(GGetGroupQueryDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetGroupQueryData build() {
    _$GGetGroupQueryData _$result;
    try {
      _$result = _$v ??
          new _$GGetGroupQueryData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GGetGroupQueryData', 'G__typename'),
              getGroup: _getGroup?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'getGroup';
        _getGroup?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GGetGroupQueryData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetGroupQueryData_getGroup extends GGetGroupQueryData_getGroup {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String? parentGroup;
  @override
  final BuiltList<GGetGroupQueryData_getGroup_images>? images;
  @override
  final String name;

  factory _$GGetGroupQueryData_getGroup(
          [void Function(GGetGroupQueryData_getGroupBuilder)? updates]) =>
      (new GGetGroupQueryData_getGroupBuilder()..update(updates)).build();

  _$GGetGroupQueryData_getGroup._(
      {required this.G__typename,
      required this.id,
      this.parentGroup,
      this.images,
      required this.name})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGetGroupQueryData_getGroup', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GGetGroupQueryData_getGroup', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, 'GGetGroupQueryData_getGroup', 'name');
  }

  @override
  GGetGroupQueryData_getGroup rebuild(
          void Function(GGetGroupQueryData_getGroupBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetGroupQueryData_getGroupBuilder toBuilder() =>
      new GGetGroupQueryData_getGroupBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetGroupQueryData_getGroup &&
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
    return (newBuiltValueToStringHelper('GGetGroupQueryData_getGroup')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('parentGroup', parentGroup)
          ..add('images', images)
          ..add('name', name))
        .toString();
  }
}

class GGetGroupQueryData_getGroupBuilder
    implements
        Builder<GGetGroupQueryData_getGroup,
            GGetGroupQueryData_getGroupBuilder> {
  _$GGetGroupQueryData_getGroup? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _parentGroup;
  String? get parentGroup => _$this._parentGroup;
  set parentGroup(String? parentGroup) => _$this._parentGroup = parentGroup;

  ListBuilder<GGetGroupQueryData_getGroup_images>? _images;
  ListBuilder<GGetGroupQueryData_getGroup_images> get images =>
      _$this._images ??= new ListBuilder<GGetGroupQueryData_getGroup_images>();
  set images(ListBuilder<GGetGroupQueryData_getGroup_images>? images) =>
      _$this._images = images;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GGetGroupQueryData_getGroupBuilder() {
    GGetGroupQueryData_getGroup._initializeBuilder(this);
  }

  GGetGroupQueryData_getGroupBuilder get _$this {
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
  void replace(GGetGroupQueryData_getGroup other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetGroupQueryData_getGroup;
  }

  @override
  void update(void Function(GGetGroupQueryData_getGroupBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetGroupQueryData_getGroup build() {
    _$GGetGroupQueryData_getGroup _$result;
    try {
      _$result = _$v ??
          new _$GGetGroupQueryData_getGroup._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GGetGroupQueryData_getGroup', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, 'GGetGroupQueryData_getGroup', 'id'),
              parentGroup: parentGroup,
              images: _images?.build(),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, 'GGetGroupQueryData_getGroup', 'name'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'images';
        _images?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GGetGroupQueryData_getGroup', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetGroupQueryData_getGroup_images
    extends GGetGroupQueryData_getGroup_images {
  @override
  final String G__typename;
  @override
  final String? imageUrl;

  factory _$GGetGroupQueryData_getGroup_images(
          [void Function(GGetGroupQueryData_getGroup_imagesBuilder)?
              updates]) =>
      (new GGetGroupQueryData_getGroup_imagesBuilder()..update(updates))
          .build();

  _$GGetGroupQueryData_getGroup_images._(
      {required this.G__typename, this.imageUrl})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGetGroupQueryData_getGroup_images', 'G__typename');
  }

  @override
  GGetGroupQueryData_getGroup_images rebuild(
          void Function(GGetGroupQueryData_getGroup_imagesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetGroupQueryData_getGroup_imagesBuilder toBuilder() =>
      new GGetGroupQueryData_getGroup_imagesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetGroupQueryData_getGroup_images &&
        G__typename == other.G__typename &&
        imageUrl == other.imageUrl;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), imageUrl.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetGroupQueryData_getGroup_images')
          ..add('G__typename', G__typename)
          ..add('imageUrl', imageUrl))
        .toString();
  }
}

class GGetGroupQueryData_getGroup_imagesBuilder
    implements
        Builder<GGetGroupQueryData_getGroup_images,
            GGetGroupQueryData_getGroup_imagesBuilder> {
  _$GGetGroupQueryData_getGroup_images? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _imageUrl;
  String? get imageUrl => _$this._imageUrl;
  set imageUrl(String? imageUrl) => _$this._imageUrl = imageUrl;

  GGetGroupQueryData_getGroup_imagesBuilder() {
    GGetGroupQueryData_getGroup_images._initializeBuilder(this);
  }

  GGetGroupQueryData_getGroup_imagesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _imageUrl = $v.imageUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetGroupQueryData_getGroup_images other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetGroupQueryData_getGroup_images;
  }

  @override
  void update(
      void Function(GGetGroupQueryData_getGroup_imagesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetGroupQueryData_getGroup_images build() {
    final _$result = _$v ??
        new _$GGetGroupQueryData_getGroup_images._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                'GGetGroupQueryData_getGroup_images', 'G__typename'),
            imageUrl: imageUrl);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
