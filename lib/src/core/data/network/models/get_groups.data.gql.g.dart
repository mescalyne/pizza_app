// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_groups.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetGroupsQueryData> _$gGetGroupsQueryDataSerializer =
    new _$GGetGroupsQueryDataSerializer();
Serializer<GGetGroupsQueryData_getGroups>
    _$gGetGroupsQueryDataGetGroupsSerializer =
    new _$GGetGroupsQueryData_getGroupsSerializer();
Serializer<GGetGroupsQueryData_getGroups_images>
    _$gGetGroupsQueryDataGetGroupsImagesSerializer =
    new _$GGetGroupsQueryData_getGroups_imagesSerializer();

class _$GGetGroupsQueryDataSerializer
    implements StructuredSerializer<GGetGroupsQueryData> {
  @override
  final Iterable<Type> types = const [
    GGetGroupsQueryData,
    _$GGetGroupsQueryData
  ];
  @override
  final String wireName = 'GGetGroupsQueryData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetGroupsQueryData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.getGroups;
    if (value != null) {
      result
        ..add('getGroups')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList,
                const [const FullType(GGetGroupsQueryData_getGroups)])));
    }
    return result;
  }

  @override
  GGetGroupsQueryData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetGroupsQueryDataBuilder();

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
        case 'getGroups':
          result.getGroups.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GGetGroupsQueryData_getGroups)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetGroupsQueryData_getGroupsSerializer
    implements StructuredSerializer<GGetGroupsQueryData_getGroups> {
  @override
  final Iterable<Type> types = const [
    GGetGroupsQueryData_getGroups,
    _$GGetGroupsQueryData_getGroups
  ];
  @override
  final String wireName = 'GGetGroupsQueryData_getGroups';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetGroupsQueryData_getGroups object,
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
                const [const FullType(GGetGroupsQueryData_getGroups_images)])));
    }
    return result;
  }

  @override
  GGetGroupsQueryData_getGroups deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetGroupsQueryData_getGroupsBuilder();

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
                const FullType(GGetGroupsQueryData_getGroups_images)
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

class _$GGetGroupsQueryData_getGroups_imagesSerializer
    implements StructuredSerializer<GGetGroupsQueryData_getGroups_images> {
  @override
  final Iterable<Type> types = const [
    GGetGroupsQueryData_getGroups_images,
    _$GGetGroupsQueryData_getGroups_images
  ];
  @override
  final String wireName = 'GGetGroupsQueryData_getGroups_images';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetGroupsQueryData_getGroups_images object,
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
  GGetGroupsQueryData_getGroups_images deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetGroupsQueryData_getGroups_imagesBuilder();

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

class _$GGetGroupsQueryData extends GGetGroupsQueryData {
  @override
  final String G__typename;
  @override
  final BuiltList<GGetGroupsQueryData_getGroups>? getGroups;

  factory _$GGetGroupsQueryData(
          [void Function(GGetGroupsQueryDataBuilder)? updates]) =>
      (new GGetGroupsQueryDataBuilder()..update(updates)).build();

  _$GGetGroupsQueryData._({required this.G__typename, this.getGroups})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGetGroupsQueryData', 'G__typename');
  }

  @override
  GGetGroupsQueryData rebuild(
          void Function(GGetGroupsQueryDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetGroupsQueryDataBuilder toBuilder() =>
      new GGetGroupsQueryDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetGroupsQueryData &&
        G__typename == other.G__typename &&
        getGroups == other.getGroups;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), getGroups.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetGroupsQueryData')
          ..add('G__typename', G__typename)
          ..add('getGroups', getGroups))
        .toString();
  }
}

