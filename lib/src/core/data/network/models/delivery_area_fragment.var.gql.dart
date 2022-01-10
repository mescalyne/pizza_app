// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i1;

part 'delivery_area_fragment.var.gql.g.dart';

abstract class GDeliveryAreaFragmentVars
    implements
        Built<GDeliveryAreaFragmentVars, GDeliveryAreaFragmentVarsBuilder> {
  GDeliveryAreaFragmentVars._();

  factory GDeliveryAreaFragmentVars(
          [Function(GDeliveryAreaFragmentVarsBuilder b) updates]) =
      _$GDeliveryAreaFragmentVars;

  static Serializer<GDeliveryAreaFragmentVars> get serializer =>
      _$gDeliveryAreaFragmentVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GDeliveryAreaFragmentVars.serializer, this)
          as Map<String, dynamic>);
  static GDeliveryAreaFragmentVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GDeliveryAreaFragmentVars.serializer, json);
}
