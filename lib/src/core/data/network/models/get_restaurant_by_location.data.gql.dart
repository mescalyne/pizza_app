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

part 'get_restaurant_by_location.data.gql.g.dart';

abstract class GGetRestaurantByLocationQueryData
    implements
        Built<GGetRestaurantByLocationQueryData,
            GGetRestaurantByLocationQueryDataBuilder> {
  GGetRestaurantByLocationQueryData._();

  factory GGetRestaurantByLocationQueryData(
          [Function(GGetRestaurantByLocationQueryDataBuilder b) updates]) =
      _$GGetRestaurantByLocationQueryData;

  static void _initializeBuilder(GGetRestaurantByLocationQueryDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GGetRestaurantByLocationQueryData_getRestaurantByLocation?
      get getRestaurantByLocation;
  static Serializer<GGetRestaurantByLocationQueryData> get serializer =>
      _$gGetRestaurantByLocationQueryDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GGetRestaurantByLocationQueryData.serializer, this)
      as Map<String, dynamic>);
  static GGetRestaurantByLocationQueryData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GGetRestaurantByLocationQueryData.serializer, json);
}

abstract class GGetRestaurantByLocationQueryData_getRestaurantByLocation
    implements
        Built<GGetRestaurantByLocationQueryData_getRestaurantByLocation,
            GGetRestaurantByLocationQueryData_getRestaurantByLocationBuilder>,
        _i2.GRestaurantFragment {
  GGetRestaurantByLocationQueryData_getRestaurantByLocation._();

  factory GGetRestaurantByLocationQueryData_getRestaurantByLocation(
      [Function(
              GGetRestaurantByLocationQueryData_getRestaurantByLocationBuilder
                  b)
          updates]) = _$GGetRestaurantByLocationQueryData_getRestaurantByLocation;

  static void _initializeBuilder(
          GGetRestaurantByLocationQueryData_getRestaurantByLocationBuilder b) =>
      b..G__typename = 'Restaurant';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  String? get address;
  GGetRestaurantByLocationQueryData_getRestaurantByLocation_terminal_kitchen?
      get terminal_kitchen;
  GGetRestaurantByLocationQueryData_getRestaurantByLocation_terminal_delivery?
      get terminal_delivery;
  String? get latitude;
  String? get longitude;
  String? get open_at;
  String? get close_at;
  bool? get is_open;
  String? get delivery_open_at;
  String? get delivery_close_at;
  bool? get is_delivery_open;
  GGetRestaurantByLocationQueryData_getRestaurantByLocation_city? get city;
  static Serializer<GGetRestaurantByLocationQueryData_getRestaurantByLocation>
      get serializer =>
          _$gGetRestaurantByLocationQueryDataGetRestaurantByLocationSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetRestaurantByLocationQueryData_getRestaurantByLocation.serializer,
      this) as Map<String, dynamic>);
  static GGetRestaurantByLocationQueryData_getRestaurantByLocation? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GGetRestaurantByLocationQueryData_getRestaurantByLocation.serializer,
          json);
}

abstract class GGetRestaurantByLocationQueryData_getRestaurantByLocation_terminal_kitchen
    implements
        Built<
            GGetRestaurantByLocationQueryData_getRestaurantByLocation_terminal_kitchen,
            GGetRestaurantByLocationQueryData_getRestaurantByLocation_terminal_kitchenBuilder>,
        _i2.GRestaurantFragment_terminal_kitchen,
        _i3.GTerminalFragment {
  GGetRestaurantByLocationQueryData_getRestaurantByLocation_terminal_kitchen._();

  factory GGetRestaurantByLocationQueryData_getRestaurantByLocation_terminal_kitchen(
          [Function(
                  GGetRestaurantByLocationQueryData_getRestaurantByLocation_terminal_kitchenBuilder
                      b)
              updates]) =
      _$GGetRestaurantByLocationQueryData_getRestaurantByLocation_terminal_kitchen;

  static void _initializeBuilder(
          GGetRestaurantByLocationQueryData_getRestaurantByLocation_terminal_kitchenBuilder
              b) =>
      b..G__typename = 'Terminal';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  static Serializer<
          GGetRestaurantByLocationQueryData_getRestaurantByLocation_terminal_kitchen>
      get serializer =>
          _$gGetRestaurantByLocationQueryDataGetRestaurantByLocationTerminalKitchenSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetRestaurantByLocationQueryData_getRestaurantByLocation_terminal_kitchen
          .serializer,
      this) as Map<String, dynamic>);
  static GGetRestaurantByLocationQueryData_getRestaurantByLocation_terminal_kitchen?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GGetRestaurantByLocationQueryData_getRestaurantByLocation_terminal_kitchen
              .serializer,
          json);
}

