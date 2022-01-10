// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i1;

part 'checkout_cart_fragment.data.gql.g.dart';

abstract class GCheckoutResponseFragment {
  String get G__typename;
  String? get deliveryRestriction;
  String? get problem;
  int? get resultState;
  int? get deliveryDurationInMinutes;
  int? get deliveryServiceProductInfo;
  String? get url;
  Map<String, dynamic> toJson();
}

abstract class GCheckoutResponseFragmentData
    implements
        Built<GCheckoutResponseFragmentData,
            GCheckoutResponseFragmentDataBuilder>,
        GCheckoutResponseFragment {
  GCheckoutResponseFragmentData._();

  factory GCheckoutResponseFragmentData(
          [Function(GCheckoutResponseFragmentDataBuilder b) updates]) =
      _$GCheckoutResponseFragmentData;

  static void _initializeBuilder(GCheckoutResponseFragmentDataBuilder b) =>
      b..G__typename = 'CheckoutResponse';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get deliveryRestriction;
  String? get problem;
  int? get resultState;
  int? get deliveryDurationInMinutes;
  int? get deliveryServiceProductInfo;
  String? get url;
  static Serializer<GCheckoutResponseFragmentData> get serializer =>
      _$gCheckoutResponseFragmentDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GCheckoutResponseFragmentData.serializer, this) as Map<String, dynamic>);
  static GCheckoutResponseFragmentData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GCheckoutResponseFragmentData.serializer, json);
}
