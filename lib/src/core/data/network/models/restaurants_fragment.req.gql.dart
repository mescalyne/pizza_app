// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql/ast.dart' as _i5;
import 'package:toto_mobile/src/core/data/network/models/restaurants_fragment.ast.gql.dart'
    as _i4;
import 'package:toto_mobile/src/core/data/network/models/restaurants_fragment.data.gql.dart'
    as _i2;
import 'package:toto_mobile/src/core/data/network/models/restaurants_fragment.var.gql.dart'
    as _i3;
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i6;

part 'restaurants_fragment.req.gql.g.dart';

abstract class GRestaurantFragmentReq
    implements
        Built<GRestaurantFragmentReq, GRestaurantFragmentReqBuilder>,
        _i1.FragmentRequest<_i2.GRestaurantFragmentData,
            _i3.GRestaurantFragmentVars> {
  GRestaurantFragmentReq._();

  factory GRestaurantFragmentReq(
          [Function(GRestaurantFragmentReqBuilder b) updates]) =
      _$GRestaurantFragmentReq;

  static void _initializeBuilder(GRestaurantFragmentReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'RestaurantFragment';
  _i3.GRestaurantFragmentVars get vars;
  _i5.DocumentNode get document;
  String? get fragmentName;
  Map<String, dynamic> get idFields;
  @override
  _i2.GRestaurantFragmentData? parseData(Map<String, dynamic> json) =>
      _i2.GRestaurantFragmentData.fromJson(json);
  static Serializer<GRestaurantFragmentReq> get serializer =>
      _$gRestaurantFragmentReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GRestaurantFragmentReq.serializer, this)
          as Map<String, dynamic>);
  static GRestaurantFragmentReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GRestaurantFragmentReq.serializer, json);
}
