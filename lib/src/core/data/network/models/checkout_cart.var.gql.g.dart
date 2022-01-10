// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checkout_cart.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GCheckoutCartVars> _$gCheckoutCartVarsSerializer =
    new _$GCheckoutCartVarsSerializer();

class _$GCheckoutCartVarsSerializer
    implements StructuredSerializer<GCheckoutCartVars> {
  @override
  final Iterable<Type> types = const [GCheckoutCartVars, _$GCheckoutCartVars];
  @override
  final String wireName = 'GCheckoutCartVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GCheckoutCartVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GCheckoutCartVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GCheckoutCartVarsBuilder().build();
  }
}

class _$GCheckoutCartVars extends GCheckoutCartVars {
  factory _$GCheckoutCartVars(
          [void Function(GCheckoutCartVarsBuilder)? updates]) =>
      (new GCheckoutCartVarsBuilder()..update(updates)).build();

  _$GCheckoutCartVars._() : super._();

  @override
  GCheckoutCartVars rebuild(void Function(GCheckoutCartVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCheckoutCartVarsBuilder toBuilder() =>
      new GCheckoutCartVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCheckoutCartVars;
  }

  @override
  int get hashCode {
    return 67570885;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('GCheckoutCartVars').toString();
  }
}

class GCheckoutCartVarsBuilder
    implements Builder<GCheckoutCartVars, GCheckoutCartVarsBuilder> {
  _$GCheckoutCartVars? _$v;

  GCheckoutCartVarsBuilder();

  @override
  void replace(GCheckoutCartVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCheckoutCartVars;
  }

  @override
  void update(void Function(GCheckoutCartVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GCheckoutCartVars build() {
    final _$result = _$v ?? new _$GCheckoutCartVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
