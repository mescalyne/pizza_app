// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i1;

part 'delete_delivery_address.var.gql.g.dart';

abstract class GDeleteDeliveryAddressVars
    implements
        Built<GDeleteDeliveryAddressVars, GDeleteDeliveryAddressVarsBuilder> {
  GDeleteDeliveryAddressVars._();

  factory GDeleteDeliveryAddressVars(
          [Function(GDeleteDeliveryAddressVarsBuilder b) updates]) =
      _$GDeleteDeliveryAddressVars;

  int get id;
  static Serializer<GDeleteDeliveryAddressVars> get serializer =>
      _$gDeleteDeliveryAddressVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GDeleteDeliveryAddressVars.serializer, this) as Map<String, dynamic>);
  static GDeleteDeliveryAddressVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GDeleteDeliveryAddressVars.serializer, json);
}
