// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:toto_mobile/src/core/data/network/models/get_restaurant_by_location.ast.gql.dart'
    as _i5;
import 'package:toto_mobile/src/core/data/network/models/get_restaurant_by_location.data.gql.dart'
    as _i2;
import 'package:toto_mobile/src/core/data/network/models/get_restaurant_by_location.var.gql.dart'
    as _i3;
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i6;

part 'get_restaurant_by_location.req.gql.g.dart';

abstract class GGetRestaurantByLocationQueryReq
    implements
        Built<GGetRestaurantByLocationQueryReq,
            GGetRestaurantByLocationQueryReqBuilder>,
        _i1.OperationRequest<_i2.GGetRestaurantByLocationQueryData,
            _i3.GGetRestaurantByLocationQueryVars> {
  GGetRestaurantByLocationQueryReq._();

  factory GGetRestaurantByLocationQueryReq(
          [Function(GGetRestaurantByLocationQueryReqBuilder b) updates]) =
      _$GGetRestaurantByLocationQueryReq;

  static void _initializeBuilder(GGetRestaurantByLocationQueryReqBuilder b) => b
    ..operation = _i4.Operation(
        document: _i5.document, operationName: 'GetRestaurantByLocationQuery')
    ..executeOnListen = true;
  _i3.GGetRestaurantByLocationQueryVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GGetRestaurantByLocationQueryData? Function(
      _i2.GGetRestaurantByLocationQueryData?,
      _i2.GGetRestaurantByLocationQueryData?)? get updateResult;
  _i2.GGetRestaurantByLocationQueryData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GGetRestaurantByLocationQueryData? parseData(Map<String, dynamic> json) =>
      _i2.GGetRestaurantByLocationQueryData.fromJson(json);
  static Serializer<GGetRestaurantByLocationQueryReq> get serializer =>
      _$gGetRestaurantByLocationQueryReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers
          .serializeWith(GGetRestaurantByLocationQueryReq.serializer, this)
      as Map<String, dynamic>);
  static GGetRestaurantByLocationQueryReq? fromJson(
          Map<String, dynamic> json) =>
      _i6.serializers
          .deserializeWith(GGetRestaurantByLocationQueryReq.serializer, json);
}
