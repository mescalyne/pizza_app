// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'me.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetCurrentUserVars> _$gGetCurrentUserVarsSerializer =
    new _$GGetCurrentUserVarsSerializer();

class _$GGetCurrentUserVarsSerializer
    implements StructuredSerializer<GGetCurrentUserVars> {
  @override
  final Iterable<Type> types = const [
    GGetCurrentUserVars,
    _$GGetCurrentUserVars
  ];
  @override
  final String wireName = 'GGetCurrentUserVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetCurrentUserVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GGetCurrentUserVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GGetCurrentUserVarsBuilder().build();
  }
}

class _$GGetCurrentUserVars extends GGetCurrentUserVars {
  factory _$GGetCurrentUserVars(
          [void Function(GGetCurrentUserVarsBuilder)? updates]) =>
      (new GGetCurrentUserVarsBuilder()..update(updates)).build();

  _$GGetCurrentUserVars._() : super._();

  @override
  GGetCurrentUserVars rebuild(
          void Function(GGetCurrentUserVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetCurrentUserVarsBuilder toBuilder() =>
      new GGetCurrentUserVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetCurrentUserVars;
  }

  @override
  int get hashCode {
    return 264302421;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('GGetCurrentUserVars').toString();
  }
}

class GGetCurrentUserVarsBuilder
    implements Builder<GGetCurrentUserVars, GGetCurrentUserVarsBuilder> {
  _$GGetCurrentUserVars? _$v;

  GGetCurrentUserVarsBuilder();

  @override
  void replace(GGetCurrentUserVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetCurrentUserVars;
  }

  @override
  void update(void Function(GGetCurrentUserVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetCurrentUserVars build() {
    final _$result = _$v ?? new _$GGetCurrentUserVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
