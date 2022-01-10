// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i1;

part 'request_phone_code_auth.data.gql.g.dart';

abstract class GrequestPhoneCodeAuthData
    implements
        Built<GrequestPhoneCodeAuthData, GrequestPhoneCodeAuthDataBuilder> {
  GrequestPhoneCodeAuthData._();

  factory GrequestPhoneCodeAuthData(
          [Function(GrequestPhoneCodeAuthDataBuilder b) updates]) =
      _$GrequestPhoneCodeAuthData;

  static void _initializeBuilder(GrequestPhoneCodeAuthDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get requestPhoneCodeAuth;
  static Serializer<GrequestPhoneCodeAuthData> get serializer =>
      _$grequestPhoneCodeAuthDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GrequestPhoneCodeAuthData.serializer, this)
          as Map<String, dynamic>);
  static GrequestPhoneCodeAuthData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GrequestPhoneCodeAuthData.serializer, json);
}
