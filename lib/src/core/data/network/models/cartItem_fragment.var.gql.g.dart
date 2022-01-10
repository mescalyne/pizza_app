// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cartItem_fragment.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GCartItemFragmentVars> _$gCartItemFragmentVarsSerializer =
    new _$GCartItemFragmentVarsSerializer();

class _$GCartItemFragmentVarsSerializer
    implements StructuredSerializer<GCartItemFragmentVars> {
  @override
  final Iterable<Type> types = const [
    GCartItemFragmentVars,
    _$GCartItemFragmentVars
  ];
  @override
  final String wireName = 'GCartItemFragmentVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCartItemFragmentVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GCartItemFragmentVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GCartItemFragmentVarsBuilder().build();
  }
}

class _$GCartItemFragmentVars extends GCartItemFragmentVars {
  factory _$GCartItemFragmentVars(
          [void Function(GCartItemFragmentVarsBuilder)? updates]) =>
      (new GCartItemFragmentVarsBuilder()..update(updates)).build();

  _$GCartItemFragmentVars._() : super._();

  @override
  GCartItemFragmentVars rebuild(
          void Function(GCartItemFragmentVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCartItemFragmentVarsBuilder toBuilder() =>
      new GCartItemFragmentVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCartItemFragmentVars;
  }

  @override
  int get hashCode {
    return 114869185;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('GCartItemFragmentVars').toString();
  }
}

class GCartItemFragmentVarsBuilder
    implements Builder<GCartItemFragmentVars, GCartItemFragmentVarsBuilder> {
  _$GCartItemFragmentVars? _$v;

  GCartItemFragmentVarsBuilder();

  @override
  void replace(GCartItemFragmentVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCartItemFragmentVars;
  }

  @override
  void update(void Function(GCartItemFragmentVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GCartItemFragmentVars build() {
    final _$result = _$v ?? new _$GCartItemFragmentVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
