// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i1;

part 'request_phone_code_register.data.gql.g.dart';

abstract class GrequestPhoneCodeRegisterData
    implements
        Built<GrequestPhoneCodeRegisterData,
            GrequestPhoneCodeRegisterDataBuilder> {
  GrequestPhoneCodeRegisterData._();

  factory GrequestPhoneCodeRegisterData(
          [Function(GrequestPhoneCodeRegisterDataBuilder b) updates]) =
      _$GrequestPhoneCodeRegisterData;

  static void _initializeBuilder(GrequestPhoneCodeRegisterDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get requestPhoneCodeRegister;
  static Serializer<GrequestPhoneCodeRegisterData> get serializer =>
      _$grequestPhoneCodeRegisterDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GrequestPhoneCodeRegisterData.serializer, this) as Map<String, dynamic>);
  static GrequestPhoneCodeRegisterData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GrequestPhoneCodeRegisterData.serializer, json);
}
