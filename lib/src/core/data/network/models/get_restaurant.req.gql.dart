// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:toto_mobile/src/core/data/network/models/get_restaurant.ast.gql.dart'
    as _i5;
import 'package:toto_mobile/src/core/data/network/models/get_restaurant.data.gql.dart'
    as _i2;
import 'package:toto_mobile/src/core/data/network/models/get_restaurant.var.gql.dart'
    as _i3;
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i6;

part 'get_restaurant.req.gql.g.dart';

abstract class GGetRestaurantReq
    implements
        Built<GGetRestaurantReq, GGetRestaurantReqBuilder>,
        _i1.OperationRequest<_i2.GGetRestaurantData, _i3.GGetRestaurantVars> {
  GGetRestaurantReq._();

  factory GGetRestaurantReq([Function(GGetRestaurantReqBuilder b) updates]) =
      _$GGetRestaurantReq;

  static void _initializeBuilder(GGetRestaurantReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'GetRestaurant')
    ..executeOnListen = true;
  _i3.GGetRestaurantVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GGetRestaurantData? Function(
      _i2.GGetRestaurantData?, _i2.GGetRestaurantData?)? get updateResult;
  _i2.GGetRestaurantData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GGetRestaurantData? parseData(Map<String, dynamic> json) =>
      _i2.GGetRestaurantData.fromJson(json);
  static Serializer<GGetRestaurantReq> get serializer =>
      _$gGetRestaurantReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GGetRestaurantReq.serializer, this)
          as Map<String, dynamic>);
  static GGetRestaurantReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GGetRestaurantReq.serializer, json);
}
