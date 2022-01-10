// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i1;
import 'package:toto_mobile/src/core/data/network/models/toto.schema.schema.gql.dart'
    as _i3;
import 'package:toto_mobile/src/core/data/network/models/unique_page_fragment.data.gql.dart'
    as _i2;

part 'get_unique_pages.data.gql.g.dart';

abstract class GGetUniquePagesData
    implements Built<GGetUniquePagesData, GGetUniquePagesDataBuilder> {
  GGetUniquePagesData._();

  factory GGetUniquePagesData(
      [Function(GGetUniquePagesDataBuilder b) updates]) = _$GGetUniquePagesData;

  static void _initializeBuilder(GGetUniquePagesDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GGetUniquePagesData_getUniquePages>? get getUniquePages;
  static Serializer<GGetUniquePagesData> get serializer =>
      _$gGetUniquePagesDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GGetUniquePagesData.serializer, this)
          as Map<String, dynamic>);
  static GGetUniquePagesData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GGetUniquePagesData.serializer, json);
}

abstract class GGetUniquePagesData_getUniquePages
    implements
        Built<GGetUniquePagesData_getUniquePages,
            GGetUniquePagesData_getUniquePagesBuilder>,
        _i2.GUniquePageFragment {
  GGetUniquePagesData_getUniquePages._();

  factory GGetUniquePagesData_getUniquePages(
          [Function(GGetUniquePagesData_getUniquePagesBuilder b) updates]) =
      _$GGetUniquePagesData_getUniquePages;

  static void _initializeBuilder(GGetUniquePagesData_getUniquePagesBuilder b) =>
      b..G__typename = 'Page';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get title;
  String get slug;
  GGetUniquePagesData_getUniquePages_icon? get icon;
  static Serializer<GGetUniquePagesData_getUniquePages> get serializer =>
      _$gGetUniquePagesDataGetUniquePagesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GGetUniquePagesData_getUniquePages.serializer, this)
      as Map<String, dynamic>);
  static GGetUniquePagesData_getUniquePages? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GGetUniquePagesData_getUniquePages.serializer, json);
}

abstract class GGetUniquePagesData_getUniquePages_icon
    implements
        Built<GGetUniquePagesData_getUniquePages_icon,
            GGetUniquePagesData_getUniquePages_iconBuilder>,
        _i2.GUniquePageFragment_icon {
  GGetUniquePagesData_getUniquePages_icon._();

  factory GGetUniquePagesData_getUniquePages_icon(
      [Function(GGetUniquePagesData_getUniquePages_iconBuilder b)
          updates]) = _$GGetUniquePagesData_getUniquePages_icon;

  static void _initializeBuilder(
          GGetUniquePagesData_getUniquePages_iconBuilder b) =>
      b..G__typename = 'File';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  _i3.GTypeFile? get type;
  String? get url;
  String? get url_thumbnail;
  static Serializer<GGetUniquePagesData_getUniquePages_icon> get serializer =>
      _$gGetUniquePagesDataGetUniquePagesIconSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GGetUniquePagesData_getUniquePages_icon.serializer, this)
      as Map<String, dynamic>);
  static GGetUniquePagesData_getUniquePages_icon? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GGetUniquePagesData_getUniquePages_icon.serializer, json);
}
