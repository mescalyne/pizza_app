// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_unique_pages.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetUniquePagesVars> _$gGetUniquePagesVarsSerializer =
    new _$GGetUniquePagesVarsSerializer();

class _$GGetUniquePagesVarsSerializer
    implements StructuredSerializer<GGetUniquePagesVars> {
  @override
  final Iterable<Type> types = const [
    GGetUniquePagesVars,
    _$GGetUniquePagesVars
  ];
  @override
  final String wireName = 'GGetUniquePagesVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetUniquePagesVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GGetUniquePagesVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GGetUniquePagesVarsBuilder().build();
  }
}

class _$GGetUniquePagesVars extends GGetUniquePagesVars {
  factory _$GGetUniquePagesVars(
          [void Function(GGetUniquePagesVarsBuilder)? updates]) =>
      (new GGetUniquePagesVarsBuilder()..update(updates)).build();

  _$GGetUniquePagesVars._() : super._();

  @override
  GGetUniquePagesVars rebuild(
          void Function(GGetUniquePagesVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetUniquePagesVarsBuilder toBuilder() =>
      new GGetUniquePagesVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetUniquePagesVars;
  }

  @override
  int get hashCode {
    return 858649615;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('GGetUniquePagesVars').toString();
  }
}

class GGetUniquePagesVarsBuilder
    implements Builder<GGetUniquePagesVars, GGetUniquePagesVarsBuilder> {
  _$GGetUniquePagesVars? _$v;

  GGetUniquePagesVarsBuilder();

  @override
  void replace(GGetUniquePagesVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetUniquePagesVars;
  }

  @override
  void update(void Function(GGetUniquePagesVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetUniquePagesVars build() {
    final _$result = _$v ?? new _$GGetUniquePagesVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
