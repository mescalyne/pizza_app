// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_page_fragment.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GContactPageFragmentVars> _$gContactPageFragmentVarsSerializer =
    new _$GContactPageFragmentVarsSerializer();

class _$GContactPageFragmentVarsSerializer
    implements StructuredSerializer<GContactPageFragmentVars> {
  @override
  final Iterable<Type> types = const [
    GContactPageFragmentVars,
    _$GContactPageFragmentVars
  ];
  @override
  final String wireName = 'GContactPageFragmentVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GContactPageFragmentVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GContactPageFragmentVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GContactPageFragmentVarsBuilder().build();
  }
}

class _$GContactPageFragmentVars extends GContactPageFragmentVars {
  factory _$GContactPageFragmentVars(
          [void Function(GContactPageFragmentVarsBuilder)? updates]) =>
      (new GContactPageFragmentVarsBuilder()..update(updates)).build();

  _$GContactPageFragmentVars._() : super._();

  @override
  GContactPageFragmentVars rebuild(
          void Function(GContactPageFragmentVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GContactPageFragmentVarsBuilder toBuilder() =>
      new GContactPageFragmentVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GContactPageFragmentVars;
  }

  @override
  int get hashCode {
    return 646643088;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('GContactPageFragmentVars').toString();
  }
}

class GContactPageFragmentVarsBuilder
    implements
        Builder<GContactPageFragmentVars, GContactPageFragmentVarsBuilder> {
  _$GContactPageFragmentVars? _$v;

  GContactPageFragmentVarsBuilder();

  @override
  void replace(GContactPageFragmentVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GContactPageFragmentVars;
  }

  @override
  void update(void Function(GContactPageFragmentVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GContactPageFragmentVars build() {
    final _$result = _$v ?? new _$GContactPageFragmentVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
