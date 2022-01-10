// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'carts_paginator.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GCartsPaginatorFragmentVars>
    _$gCartsPaginatorFragmentVarsSerializer =
    new _$GCartsPaginatorFragmentVarsSerializer();

class _$GCartsPaginatorFragmentVarsSerializer
    implements StructuredSerializer<GCartsPaginatorFragmentVars> {
  @override
  final Iterable<Type> types = const [
    GCartsPaginatorFragmentVars,
    _$GCartsPaginatorFragmentVars
  ];
  @override
  final String wireName = 'GCartsPaginatorFragmentVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCartsPaginatorFragmentVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GCartsPaginatorFragmentVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GCartsPaginatorFragmentVarsBuilder().build();
  }
}

class _$GCartsPaginatorFragmentVars extends GCartsPaginatorFragmentVars {
  factory _$GCartsPaginatorFragmentVars(
          [void Function(GCartsPaginatorFragmentVarsBuilder)? updates]) =>
      (new GCartsPaginatorFragmentVarsBuilder()..update(updates)).build();

  _$GCartsPaginatorFragmentVars._() : super._();

  @override
  GCartsPaginatorFragmentVars rebuild(
          void Function(GCartsPaginatorFragmentVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCartsPaginatorFragmentVarsBuilder toBuilder() =>
      new GCartsPaginatorFragmentVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCartsPaginatorFragmentVars;
  }

  @override
  int get hashCode {
    return 112696973;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('GCartsPaginatorFragmentVars')
        .toString();
  }
}

class GCartsPaginatorFragmentVarsBuilder
    implements
        Builder<GCartsPaginatorFragmentVars,
            GCartsPaginatorFragmentVarsBuilder> {
  _$GCartsPaginatorFragmentVars? _$v;

  GCartsPaginatorFragmentVarsBuilder();

  @override
  void replace(GCartsPaginatorFragmentVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCartsPaginatorFragmentVars;
  }

  @override
  void update(void Function(GCartsPaginatorFragmentVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GCartsPaginatorFragmentVars build() {
    final _$result = _$v ?? new _$GCartsPaginatorFragmentVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
