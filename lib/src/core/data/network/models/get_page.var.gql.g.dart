// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_page.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetPageQueryVars> _$gGetPageQueryVarsSerializer =
    new _$GGetPageQueryVarsSerializer();

class _$GGetPageQueryVarsSerializer
    implements StructuredSerializer<GGetPageQueryVars> {
  @override
  final Iterable<Type> types = const [GGetPageQueryVars, _$GGetPageQueryVars];
  @override
  final String wireName = 'GGetPageQueryVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GGetPageQueryVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'slug',
      serializers.serialize(object.slug, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.city_id;
    if (value != null) {
      result
        ..add('city_id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  GGetPageQueryVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetPageQueryVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'slug':
          result.slug = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'city_id':
          result.city_id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetPageQueryVars extends GGetPageQueryVars {
  @override
  final String slug;
  @override
  final int? city_id;

  factory _$GGetPageQueryVars(
          [void Function(GGetPageQueryVarsBuilder)? updates]) =>
      (new GGetPageQueryVarsBuilder()..update(updates)).build();

  _$GGetPageQueryVars._({required this.slug, this.city_id}) : super._() {
    BuiltValueNullFieldError.checkNotNull(slug, 'GGetPageQueryVars', 'slug');
  }

  @override
  GGetPageQueryVars rebuild(void Function(GGetPageQueryVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetPageQueryVarsBuilder toBuilder() =>
      new GGetPageQueryVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetPageQueryVars &&
        slug == other.slug &&
        city_id == other.city_id;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, slug.hashCode), city_id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetPageQueryVars')
          ..add('slug', slug)
          ..add('city_id', city_id))
        .toString();
  }
}

class GGetPageQueryVarsBuilder
    implements Builder<GGetPageQueryVars, GGetPageQueryVarsBuilder> {
  _$GGetPageQueryVars? _$v;

  String? _slug;
  String? get slug => _$this._slug;
  set slug(String? slug) => _$this._slug = slug;

  int? _city_id;
  int? get city_id => _$this._city_id;
  set city_id(int? city_id) => _$this._city_id = city_id;

  GGetPageQueryVarsBuilder();

  GGetPageQueryVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _slug = $v.slug;
      _city_id = $v.city_id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetPageQueryVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetPageQueryVars;
  }

  @override
  void update(void Function(GGetPageQueryVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetPageQueryVars build() {
    final _$result = _$v ??
        new _$GGetPageQueryVars._(
            slug: BuiltValueNullFieldError.checkNotNull(
                slug, 'GGetPageQueryVars', 'slug'),
            city_id: city_id);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
