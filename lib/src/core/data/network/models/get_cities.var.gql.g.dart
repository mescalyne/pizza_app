// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_cities.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetCitiesQueryVars> _$gGetCitiesQueryVarsSerializer =
    new _$GGetCitiesQueryVarsSerializer();

class _$GGetCitiesQueryVarsSerializer
    implements StructuredSerializer<GGetCitiesQueryVars> {
  @override
  final Iterable<Type> types = const [
    GGetCitiesQueryVars,
    _$GGetCitiesQueryVars
  ];
  @override
  final String wireName = 'GGetCitiesQueryVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetCitiesQueryVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GGetCitiesQueryVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GGetCitiesQueryVarsBuilder().build();
  }
}

class _$GGetCitiesQueryVars extends GGetCitiesQueryVars {
  factory _$GGetCitiesQueryVars(
          [void Function(GGetCitiesQueryVarsBuilder)? updates]) =>
      (new GGetCitiesQueryVarsBuilder()..update(updates)).build();

  _$GGetCitiesQueryVars._() : super._();

  @override
  GGetCitiesQueryVars rebuild(
          void Function(GGetCitiesQueryVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetCitiesQueryVarsBuilder toBuilder() =>
      new GGetCitiesQueryVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetCitiesQueryVars;
  }

  @override
  int get hashCode {
    return 602312300;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('GGetCitiesQueryVars').toString();
  }
}

class GGetCitiesQueryVarsBuilder
    implements Builder<GGetCitiesQueryVars, GGetCitiesQueryVarsBuilder> {
  _$GGetCitiesQueryVars? _$v;

  GGetCitiesQueryVarsBuilder();

  @override
  void replace(GGetCitiesQueryVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetCitiesQueryVars;
  }

  @override
  void update(void Function(GGetCitiesQueryVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetCitiesQueryVars build() {
    final _$result = _$v ?? new _$GGetCitiesQueryVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
