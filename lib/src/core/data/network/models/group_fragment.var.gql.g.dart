// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_fragment.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGroupFragmentVars> _$gGroupFragmentVarsSerializer =
    new _$GGroupFragmentVarsSerializer();

class _$GGroupFragmentVarsSerializer
    implements StructuredSerializer<GGroupFragmentVars> {
  @override
  final Iterable<Type> types = const [GGroupFragmentVars, _$GGroupFragmentVars];
  @override
  final String wireName = 'GGroupFragmentVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGroupFragmentVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GGroupFragmentVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GGroupFragmentVarsBuilder().build();
  }
}

class _$GGroupFragmentVars extends GGroupFragmentVars {
  factory _$GGroupFragmentVars(
          [void Function(GGroupFragmentVarsBuilder)? updates]) =>
      (new GGroupFragmentVarsBuilder()..update(updates)).build();

  _$GGroupFragmentVars._() : super._();

  @override
  GGroupFragmentVars rebuild(
          void Function(GGroupFragmentVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGroupFragmentVarsBuilder toBuilder() =>
      new GGroupFragmentVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGroupFragmentVars;
  }

  @override
  int get hashCode {
    return 611817398;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('GGroupFragmentVars').toString();
  }
}

class GGroupFragmentVarsBuilder
    implements Builder<GGroupFragmentVars, GGroupFragmentVarsBuilder> {
  _$GGroupFragmentVars? _$v;

  GGroupFragmentVarsBuilder();

  @override
  void replace(GGroupFragmentVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGroupFragmentVars;
  }

  @override
  void update(void Function(GGroupFragmentVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGroupFragmentVars build() {
    final _$result = _$v ?? new _$GGroupFragmentVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
