// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_fragment.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GPageFragmentVars> _$gPageFragmentVarsSerializer =
    new _$GPageFragmentVarsSerializer();

class _$GPageFragmentVarsSerializer
    implements StructuredSerializer<GPageFragmentVars> {
  @override
  final Iterable<Type> types = const [GPageFragmentVars, _$GPageFragmentVars];
  @override
  final String wireName = 'GPageFragmentVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GPageFragmentVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GPageFragmentVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GPageFragmentVarsBuilder().build();
  }
}

class _$GPageFragmentVars extends GPageFragmentVars {
  factory _$GPageFragmentVars(
          [void Function(GPageFragmentVarsBuilder)? updates]) =>
      (new GPageFragmentVarsBuilder()..update(updates)).build();

  _$GPageFragmentVars._() : super._();

  @override
  GPageFragmentVars rebuild(void Function(GPageFragmentVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GPageFragmentVarsBuilder toBuilder() =>
      new GPageFragmentVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GPageFragmentVars;
  }

  @override
  int get hashCode {
    return 904437190;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('GPageFragmentVars').toString();
  }
}

class GPageFragmentVarsBuilder
    implements Builder<GPageFragmentVars, GPageFragmentVarsBuilder> {
  _$GPageFragmentVars? _$v;

  GPageFragmentVarsBuilder();

  @override
  void replace(GPageFragmentVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GPageFragmentVars;
  }

  @override
  void update(void Function(GPageFragmentVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GPageFragmentVars build() {
    final _$result = _$v ?? new _$GPageFragmentVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
