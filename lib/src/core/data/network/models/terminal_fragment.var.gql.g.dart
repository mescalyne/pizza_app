// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'terminal_fragment.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GTerminalFragmentVars> _$gTerminalFragmentVarsSerializer =
    new _$GTerminalFragmentVarsSerializer();

class _$GTerminalFragmentVarsSerializer
    implements StructuredSerializer<GTerminalFragmentVars> {
  @override
  final Iterable<Type> types = const [
    GTerminalFragmentVars,
    _$GTerminalFragmentVars
  ];
  @override
  final String wireName = 'GTerminalFragmentVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GTerminalFragmentVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GTerminalFragmentVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GTerminalFragmentVarsBuilder().build();
  }
}

class _$GTerminalFragmentVars extends GTerminalFragmentVars {
  factory _$GTerminalFragmentVars(
          [void Function(GTerminalFragmentVarsBuilder)? updates]) =>
      (new GTerminalFragmentVarsBuilder()..update(updates)).build();

  _$GTerminalFragmentVars._() : super._();

  @override
  GTerminalFragmentVars rebuild(
          void Function(GTerminalFragmentVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GTerminalFragmentVarsBuilder toBuilder() =>
      new GTerminalFragmentVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GTerminalFragmentVars;
  }

  @override
  int get hashCode {
    return 35645329;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('GTerminalFragmentVars').toString();
  }
}

class GTerminalFragmentVarsBuilder
    implements Builder<GTerminalFragmentVars, GTerminalFragmentVarsBuilder> {
  _$GTerminalFragmentVars? _$v;

  GTerminalFragmentVarsBuilder();

  @override
  void replace(GTerminalFragmentVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GTerminalFragmentVars;
  }

  @override
  void update(void Function(GTerminalFragmentVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GTerminalFragmentVars build() {
    final _$result = _$v ?? new _$GTerminalFragmentVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
