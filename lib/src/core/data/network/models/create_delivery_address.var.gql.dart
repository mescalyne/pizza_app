// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i2;
import 'package:toto_mobile/src/core/data/network/models/toto.schema.schema.gql.dart'
    as _i1;

part 'create_delivery_address.var.gql.g.dart';

abstract class GCreateDeliveryAddressVars
    implements
        Built<GCreateDeliveryAddressVars, GCreateDeliveryAddressVarsBuilder> {
  GCreateDeliveryAddressVars._();

  factory GCreateDeliveryAddressVars(
          [Function(GCreateDeliveryAddressVarsBuilder b) updates]) =
      _$GCreateDeliveryAddressVars;

  _i1.GCreateDeliveryAddressInput? get input;
  static Serializer<GCreateDeliveryAddressVars> get serializer =>
      _$gCreateDeliveryAddressVarsSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
      GCreateDeliveryAddressVars.serializer, this) as Map<String, dynamic>);
  static GCreateDeliveryAddressVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GCreateDeliveryAddressVars.serializer, json);
}
