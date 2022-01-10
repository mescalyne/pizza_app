// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_compaigns.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetCompaignsVars> _$gGetCompaignsVarsSerializer =
    new _$GGetCompaignsVarsSerializer();

class _$GGetCompaignsVarsSerializer
    implements StructuredSerializer<GGetCompaignsVars> {
  @override
  final Iterable<Type> types = const [GGetCompaignsVars, _$GGetCompaignsVars];
  @override
  final String wireName = 'GGetCompaignsVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GGetCompaignsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GGetCompaignsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GGetCompaignsVarsBuilder().build();
  }
}

class _$GGetCompaignsVars extends GGetCompaignsVars {
  factory _$GGetCompaignsVars(
          [void Function(GGetCompaignsVarsBuilder)? updates]) =>
      (new GGetCompaignsVarsBuilder()..update(updates)).build();

  _$GGetCompaignsVars._() : super._();

  @override
  GGetCompaignsVars rebuild(void Function(GGetCompaignsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetCompaignsVarsBuilder toBuilder() =>
      new GGetCompaignsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetCompaignsVars;
  }

  @override
  int get hashCode {
    return 143319075;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('GGetCompaignsVars').toString();
  }
}

class GGetCompaignsVarsBuilder
    implements Builder<GGetCompaignsVars, GGetCompaignsVarsBuilder> {
  _$GGetCompaignsVars? _$v;

  GGetCompaignsVarsBuilder();

  @override
  void replace(GGetCompaignsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetCompaignsVars;
  }

  @override
  void update(void Function(GGetCompaignsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetCompaignsVars build() {
    final _$result = _$v ?? new _$GGetCompaignsVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
