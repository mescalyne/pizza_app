// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:toto_mobile/src/core/data/network/models/group_fragment.data.gql.dart'
    as _i2;
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i1;

part 'get_groups.data.gql.g.dart';

abstract class GGetGroupsQueryData
    implements Built<GGetGroupsQueryData, GGetGroupsQueryDataBuilder> {
  GGetGroupsQueryData._();

  factory GGetGroupsQueryData(
      [Function(GGetGroupsQueryDataBuilder b) updates]) = _$GGetGroupsQueryData;

  static void _initializeBuilder(GGetGroupsQueryDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GGetGroupsQueryData_getGroups>? get getGroups;
  static Serializer<GGetGroupsQueryData> get serializer =>
      _$gGetGroupsQueryDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GGetGroupsQueryData.serializer, this)
          as Map<String, dynamic>);
  static GGetGroupsQueryData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GGetGroupsQueryData.serializer, json);
}

abstract class GGetGroupsQueryData_getGroups
    implements
        Built<GGetGroupsQueryData_getGroups,
            GGetGroupsQueryData_getGroupsBuilder>,
        _i2.GGroupFragment {
  GGetGroupsQueryData_getGroups._();

  factory GGetGroupsQueryData_getGroups(
          [Function(GGetGroupsQueryData_getGroupsBuilder b) updates]) =
      _$GGetGroupsQueryData_getGroups;

  static void _initializeBuilder(GGetGroupsQueryData_getGroupsBuilder b) =>
      b..G__typename = 'Group';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get parentGroup;
  BuiltList<GGetGroupsQueryData_getGroups_images>? get images;
  String get name;
  static Serializer<GGetGroupsQueryData_getGroups> get serializer =>
      _$gGetGroupsQueryDataGetGroupsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetGroupsQueryData_getGroups.serializer, this) as Map<String, dynamic>);
  static GGetGroupsQueryData_getGroups? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GGetGroupsQueryData_getGroups.serializer, json);
}

abstract class GGetGroupsQueryData_getGroups_images
    implements
        Built<GGetGroupsQueryData_getGroups_images,
            GGetGroupsQueryData_getGroups_imagesBuilder>,
        _i2.GGroupFragment_images {
  GGetGroupsQueryData_getGroups_images._();

  factory GGetGroupsQueryData_getGroups_images(
          [Function(GGetGroupsQueryData_getGroups_imagesBuilder b) updates]) =
      _$GGetGroupsQueryData_getGroups_images;

  static void _initializeBuilder(
          GGetGroupsQueryData_getGroups_imagesBuilder b) =>
      b..G__typename = 'ProductImage';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get imageUrl;
  static Serializer<GGetGroupsQueryData_getGroups_images> get serializer =>
      _$gGetGroupsQueryDataGetGroupsImagesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GGetGroupsQueryData_getGroups_images.serializer, this)
      as Map<String, dynamic>);
  static GGetGroupsQueryData_getGroups_images? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GGetGroupsQueryData_getGroups_images.serializer, json);
}
