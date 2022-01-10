// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city_fragment.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GCityFragmentVars> _$gCityFragmentVarsSerializer =
    new _$GCityFragmentVarsSerializer();

class _$GCityFragmentVarsSerializer
    implements StructuredSerializer<GCityFragmentVars> {
  @override
  final Iterable<Type> types = const [GCityFragmentVars, _$GCityFragmentVars];
  @override
  final String wireName = 'GCityFragmentVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GCityFragmentVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GCityFragmentVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GCityFragmentVarsBuilder().build();
  }
}

class _$GCityFragmentVars extends GCityFragmentVars {
  factory _$GCityFragmentVars(
          [void Function(GCityFragmentVarsBuilder)? updates]) =>
      (new GCityFragmentVarsBuilder()..update(updates)).build();

  _$GCityFragmentVars._() : super._();

  @override
  GCityFragmentVars rebuild(void Function(GCityFragmentVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCityFragmentVarsBuilder toBuilder() =>
      new GCityFragmentVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCityFragmentVars;
  }

  @override
  int get hashCode {
    return 42895243;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('GCityFragmentVars').toString();
  }
}

class GCityFragmentVarsBuilder
    implements Builder<GCityFragmentVars, GCityFragmentVarsBuilder> {
  _$GCityFragmentVars? _$v;

  GCityFragmentVarsBuilder();

  @override
  void replace(GCityFragmentVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCityFragmentVars;
  }

  @override
  void update(void Function(GCityFragmentVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GCityFragmentVars build() {
    final _$result = _$v ?? new _$GCityFragmentVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
