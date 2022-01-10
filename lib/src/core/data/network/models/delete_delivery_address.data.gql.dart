// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i1;

part 'delete_delivery_address.data.gql.g.dart';

abstract class GDeleteDeliveryAddressData
    implements
        Built<GDeleteDeliveryAddressData, GDeleteDeliveryAddressDataBuilder> {
  GDeleteDeliveryAddressData._();

  factory GDeleteDeliveryAddressData(
          [Function(GDeleteDeliveryAddressDataBuilder b) updates]) =
      _$GDeleteDeliveryAddressData;

  static void _initializeBuilder(GDeleteDeliveryAddressDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool? get deleteDeliveryAddress;
  static Serializer<GDeleteDeliveryAddressData> get serializer =>
      _$gDeleteDeliveryAddressDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GDeleteDeliveryAddressData.serializer, this) as Map<String, dynamic>);
  static GDeleteDeliveryAddressData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GDeleteDeliveryAddressData.serializer, json);
}
