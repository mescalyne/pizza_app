// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i1;

part 'check_create_order_response.data.gql.g.dart';

abstract class GCheckCreateOrderResponseFragment {
  String get G__typename;
  String? get deliveryRestriction;
  String? get problem;
  int? get resultState;
  int? get deliveryDurationInMinutes;
  int? get deliveryServiceProductInfo;
  Map<String, dynamic> toJson();
}

abstract class GCheckCreateOrderResponseFragmentData
    implements
        Built<GCheckCreateOrderResponseFragmentData,
            GCheckCreateOrderResponseFragmentDataBuilder>,
        GCheckCreateOrderResponseFragment {
  GCheckCreateOrderResponseFragmentData._();

  factory GCheckCreateOrderResponseFragmentData(
          [Function(GCheckCreateOrderResponseFragmentDataBuilder b) updates]) =
      _$GCheckCreateOrderResponseFragmentData;

  static void _initializeBuilder(
          GCheckCreateOrderResponseFragmentDataBuilder b) =>
      b..G__typename = 'CheckCreateOrderResponse';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get deliveryRestriction;
  String? get problem;
  int? get resultState;
  int? get deliveryDurationInMinutes;
  int? get deliveryServiceProductInfo;
  static Serializer<GCheckCreateOrderResponseFragmentData> get serializer =>
      _$gCheckCreateOrderResponseFragmentDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GCheckCreateOrderResponseFragmentData.serializer, this)
      as Map<String, dynamic>);
  static GCheckCreateOrderResponseFragmentData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GCheckCreateOrderResponseFragmentData.serializer, json);
}
