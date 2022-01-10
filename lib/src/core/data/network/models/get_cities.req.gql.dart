// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:toto_mobile/src/core/data/network/models/get_cities.ast.gql.dart'
    as _i5;
import 'package:toto_mobile/src/core/data/network/models/get_cities.data.gql.dart'
    as _i2;
import 'package:toto_mobile/src/core/data/network/models/get_cities.var.gql.dart'
    as _i3;
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i6;

part 'get_cities.req.gql.g.dart';

abstract class GGetCitiesQueryReq
    implements
        Built<GGetCitiesQueryReq, GGetCitiesQueryReqBuilder>,
        _i1.OperationRequest<_i2.GGetCitiesQueryData, _i3.GGetCitiesQueryVars> {
  GGetCitiesQueryReq._();

  factory GGetCitiesQueryReq([Function(GGetCitiesQueryReqBuilder b) updates]) =
      _$GGetCitiesQueryReq;

  static void _initializeBuilder(GGetCitiesQueryReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'GetCitiesQuery')
    ..executeOnListen = true;
  _i3.GGetCitiesQueryVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GGetCitiesQueryData? Function(
      _i2.GGetCitiesQueryData?, _i2.GGetCitiesQueryData?)? get updateResult;
  _i2.GGetCitiesQueryData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GGetCitiesQueryData? parseData(Map<String, dynamic> json) =>
      _i2.GGetCitiesQueryData.fromJson(json);
  static Serializer<GGetCitiesQueryReq> get serializer =>
      _$gGetCitiesQueryReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GGetCitiesQueryReq.serializer, this)
          as Map<String, dynamic>);
  static GGetCitiesQueryReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GGetCitiesQueryReq.serializer, json);
}
