// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_address_fragment.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GDeliveryAddressFragmentVars>
    _$gDeliveryAddressFragmentVarsSerializer =
    new _$GDeliveryAddressFragmentVarsSerializer();

class _$GDeliveryAddressFragmentVarsSerializer
    implements StructuredSerializer<GDeliveryAddressFragmentVars> {
  @override
  final Iterable<Type> types = const [
    GDeliveryAddressFragmentVars,
    _$GDeliveryAddressFragmentVars
  ];
  @override
  final String wireName = 'GDeliveryAddressFragmentVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GDeliveryAddressFragmentVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GDeliveryAddressFragmentVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GDeliveryAddressFragmentVarsBuilder().build();
  }
}

class _$GDeliveryAddressFragmentVars extends GDeliveryAddressFragmentVars {
  factory _$GDeliveryAddressFragmentVars(
          [void Function(GDeliveryAddressFragmentVarsBuilder)? updates]) =>
      (new GDeliveryAddressFragmentVarsBuilder()..update(updates)).build();

  _$GDeliveryAddressFragmentVars._() : super._();

  @override
  GDeliveryAddressFragmentVars rebuild(
          void Function(GDeliveryAddressFragmentVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDeliveryAddressFragmentVarsBuilder toBuilder() =>
      new GDeliveryAddressFragmentVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDeliveryAddressFragmentVars;
  }

  @override
  int get hashCode {
    return 387950838;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('GDeliveryAddressFragmentVars')
        .toString();
  }
}

class GDeliveryAddressFragmentVarsBuilder
    implements
        Builder<GDeliveryAddressFragmentVars,
            GDeliveryAddressFragmentVarsBuilder> {
  _$GDeliveryAddressFragmentVars? _$v;

  GDeliveryAddressFragmentVarsBuilder();

  @override
  void replace(GDeliveryAddressFragmentVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GDeliveryAddressFragmentVars;
  }

  @override
  void update(void Function(GDeliveryAddressFragmentVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GDeliveryAddressFragmentVars build() {
    final _$result = _$v ?? new _$GDeliveryAddressFragmentVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
