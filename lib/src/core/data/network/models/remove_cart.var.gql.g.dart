// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remove_cart.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GRemoveCartVars> _$gRemoveCartVarsSerializer =
    new _$GRemoveCartVarsSerializer();

class _$GRemoveCartVarsSerializer
    implements StructuredSerializer<GRemoveCartVars> {
  @override
  final Iterable<Type> types = const [GRemoveCartVars, _$GRemoveCartVars];
  @override
  final String wireName = 'GRemoveCartVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GRemoveCartVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GRemoveCartVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GRemoveCartVarsBuilder().build();
  }
}

class _$GRemoveCartVars extends GRemoveCartVars {
  factory _$GRemoveCartVars([void Function(GRemoveCartVarsBuilder)? updates]) =>
      (new GRemoveCartVarsBuilder()..update(updates)).build();

  _$GRemoveCartVars._() : super._();

  @override
  GRemoveCartVars rebuild(void Function(GRemoveCartVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GRemoveCartVarsBuilder toBuilder() =>
      new GRemoveCartVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GRemoveCartVars;
  }

  @override
  int get hashCode {
    return 560794994;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('GRemoveCartVars').toString();
  }
}

class GRemoveCartVarsBuilder
    implements Builder<GRemoveCartVars, GRemoveCartVarsBuilder> {
  _$GRemoveCartVars? _$v;

  GRemoveCartVarsBuilder();

  @override
  void replace(GRemoveCartVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GRemoveCartVars;
  }

  @override
  void update(void Function(GRemoveCartVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GRemoveCartVars build() {
    final _$result = _$v ?? new _$GRemoveCartVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
