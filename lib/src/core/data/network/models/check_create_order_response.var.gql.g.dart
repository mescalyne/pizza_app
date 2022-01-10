// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_create_order_response.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GCheckCreateOrderResponseFragmentVars>
    _$gCheckCreateOrderResponseFragmentVarsSerializer =
    new _$GCheckCreateOrderResponseFragmentVarsSerializer();

class _$GCheckCreateOrderResponseFragmentVarsSerializer
    implements StructuredSerializer<GCheckCreateOrderResponseFragmentVars> {
  @override
  final Iterable<Type> types = const [
    GCheckCreateOrderResponseFragmentVars,
    _$GCheckCreateOrderResponseFragmentVars
  ];
  @override
  final String wireName = 'GCheckCreateOrderResponseFragmentVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCheckCreateOrderResponseFragmentVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GCheckCreateOrderResponseFragmentVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GCheckCreateOrderResponseFragmentVarsBuilder().build();
  }
}

class _$GCheckCreateOrderResponseFragmentVars
    extends GCheckCreateOrderResponseFragmentVars {
  factory _$GCheckCreateOrderResponseFragmentVars(
          [void Function(GCheckCreateOrderResponseFragmentVarsBuilder)?
              updates]) =>
      (new GCheckCreateOrderResponseFragmentVarsBuilder()..update(updates))
          .build();

  _$GCheckCreateOrderResponseFragmentVars._() : super._();

  @override
  GCheckCreateOrderResponseFragmentVars rebuild(
          void Function(GCheckCreateOrderResponseFragmentVarsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCheckCreateOrderResponseFragmentVarsBuilder toBuilder() =>
      new GCheckCreateOrderResponseFragmentVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCheckCreateOrderResponseFragmentVars;
  }

  @override
  int get hashCode {
    return 558045614;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('GCheckCreateOrderResponseFragmentVars')
        .toString();
  }
}

class GCheckCreateOrderResponseFragmentVarsBuilder
    implements
        Builder<GCheckCreateOrderResponseFragmentVars,
            GCheckCreateOrderResponseFragmentVarsBuilder> {
  _$GCheckCreateOrderResponseFragmentVars? _$v;

  GCheckCreateOrderResponseFragmentVarsBuilder();

  @override
  void replace(GCheckCreateOrderResponseFragmentVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCheckCreateOrderResponseFragmentVars;
  }

  @override
  void update(
      void Function(GCheckCreateOrderResponseFragmentVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GCheckCreateOrderResponseFragmentVars build() {
    final _$result = _$v ?? new _$GCheckCreateOrderResponseFragmentVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
