// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:toto_mobile/src/core/data/network/models/city_fragment.data.gql.dart'
    as _i3;
import 'package:toto_mobile/src/core/data/network/models/delivery_address_fragment.data.gql.dart'
    as _i2;
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i1;

part 'get_all_delivery_address.data.gql.g.dart';

abstract class GGetAllDeliveryAddressesData
    implements
        Built<GGetAllDeliveryAddressesData,
            GGetAllDeliveryAddressesDataBuilder> {
  GGetAllDeliveryAddressesData._();

  factory GGetAllDeliveryAddressesData(
          [Function(GGetAllDeliveryAddressesDataBuilder b) updates]) =
      _$GGetAllDeliveryAddressesData;

  static void _initializeBuilder(GGetAllDeliveryAddressesDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GGetAllDeliveryAddressesData_getAllDeliveryAddresses>?
      get getAllDeliveryAddresses;
  static Serializer<GGetAllDeliveryAddressesData> get serializer =>
      _$gGetAllDeliveryAddressesDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetAllDeliveryAddressesData.serializer, this) as Map<String, dynamic>);
  static GGetAllDeliveryAddressesData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GGetAllDeliveryAddressesData.serializer, json);
}

abstract class GGetAllDeliveryAddressesData_getAllDeliveryAddresses
    implements
        Built<GGetAllDeliveryAddressesData_getAllDeliveryAddresses,
            GGetAllDeliveryAddressesData_getAllDeliveryAddressesBuilder>,
        _i2.GDeliveryAddressFragment {
  GGetAllDeliveryAddressesData_getAllDeliveryAddresses._();

  factory GGetAllDeliveryAddressesData_getAllDeliveryAddresses(
      [Function(GGetAllDeliveryAddressesData_getAllDeliveryAddressesBuilder b)
          updates]) = _$GGetAllDeliveryAddressesData_getAllDeliveryAddresses;

  static void _initializeBuilder(
          GGetAllDeliveryAddressesData_getAllDeliveryAddressesBuilder b) =>
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
  GGetAllDeliveryAddressesData_getAllDeliveryAddresses_city? get city;
  bool? get address_in_zone;
  static Serializer<GGetAllDeliveryAddressesData_getAllDeliveryAddresses>
      get serializer =>
          _$gGetAllDeliveryAddressesDataGetAllDeliveryAddressesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GGetAllDeliveryAddressesData_getAllDeliveryAddresses.serializer, this)
      as Map<String, dynamic>);
  static GGetAllDeliveryAddressesData_getAllDeliveryAddresses? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GGetAllDeliveryAddressesData_getAllDeliveryAddresses.serializer,
          json);
}

abstract class GGetAllDeliveryAddressesData_getAllDeliveryAddresses_city
    implements
        Built<GGetAllDeliveryAddressesData_getAllDeliveryAddresses_city,
            GGetAllDeliveryAddressesData_getAllDeliveryAddresses_cityBuilder>,
        _i2.GDeliveryAddressFragment_city,
        _i3.GCityFragment {
  GGetAllDeliveryAddressesData_getAllDeliveryAddresses_city._();

  factory GGetAllDeliveryAddressesData_getAllDeliveryAddresses_city(
      [Function(
              GGetAllDeliveryAddressesData_getAllDeliveryAddresses_cityBuilder
                  b)
          updates]) = _$GGetAllDeliveryAddressesData_getAllDeliveryAddresses_city;

  static void _initializeBuilder(
          GGetAllDeliveryAddressesData_getAllDeliveryAddresses_cityBuilder b) =>
      b..G__typename = 'City';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  String? get prefix;
  String? get postal_code;
  String? get city_type;
  bool? get available;
  static Serializer<GGetAllDeliveryAddressesData_getAllDeliveryAddresses_city>
      get serializer =>
          _$gGetAllDeliveryAddressesDataGetAllDeliveryAddressesCitySerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetAllDeliveryAddressesData_getAllDeliveryAddresses_city.serializer,
      this) as Map<String, dynamic>);
  static GGetAllDeliveryAddressesData_getAllDeliveryAddresses_city? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GGetAllDeliveryAddressesData_getAllDeliveryAddresses_city.serializer,
          json);
}
