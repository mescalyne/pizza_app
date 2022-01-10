// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:toto_mobile/src/core/data/network/models/contact_page_fragment.data.gql.dart'
    as _i2;
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i1;
import 'package:toto_mobile/src/core/data/network/models/toto.schema.schema.gql.dart'
    as _i3;

part 'get_contacts.data.gql.g.dart';

abstract class GGetContactsQueryData
    implements Built<GGetContactsQueryData, GGetContactsQueryDataBuilder> {
  GGetContactsQueryData._();

  factory GGetContactsQueryData(
          [Function(GGetContactsQueryDataBuilder b) updates]) =
      _$GGetContactsQueryData;

  static void _initializeBuilder(GGetContactsQueryDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GGetContactsQueryData_getContacts? get getContacts;
  static Serializer<GGetContactsQueryData> get serializer =>
      _$gGetContactsQueryDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GGetContactsQueryData.serializer, this)
          as Map<String, dynamic>);
  static GGetContactsQueryData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GGetContactsQueryData.serializer, json);
}

abstract class GGetContactsQueryData_getContacts
    implements
        Built<GGetContactsQueryData_getContacts,
            GGetContactsQueryData_getContactsBuilder>,
        _i2.GContactPageFragment {
  GGetContactsQueryData_getContacts._();

  factory GGetContactsQueryData_getContacts(
          [Function(GGetContactsQueryData_getContactsBuilder b) updates]) =
      _$GGetContactsQueryData_getContacts;

  static void _initializeBuilder(GGetContactsQueryData_getContactsBuilder b) =>
      b..G__typename = 'ContactPage';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GGetContactsQueryData_getContacts_city? get city;
  String get title;
  BuiltList<GGetContactsQueryData_getContacts_contents>? get contents;
  static Serializer<GGetContactsQueryData_getContacts> get serializer =>
      _$gGetContactsQueryDataGetContactsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GGetContactsQueryData_getContacts.serializer, this)
      as Map<String, dynamic>);
  static GGetContactsQueryData_getContacts? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GGetContactsQueryData_getContacts.serializer, json);
}

abstract class GGetContactsQueryData_getContacts_city
    implements
        Built<GGetContactsQueryData_getContacts_city,
            GGetContactsQueryData_getContacts_cityBuilder>,
        _i2.GContactPageFragment_city {
  GGetContactsQueryData_getContacts_city._();

  factory GGetContactsQueryData_getContacts_city(
          [Function(GGetContactsQueryData_getContacts_cityBuilder b) updates]) =
      _$GGetContactsQueryData_getContacts_city;

  static void _initializeBuilder(
          GGetContactsQueryData_getContacts_cityBuilder b) =>
      b..G__typename = 'City';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  String? get prefix;
  String? get postal_code;
  String? get city_type;
  bool? get available;
  static Serializer<GGetContactsQueryData_getContacts_city> get serializer =>
      _$gGetContactsQueryDataGetContactsCitySerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GGetContactsQueryData_getContacts_city.serializer, this)
      as Map<String, dynamic>);
  static GGetContactsQueryData_getContacts_city? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GGetContactsQueryData_getContacts_city.serializer, json);
}

abstract class GGetContactsQueryData_getContacts_contents
    implements
        Built<GGetContactsQueryData_getContacts_contents,
            GGetContactsQueryData_getContacts_contentsBuilder>,
        _i2.GContactPageFragment_contents {
  GGetContactsQueryData_getContacts_contents._();

  factory GGetContactsQueryData_getContacts_contents(
      [Function(GGetContactsQueryData_getContacts_contentsBuilder b)
          updates]) = _$GGetContactsQueryData_getContacts_contents;

  static void _initializeBuilder(
          GGetContactsQueryData_getContacts_contentsBuilder b) =>
      b..G__typename = 'ContactContent';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  GGetContactsQueryData_getContacts_contents_data get data;
  static Serializer<GGetContactsQueryData_getContacts_contents>
      get serializer => _$gGetContactsQueryDataGetContactsContentsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GGetContactsQueryData_getContacts_contents.serializer, this)
      as Map<String, dynamic>);
  static GGetContactsQueryData_getContacts_contents? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GGetContactsQueryData_getContacts_contents.serializer, json);
}

abstract class GGetContactsQueryData_getContacts_contents_data
    implements
        Built<GGetContactsQueryData_getContacts_contents_data,
            GGetContactsQueryData_getContacts_contents_dataBuilder>,
        _i2.GContactPageFragment_contents_data {
  GGetContactsQueryData_getContacts_contents_data._();

  factory GGetContactsQueryData_getContacts_contents_data(
      [Function(GGetContactsQueryData_getContacts_contents_dataBuilder b)
          updates]) = _$GGetContactsQueryData_getContacts_contents_data;

  static void _initializeBuilder(
          GGetContactsQueryData_getContacts_contents_dataBuilder b) =>
      b..G__typename = 'Contact';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get logo;
  String? get email;
  BuiltList<String>? get telephones;
  BuiltList<GGetContactsQueryData_getContacts_contents_data_social_networks>?
      get social_networks;
  static Serializer<GGetContactsQueryData_getContacts_contents_data>
      get serializer =>
          _$gGetContactsQueryDataGetContactsContentsDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GGetContactsQueryData_getContacts_contents_data.serializer, this)
      as Map<String, dynamic>);
  static GGetContactsQueryData_getContacts_contents_data? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GGetContactsQueryData_getContacts_contents_data.serializer, json);
}

abstract class GGetContactsQueryData_getContacts_contents_data_social_networks
    implements
        Built<GGetContactsQueryData_getContacts_contents_data_social_networks,
            GGetContactsQueryData_getContacts_contents_data_social_networksBuilder>,
        _i2.GContactPageFragment_contents_data_social_networks {
  GGetContactsQueryData_getContacts_contents_data_social_networks._();

  factory GGetContactsQueryData_getContacts_contents_data_social_networks(
          [Function(
                  GGetContactsQueryData_getContacts_contents_data_social_networksBuilder
                      b)
              updates]) =
      _$GGetContactsQueryData_getContacts_contents_data_social_networks;

  static void _initializeBuilder(
          GGetContactsQueryData_getContacts_contents_data_social_networksBuilder
              b) =>
      b..G__typename = 'SocialNetworkLink';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  _i3.GSocialNetworkIcon get icon;
  String get href;
  static Serializer<
          GGetContactsQueryData_getContacts_contents_data_social_networks>
      get serializer =>
          _$gGetContactsQueryDataGetContactsContentsDataSocialNetworksSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetContactsQueryData_getContacts_contents_data_social_networks
          .serializer,
      this) as Map<String, dynamic>);
  static GGetContactsQueryData_getContacts_contents_data_social_networks?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GGetContactsQueryData_getContacts_contents_data_social_networks
              .serializer,
          json);
}
