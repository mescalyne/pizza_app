// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unique_page_fragment.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GUniquePageFragmentVars> _$gUniquePageFragmentVarsSerializer =
    new _$GUniquePageFragmentVarsSerializer();

class _$GUniquePageFragmentVarsSerializer
    implements StructuredSerializer<GUniquePageFragmentVars> {
  @override
  final Iterable<Type> types = const [
    GUniquePageFragmentVars,
    _$GUniquePageFragmentVars
  ];
  @override
  final String wireName = 'GUniquePageFragmentVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUniquePageFragmentVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GUniquePageFragmentVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GUniquePageFragmentVarsBuilder().build();
  }
}

class _$GUniquePageFragmentVars extends GUniquePageFragmentVars {
  factory _$GUniquePageFragmentVars(
          [void Function(GUniquePageFragmentVarsBuilder)? updates]) =>
      (new GUniquePageFragmentVarsBuilder()..update(updates)).build();

  _$GUniquePageFragmentVars._() : super._();

  @override
  GUniquePageFragmentVars rebuild(
          void Function(GUniquePageFragmentVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUniquePageFragmentVarsBuilder toBuilder() =>
      new GUniquePageFragmentVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUniquePageFragmentVars;
  }

  @override
  int get hashCode {
    return 210303255;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('GUniquePageFragmentVars').toString();
  }
}

class GUniquePageFragmentVarsBuilder
    implements
        Builder<GUniquePageFragmentVars, GUniquePageFragmentVarsBuilder> {
  _$GUniquePageFragmentVars? _$v;

  GUniquePageFragmentVarsBuilder();

  @override
  void replace(GUniquePageFragmentVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUniquePageFragmentVars;
  }

  @override
  void update(void Function(GUniquePageFragmentVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GUniquePageFragmentVars build() {
    final _$result = _$v ?? new _$GUniquePageFragmentVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
