// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_delivery_address.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetAllDeliveryAddressesVars>
    _$gGetAllDeliveryAddressesVarsSerializer =
    new _$GGetAllDeliveryAddressesVarsSerializer();

class _$GGetAllDeliveryAddressesVarsSerializer
    implements StructuredSerializer<GGetAllDeliveryAddressesVars> {
  @override
  final Iterable<Type> types = const [
    GGetAllDeliveryAddressesVars,
    _$GGetAllDeliveryAddressesVars
  ];
  @override
  final String wireName = 'GGetAllDeliveryAddressesVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetAllDeliveryAddressesVars object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  GGetAllDeliveryAddressesVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new GGetAllDeliveryAddressesVarsBuilder().build();
  }
}

class _$GGetAllDeliveryAddressesVars extends GGetAllDeliveryAddressesVars {
  factory _$GGetAllDeliveryAddressesVars(
          [void Function(GGetAllDeliveryAddressesVarsBuilder)? updates]) =>
      (new GGetAllDeliveryAddressesVarsBuilder()..update(updates)).build();

  _$GGetAllDeliveryAddressesVars._() : super._();

  @override
  GGetAllDeliveryAddressesVars rebuild(
          void Function(GGetAllDeliveryAddressesVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetAllDeliveryAddressesVarsBuilder toBuilder() =>
      new GGetAllDeliveryAddressesVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetAllDeliveryAddressesVars;
  }

  @override
  int get hashCode {
    return 781062666;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('GGetAllDeliveryAddressesVars')
        .toString();
  }
}

class GGetAllDeliveryAddressesVarsBuilder
    implements
        Builder<GGetAllDeliveryAddressesVars,
            GGetAllDeliveryAddressesVarsBuilder> {
  _$GGetAllDeliveryAddressesVars? _$v;

  GGetAllDeliveryAddressesVarsBuilder();

  @override
  void replace(GGetAllDeliveryAddressesVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetAllDeliveryAddressesVars;
  }

  @override
  void update(void Function(GGetAllDeliveryAddressesVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetAllDeliveryAddressesVars build() {
    final _$result = _$v ?? new _$GGetAllDeliveryAddressesVars._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
