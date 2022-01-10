// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:toto_mobile/src/core/data/network/models/request_phone_code_register.ast.gql.dart'
    as _i5;
import 'package:toto_mobile/src/core/data/network/models/request_phone_code_register.data.gql.dart'
    as _i2;
import 'package:toto_mobile/src/core/data/network/models/request_phone_code_register.var.gql.dart'
    as _i3;
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i6;

part 'request_phone_code_register.req.gql.g.dart';

abstract class GrequestPhoneCodeRegisterReq
    implements
        Built<GrequestPhoneCodeRegisterReq,
            GrequestPhoneCodeRegisterReqBuilder>,
        _i1.OperationRequest<_i2.GrequestPhoneCodeRegisterData,
            _i3.GrequestPhoneCodeRegisterVars> {
  GrequestPhoneCodeRegisterReq._();

  factory GrequestPhoneCodeRegisterReq(
          [Function(GrequestPhoneCodeRegisterReqBuilder b) updates]) =
      _$GrequestPhoneCodeRegisterReq;

  static void _initializeBuilder(GrequestPhoneCodeRegisterReqBuilder b) => b
    ..operation = _i4.Operation(
        document: _i5.document, operationName: 'requestPhoneCodeRegister')
    ..executeOnListen = true;
  _i3.GrequestPhoneCodeRegisterVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GrequestPhoneCodeRegisterData? Function(
      _i2.GrequestPhoneCodeRegisterData?,
      _i2.GrequestPhoneCodeRegisterData?)? get updateResult;
  _i2.GrequestPhoneCodeRegisterData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GrequestPhoneCodeRegisterData? parseData(Map<String, dynamic> json) =>
      _i2.GrequestPhoneCodeRegisterData.fromJson(json);
  static Serializer<GrequestPhoneCodeRegisterReq> get serializer =>
      _$grequestPhoneCodeRegisterReqSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
      GrequestPhoneCodeRegisterReq.serializer, this) as Map<String, dynamic>);
  static GrequestPhoneCodeRegisterReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers
          .deserializeWith(GrequestPhoneCodeRegisterReq.serializer, json);
}
