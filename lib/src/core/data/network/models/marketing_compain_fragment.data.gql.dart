// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:toto_mobile/src/core/data/network/models/file_fragment.data.gql.dart'
    as _i1;
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i2;

part 'marketing_compain_fragment.data.gql.g.dart';

abstract class GMarketingCompaignFragment {
  String get G__typename;
  String get id;
  String? get name;
  String? get description;
  GMarketingCompaignFragment_image? get image;
  DateTime? get period_from;
  DateTime? get period_to;
  bool? get active;
  Map<String, dynamic> toJson();
}

abstract class GMarketingCompaignFragment_image implements _i1.GFileFragment {
  String get G__typename;
  String get id;
  String? get size;
  String? get author;
  String? get url;
  Map<String, dynamic> toJson();
}

abstract class GMarketingCompaignFragmentData
    implements
        Built<GMarketingCompaignFragmentData,
            GMarketingCompaignFragmentDataBuilder>,
        GMarketingCompaignFragment {
  GMarketingCompaignFragmentData._();

  factory GMarketingCompaignFragmentData(
          [Function(GMarketingCompaignFragmentDataBuilder b) updates]) =
      _$GMarketingCompaignFragmentData;

  static void _initializeBuilder(GMarketingCompaignFragmentDataBuilder b) =>
      b..G__typename = 'MarketingCampaign';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get name;
  String? get description;
  GMarketingCompaignFragmentData_image? get image;
  DateTime? get period_from;
  DateTime? get period_to;
  bool? get active;
  static Serializer<GMarketingCompaignFragmentData> get serializer =>
      _$gMarketingCompaignFragmentDataSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
      GMarketingCompaignFragmentData.serializer, this) as Map<String, dynamic>);
  static GMarketingCompaignFragmentData? fromJson(Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GMarketingCompaignFragmentData.serializer, json);
}

abstract class GMarketingCompaignFragmentData_image
    implements
        Built<GMarketingCompaignFragmentData_image,
            GMarketingCompaignFragmentData_imageBuilder>,
        GMarketingCompaignFragment_image,
        _i1.GFileFragment {
  GMarketingCompaignFragmentData_image._();

  factory GMarketingCompaignFragmentData_image(
          [Function(GMarketingCompaignFragmentData_imageBuilder b) updates]) =
      _$GMarketingCompaignFragmentData_image;

  static void _initializeBuilder(
          GMarketingCompaignFragmentData_imageBuilder b) =>
      b..G__typename = 'File';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get size;
  String? get author;
  String? get url;
  static Serializer<GMarketingCompaignFragmentData_image> get serializer =>
      _$gMarketingCompaignFragmentDataImageSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers
          .serializeWith(GMarketingCompaignFragmentData_image.serializer, this)
      as Map<String, dynamic>);
  static GMarketingCompaignFragmentData_image? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
          GMarketingCompaignFragmentData_image.serializer, json);
}
