// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:toto_mobile/src/core/data/network/models/get_restaurants.ast.gql.dart'
    as _i5;
import 'package:toto_mobile/src/core/data/network/models/get_restaurants.data.gql.dart'
    as _i2;
import 'package:toto_mobile/src/core/data/network/models/get_restaurants.var.gql.dart'
    as _i3;
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i6;

part 'get_restaurants.req.gql.g.dart';

abstract class GGetRestaurantsQueryReq
    implements
        Built<GGetRestaurantsQueryReq, GGetRestaurantsQueryReqBuilder>,
        _i1.OperationRequest<_i2.GGetRestaurantsQueryData,
            _i3.GGetRestaurantsQueryVars> {
  GGetRestaurantsQueryReq._();

  factory GGetRestaurantsQueryReq(
          [Function(GGetRestaurantsQueryReqBuilder b) updates]) =
      _$GGetRestaurantsQueryReq;

  static void _initializeBuilder(GGetRestaurantsQueryReqBuilder b) => b
    ..operation = _i4.Operation(
        document: _i5.document, operationName: 'GetRestaurantsQuery')
    ..executeOnListen = true;
  _i3.GGetRestaurantsQueryVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GGetRestaurantsQueryData? Function(
          _i2.GGetRestaurantsQueryData?, _i2.GGetRestaurantsQueryData?)?
      get updateResult;
  _i2.GGetRestaurantsQueryData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GGetRestaurantsQueryData? parseData(Map<String, dynamic> json) =>
      _i2.GGetRestaurantsQueryData.fromJson(json);
  static Serializer<GGetRestaurantsQueryReq> get serializer =>
      _$gGetRestaurantsQueryReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GGetRestaurantsQueryReq.serializer, this)
          as Map<String, dynamic>);
  static GGetRestaurantsQueryReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GGetRestaurantsQueryReq.serializer, json);
}
