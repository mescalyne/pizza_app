// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:toto_mobile/src/core/data/network/models/phone_auth.ast.gql.dart'
    as _i5;
import 'package:toto_mobile/src/core/data/network/models/phone_auth.data.gql.dart'
    as _i2;
import 'package:toto_mobile/src/core/data/network/models/phone_auth.var.gql.dart'
    as _i3;
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i6;

part 'phone_auth.req.gql.g.dart';

abstract class GphoneAuthReq
    implements
        Built<GphoneAuthReq, GphoneAuthReqBuilder>,
        _i1.OperationRequest<_i2.GphoneAuthData, _i3.GphoneAuthVars> {
  GphoneAuthReq._();

  factory GphoneAuthReq([Function(GphoneAuthReqBuilder b) updates]) =
      _$GphoneAuthReq;

  static void _initializeBuilder(GphoneAuthReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'phoneAuth')
    ..executeOnListen = true;
  _i3.GphoneAuthVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GphoneAuthData? Function(_i2.GphoneAuthData?, _i2.GphoneAuthData?)?
      get updateResult;
  _i2.GphoneAuthData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GphoneAuthData? parseData(Map<String, dynamic> json) =>
      _i2.GphoneAuthData.fromJson(json);
  static Serializer<GphoneAuthReq> get serializer => _$gphoneAuthReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GphoneAuthReq.serializer, this)
          as Map<String, dynamic>);
  static GphoneAuthReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GphoneAuthReq.serializer, json);
}
