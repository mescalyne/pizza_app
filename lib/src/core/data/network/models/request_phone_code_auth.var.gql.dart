// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i1;

part 'request_phone_code_auth.var.gql.g.dart';

abstract class GrequestPhoneCodeAuthVars
    implements
        Built<GrequestPhoneCodeAuthVars, GrequestPhoneCodeAuthVarsBuilder> {
  GrequestPhoneCodeAuthVars._();

  factory GrequestPhoneCodeAuthVars(
          [Function(GrequestPhoneCodeAuthVarsBuilder b) updates]) =
      _$GrequestPhoneCodeAuthVars;

  String get telephone;
  static Serializer<GrequestPhoneCodeAuthVars> get serializer =>
      _$grequestPhoneCodeAuthVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GrequestPhoneCodeAuthVars.serializer, this)
          as Map<String, dynamic>);
  static GrequestPhoneCodeAuthVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GrequestPhoneCodeAuthVars.serializer, json);
}
