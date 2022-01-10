// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:toto_mobile/src/core/data/network/models/city_fragment.data.gql.dart'
    as _i4;
import 'package:toto_mobile/src/core/data/network/models/restaurants_fragment.data.gql.dart'
    as _i2;
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i1;
import 'package:toto_mobile/src/core/data/network/models/terminal_fragment.data.gql.dart'
    as _i3;

part 'get_restaurant.data.gql.g.dart';

abstract class GGetRestaurantData
    implements Built<GGetRestaurantData, GGetRestaurantDataBuilder> {
  GGetRestaurantData._();

  factory GGetRestaurantData([Function(GGetRestaurantDataBuilder b) updates]) =
      _$GGetRestaurantData;

  static void _initializeBuilder(GGetRestaurantDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GGetRestaurantData_getRestaurant? get getRestaurant;
  static Serializer<GGetRestaurantData> get serializer =>
      _$gGetRestaurantDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GGetRestaurantData.serializer, this)
          as Map<String, dynamic>);
  static GGetRestaurantData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GGetRestaurantData.serializer, json);
}

abstract class GGetRestaurantData_getRestaurant
    implements
        Built<GGetRestaurantData_getRestaurant,
            GGetRestaurantData_getRestaurantBuilder>,
        _i2.GRestaurantFragment {
  GGetRestaurantData_getRestaurant._();

  factory GGetRestaurantData_getRestaurant(
          [Function(GGetRestaurantData_getRestaurantBuilder b) updates]) =
      _$GGetRestaurantData_getRestaurant;

  static void _initializeBuilder(GGetRestaurantData_getRestaurantBuilder b) =>
      b..G__typename = 'Restaurant';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  String? get address;
  GGetRestaurantData_getRestaurant_terminal_kitchen? get terminal_kitchen;
  GGetRestaurantData_getRestaurant_terminal_delivery? get terminal_delivery;
  String? get latitude;
  String? get longitude;
  String? get open_at;
  String? get close_at;
  bool? get is_open;
  String? get delivery_open_at;
  String? get delivery_close_at;
  bool? get is_delivery_open;
  GGetRestaurantData_getRestaurant_city? get city;
  static Serializer<GGetRestaurantData_getRestaurant> get serializer =>
      _$gGetRestaurantDataGetRestaurantSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GGetRestaurantData_getRestaurant.serializer, this)
      as Map<String, dynamic>);
  static GGetRestaurantData_getRestaurant? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GGetRestaurantData_getRestaurant.serializer, json);
}

abstract class GGetRestaurantData_getRestaurant_terminal_kitchen
    implements
        Built<GGetRestaurantData_getRestaurant_terminal_kitchen,
            GGetRestaurantData_getRestaurant_terminal_kitchenBuilder>,
        _i2.GRestaurantFragment_terminal_kitchen,
        _i3.GTerminalFragment {
  GGetRestaurantData_getRestaurant_terminal_kitchen._();

  factory GGetRestaurantData_getRestaurant_terminal_kitchen(
      [Function(GGetRestaurantData_getRestaurant_terminal_kitchenBuilder b)
          updates]) = _$GGetRestaurantData_getRestaurant_terminal_kitchen;

  static void _initializeBuilder(
          GGetRestaurantData_getRestaurant_terminal_kitchenBuilder b) =>
      b..G__typename = 'Terminal';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  static Serializer<GGetRestaurantData_getRestaurant_terminal_kitchen>
      get serializer =>
          _$gGetRestaurantDataGetRestaurantTerminalKitchenSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GGetRestaurantData_getRestaurant_terminal_kitchen.serializer, this)
      as Map<String, dynamic>);
  static GGetRestaurantData_getRestaurant_terminal_kitchen? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GGetRestaurantData_getRestaurant_terminal_kitchen.serializer, json);
}

abstract class GGetRestaurantData_getRestaurant_terminal_delivery
    implements
        Built<GGetRestaurantData_getRestaurant_terminal_delivery,
            GGetRestaurantData_getRestaurant_terminal_deliveryBuilder>,
        _i2.GRestaurantFragment_terminal_delivery,
        _i3.GTerminalFragment {
  GGetRestaurantData_getRestaurant_terminal_delivery._();

  factory GGetRestaurantData_getRestaurant_terminal_delivery(
      [Function(GGetRestaurantData_getRestaurant_terminal_deliveryBuilder b)
          updates]) = _$GGetRestaurantData_getRestaurant_terminal_delivery;

  static void _initializeBuilder(
          GGetRestaurantData_getRestaurant_terminal_deliveryBuilder b) =>
      b..G__typename = 'Terminal';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  static Serializer<GGetRestaurantData_getRestaurant_terminal_delivery>
      get serializer =>
          _$gGetRestaurantDataGetRestaurantTerminalDeliverySerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GGetRestaurantData_getRestaurant_terminal_delivery.serializer, this)
      as Map<String, dynamic>);
  static GGetRestaurantData_getRestaurant_terminal_delivery? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GGetRestaurantData_getRestaurant_terminal_delivery.serializer, json);
}

abstract class GGetRestaurantData_getRestaurant_city
    implements
        Built<GGetRestaurantData_getRestaurant_city,
            GGetRestaurantData_getRestaurant_cityBuilder>,
        _i2.GRestaurantFragment_city,
        _i4.GCityFragment {
  GGetRestaurantData_getRestaurant_city._();

  factory GGetRestaurantData_getRestaurant_city(
          [Function(GGetRestaurantData_getRestaurant_cityBuilder b) updates]) =
      _$GGetRestaurantData_getRestaurant_city;

  static void _initializeBuilder(
          GGetRestaurantData_getRestaurant_cityBuilder b) =>
      b..G__typename = 'City';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  String? get prefix;
  String? get postal_code;
  String? get city_type;
  bool? get available;
  static Serializer<GGetRestaurantData_getRestaurant_city> get serializer =>
      _$gGetRestaurantDataGetRestaurantCitySerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GGetRestaurantData_getRestaurant_city.serializer, this)
      as Map<String, dynamic>);
  static GGetRestaurantData_getRestaurant_city? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GGetRestaurantData_getRestaurant_city.serializer, json);
}
