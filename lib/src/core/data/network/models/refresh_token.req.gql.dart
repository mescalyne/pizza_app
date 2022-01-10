// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:toto_mobile/src/core/data/network/models/refresh_token.ast.gql.dart'
    as _i5;
import 'package:toto_mobile/src/core/data/network/models/refresh_token.data.gql.dart'
    as _i2;
import 'package:toto_mobile/src/core/data/network/models/refresh_token.var.gql.dart'
    as _i3;
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i6;

part 'refresh_token.req.gql.g.dart';

abstract class GrefreshTokenReq
    implements
        Built<GrefreshTokenReq, GrefreshTokenReqBuilder>,
        _i1.OperationRequest<_i2.GrefreshTokenData, _i3.GrefreshTokenVars> {
  GrefreshTokenReq._();

  factory GrefreshTokenReq([Function(GrefreshTokenReqBuilder b) updates]) =
      _$GrefreshTokenReq;

  static void _initializeBuilder(GrefreshTokenReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'refreshToken')
    ..executeOnListen = true;
  _i3.GrefreshTokenVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GrefreshTokenData? Function(
      _i2.GrefreshTokenData?, _i2.GrefreshTokenData?)? get updateResult;
  _i2.GrefreshTokenData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GrefreshTokenData? parseData(Map<String, dynamic> json) =>
      _i2.GrefreshTokenData.fromJson(json);
  static Serializer<GrefreshTokenReq> get serializer =>
      _$grefreshTokenReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GrefreshTokenReq.serializer, this)
          as Map<String, dynamic>);
  static GrefreshTokenReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GrefreshTokenReq.serializer, json);
}
