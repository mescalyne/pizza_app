// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i2;
import 'package:toto_mobile/src/core/data/network/models/toto.schema.schema.gql.dart'
    as _i1;

part 'request_phone_code_register.var.gql.g.dart';

abstract class GrequestPhoneCodeRegisterVars
    implements
        Built<GrequestPhoneCodeRegisterVars,
            GrequestPhoneCodeRegisterVarsBuilder> {
  GrequestPhoneCodeRegisterVars._();

  factory GrequestPhoneCodeRegisterVars(
          [Function(GrequestPhoneCodeRegisterVarsBuilder b) updates]) =
      _$GrequestPhoneCodeRegisterVars;

  _i1.GPhoneRegisterInput? get input;
  static Serializer<GrequestPhoneCodeRegisterVars> get serializer =>
      _$grequestPhoneCodeRegisterVarsSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
      GrequestPhoneCodeRegisterVars.serializer, this) as Map<String, dynamic>);
  static GrequestPhoneCodeRegisterVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GrequestPhoneCodeRegisterVars.serializer, json);
}