abstract class GGetRestaurantByLocationQueryData_getRestaurantByLocation_terminal_delivery
    implements
        Built<
            GGetRestaurantByLocationQueryData_getRestaurantByLocation_terminal_delivery,
            GGetRestaurantByLocationQueryData_getRestaurantByLocation_terminal_deliveryBuilder>,
        _i2.GRestaurantFragment_terminal_delivery,
        _i3.GTerminalFragment {
  GGetRestaurantByLocationQueryData_getRestaurantByLocation_terminal_delivery._();

  factory GGetRestaurantByLocationQueryData_getRestaurantByLocation_terminal_delivery(
          [Function(
                  GGetRestaurantByLocationQueryData_getRestaurantByLocation_terminal_deliveryBuilder
                      b)
              updates]) =
      _$GGetRestaurantByLocationQueryData_getRestaurantByLocation_terminal_delivery;

  static void _initializeBuilder(
          GGetRestaurantByLocationQueryData_getRestaurantByLocation_terminal_deliveryBuilder
              b) =>
      b..G__typename = 'Terminal';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  static Serializer<
          GGetRestaurantByLocationQueryData_getRestaurantByLocation_terminal_delivery>
      get serializer =>
          _$gGetRestaurantByLocationQueryDataGetRestaurantByLocationTerminalDeliverySerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetRestaurantByLocationQueryData_getRestaurantByLocation_terminal_delivery
          .serializer,
      this) as Map<String, dynamic>);
  static GGetRestaurantByLocationQueryData_getRestaurantByLocation_terminal_delivery?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GGetRestaurantByLocationQueryData_getRestaurantByLocation_terminal_delivery
              .serializer,
          json);
}

abstract class GGetRestaurantByLocationQueryData_getRestaurantByLocation_city
    implements
        Built<GGetRestaurantByLocationQueryData_getRestaurantByLocation_city,
            GGetRestaurantByLocationQueryData_getRestaurantByLocation_cityBuilder>,
        _i2.GRestaurantFragment_city,
        _i4.GCityFragment {
  GGetRestaurantByLocationQueryData_getRestaurantByLocation_city._();

  factory GGetRestaurantByLocationQueryData_getRestaurantByLocation_city(
          [Function(
                  GGetRestaurantByLocationQueryData_getRestaurantByLocation_cityBuilder
                      b)
              updates]) =
      _$GGetRestaurantByLocationQueryData_getRestaurantByLocation_city;

  static void _initializeBuilder(
          GGetRestaurantByLocationQueryData_getRestaurantByLocation_cityBuilder
              b) =>
      b..G__typename = 'City';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  String? get prefix;
  String? get postal_code;
  String? get city_type;
  bool? get available;
  static Serializer<
          GGetRestaurantByLocationQueryData_getRestaurantByLocation_city>
      get serializer =>
          _$gGetRestaurantByLocationQueryDataGetRestaurantByLocationCitySerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetRestaurantByLocationQueryData_getRestaurantByLocation_city.serializer,
      this) as Map<String, dynamic>);
  static GGetRestaurantByLocationQueryData_getRestaurantByLocation_city?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GGetRestaurantByLocationQueryData_getRestaurantByLocation_city
              .serializer,
          json);
}
