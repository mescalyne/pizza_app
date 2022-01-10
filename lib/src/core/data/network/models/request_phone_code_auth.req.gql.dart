// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:toto_mobile/src/core/data/network/models/request_phone_code_auth.ast.gql.dart'
    as _i5;
import 'package:toto_mobile/src/core/data/network/models/request_phone_code_auth.data.gql.dart'
    as _i2;
import 'package:toto_mobile/src/core/data/network/models/request_phone_code_auth.var.gql.dart'
    as _i3;
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i6;

part 'request_phone_code_auth.req.gql.g.dart';

abstract class GrequestPhoneCodeAuthReq
    implements
        Built<GrequestPhoneCodeAuthReq, GrequestPhoneCodeAuthReqBuilder>,
        _i1.OperationRequest<_i2.GrequestPhoneCodeAuthData,
            _i3.GrequestPhoneCodeAuthVars> {
  GrequestPhoneCodeAuthReq._();

  factory GrequestPhoneCodeAuthReq(
          [Function(GrequestPhoneCodeAuthReqBuilder b) updates]) =
      _$GrequestPhoneCodeAuthReq;

  static void _initializeBuilder(GrequestPhoneCodeAuthReqBuilder b) => b
    ..operation = _i4.Operation(
        document: _i5.document, operationName: 'requestPhoneCodeAuth')
    ..executeOnListen = true;
  _i3.GrequestPhoneCodeAuthVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GrequestPhoneCodeAuthData? Function(
          _i2.GrequestPhoneCodeAuthData?, _i2.GrequestPhoneCodeAuthData?)?
      get updateResult;
  _i2.GrequestPhoneCodeAuthData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GrequestPhoneCodeAuthData? parseData(Map<String, dynamic> json) =>
      _i2.GrequestPhoneCodeAuthData.fromJson(json);
  static Serializer<GrequestPhoneCodeAuthReq> get serializer =>
      _$grequestPhoneCodeAuthReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GrequestPhoneCodeAuthReq.serializer, this)
          as Map<String, dynamic>);
  static GrequestPhoneCodeAuthReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers
          .deserializeWith(GrequestPhoneCodeAuthReq.serializer, json);
}
