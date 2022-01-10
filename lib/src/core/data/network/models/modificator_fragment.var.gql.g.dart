// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modificator_fragment.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GModificatorFragmentVars> _$gModificatorFragmentVarsSerializer =
    new _$GModificatorFragmentVarsSerializer();

class _$GModificatorFragmentVarsSerializer
    implements StructuredSerializer<GModificatorFragmentVars> {
  @override
  final Iterable<Type> types = const [
    GModificatorFragmentVars,
    _$GModificatorFragmentVars
  ];
  @override
  final String wireName = 'GModificatorFragmentVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GModificatorFragmentVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GModificatorFragmentVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GModificatorFragmentVarsBuilder().build();
  }
}

class _$GModificatorFragmentVars extends GModificatorFragmentVars {
  factory _$GModificatorFragmentVars(
          [void Function(GModificatorFragmentVarsBuilder)? updates]) =>
      (new GModificatorFragmentVarsBuilder()..update(updates)).build();

  _$GModificatorFragmentVars._() : super._();

  @override
  GModificatorFragmentVars rebuild(
          void Function(GModificatorFragmentVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GModificatorFragmentVarsBuilder toBuilder() =>
      new GModificatorFragmentVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GModificatorFragmentVars;
  }

  @override
  int get hashCode {
    return 95571629;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('GModificatorFragmentVars').toString();
  }
}

class GModificatorFragmentVarsBuilder
    implements
        Builder<GModificatorFragmentVars, GModificatorFragmentVarsBuilder> {
  _$GModificatorFragmentVars? _$v;

  GModificatorFragmentVarsBuilder();

  @override
  void replace(GModificatorFragmentVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GModificatorFragmentVars;
  }

  @override
  void update(void Function(GModificatorFragmentVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GModificatorFragmentVars build() {
    final _$result = _$v ?? new _$GModificatorFragmentVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
