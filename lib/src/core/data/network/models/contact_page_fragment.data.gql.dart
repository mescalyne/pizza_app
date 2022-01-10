// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i2;
import 'package:toto_mobile/src/core/data/network/models/toto.schema.schema.gql.dart'
    as _i1;

part 'contact_page_fragment.data.gql.g.dart';

abstract class GContactPageFragment {
  String get G__typename;
  GContactPageFragment_city? get city;
  String get title;
  BuiltList<GContactPageFragment_contents>? get contents;
  Map<String, dynamic> toJson();
}

abstract class GContactPageFragment_city {
  String get G__typename;
  String get id;
  String get name;
  String? get prefix;
  String? get postal_code;
  String? get city_type;
  bool? get available;
  Map<String, dynamic> toJson();
}

abstract class GContactPageFragment_contents {
  String get G__typename;
  String get id;
  GContactPageFragment_contents_data get data;
  Map<String, dynamic> toJson();
}

abstract class GContactPageFragment_contents_data {
  String get G__typename;
  String? get logo;
  String? get email;
  BuiltList<String>? get telephones;
  BuiltList<GContactPageFragment_contents_data_social_networks>?
      get social_networks;
  Map<String, dynamic> toJson();
}

abstract class GContactPageFragment_contents_data_social_networks {
  String get G__typename;
  _i1.GSocialNetworkIcon get icon;
  String get href;
  Map<String, dynamic> toJson();
}

abstract class GContactPageFragmentData
    implements
        Built<GContactPageFragmentData, GContactPageFragmentDataBuilder>,
        GContactPageFragment {
  GContactPageFragmentData._();

  factory GContactPageFragmentData(
          [Function(GContactPageFragmentDataBuilder b) updates]) =
      _$GContactPageFragmentData;

  static void _initializeBuilder(GContactPageFragmentDataBuilder b) =>
      b..G__typename = 'ContactPage';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GContactPageFragmentData_city? get city;
  String get title;
  BuiltList<GContactPageFragmentData_contents>? get contents;
  static Serializer<GContactPageFragmentData> get serializer =>
      _$gContactPageFragmentDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GContactPageFragmentData.serializer, this)
          as Map<String, dynamic>);
  static GContactPageFragmentData? fromJson(Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GContactPageFragmentData.serializer, json);
}

abstract class GContactPageFragmentData_city
    implements
        Built<GContactPageFragmentData_city,
            GContactPageFragmentData_cityBuilder>,
        GContactPageFragment_city {
  GContactPageFragmentData_city._();

  factory GContactPageFragmentData_city(
          [Function(GContactPageFragmentData_cityBuilder b) updates]) =
      _$GContactPageFragmentData_city;

  static void _initializeBuilder(GContactPageFragmentData_cityBuilder b) =>
      b..G__typename = 'City';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  String? get prefix;
  String? get postal_code;
  String? get city_type;
  bool? get available;
  static Serializer<GContactPageFragmentData_city> get serializer =>
      _$gContactPageFragmentDataCitySerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
      GContactPageFragmentData_city.serializer, this) as Map<String, dynamic>);
  static GContactPageFragmentData_city? fromJson(Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GContactPageFragmentData_city.serializer, json);
}

abstract class GContactPageFragmentData_contents
    implements
        Built<GContactPageFragmentData_contents,
            GContactPageFragmentData_contentsBuilder>,
        GContactPageFragment_contents {
  GContactPageFragmentData_contents._();

  factory GContactPageFragmentData_contents(
          [Function(GContactPageFragmentData_contentsBuilder b) updates]) =
      _$GContactPageFragmentData_contents;

  static void _initializeBuilder(GContactPageFragmentData_contentsBuilder b) =>
      b..G__typename = 'ContactContent';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  GContactPageFragmentData_contents_data get data;
  static Serializer<GContactPageFragmentData_contents> get serializer =>
      _$gContactPageFragmentDataContentsSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers
          .serializeWith(GContactPageFragmentData_contents.serializer, this)
      as Map<String, dynamic>);
  static GContactPageFragmentData_contents? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GContactPageFragmentData_contents.serializer, json);
}

abstract class GContactPageFragmentData_contents_data
    implements
        Built<GContactPageFragmentData_contents_data,
            GContactPageFragmentData_contents_dataBuilder>,
        GContactPageFragment_contents_data {
  GContactPageFragmentData_contents_data._();

  factory GContactPageFragmentData_contents_data(
          [Function(GContactPageFragmentData_contents_dataBuilder b) updates]) =
      _$GContactPageFragmentData_contents_data;

  static void _initializeBuilder(
          GContactPageFragmentData_contents_dataBuilder b) =>
      b..G__typename = 'Contact';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get logo;
  String? get email;
  BuiltList<String>? get telephones;
  BuiltList<GContactPageFragmentData_contents_data_social_networks>?
      get social_networks;
  static Serializer<GContactPageFragmentData_contents_data> get serializer =>
      _$gContactPageFragmentDataContentsDataSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
          GContactPageFragmentData_contents_data.serializer, this)
      as Map<String, dynamic>);
  static GContactPageFragmentData_contents_data? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
          GContactPageFragmentData_contents_data.serializer, json);
}

abstract class GContactPageFragmentData_contents_data_social_networks
    implements
        Built<GContactPageFragmentData_contents_data_social_networks,
            GContactPageFragmentData_contents_data_social_networksBuilder>,
        GContactPageFragment_contents_data_social_networks {
  GContactPageFragmentData_contents_data_social_networks._();

  factory GContactPageFragmentData_contents_data_social_networks(
      [Function(GContactPageFragmentData_contents_data_social_networksBuilder b)
          updates]) = _$GContactPageFragmentData_contents_data_social_networks;

  static void _initializeBuilder(
          GContactPageFragmentData_contents_data_social_networksBuilder b) =>
      b..G__typename = 'SocialNetworkLink';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  _i1.GSocialNetworkIcon get icon;
  String get href;
  static Serializer<GContactPageFragmentData_contents_data_social_networks>
      get serializer =>
          _$gContactPageFragmentDataContentsDataSocialNetworksSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
      GContactPageFragmentData_contents_data_social_networks.serializer,
      this) as Map<String, dynamic>);
  static GContactPageFragmentData_contents_data_social_networks? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
          GContactPageFragmentData_contents_data_social_networks.serializer,
          json);
}
