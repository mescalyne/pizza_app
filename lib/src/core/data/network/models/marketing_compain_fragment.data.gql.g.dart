// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'marketing_compain_fragment.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GMarketingCompaignFragmentData>
    _$gMarketingCompaignFragmentDataSerializer =
    new _$GMarketingCompaignFragmentDataSerializer();
Serializer<GMarketingCompaignFragmentData_image>
    _$gMarketingCompaignFragmentDataImageSerializer =
    new _$GMarketingCompaignFragmentData_imageSerializer();

class _$GMarketingCompaignFragmentDataSerializer
    implements StructuredSerializer<GMarketingCompaignFragmentData> {
  @override
  final Iterable<Type> types = const [
    GMarketingCompaignFragmentData,
    _$GMarketingCompaignFragmentData
  ];
  @override
  final String wireName = 'GMarketingCompaignFragmentData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GMarketingCompaignFragmentData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GMarketingCompaignFragmentData_image)));
    }
    value = object.period_from;
    if (value != null) {
      result
        ..add('period_from')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.period_to;
    if (value != null) {
      result
        ..add('period_to')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.active;
    if (value != null) {
      result
        ..add('active')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GMarketingCompaignFragmentData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMarketingCompaignFragmentDataBuilder();

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
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'image':
          result.image.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GMarketingCompaignFragmentData_image))!
              as GMarketingCompaignFragmentData_image);
          break;
        case 'period_from':
          result.period_from = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'period_to':
          result.period_to = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'active':
          result.active = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GMarketingCompaignFragmentData_imageSerializer
    implements StructuredSerializer<GMarketingCompaignFragmentData_image> {
  @override
  final Iterable<Type> types = const [
    GMarketingCompaignFragmentData_image,
    _$GMarketingCompaignFragmentData_image
  ];
  @override
  final String wireName = 'GMarketingCompaignFragmentData_image';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GMarketingCompaignFragmentData_image object,
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
  GMarketingCompaignFragmentData_image deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GMarketingCompaignFragmentData_imageBuilder();

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

class _$GMarketingCompaignFragmentData extends GMarketingCompaignFragmentData {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final GMarketingCompaignFragmentData_image? image;
  @override
  final DateTime? period_from;
  @override
  final DateTime? period_to;
  @override
  final bool? active;

  factory _$GMarketingCompaignFragmentData(
          [void Function(GMarketingCompaignFragmentDataBuilder)? updates]) =>
      (new GMarketingCompaignFragmentDataBuilder()..update(updates)).build();

  _$GMarketingCompaignFragmentData._(
      {required this.G__typename,
      required this.id,
      this.name,
      this.description,
      this.image,
      this.period_from,
      this.period_to,
      this.active})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GMarketingCompaignFragmentData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GMarketingCompaignFragmentData', 'id');
  }

  @override
  GMarketingCompaignFragmentData rebuild(
          void Function(GMarketingCompaignFragmentDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMarketingCompaignFragmentDataBuilder toBuilder() =>
      new GMarketingCompaignFragmentDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMarketingCompaignFragmentData &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        description == other.description &&
        image == other.image &&
        period_from == other.period_from &&
        period_to == other.period_to &&
        active == other.active;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, G__typename.hashCode), id.hashCode),
                            name.hashCode),
                        description.hashCode),
                    image.hashCode),
                period_from.hashCode),
            period_to.hashCode),
        active.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GMarketingCompaignFragmentData')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('description', description)
          ..add('image', image)
          ..add('period_from', period_from)
          ..add('period_to', period_to)
          ..add('active', active))
        .toString();
  }
}

class GMarketingCompaignFragmentDataBuilder
    implements
        Builder<GMarketingCompaignFragmentData,
            GMarketingCompaignFragmentDataBuilder> {
  _$GMarketingCompaignFragmentData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  GMarketingCompaignFragmentData_imageBuilder? _image;
  GMarketingCompaignFragmentData_imageBuilder get image =>
      _$this._image ??= new GMarketingCompaignFragmentData_imageBuilder();
  set image(GMarketingCompaignFragmentData_imageBuilder? image) =>
      _$this._image = image;

  DateTime? _period_from;
  DateTime? get period_from => _$this._period_from;
  set period_from(DateTime? period_from) => _$this._period_from = period_from;

  DateTime? _period_to;
  DateTime? get period_to => _$this._period_to;
  set period_to(DateTime? period_to) => _$this._period_to = period_to;

  bool? _active;
  bool? get active => _$this._active;
  set active(bool? active) => _$this._active = active;

  GMarketingCompaignFragmentDataBuilder() {
    GMarketingCompaignFragmentData._initializeBuilder(this);
  }

  GMarketingCompaignFragmentDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _description = $v.description;
      _image = $v.image?.toBuilder();
      _period_from = $v.period_from;
      _period_to = $v.period_to;
      _active = $v.active;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GMarketingCompaignFragmentData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMarketingCompaignFragmentData;
  }

  @override
  void update(void Function(GMarketingCompaignFragmentDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GMarketingCompaignFragmentData build() {
    _$GMarketingCompaignFragmentData _$result;
    try {
      _$result = _$v ??
          new _$GMarketingCompaignFragmentData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GMarketingCompaignFragmentData', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, 'GMarketingCompaignFragmentData', 'id'),
              name: name,
              description: description,
              image: _image?.build(),
              period_from: period_from,
              period_to: period_to,
              active: active);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'image';
        _image?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GMarketingCompaignFragmentData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GMarketingCompaignFragmentData_image
    extends GMarketingCompaignFragmentData_image {
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

  factory _$GMarketingCompaignFragmentData_image(
          [void Function(GMarketingCompaignFragmentData_imageBuilder)?
              updates]) =>
      (new GMarketingCompaignFragmentData_imageBuilder()..update(updates))
          .build();

  _$GMarketingCompaignFragmentData_image._(
      {required this.G__typename,
      required this.id,
      this.size,
      this.author,
      this.url})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GMarketingCompaignFragmentData_image', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GMarketingCompaignFragmentData_image', 'id');
  }

  @override
  GMarketingCompaignFragmentData_image rebuild(
          void Function(GMarketingCompaignFragmentData_imageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GMarketingCompaignFragmentData_imageBuilder toBuilder() =>
      new GMarketingCompaignFragmentData_imageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GMarketingCompaignFragmentData_image &&
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
    return (newBuiltValueToStringHelper('GMarketingCompaignFragmentData_image')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('size', size)
          ..add('author', author)
          ..add('url', url))
        .toString();
  }
}

class GMarketingCompaignFragmentData_imageBuilder
    implements
        Builder<GMarketingCompaignFragmentData_image,
            GMarketingCompaignFragmentData_imageBuilder> {
  _$GMarketingCompaignFragmentData_image? _$v;

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

  GMarketingCompaignFragmentData_imageBuilder() {
    GMarketingCompaignFragmentData_image._initializeBuilder(this);
  }

  GMarketingCompaignFragmentData_imageBuilder get _$this {
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
  void replace(GMarketingCompaignFragmentData_image other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GMarketingCompaignFragmentData_image;
  }

  @override
  void update(
      void Function(GMarketingCompaignFragmentData_imageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GMarketingCompaignFragmentData_image build() {
    final _$result = _$v ??
        new _$GMarketingCompaignFragmentData_image._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                'GMarketingCompaignFragmentData_image', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'GMarketingCompaignFragmentData_image', 'id'),
            size: size,
            author: author,
            url: url);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