class GGetGroupsQueryDataBuilder
    implements Builder<GGetGroupsQueryData, GGetGroupsQueryDataBuilder> {
  _$GGetGroupsQueryData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GGetGroupsQueryData_getGroups>? _getGroups;
  ListBuilder<GGetGroupsQueryData_getGroups> get getGroups =>
      _$this._getGroups ??= new ListBuilder<GGetGroupsQueryData_getGroups>();
  set getGroups(ListBuilder<GGetGroupsQueryData_getGroups>? getGroups) =>
      _$this._getGroups = getGroups;

  GGetGroupsQueryDataBuilder() {
    GGetGroupsQueryData._initializeBuilder(this);
  }

  GGetGroupsQueryDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _getGroups = $v.getGroups?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetGroupsQueryData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetGroupsQueryData;
  }

  @override
  void update(void Function(GGetGroupsQueryDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetGroupsQueryData build() {
    _$GGetGroupsQueryData _$result;
    try {
      _$result = _$v ??
          new _$GGetGroupsQueryData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GGetGroupsQueryData', 'G__typename'),
              getGroups: _getGroups?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'getGroups';
        _getGroups?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GGetGroupsQueryData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetGroupsQueryData_getGroups extends GGetGroupsQueryData_getGroups {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String? parentGroup;
  @override
  final BuiltList<GGetGroupsQueryData_getGroups_images>? images;
  @override
  final String name;

  factory _$GGetGroupsQueryData_getGroups(
          [void Function(GGetGroupsQueryData_getGroupsBuilder)? updates]) =>
      (new GGetGroupsQueryData_getGroupsBuilder()..update(updates)).build();

  _$GGetGroupsQueryData_getGroups._(
      {required this.G__typename,
      required this.id,
      this.parentGroup,
      this.images,
      required this.name})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGetGroupsQueryData_getGroups', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GGetGroupsQueryData_getGroups', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, 'GGetGroupsQueryData_getGroups', 'name');
  }

  @override
  GGetGroupsQueryData_getGroups rebuild(
          void Function(GGetGroupsQueryData_getGroupsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetGroupsQueryData_getGroupsBuilder toBuilder() =>
      new GGetGroupsQueryData_getGroupsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetGroupsQueryData_getGroups &&
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
    return (newBuiltValueToStringHelper('GGetGroupsQueryData_getGroups')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('parentGroup', parentGroup)
          ..add('images', images)
          ..add('name', name))
        .toString();
  }
}

class GGetGroupsQueryData_getGroupsBuilder
    implements
        Builder<GGetGroupsQueryData_getGroups,
            GGetGroupsQueryData_getGroupsBuilder> {
  _$GGetGroupsQueryData_getGroups? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _parentGroup;
  String? get parentGroup => _$this._parentGroup;
  set parentGroup(String? parentGroup) => _$this._parentGroup = parentGroup;

  ListBuilder<GGetGroupsQueryData_getGroups_images>? _images;
  ListBuilder<GGetGroupsQueryData_getGroups_images> get images =>
      _$this._images ??=
          new ListBuilder<GGetGroupsQueryData_getGroups_images>();
  set images(ListBuilder<GGetGroupsQueryData_getGroups_images>? images) =>
      _$this._images = images;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GGetGroupsQueryData_getGroupsBuilder() {
    GGetGroupsQueryData_getGroups._initializeBuilder(this);
  }

  GGetGroupsQueryData_getGroupsBuilder get _$this {
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
  void replace(GGetGroupsQueryData_getGroups other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetGroupsQueryData_getGroups;
  }

  @override
  void update(void Function(GGetGroupsQueryData_getGroupsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetGroupsQueryData_getGroups build() {
    _$GGetGroupsQueryData_getGroups _$result;
    try {
      _$result = _$v ??
          new _$GGetGroupsQueryData_getGroups._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GGetGroupsQueryData_getGroups', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, 'GGetGroupsQueryData_getGroups', 'id'),
              parentGroup: parentGroup,
              images: _images?.build(),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, 'GGetGroupsQueryData_getGroups', 'name'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'images';
        _images?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GGetGroupsQueryData_getGroups', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetGroupsQueryData_getGroups_images
    extends GGetGroupsQueryData_getGroups_images {
  @override
  final String G__typename;
  @override
  final String? imageUrl;

  factory _$GGetGroupsQueryData_getGroups_images(
          [void Function(GGetGroupsQueryData_getGroups_imagesBuilder)?
              updates]) =>
      (new GGetGroupsQueryData_getGroups_imagesBuilder()..update(updates))
          .build();

  _$GGetGroupsQueryData_getGroups_images._(
      {required this.G__typename, this.imageUrl})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGetGroupsQueryData_getGroups_images', 'G__typename');
  }

  @override
  GGetGroupsQueryData_getGroups_images rebuild(
          void Function(GGetGroupsQueryData_getGroups_imagesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetGroupsQueryData_getGroups_imagesBuilder toBuilder() =>
      new GGetGroupsQueryData_getGroups_imagesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetGroupsQueryData_getGroups_images &&
        G__typename == other.G__typename &&
        imageUrl == other.imageUrl;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), imageUrl.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetGroupsQueryData_getGroups_images')
          ..add('G__typename', G__typename)
          ..add('imageUrl', imageUrl))
        .toString();
  }
}

class GGetGroupsQueryData_getGroups_imagesBuilder
    implements
        Builder<GGetGroupsQueryData_getGroups_images,
            GGetGroupsQueryData_getGroups_imagesBuilder> {
  _$GGetGroupsQueryData_getGroups_images? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _imageUrl;
  String? get imageUrl => _$this._imageUrl;
  set imageUrl(String? imageUrl) => _$this._imageUrl = imageUrl;

  GGetGroupsQueryData_getGroups_imagesBuilder() {
    GGetGroupsQueryData_getGroups_images._initializeBuilder(this);
  }

  GGetGroupsQueryData_getGroups_imagesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _imageUrl = $v.imageUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetGroupsQueryData_getGroups_images other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetGroupsQueryData_getGroups_images;
  }

  @override
  void update(
      void Function(GGetGroupsQueryData_getGroups_imagesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetGroupsQueryData_getGroups_images build() {
    final _$result = _$v ??
        new _$GGetGroupsQueryData_getGroups_images._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                'GGetGroupsQueryData_getGroups_images', 'G__typename'),
            imageUrl: imageUrl);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
