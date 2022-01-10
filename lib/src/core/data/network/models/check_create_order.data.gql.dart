// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:toto_mobile/src/core/data/network/models/check_create_order_response.data.gql.dart'
    as _i2;
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i1;

part 'check_create_order.data.gql.g.dart';

abstract class GCheckCreateOrderData
    implements Built<GCheckCreateOrderData, GCheckCreateOrderDataBuilder> {
  GCheckCreateOrderData._();

  factory GCheckCreateOrderData(
          [Function(GCheckCreateOrderDataBuilder b) updates]) =
      _$GCheckCreateOrderData;

  static void _initializeBuilder(GCheckCreateOrderDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GCheckCreateOrderData_checkCreateOrder get checkCreateOrder;
  static Serializer<GCheckCreateOrderData> get serializer =>
      _$gCheckCreateOrderDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GCheckCreateOrderData.serializer, this)
          as Map<String, dynamic>);
  static GCheckCreateOrderData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GCheckCreateOrderData.serializer, json);
}

abstract class GCheckCreateOrderData_checkCreateOrder
    implements
        Built<GCheckCreateOrderData_checkCreateOrder,
            GCheckCreateOrderData_checkCreateOrderBuilder>,
        _i2.GCheckCreateOrderResponseFragment {
  GCheckCreateOrderData_checkCreateOrder._();

  factory GCheckCreateOrderData_checkCreateOrder(
          [Function(GCheckCreateOrderData_checkCreateOrderBuilder b) updates]) =
      _$GCheckCreateOrderData_checkCreateOrder;

  static void _initializeBuilder(
          GCheckCreateOrderData_checkCreateOrderBuilder b) =>
      b..G__typename = 'CheckCreateOrderResponse';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get deliveryRestriction;
  String? get problem;
  int? get resultState;
  int? get deliveryDurationInMinutes;
  int? get deliveryServiceProductInfo;
  static Serializer<GCheckCreateOrderData_checkCreateOrder> get serializer =>
      _$gCheckCreateOrderDataCheckCreateOrderSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GCheckCreateOrderData_checkCreateOrder.serializer, this)
      as Map<String, dynamic>);
  static GCheckCreateOrderData_checkCreateOrder? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GCheckCreateOrderData_checkCreateOrder.serializer, json);
}
