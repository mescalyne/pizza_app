// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_info_fragment.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GOrderInfoFragmentVars> _$gOrderInfoFragmentVarsSerializer =
    new _$GOrderInfoFragmentVarsSerializer();

class _$GOrderInfoFragmentVarsSerializer
    implements StructuredSerializer<GOrderInfoFragmentVars> {
  @override
  final Iterable<Type> types = const [
    GOrderInfoFragmentVars,
    _$GOrderInfoFragmentVars
  ];
  @override
  final String wireName = 'GOrderInfoFragmentVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GOrderInfoFragmentVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GOrderInfoFragmentVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GOrderInfoFragmentVarsBuilder().build();
  }
}

class _$GOrderInfoFragmentVars extends GOrderInfoFragmentVars {
  factory _$GOrderInfoFragmentVars(
          [void Function(GOrderInfoFragmentVarsBuilder)? updates]) =>
      (new GOrderInfoFragmentVarsBuilder()..update(updates)).build();

  _$GOrderInfoFragmentVars._() : super._();

  @override
  GOrderInfoFragmentVars rebuild(
          void Function(GOrderInfoFragmentVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GOrderInfoFragmentVarsBuilder toBuilder() =>
      new GOrderInfoFragmentVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GOrderInfoFragmentVars;
  }

  @override
  int get hashCode {
    return 975336693;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('GOrderInfoFragmentVars').toString();
  }
}

class GOrderInfoFragmentVarsBuilder
    implements Builder<GOrderInfoFragmentVars, GOrderInfoFragmentVarsBuilder> {
  _$GOrderInfoFragmentVars? _$v;

  GOrderInfoFragmentVarsBuilder();

  @override
  void replace(GOrderInfoFragmentVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GOrderInfoFragmentVars;
  }

  @override
  void update(void Function(GOrderInfoFragmentVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GOrderInfoFragmentVars build() {
    final _$result = _$v ?? new _$GOrderInfoFragmentVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
