// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i1;

part 'refresh_token.data.gql.g.dart';

abstract class GrefreshTokenData
    implements Built<GrefreshTokenData, GrefreshTokenDataBuilder> {
  GrefreshTokenData._();

  factory GrefreshTokenData([Function(GrefreshTokenDataBuilder b) updates]) =
      _$GrefreshTokenData;

  static void _initializeBuilder(GrefreshTokenDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GrefreshTokenData_refreshToken get refreshToken;
  static Serializer<GrefreshTokenData> get serializer =>
      _$grefreshTokenDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GrefreshTokenData.serializer, this)
          as Map<String, dynamic>);
  static GrefreshTokenData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GrefreshTokenData.serializer, json);
}

abstract class GrefreshTokenData_refreshToken
    implements
        Built<GrefreshTokenData_refreshToken,
            GrefreshTokenData_refreshTokenBuilder> {
  GrefreshTokenData_refreshToken._();

  factory GrefreshTokenData_refreshToken(
          [Function(GrefreshTokenData_refreshTokenBuilder b) updates]) =
      _$GrefreshTokenData_refreshToken;

  static void _initializeBuilder(GrefreshTokenData_refreshTokenBuilder b) =>
      b..G__typename = 'RefreshTokenPayload';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get access_token;
  String get refresh_token;
  String get token_type;
  int get expires_in;
  static Serializer<GrefreshTokenData_refreshToken> get serializer =>
      _$grefreshTokenDataRefreshTokenSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GrefreshTokenData_refreshToken.serializer, this) as Map<String, dynamic>);
  static GrefreshTokenData_refreshToken? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GrefreshTokenData_refreshToken.serializer, json);
}
