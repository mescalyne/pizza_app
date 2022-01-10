// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_area_fragment.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GDeliveryAreaFragmentVars> _$gDeliveryAreaFragmentVarsSerializer =
    new _$GDeliveryAreaFragmentVarsSerializer();

class _$GDeliveryAreaFragmentVarsSerializer
    implements StructuredSerializer<GDeliveryAreaFragmentVars> {
  @override
  final Iterable<Type> types = const [
    GDeliveryAreaFragmentVars,
    _$GDeliveryAreaFragmentVars
  ];
  @override
  final String wireName = 'GDeliveryAreaFragmentVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GDeliveryAreaFragmentVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GDeliveryAreaFragmentVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GDeliveryAreaFragmentVarsBuilder().build();
  }
}

class _$GDeliveryAreaFragmentVars extends GDeliveryAreaFragmentVars {
  factory _$GDeliveryAreaFragmentVars(
          [void Function(GDeliveryAreaFragmentVarsBuilder)? updates]) =>
      (new GDeliveryAreaFragmentVarsBuilder()..update(updates)).build();

  _$GDeliveryAreaFragmentVars._() : super._();

  @override
  GDeliveryAreaFragmentVars rebuild(
          void Function(GDeliveryAreaFragmentVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDeliveryAreaFragmentVarsBuilder toBuilder() =>
      new GDeliveryAreaFragmentVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDeliveryAreaFragmentVars;
  }

  @override
  int get hashCode {
    return 154473045;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('GDeliveryAreaFragmentVars').toString();
  }
}

class GDeliveryAreaFragmentVarsBuilder
    implements
        Builder<GDeliveryAreaFragmentVars, GDeliveryAreaFragmentVarsBuilder> {
  _$GDeliveryAreaFragmentVars? _$v;

  GDeliveryAreaFragmentVarsBuilder();

  @override
  void replace(GDeliveryAreaFragmentVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GDeliveryAreaFragmentVars;
  }

  @override
  void update(void Function(GDeliveryAreaFragmentVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GDeliveryAreaFragmentVars build() {
    final _$result = _$v ?? new _$GDeliveryAreaFragmentVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
