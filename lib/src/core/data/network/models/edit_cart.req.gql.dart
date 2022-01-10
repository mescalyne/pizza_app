// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:toto_mobile/src/core/data/network/models/edit_cart.ast.gql.dart'
    as _i5;
import 'package:toto_mobile/src/core/data/network/models/edit_cart.data.gql.dart'
    as _i2;
import 'package:toto_mobile/src/core/data/network/models/edit_cart.var.gql.dart'
    as _i3;
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i6;

part 'edit_cart.req.gql.g.dart';

abstract class GEditCartReq
    implements
        Built<GEditCartReq, GEditCartReqBuilder>,
        _i1.OperationRequest<_i2.GEditCartData, _i3.GEditCartVars> {
  GEditCartReq._();

  factory GEditCartReq([Function(GEditCartReqBuilder b) updates]) =
      _$GEditCartReq;

  static void _initializeBuilder(GEditCartReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'EditCart')
    ..executeOnListen = true;
  _i3.GEditCartVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GEditCartData? Function(_i2.GEditCartData?, _i2.GEditCartData?)?
      get updateResult;
  _i2.GEditCartData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GEditCartData? parseData(Map<String, dynamic> json) =>
      _i2.GEditCartData.fromJson(json);
  static Serializer<GEditCartReq> get serializer => _$gEditCartReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GEditCartReq.serializer, this)
          as Map<String, dynamic>);
  static GEditCartReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GEditCartReq.serializer, json);
}
