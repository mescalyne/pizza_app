// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i1;

part 'get_all_delivery_address.var.gql.g.dart';

abstract class GGetAllDeliveryAddressesVars
    implements
        Built<GGetAllDeliveryAddressesVars,
            GGetAllDeliveryAddressesVarsBuilder> {
  GGetAllDeliveryAddressesVars._();

  factory GGetAllDeliveryAddressesVars(
          [Function(GGetAllDeliveryAddressesVarsBuilder b) updates]) =
      _$GGetAllDeliveryAddressesVars;

  static Serializer<GGetAllDeliveryAddressesVars> get serializer =>
      _$gGetAllDeliveryAddressesVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetAllDeliveryAddressesVars.serializer, this) as Map<String, dynamic>);
  static GGetAllDeliveryAddressesVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GGetAllDeliveryAddressesVars.serializer, json);
}
