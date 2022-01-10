// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:toto_mobile/src/core/data/network/models/checkout_cart_fragment.data.gql.dart'
    as _i2;
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i1;

part 'checkout_cart.data.gql.g.dart';

abstract class GCheckoutCartData
    implements Built<GCheckoutCartData, GCheckoutCartDataBuilder> {
  GCheckoutCartData._();

  factory GCheckoutCartData([Function(GCheckoutCartDataBuilder b) updates]) =
      _$GCheckoutCartData;

  static void _initializeBuilder(GCheckoutCartDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GCheckoutCartData_checkoutCart? get checkoutCart;
  static Serializer<GCheckoutCartData> get serializer =>
      _$gCheckoutCartDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GCheckoutCartData.serializer, this)
          as Map<String, dynamic>);
  static GCheckoutCartData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GCheckoutCartData.serializer, json);
}

abstract class GCheckoutCartData_checkoutCart
    implements
        Built<GCheckoutCartData_checkoutCart,
            GCheckoutCartData_checkoutCartBuilder>,
        _i2.GCheckoutResponseFragment {
  GCheckoutCartData_checkoutCart._();

  factory GCheckoutCartData_checkoutCart(
          [Function(GCheckoutCartData_checkoutCartBuilder b) updates]) =
      _$GCheckoutCartData_checkoutCart;

  static void _initializeBuilder(GCheckoutCartData_checkoutCartBuilder b) =>
      b..G__typename = 'CheckoutResponse';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get deliveryRestriction;
  String? get problem;
  int? get resultState;
  int? get deliveryDurationInMinutes;
  int? get deliveryServiceProductInfo;
  String? get url;
  static Serializer<GCheckoutCartData_checkoutCart> get serializer =>
      _$gCheckoutCartDataCheckoutCartSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GCheckoutCartData_checkoutCart.serializer, this) as Map<String, dynamic>);
  static GCheckoutCartData_checkoutCart? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GCheckoutCartData_checkoutCart.serializer, json);
}
