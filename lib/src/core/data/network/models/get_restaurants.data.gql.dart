// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_collection/built_collection.dart';
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

part 'get_restaurants.data.gql.g.dart';

abstract class GGetRestaurantsQueryData
    implements
        Built<GGetRestaurantsQueryData, GGetRestaurantsQueryDataBuilder> {
  GGetRestaurantsQueryData._();

  factory GGetRestaurantsQueryData(
          [Function(GGetRestaurantsQueryDataBuilder b) updates]) =
      _$GGetRestaurantsQueryData;

  static void _initializeBuilder(GGetRestaurantsQueryDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GGetRestaurantsQueryData_getRestaurants>? get getRestaurants;
  static Serializer<GGetRestaurantsQueryData> get serializer =>
      _$gGetRestaurantsQueryDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GGetRestaurantsQueryData.serializer, this)
          as Map<String, dynamic>);
  static GGetRestaurantsQueryData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GGetRestaurantsQueryData.serializer, json);
}

abstract class GGetRestaurantsQueryData_getRestaurants
    implements
        Built<GGetRestaurantsQueryData_getRestaurants,
            GGetRestaurantsQueryData_getRestaurantsBuilder>,
        _i2.GRestaurantFragment {
  GGetRestaurantsQueryData_getRestaurants._();

  factory GGetRestaurantsQueryData_getRestaurants(
      [Function(GGetRestaurantsQueryData_getRestaurantsBuilder b)
          updates]) = _$GGetRestaurantsQueryData_getRestaurants;

  static void _initializeBuilder(
          GGetRestaurantsQueryData_getRestaurantsBuilder b) =>
      b..G__typename = 'Restaurant';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  String? get address;
  GGetRestaurantsQueryData_getRestaurants_terminal_kitchen?
      get terminal_kitchen;
  GGetRestaurantsQueryData_getRestaurants_terminal_delivery?
      get terminal_delivery;
  String? get latitude;
  String? get longitude;
  String? get open_at;
  String? get close_at;
  bool? get is_open;
  String? get delivery_open_at;
  String? get delivery_close_at;
  bool? get is_delivery_open;
  GGetRestaurantsQueryData_getRestaurants_city? get city;
  static Serializer<GGetRestaurantsQueryData_getRestaurants> get serializer =>
      _$gGetRestaurantsQueryDataGetRestaurantsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GGetRestaurantsQueryData_getRestaurants.serializer, this)
      as Map<String, dynamic>);
  static GGetRestaurantsQueryData_getRestaurants? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GGetRestaurantsQueryData_getRestaurants.serializer, json);
}

abstract class GGetRestaurantsQueryData_getRestaurants_terminal_kitchen
    implements
        Built<GGetRestaurantsQueryData_getRestaurants_terminal_kitchen,
            GGetRestaurantsQueryData_getRestaurants_terminal_kitchenBuilder>,
        _i2.GRestaurantFragment_terminal_kitchen,
        _i3.GTerminalFragment {
  GGetRestaurantsQueryData_getRestaurants_terminal_kitchen._();

  factory GGetRestaurantsQueryData_getRestaurants_terminal_kitchen(
      [Function(
              GGetRestaurantsQueryData_getRestaurants_terminal_kitchenBuilder b)
          updates]) = _$GGetRestaurantsQueryData_getRestaurants_terminal_kitchen;

  static void _initializeBuilder(
          GGetRestaurantsQueryData_getRestaurants_terminal_kitchenBuilder b) =>
      b..G__typename = 'Terminal';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  static Serializer<GGetRestaurantsQueryData_getRestaurants_terminal_kitchen>
      get serializer =>
          _$gGetRestaurantsQueryDataGetRestaurantsTerminalKitchenSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetRestaurantsQueryData_getRestaurants_terminal_kitchen.serializer,
      this) as Map<String, dynamic>);
  static GGetRestaurantsQueryData_getRestaurants_terminal_kitchen? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GGetRestaurantsQueryData_getRestaurants_terminal_kitchen.serializer,
          json);
}

abstract class GGetRestaurantsQueryData_getRestaurants_terminal_delivery
    implements
        Built<GGetRestaurantsQueryData_getRestaurants_terminal_delivery,
            GGetRestaurantsQueryData_getRestaurants_terminal_deliveryBuilder>,
        _i2.GRestaurantFragment_terminal_delivery,
        _i3.GTerminalFragment {
  GGetRestaurantsQueryData_getRestaurants_terminal_delivery._();

  factory GGetRestaurantsQueryData_getRestaurants_terminal_delivery(
      [Function(
              GGetRestaurantsQueryData_getRestaurants_terminal_deliveryBuilder
                  b)
          updates]) = _$GGetRestaurantsQueryData_getRestaurants_terminal_delivery;

  static void _initializeBuilder(
          GGetRestaurantsQueryData_getRestaurants_terminal_deliveryBuilder b) =>
      b..G__typename = 'Terminal';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  static Serializer<GGetRestaurantsQueryData_getRestaurants_terminal_delivery>
      get serializer =>
          _$gGetRestaurantsQueryDataGetRestaurantsTerminalDeliverySerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetRestaurantsQueryData_getRestaurants_terminal_delivery.serializer,
      this) as Map<String, dynamic>);
  static GGetRestaurantsQueryData_getRestaurants_terminal_delivery? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GGetRestaurantsQueryData_getRestaurants_terminal_delivery.serializer,
          json);
}

abstract class GGetRestaurantsQueryData_getRestaurants_city
    implements
        Built<GGetRestaurantsQueryData_getRestaurants_city,
            GGetRestaurantsQueryData_getRestaurants_cityBuilder>,
        _i2.GRestaurantFragment_city,
        _i4.GCityFragment {
  GGetRestaurantsQueryData_getRestaurants_city._();

  factory GGetRestaurantsQueryData_getRestaurants_city(
      [Function(GGetRestaurantsQueryData_getRestaurants_cityBuilder b)
          updates]) = _$GGetRestaurantsQueryData_getRestaurants_city;

  static void _initializeBuilder(
          GGetRestaurantsQueryData_getRestaurants_cityBuilder b) =>
      b..G__typename = 'City';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  String? get prefix;
  String? get postal_code;
  String? get city_type;
  bool? get available;
  static Serializer<GGetRestaurantsQueryData_getRestaurants_city>
      get serializer => _$gGetRestaurantsQueryDataGetRestaurantsCitySerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GGetRestaurantsQueryData_getRestaurants_city.serializer, this)
      as Map<String, dynamic>);
  static GGetRestaurantsQueryData_getRestaurants_city? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GGetRestaurantsQueryData_getRestaurants_city.serializer, json);
}
