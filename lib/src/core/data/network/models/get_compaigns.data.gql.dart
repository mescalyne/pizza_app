// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:toto_mobile/src/core/data/network/models/file_fragment.data.gql.dart'
    as _i3;
import 'package:toto_mobile/src/core/data/network/models/marketing_compain_fragment.data.gql.dart'
    as _i2;
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i1;

part 'get_compaigns.data.gql.g.dart';

abstract class GGetCompaignsData
    implements Built<GGetCompaignsData, GGetCompaignsDataBuilder> {
  GGetCompaignsData._();

  factory GGetCompaignsData([Function(GGetCompaignsDataBuilder b) updates]) =
      _$GGetCompaignsData;

  static void _initializeBuilder(GGetCompaignsDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GGetCompaignsData_getMarketingCampaigns>? get getMarketingCampaigns;
  static Serializer<GGetCompaignsData> get serializer =>
      _$gGetCompaignsDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GGetCompaignsData.serializer, this)
          as Map<String, dynamic>);
  static GGetCompaignsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GGetCompaignsData.serializer, json);
}

abstract class GGetCompaignsData_getMarketingCampaigns
    implements
        Built<GGetCompaignsData_getMarketingCampaigns,
            GGetCompaignsData_getMarketingCampaignsBuilder>,
        _i2.GMarketingCompaignFragment {
  GGetCompaignsData_getMarketingCampaigns._();

  factory GGetCompaignsData_getMarketingCampaigns(
      [Function(GGetCompaignsData_getMarketingCampaignsBuilder b)
          updates]) = _$GGetCompaignsData_getMarketingCampaigns;

  static void _initializeBuilder(
          GGetCompaignsData_getMarketingCampaignsBuilder b) =>
      b..G__typename = 'MarketingCampaign';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get name;
  String? get description;
  GGetCompaignsData_getMarketingCampaigns_image? get image;
  DateTime? get period_from;
  DateTime? get period_to;
  bool? get active;
  static Serializer<GGetCompaignsData_getMarketingCampaigns> get serializer =>
      _$gGetCompaignsDataGetMarketingCampaignsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GGetCompaignsData_getMarketingCampaigns.serializer, this)
      as Map<String, dynamic>);
  static GGetCompaignsData_getMarketingCampaigns? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GGetCompaignsData_getMarketingCampaigns.serializer, json);
}

abstract class GGetCompaignsData_getMarketingCampaigns_image
    implements
        Built<GGetCompaignsData_getMarketingCampaigns_image,
            GGetCompaignsData_getMarketingCampaigns_imageBuilder>,
        _i2.GMarketingCompaignFragment_image,
        _i3.GFileFragment {
  GGetCompaignsData_getMarketingCampaigns_image._();

  factory GGetCompaignsData_getMarketingCampaigns_image(
      [Function(GGetCompaignsData_getMarketingCampaigns_imageBuilder b)
          updates]) = _$GGetCompaignsData_getMarketingCampaigns_image;

  static void _initializeBuilder(
          GGetCompaignsData_getMarketingCampaigns_imageBuilder b) =>
      b..G__typename = 'File';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get size;
  String? get author;
  String? get url;
  static Serializer<GGetCompaignsData_getMarketingCampaigns_image>
      get serializer => _$gGetCompaignsDataGetMarketingCampaignsImageSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GGetCompaignsData_getMarketingCampaigns_image.serializer, this)
      as Map<String, dynamic>);
  static GGetCompaignsData_getMarketingCampaigns_image? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GGetCompaignsData_getMarketingCampaigns_image.serializer, json);
}
