// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:toto_mobile/src/core/data/network/models/city_fragment.data.gql.dart'
    as _i3;
import 'package:toto_mobile/src/core/data/network/models/delivery_address_fragment.data.gql.dart'
    as _i2;
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i1;

part 'create_delivery_address.data.gql.g.dart';

abstract class GCreateDeliveryAddressData
    implements
        Built<GCreateDeliveryAddressData, GCreateDeliveryAddressDataBuilder> {
  GCreateDeliveryAddressData._();

  factory GCreateDeliveryAddressData(
          [Function(GCreateDeliveryAddressDataBuilder b) updates]) =
      _$GCreateDeliveryAddressData;

  static void _initializeBuilder(GCreateDeliveryAddressDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GCreateDeliveryAddressData_createDeliveryAddress? get createDeliveryAddress;
  static Serializer<GCreateDeliveryAddressData> get serializer =>
      _$gCreateDeliveryAddressDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GCreateDeliveryAddressData.serializer, this) as Map<String, dynamic>);
  static GCreateDeliveryAddressData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GCreateDeliveryAddressData.serializer, json);
}

abstract class GCreateDeliveryAddressData_createDeliveryAddress
    implements
        Built<GCreateDeliveryAddressData_createDeliveryAddress,
            GCreateDeliveryAddressData_createDeliveryAddressBuilder>,
        _i2.GDeliveryAddressFragment {
  GCreateDeliveryAddressData_createDeliveryAddress._();

  factory GCreateDeliveryAddressData_createDeliveryAddress(
      [Function(GCreateDeliveryAddressData_createDeliveryAddressBuilder b)
          updates]) = _$GCreateDeliveryAddressData_createDeliveryAddress;

  static void _initializeBuilder(
          GCreateDeliveryAddressData_createDeliveryAddressBuilder b) =>
      b..G__typename = 'DeliveryAddress';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  String? get city_name;
  String get street;
  String? get home;
  String? get housing;
  String? get apartment;
  String? get comment;
  double? get latitude;
  double? get longitude;
  GCreateDeliveryAddressData_createDeliveryAddress_city? get city;
  bool? get address_in_zone;
  static Serializer<GCreateDeliveryAddressData_createDeliveryAddress>
      get serializer =>
          _$gCreateDeliveryAddressDataCreateDeliveryAddressSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GCreateDeliveryAddressData_createDeliveryAddress.serializer, this)
      as Map<String, dynamic>);
  static GCreateDeliveryAddressData_createDeliveryAddress? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GCreateDeliveryAddressData_createDeliveryAddress.serializer, json);
}

abstract class GCreateDeliveryAddressData_createDeliveryAddress_city
    implements
        Built<GCreateDeliveryAddressData_createDeliveryAddress_city,
            GCreateDeliveryAddressData_createDeliveryAddress_cityBuilder>,
        _i2.GDeliveryAddressFragment_city,
        _i3.GCityFragment {
  GCreateDeliveryAddressData_createDeliveryAddress_city._();

  factory GCreateDeliveryAddressData_createDeliveryAddress_city(
      [Function(GCreateDeliveryAddressData_createDeliveryAddress_cityBuilder b)
          updates]) = _$GCreateDeliveryAddressData_createDeliveryAddress_city;

  static void _initializeBuilder(
          GCreateDeliveryAddressData_createDeliveryAddress_cityBuilder b) =>
      b..G__typename = 'City';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  String? get prefix;
  String? get postal_code;
  String? get city_type;
  bool? get available;
  static Serializer<GCreateDeliveryAddressData_createDeliveryAddress_city>
      get serializer =>
          _$gCreateDeliveryAddressDataCreateDeliveryAddressCitySerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GCreateDeliveryAddressData_createDeliveryAddress_city.serializer,
      this) as Map<String, dynamic>);
  static GCreateDeliveryAddressData_createDeliveryAddress_city? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GCreateDeliveryAddressData_createDeliveryAddress_city.serializer,
          json);
}
