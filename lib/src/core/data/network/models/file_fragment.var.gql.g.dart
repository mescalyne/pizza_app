// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_fragment.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GFileFragmentVars> _$gFileFragmentVarsSerializer =
    new _$GFileFragmentVarsSerializer();

class _$GFileFragmentVarsSerializer
    implements StructuredSerializer<GFileFragmentVars> {
  @override
  final Iterable<Type> types = const [GFileFragmentVars, _$GFileFragmentVars];
  @override
  final String wireName = 'GFileFragmentVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GFileFragmentVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GFileFragmentVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GFileFragmentVarsBuilder().build();
  }
}

class _$GFileFragmentVars extends GFileFragmentVars {
  factory _$GFileFragmentVars(
          [void Function(GFileFragmentVarsBuilder)? updates]) =>
      (new GFileFragmentVarsBuilder()..update(updates)).build();

  _$GFileFragmentVars._() : super._();

  @override
  GFileFragmentVars rebuild(void Function(GFileFragmentVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFileFragmentVarsBuilder toBuilder() =>
      new GFileFragmentVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFileFragmentVars;
  }

  @override
  int get hashCode {
    return 6641705;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('GFileFragmentVars').toString();
  }
}

class GFileFragmentVarsBuilder
    implements Builder<GFileFragmentVars, GFileFragmentVarsBuilder> {
  _$GFileFragmentVars? _$v;

  GFileFragmentVarsBuilder();

  @override
  void replace(GFileFragmentVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GFileFragmentVars;
  }

  @override
  void update(void Function(GFileFragmentVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GFileFragmentVars build() {
    final _$result = _$v ?? new _$GFileFragmentVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
