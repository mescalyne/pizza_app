// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i2;
import 'package:toto_mobile/src/core/data/network/models/toto.schema.schema.gql.dart'
    as _i1;

part 'delivery_area_fragment.data.gql.g.dart';

abstract class GDeliveryAreaFragment {
  String get G__typename;
  String get id;
  String get company_name;
  String get delivery_terminal_id;
  String get kitchen_terminal_id;
  String? get free_delivery;
  String? get delivery_product_id;
  _i1.GJsonData? get area;
  bool? get main_area;
  Map<String, dynamic> toJson();
}

abstract class GDeliveryAreaFragmentData
    implements
        Built<GDeliveryAreaFragmentData, GDeliveryAreaFragmentDataBuilder>,
        GDeliveryAreaFragment {
  GDeliveryAreaFragmentData._();

  factory GDeliveryAreaFragmentData(
          [Function(GDeliveryAreaFragmentDataBuilder b) updates]) =
      _$GDeliveryAreaFragmentData;

  static void _initializeBuilder(GDeliveryAreaFragmentDataBuilder b) =>
      b..G__typename = 'DeliveryArea';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get company_name;
  String get delivery_terminal_id;
  String get kitchen_terminal_id;
  String? get free_delivery;
  String? get delivery_product_id;
  _i1.GJsonData? get area;
  bool? get main_area;
  static Serializer<GDeliveryAreaFragmentData> get serializer =>
      _$gDeliveryAreaFragmentDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GDeliveryAreaFragmentData.serializer, this)
          as Map<String, dynamic>);
  static GDeliveryAreaFragmentData? fromJson(Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GDeliveryAreaFragmentData.serializer, json);
}
