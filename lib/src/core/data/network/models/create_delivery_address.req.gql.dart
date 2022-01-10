// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:toto_mobile/src/core/data/network/models/create_delivery_address.ast.gql.dart'
    as _i5;
import 'package:toto_mobile/src/core/data/network/models/create_delivery_address.data.gql.dart'
    as _i2;
import 'package:toto_mobile/src/core/data/network/models/create_delivery_address.var.gql.dart'
    as _i3;
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i6;

part 'create_delivery_address.req.gql.g.dart';

abstract class GCreateDeliveryAddressReq
    implements
        Built<GCreateDeliveryAddressReq, GCreateDeliveryAddressReqBuilder>,
        _i1.OperationRequest<_i2.GCreateDeliveryAddressData,
            _i3.GCreateDeliveryAddressVars> {
  GCreateDeliveryAddressReq._();

  factory GCreateDeliveryAddressReq(
          [Function(GCreateDeliveryAddressReqBuilder b) updates]) =
      _$GCreateDeliveryAddressReq;

  static void _initializeBuilder(GCreateDeliveryAddressReqBuilder b) => b
    ..operation = _i4.Operation(
        document: _i5.document, operationName: 'CreateDeliveryAddress')
    ..executeOnListen = true;
  _i3.GCreateDeliveryAddressVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GCreateDeliveryAddressData? Function(
          _i2.GCreateDeliveryAddressData?, _i2.GCreateDeliveryAddressData?)?
      get updateResult;
  _i2.GCreateDeliveryAddressData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GCreateDeliveryAddressData? parseData(Map<String, dynamic> json) =>
      _i2.GCreateDeliveryAddressData.fromJson(json);
  static Serializer<GCreateDeliveryAddressReq> get serializer =>
      _$gCreateDeliveryAddressReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GCreateDeliveryAddressReq.serializer, this)
          as Map<String, dynamic>);
  static GCreateDeliveryAddressReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers
          .deserializeWith(GCreateDeliveryAddressReq.serializer, json);
}
