// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_restaurants.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetRestaurantsQueryVars> _$gGetRestaurantsQueryVarsSerializer =
    new _$GGetRestaurantsQueryVarsSerializer();

class _$GGetRestaurantsQueryVarsSerializer
    implements StructuredSerializer<GGetRestaurantsQueryVars> {
  @override
  final Iterable<Type> types = const [
    GGetRestaurantsQueryVars,
    _$GGetRestaurantsQueryVars
  ];
  @override
  final String wireName = 'GGetRestaurantsQueryVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetRestaurantsQueryVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
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
  GGetRestaurantsQueryVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetRestaurantsQueryVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'city_id':
          result.city_id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetRestaurantsQueryVars extends GGetRestaurantsQueryVars {
  @override
  final int? city_id;

  factory _$GGetRestaurantsQueryVars(
          [void Function(GGetRestaurantsQueryVarsBuilder)? updates]) =>
      (new GGetRestaurantsQueryVarsBuilder()..update(updates)).build();

  _$GGetRestaurantsQueryVars._({this.city_id}) : super._();

  @override
  GGetRestaurantsQueryVars rebuild(
          void Function(GGetRestaurantsQueryVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetRestaurantsQueryVarsBuilder toBuilder() =>
      new GGetRestaurantsQueryVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetRestaurantsQueryVars && city_id == other.city_id;
  }

  @override
  int get hashCode {
    return $jf($jc(0, city_id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetRestaurantsQueryVars')
          ..add('city_id', city_id))
        .toString();
  }
}

class GGetRestaurantsQueryVarsBuilder
    implements
        Builder<GGetRestaurantsQueryVars, GGetRestaurantsQueryVarsBuilder> {
  _$GGetRestaurantsQueryVars? _$v;

  int? _city_id;
  int? get city_id => _$this._city_id;
  set city_id(int? city_id) => _$this._city_id = city_id;

  GGetRestaurantsQueryVarsBuilder();

  GGetRestaurantsQueryVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _city_id = $v.city_id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetRestaurantsQueryVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetRestaurantsQueryVars;
  }

  @override
  void update(void Function(GGetRestaurantsQueryVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetRestaurantsQueryVars build() {
    final _$result = _$v ?? new _$GGetRestaurantsQueryVars._(city_id: city_id);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
