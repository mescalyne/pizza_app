// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checkout_cart_fragment.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GCheckoutResponseFragmentVars>
    _$gCheckoutResponseFragmentVarsSerializer =
    new _$GCheckoutResponseFragmentVarsSerializer();

class _$GCheckoutResponseFragmentVarsSerializer
    implements StructuredSerializer<GCheckoutResponseFragmentVars> {
  @override
  final Iterable<Type> types = const [
    GCheckoutResponseFragmentVars,
    _$GCheckoutResponseFragmentVars
  ];
  @override
  final String wireName = 'GCheckoutResponseFragmentVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCheckoutResponseFragmentVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GCheckoutResponseFragmentVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GCheckoutResponseFragmentVarsBuilder().build();
  }
}

class _$GCheckoutResponseFragmentVars extends GCheckoutResponseFragmentVars {
  factory _$GCheckoutResponseFragmentVars(
          [void Function(GCheckoutResponseFragmentVarsBuilder)? updates]) =>
      (new GCheckoutResponseFragmentVarsBuilder()..update(updates)).build();

  _$GCheckoutResponseFragmentVars._() : super._();

  @override
  GCheckoutResponseFragmentVars rebuild(
          void Function(GCheckoutResponseFragmentVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCheckoutResponseFragmentVarsBuilder toBuilder() =>
      new GCheckoutResponseFragmentVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCheckoutResponseFragmentVars;
  }

  @override
  int get hashCode {
    return 151946925;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('GCheckoutResponseFragmentVars')
        .toString();
  }
}

class GCheckoutResponseFragmentVarsBuilder
    implements
        Builder<GCheckoutResponseFragmentVars,
            GCheckoutResponseFragmentVarsBuilder> {
  _$GCheckoutResponseFragmentVars? _$v;

  GCheckoutResponseFragmentVarsBuilder();

  @override
  void replace(GCheckoutResponseFragmentVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCheckoutResponseFragmentVars;
  }

  @override
  void update(void Function(GCheckoutResponseFragmentVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GCheckoutResponseFragmentVars build() {
    final _$result = _$v ?? new _$GCheckoutResponseFragmentVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
