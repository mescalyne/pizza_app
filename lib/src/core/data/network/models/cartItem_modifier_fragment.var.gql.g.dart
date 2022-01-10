// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cartItem_modifier_fragment.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GCartItemModifierFragmentVars>
    _$gCartItemModifierFragmentVarsSerializer =
    new _$GCartItemModifierFragmentVarsSerializer();

class _$GCartItemModifierFragmentVarsSerializer
    implements StructuredSerializer<GCartItemModifierFragmentVars> {
  @override
  final Iterable<Type> types = const [
    GCartItemModifierFragmentVars,
    _$GCartItemModifierFragmentVars
  ];
  @override
  final String wireName = 'GCartItemModifierFragmentVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCartItemModifierFragmentVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GCartItemModifierFragmentVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GCartItemModifierFragmentVarsBuilder().build();
  }
}

class _$GCartItemModifierFragmentVars extends GCartItemModifierFragmentVars {
  factory _$GCartItemModifierFragmentVars(
          [void Function(GCartItemModifierFragmentVarsBuilder)? updates]) =>
      (new GCartItemModifierFragmentVarsBuilder()..update(updates)).build();

  _$GCartItemModifierFragmentVars._() : super._();

  @override
  GCartItemModifierFragmentVars rebuild(
          void Function(GCartItemModifierFragmentVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCartItemModifierFragmentVarsBuilder toBuilder() =>
      new GCartItemModifierFragmentVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCartItemModifierFragmentVars;
  }

  @override
  int get hashCode {
    return 68629244;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('GCartItemModifierFragmentVars')
        .toString();
  }
}

class GCartItemModifierFragmentVarsBuilder
    implements
        Builder<GCartItemModifierFragmentVars,
            GCartItemModifierFragmentVarsBuilder> {
  _$GCartItemModifierFragmentVars? _$v;

  GCartItemModifierFragmentVarsBuilder();

  @override
  void replace(GCartItemModifierFragmentVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCartItemModifierFragmentVars;
  }

  @override
  void update(void Function(GCartItemModifierFragmentVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GCartItemModifierFragmentVars build() {
    final _$result = _$v ?? new _$GCartItemModifierFragmentVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
