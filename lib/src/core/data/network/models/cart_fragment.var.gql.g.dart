// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_fragment.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GCartFragmentVars> _$gCartFragmentVarsSerializer =
    new _$GCartFragmentVarsSerializer();

class _$GCartFragmentVarsSerializer
    implements StructuredSerializer<GCartFragmentVars> {
  @override
  final Iterable<Type> types = const [GCartFragmentVars, _$GCartFragmentVars];
  @override
  final String wireName = 'GCartFragmentVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GCartFragmentVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GCartFragmentVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GCartFragmentVarsBuilder().build();
  }
}

class _$GCartFragmentVars extends GCartFragmentVars {
  factory _$GCartFragmentVars(
          [void Function(GCartFragmentVarsBuilder)? updates]) =>
      (new GCartFragmentVarsBuilder()..update(updates)).build();

  _$GCartFragmentVars._() : super._();

  @override
  GCartFragmentVars rebuild(void Function(GCartFragmentVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCartFragmentVarsBuilder toBuilder() =>
      new GCartFragmentVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCartFragmentVars;
  }

  @override
  int get hashCode {
    return 893312933;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('GCartFragmentVars').toString();
  }
}

class GCartFragmentVarsBuilder
    implements Builder<GCartFragmentVars, GCartFragmentVarsBuilder> {
  _$GCartFragmentVars? _$v;

  GCartFragmentVarsBuilder();

  @override
  void replace(GCartFragmentVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCartFragmentVars;
  }

  @override
  void update(void Function(GCartFragmentVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GCartFragmentVars build() {
    final _$result = _$v ?? new _$GCartFragmentVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
