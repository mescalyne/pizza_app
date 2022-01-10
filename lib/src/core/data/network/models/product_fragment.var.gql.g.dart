// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_fragment.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GProductFragmentVars> _$gProductFragmentVarsSerializer =
    new _$GProductFragmentVarsSerializer();

class _$GProductFragmentVarsSerializer
    implements StructuredSerializer<GProductFragmentVars> {
  @override
  final Iterable<Type> types = const [
    GProductFragmentVars,
    _$GProductFragmentVars
  ];
  @override
  final String wireName = 'GProductFragmentVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GProductFragmentVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GProductFragmentVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GProductFragmentVarsBuilder().build();
  }
}

class _$GProductFragmentVars extends GProductFragmentVars {
  factory _$GProductFragmentVars(
          [void Function(GProductFragmentVarsBuilder)? updates]) =>
      (new GProductFragmentVarsBuilder()..update(updates)).build();

  _$GProductFragmentVars._() : super._();

  @override
  GProductFragmentVars rebuild(
          void Function(GProductFragmentVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GProductFragmentVarsBuilder toBuilder() =>
      new GProductFragmentVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GProductFragmentVars;
  }

  @override
  int get hashCode {
    return 19045036;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('GProductFragmentVars').toString();
  }
}

class GProductFragmentVarsBuilder
    implements Builder<GProductFragmentVars, GProductFragmentVarsBuilder> {
  _$GProductFragmentVars? _$v;

  GProductFragmentVarsBuilder();

  @override
  void replace(GProductFragmentVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GProductFragmentVars;
  }

  @override
  void update(void Function(GProductFragmentVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GProductFragmentVars build() {
    final _$result = _$v ?? new _$GProductFragmentVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
