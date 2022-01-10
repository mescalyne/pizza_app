// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:toto_mobile/src/core/data/network/models/city_fragment.data.gql.dart'
    as _i2;
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i3;
import 'package:toto_mobile/src/core/data/network/models/terminal_fragment.data.gql.dart'
    as _i1;

part 'restaurants_fragment.data.gql.g.dart';

abstract class GRestaurantFragment {
  String get G__typename;
  String get id;
  String get name;
  String? get address;
  GRestaurantFragment_terminal_kitchen? get terminal_kitchen;
  GRestaurantFragment_terminal_delivery? get terminal_delivery;
  String? get latitude;
  String? get longitude;
  String? get open_at;
  String? get close_at;
  bool? get is_open;
  String? get delivery_open_at;
  String? get delivery_close_at;
  bool? get is_delivery_open;
  GRestaurantFragment_city? get city;
  Map<String, dynamic> toJson();
}

abstract class GRestaurantFragment_terminal_kitchen
    implements _i1.GTerminalFragment {
  String get G__typename;
  String get id;
  Map<String, dynamic> toJson();
}

abstract class GRestaurantFragment_terminal_delivery
    implements _i1.GTerminalFragment {
  String get G__typename;
  String get id;
  Map<String, dynamic> toJson();
}

abstract class GRestaurantFragment_city implements _i2.GCityFragment {
  String get G__typename;
  String get id;
  String get name;
  String? get prefix;
  String? get postal_code;
  String? get city_type;
  bool? get available;
  Map<String, dynamic> toJson();
}

abstract class GRestaurantFragmentData
    implements
        Built<GRestaurantFragmentData, GRestaurantFragmentDataBuilder>,
        GRestaurantFragment {
  GRestaurantFragmentData._();

  factory GRestaurantFragmentData(
          [Function(GRestaurantFragmentDataBuilder b) updates]) =
      _$GRestaurantFragmentData;

  static void _initializeBuilder(GRestaurantFragmentDataBuilder b) =>
      b..G__typename = 'Restaurant';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  String? get address;
  GRestaurantFragmentData_terminal_kitchen? get terminal_kitchen;
  GRestaurantFragmentData_terminal_delivery? get terminal_delivery;
  String? get latitude;
  String? get longitude;
  String? get open_at;
  String? get close_at;
  bool? get is_open;
  String? get delivery_open_at;
  String? get delivery_close_at;
  bool? get is_delivery_open;
  GRestaurantFragmentData_city? get city;
  static Serializer<GRestaurantFragmentData> get serializer =>
      _$gRestaurantFragmentDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i3.serializers.serializeWith(GRestaurantFragmentData.serializer, this)
          as Map<String, dynamic>);
  static GRestaurantFragmentData? fromJson(Map<String, dynamic> json) =>
      _i3.serializers.deserializeWith(GRestaurantFragmentData.serializer, json);
}

abstract class GRestaurantFragmentData_terminal_kitchen
    implements
        Built<GRestaurantFragmentData_terminal_kitchen,
            GRestaurantFragmentData_terminal_kitchenBuilder>,
        GRestaurantFragment_terminal_kitchen,
        _i1.GTerminalFragment {
  GRestaurantFragmentData_terminal_kitchen._();

  factory GRestaurantFragmentData_terminal_kitchen(
      [Function(GRestaurantFragmentData_terminal_kitchenBuilder b)
          updates]) = _$GRestaurantFragmentData_terminal_kitchen;

  static void _initializeBuilder(
          GRestaurantFragmentData_terminal_kitchenBuilder b) =>
      b..G__typename = 'Terminal';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  static Serializer<GRestaurantFragmentData_terminal_kitchen> get serializer =>
      _$gRestaurantFragmentDataTerminalKitchenSerializer;
  Map<String, dynamic> toJson() => (_i3.serializers.serializeWith(
          GRestaurantFragmentData_terminal_kitchen.serializer, this)
      as Map<String, dynamic>);
  static GRestaurantFragmentData_terminal_kitchen? fromJson(
          Map<String, dynamic> json) =>
      _i3.serializers.deserializeWith(
          GRestaurantFragmentData_terminal_kitchen.serializer, json);
}

abstract class GRestaurantFragmentData_terminal_delivery
    implements
        Built<GRestaurantFragmentData_terminal_delivery,
            GRestaurantFragmentData_terminal_deliveryBuilder>,
        GRestaurantFragment_terminal_delivery,
        _i1.GTerminalFragment {
  GRestaurantFragmentData_terminal_delivery._();

  factory GRestaurantFragmentData_terminal_delivery(
      [Function(GRestaurantFragmentData_terminal_deliveryBuilder b)
          updates]) = _$GRestaurantFragmentData_terminal_delivery;

  static void _initializeBuilder(
          GRestaurantFragmentData_terminal_deliveryBuilder b) =>
      b..G__typename = 'Terminal';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  static Serializer<GRestaurantFragmentData_terminal_delivery> get serializer =>
      _$gRestaurantFragmentDataTerminalDeliverySerializer;
  Map<String, dynamic> toJson() => (_i3.serializers.serializeWith(
          GRestaurantFragmentData_terminal_delivery.serializer, this)
      as Map<String, dynamic>);
  static GRestaurantFragmentData_terminal_delivery? fromJson(
          Map<String, dynamic> json) =>
      _i3.serializers.deserializeWith(
          GRestaurantFragmentData_terminal_delivery.serializer, json);
}

abstract class GRestaurantFragmentData_city
    implements
        Built<GRestaurantFragmentData_city,
            GRestaurantFragmentData_cityBuilder>,
        GRestaurantFragment_city,
        _i2.GCityFragment {
  GRestaurantFragmentData_city._();

  factory GRestaurantFragmentData_city(
          [Function(GRestaurantFragmentData_cityBuilder b) updates]) =
      _$GRestaurantFragmentData_city;

  static void _initializeBuilder(GRestaurantFragmentData_cityBuilder b) =>
      b..G__typename = 'City';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  String? get prefix;
  String? get postal_code;
  String? get city_type;
  bool? get available;
  static Serializer<GRestaurantFragmentData_city> get serializer =>
      _$gRestaurantFragmentDataCitySerializer;
  Map<String, dynamic> toJson() => (_i3.serializers.serializeWith(
      GRestaurantFragmentData_city.serializer, this) as Map<String, dynamic>);
  static GRestaurantFragmentData_city? fromJson(Map<String, dynamic> json) =>
      _i3.serializers
          .deserializeWith(GRestaurantFragmentData_city.serializer, json);
}
