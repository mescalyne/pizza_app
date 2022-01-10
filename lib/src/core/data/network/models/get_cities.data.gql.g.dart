// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_cities.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetCitiesQueryData> _$gGetCitiesQueryDataSerializer =
    new _$GGetCitiesQueryDataSerializer();
Serializer<GGetCitiesQueryData_getCities>
    _$gGetCitiesQueryDataGetCitiesSerializer =
    new _$GGetCitiesQueryData_getCitiesSerializer();

class _$GGetCitiesQueryDataSerializer
    implements StructuredSerializer<GGetCitiesQueryData> {
  @override
  final Iterable<Type> types = const [
    GGetCitiesQueryData,
    _$GGetCitiesQueryData
  ];
  @override
  final String wireName = 'GGetCitiesQueryData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetCitiesQueryData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.getCities;
    if (value != null) {
      result
        ..add('getCities')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList,
                const [const FullType(GGetCitiesQueryData_getCities)])));
    }
    return result;
  }

  @override
  GGetCitiesQueryData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetCitiesQueryDataBuilder();

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
        case 'getCities':
          result.getCities.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GGetCitiesQueryData_getCities)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetCitiesQueryData_getCitiesSerializer
    implements StructuredSerializer<GGetCitiesQueryData_getCities> {
  @override
  final Iterable<Type> types = const [
    GGetCitiesQueryData_getCities,
    _$GGetCitiesQueryData_getCities
  ];
  @override
  final String wireName = 'GGetCitiesQueryData_getCities';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetCitiesQueryData_getCities object,
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
    value = object.prefix;
    if (value != null) {
      result
        ..add('prefix')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.postal_code;
    if (value != null) {
      result
        ..add('postal_code')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.city_type;
    if (value != null) {
      result
        ..add('city_type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.available;
    if (value != null) {
      result
        ..add('available')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GGetCitiesQueryData_getCities deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetCitiesQueryData_getCitiesBuilder();

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
              specifiedType: const FullType(String)) as String;
          break;
        case 'prefix':
          result.prefix = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'postal_code':
          result.postal_code = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'city_type':
          result.city_type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'available':
          result.available = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetCitiesQueryData extends GGetCitiesQueryData {
  @override
  final String G__typename;
  @override
  final BuiltList<GGetCitiesQueryData_getCities>? getCities;

  factory _$GGetCitiesQueryData(
          [void Function(GGetCitiesQueryDataBuilder)? updates]) =>
      (new GGetCitiesQueryDataBuilder()..update(updates)).build();

  _$GGetCitiesQueryData._({required this.G__typename, this.getCities})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGetCitiesQueryData', 'G__typename');
  }

  @override
  GGetCitiesQueryData rebuild(
          void Function(GGetCitiesQueryDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetCitiesQueryDataBuilder toBuilder() =>
      new GGetCitiesQueryDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetCitiesQueryData &&
        G__typename == other.G__typename &&
        getCities == other.getCities;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), getCities.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetCitiesQueryData')
          ..add('G__typename', G__typename)
          ..add('getCities', getCities))
        .toString();
  }
}

class GGetCitiesQueryDataBuilder
    implements Builder<GGetCitiesQueryData, GGetCitiesQueryDataBuilder> {
  _$GGetCitiesQueryData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GGetCitiesQueryData_getCities>? _getCities;
  ListBuilder<GGetCitiesQueryData_getCities> get getCities =>
      _$this._getCities ??= new ListBuilder<GGetCitiesQueryData_getCities>();
  set getCities(ListBuilder<GGetCitiesQueryData_getCities>? getCities) =>
      _$this._getCities = getCities;

  GGetCitiesQueryDataBuilder() {
    GGetCitiesQueryData._initializeBuilder(this);
  }

  GGetCitiesQueryDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _getCities = $v.getCities?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetCitiesQueryData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetCitiesQueryData;
  }

  @override
  void update(void Function(GGetCitiesQueryDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetCitiesQueryData build() {
    _$GGetCitiesQueryData _$result;
    try {
      _$result = _$v ??
          new _$GGetCitiesQueryData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GGetCitiesQueryData', 'G__typename'),
              getCities: _getCities?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'getCities';
        _getCities?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GGetCitiesQueryData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetCitiesQueryData_getCities extends GGetCitiesQueryData_getCities {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String name;
  @override
  final String? prefix;
  @override
  final String? postal_code;
  @override
  final String? city_type;
  @override
  final bool? available;

  factory _$GGetCitiesQueryData_getCities(
          [void Function(GGetCitiesQueryData_getCitiesBuilder)? updates]) =>
      (new GGetCitiesQueryData_getCitiesBuilder()..update(updates)).build();

  _$GGetCitiesQueryData_getCities._(
      {required this.G__typename,
      required this.id,
      required this.name,
      this.prefix,
      this.postal_code,
      this.city_type,
      this.available})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGetCitiesQueryData_getCities', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GGetCitiesQueryData_getCities', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, 'GGetCitiesQueryData_getCities', 'name');
  }

  @override
  GGetCitiesQueryData_getCities rebuild(
          void Function(GGetCitiesQueryData_getCitiesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetCitiesQueryData_getCitiesBuilder toBuilder() =>
      new GGetCitiesQueryData_getCitiesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetCitiesQueryData_getCities &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        prefix == other.prefix &&
        postal_code == other.postal_code &&
        city_type == other.city_type &&
        available == other.available;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, G__typename.hashCode), id.hashCode),
                        name.hashCode),
                    prefix.hashCode),
                postal_code.hashCode),
            city_type.hashCode),
        available.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetCitiesQueryData_getCities')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('prefix', prefix)
          ..add('postal_code', postal_code)
          ..add('city_type', city_type)
          ..add('available', available))
        .toString();
  }
}

class GGetCitiesQueryData_getCitiesBuilder
    implements
        Builder<GGetCitiesQueryData_getCities,
            GGetCitiesQueryData_getCitiesBuilder> {
  _$GGetCitiesQueryData_getCities? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _prefix;
  String? get prefix => _$this._prefix;
  set prefix(String? prefix) => _$this._prefix = prefix;

  String? _postal_code;
  String? get postal_code => _$this._postal_code;
  set postal_code(String? postal_code) => _$this._postal_code = postal_code;

  String? _city_type;
  String? get city_type => _$this._city_type;
  set city_type(String? city_type) => _$this._city_type = city_type;

  bool? _available;
  bool? get available => _$this._available;
  set available(bool? available) => _$this._available = available;

  GGetCitiesQueryData_getCitiesBuilder() {
    GGetCitiesQueryData_getCities._initializeBuilder(this);
  }

  GGetCitiesQueryData_getCitiesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _prefix = $v.prefix;
      _postal_code = $v.postal_code;
      _city_type = $v.city_type;
      _available = $v.available;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetCitiesQueryData_getCities other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetCitiesQueryData_getCities;
  }

  @override
  void update(void Function(GGetCitiesQueryData_getCitiesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetCitiesQueryData_getCities build() {
    final _$result = _$v ??
        new _$GGetCitiesQueryData_getCities._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, 'GGetCitiesQueryData_getCities', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'GGetCitiesQueryData_getCities', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, 'GGetCitiesQueryData_getCities', 'name'),
            prefix: prefix,
            postal_code: postal_code,
            city_type: city_type,
            available: available);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
