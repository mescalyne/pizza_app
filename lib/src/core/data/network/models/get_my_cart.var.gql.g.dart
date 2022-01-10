// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_my_cart.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetMyCartVars> _$gGetMyCartVarsSerializer =
    new _$GGetMyCartVarsSerializer();

class _$GGetMyCartVarsSerializer
    implements StructuredSerializer<GGetMyCartVars> {
  @override
  final Iterable<Type> types = const [GGetMyCartVars, _$GGetMyCartVars];
  @override
  final String wireName = 'GGetMyCartVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GGetMyCartVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GGetMyCartVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GGetMyCartVarsBuilder().build();
  }
}

class _$GGetMyCartVars extends GGetMyCartVars {
  factory _$GGetMyCartVars([void Function(GGetMyCartVarsBuilder)? updates]) =>
      (new GGetMyCartVarsBuilder()..update(updates)).build();

  _$GGetMyCartVars._() : super._();

  @override
  GGetMyCartVars rebuild(void Function(GGetMyCartVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetMyCartVarsBuilder toBuilder() =>
      new GGetMyCartVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetMyCartVars;
  }

  @override
  int get hashCode {
    return 853892134;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('GGetMyCartVars').toString();
  }
}

class GGetMyCartVarsBuilder
    implements Builder<GGetMyCartVars, GGetMyCartVarsBuilder> {
  _$GGetMyCartVars? _$v;

  GGetMyCartVarsBuilder();

  @override
  void replace(GGetMyCartVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetMyCartVars;
  }

  @override
  void update(void Function(GGetMyCartVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetMyCartVars build() {
    final _$result = _$v ?? new _$GGetMyCartVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
