// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:toto_mobile/src/core/data/network/models/city_fragment.data.gql.dart'
    as _i1;
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i2;

part 'delivery_address_fragment.data.gql.g.dart';

abstract class GDeliveryAddressFragment {
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
  GDeliveryAddressFragment_city? get city;
  bool? get address_in_zone;
  Map<String, dynamic> toJson();
}

abstract class GDeliveryAddressFragment_city implements _i1.GCityFragment {
  String get G__typename;
  String get id;
  String get name;
  String? get prefix;
  String? get postal_code;
  String? get city_type;
  bool? get available;
  Map<String, dynamic> toJson();
}

abstract class GDeliveryAddressFragmentData
    implements
        Built<GDeliveryAddressFragmentData,
            GDeliveryAddressFragmentDataBuilder>,
        GDeliveryAddressFragment {
  GDeliveryAddressFragmentData._();

  factory GDeliveryAddressFragmentData(
          [Function(GDeliveryAddressFragmentDataBuilder b) updates]) =
      _$GDeliveryAddressFragmentData;

  static void _initializeBuilder(GDeliveryAddressFragmentDataBuilder b) =>
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
  GDeliveryAddressFragmentData_city? get city;
  bool? get address_in_zone;
  static Serializer<GDeliveryAddressFragmentData> get serializer =>
      _$gDeliveryAddressFragmentDataSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
      GDeliveryAddressFragmentData.serializer, this) as Map<String, dynamic>);
  static GDeliveryAddressFragmentData? fromJson(Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GDeliveryAddressFragmentData.serializer, json);
}

abstract class GDeliveryAddressFragmentData_city
    implements
        Built<GDeliveryAddressFragmentData_city,
            GDeliveryAddressFragmentData_cityBuilder>,
        GDeliveryAddressFragment_city,
        _i1.GCityFragment {
  GDeliveryAddressFragmentData_city._();

  factory GDeliveryAddressFragmentData_city(
          [Function(GDeliveryAddressFragmentData_cityBuilder b) updates]) =
      _$GDeliveryAddressFragmentData_city;

  static void _initializeBuilder(GDeliveryAddressFragmentData_cityBuilder b) =>
      b..G__typename = 'City';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  String? get prefix;
  String? get postal_code;
  String? get city_type;
  bool? get available;
  static Serializer<GDeliveryAddressFragmentData_city> get serializer =>
      _$gDeliveryAddressFragmentDataCitySerializer;
  Map<String, dynamic> toJson() => (_i2.serializers
          .serializeWith(GDeliveryAddressFragmentData_city.serializer, this)
      as Map<String, dynamic>);
  static GDeliveryAddressFragmentData_city? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GDeliveryAddressFragmentData_city.serializer, json);
}
