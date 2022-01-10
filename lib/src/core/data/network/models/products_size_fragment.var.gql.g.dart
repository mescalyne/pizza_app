// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_size_fragment.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GProductsSizesFragmentVars> _$gProductsSizesFragmentVarsSerializer =
    new _$GProductsSizesFragmentVarsSerializer();

class _$GProductsSizesFragmentVarsSerializer
    implements StructuredSerializer<GProductsSizesFragmentVars> {
  @override
  final Iterable<Type> types = const [
    GProductsSizesFragmentVars,
    _$GProductsSizesFragmentVars
  ];
  @override
  final String wireName = 'GProductsSizesFragmentVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GProductsSizesFragmentVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GProductsSizesFragmentVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GProductsSizesFragmentVarsBuilder().build();
  }
}

class _$GProductsSizesFragmentVars extends GProductsSizesFragmentVars {
  factory _$GProductsSizesFragmentVars(
          [void Function(GProductsSizesFragmentVarsBuilder)? updates]) =>
      (new GProductsSizesFragmentVarsBuilder()..update(updates)).build();

  _$GProductsSizesFragmentVars._() : super._();

  @override
  GProductsSizesFragmentVars rebuild(
          void Function(GProductsSizesFragmentVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GProductsSizesFragmentVarsBuilder toBuilder() =>
      new GProductsSizesFragmentVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GProductsSizesFragmentVars;
  }

  @override
  int get hashCode {
    return 321242610;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('GProductsSizesFragmentVars').toString();
  }
}

class GProductsSizesFragmentVarsBuilder
    implements
        Builder<GProductsSizesFragmentVars, GProductsSizesFragmentVarsBuilder> {
  _$GProductsSizesFragmentVars? _$v;

  GProductsSizesFragmentVarsBuilder();

  @override
  void replace(GProductsSizesFragmentVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GProductsSizesFragmentVars;
  }

  @override
  void update(void Function(GProductsSizesFragmentVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GProductsSizesFragmentVars build() {
    final _$result = _$v ?? new _$GProductsSizesFragmentVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
