// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_create_order.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GCheckCreateOrderVars> _$gCheckCreateOrderVarsSerializer =
    new _$GCheckCreateOrderVarsSerializer();

class _$GCheckCreateOrderVarsSerializer
    implements StructuredSerializer<GCheckCreateOrderVars> {
  @override
  final Iterable<Type> types = const [
    GCheckCreateOrderVars,
    _$GCheckCreateOrderVars
  ];
  @override
  final String wireName = 'GCheckCreateOrderVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCheckCreateOrderVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GCheckCreateOrderVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GCheckCreateOrderVarsBuilder().build();
  }
}

class _$GCheckCreateOrderVars extends GCheckCreateOrderVars {
  factory _$GCheckCreateOrderVars(
          [void Function(GCheckCreateOrderVarsBuilder)? updates]) =>
      (new GCheckCreateOrderVarsBuilder()..update(updates)).build();

  _$GCheckCreateOrderVars._() : super._();

  @override
  GCheckCreateOrderVars rebuild(
          void Function(GCheckCreateOrderVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCheckCreateOrderVarsBuilder toBuilder() =>
      new GCheckCreateOrderVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCheckCreateOrderVars;
  }

  @override
  int get hashCode {
    return 643788368;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('GCheckCreateOrderVars').toString();
  }
}

class GCheckCreateOrderVarsBuilder
    implements Builder<GCheckCreateOrderVars, GCheckCreateOrderVarsBuilder> {
  _$GCheckCreateOrderVars? _$v;

  GCheckCreateOrderVarsBuilder();

  @override
  void replace(GCheckCreateOrderVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCheckCreateOrderVars;
  }

  @override
  void update(void Function(GCheckCreateOrderVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GCheckCreateOrderVars build() {
    final _$result = _$v ?? new _$GCheckCreateOrderVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
