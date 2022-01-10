// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i1;

part 'delivery_address_fragment.var.gql.g.dart';

abstract class GDeliveryAddressFragmentVars
    implements
        Built<GDeliveryAddressFragmentVars,
            GDeliveryAddressFragmentVarsBuilder> {
  GDeliveryAddressFragmentVars._();

  factory GDeliveryAddressFragmentVars(
          [Function(GDeliveryAddressFragmentVarsBuilder b) updates]) =
      _$GDeliveryAddressFragmentVars;

  static Serializer<GDeliveryAddressFragmentVars> get serializer =>
      _$gDeliveryAddressFragmentVarsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GDeliveryAddressFragmentVars.serializer, this) as Map<String, dynamic>);
  static GDeliveryAddressFragmentVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GDeliveryAddressFragmentVars.serializer, json);
}
