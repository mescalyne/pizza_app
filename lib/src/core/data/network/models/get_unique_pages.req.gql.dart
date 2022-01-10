// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:toto_mobile/src/core/data/network/models/get_unique_pages.ast.gql.dart'
    as _i5;
import 'package:toto_mobile/src/core/data/network/models/get_unique_pages.data.gql.dart'
    as _i2;
import 'package:toto_mobile/src/core/data/network/models/get_unique_pages.var.gql.dart'
    as _i3;
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i6;

part 'get_unique_pages.req.gql.g.dart';

abstract class GGetUniquePagesReq
    implements
        Built<GGetUniquePagesReq, GGetUniquePagesReqBuilder>,
        _i1.OperationRequest<_i2.GGetUniquePagesData, _i3.GGetUniquePagesVars> {
  GGetUniquePagesReq._();

  factory GGetUniquePagesReq([Function(GGetUniquePagesReqBuilder b) updates]) =
      _$GGetUniquePagesReq;

  static void _initializeBuilder(GGetUniquePagesReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'GetUniquePages')
    ..executeOnListen = true;
  _i3.GGetUniquePagesVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GGetUniquePagesData? Function(
      _i2.GGetUniquePagesData?, _i2.GGetUniquePagesData?)? get updateResult;
  _i2.GGetUniquePagesData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GGetUniquePagesData? parseData(Map<String, dynamic> json) =>
      _i2.GGetUniquePagesData.fromJson(json);
  static Serializer<GGetUniquePagesReq> get serializer =>
      _$gGetUniquePagesReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GGetUniquePagesReq.serializer, this)
          as Map<String, dynamic>);
  static GGetUniquePagesReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GGetUniquePagesReq.serializer, json);
}
