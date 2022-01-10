// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurants_fragment.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GRestaurantFragmentVars> _$gRestaurantFragmentVarsSerializer =
    new _$GRestaurantFragmentVarsSerializer();

class _$GRestaurantFragmentVarsSerializer
    implements StructuredSerializer<GRestaurantFragmentVars> {
  @override
  final Iterable<Type> types = const [
    GRestaurantFragmentVars,
    _$GRestaurantFragmentVars
  ];
  @override
  final String wireName = 'GRestaurantFragmentVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GRestaurantFragmentVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GRestaurantFragmentVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GRestaurantFragmentVarsBuilder().build();
  }
}

class _$GRestaurantFragmentVars extends GRestaurantFragmentVars {
  factory _$GRestaurantFragmentVars(
          [void Function(GRestaurantFragmentVarsBuilder)? updates]) =>
      (new GRestaurantFragmentVarsBuilder()..update(updates)).build();

  _$GRestaurantFragmentVars._() : super._();

  @override
  GRestaurantFragmentVars rebuild(
          void Function(GRestaurantFragmentVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GRestaurantFragmentVarsBuilder toBuilder() =>
      new GRestaurantFragmentVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GRestaurantFragmentVars;
  }

  @override
  int get hashCode {
    return 348783197;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('GRestaurantFragmentVars').toString();
  }
}

class GRestaurantFragmentVarsBuilder
    implements
        Builder<GRestaurantFragmentVars, GRestaurantFragmentVarsBuilder> {
  _$GRestaurantFragmentVars? _$v;

  GRestaurantFragmentVarsBuilder();

  @override
  void replace(GRestaurantFragmentVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GRestaurantFragmentVars;
  }

  @override
  void update(void Function(GRestaurantFragmentVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GRestaurantFragmentVars build() {
    final _$result = _$v ?? new _$GRestaurantFragmentVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
