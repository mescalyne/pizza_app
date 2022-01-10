// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:toto_mobile/src/core/data/network/models/group_fragment.data.gql.dart'
    as _i2;
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i1;

part 'get_group.data.gql.g.dart';

abstract class GGetGroupQueryData
    implements Built<GGetGroupQueryData, GGetGroupQueryDataBuilder> {
  GGetGroupQueryData._();

  factory GGetGroupQueryData([Function(GGetGroupQueryDataBuilder b) updates]) =
      _$GGetGroupQueryData;

  static void _initializeBuilder(GGetGroupQueryDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GGetGroupQueryData_getGroup? get getGroup;
  static Serializer<GGetGroupQueryData> get serializer =>
      _$gGetGroupQueryDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GGetGroupQueryData.serializer, this)
          as Map<String, dynamic>);
  static GGetGroupQueryData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GGetGroupQueryData.serializer, json);
}

abstract class GGetGroupQueryData_getGroup
    implements
        Built<GGetGroupQueryData_getGroup, GGetGroupQueryData_getGroupBuilder>,
        _i2.GGroupFragment {
  GGetGroupQueryData_getGroup._();

  factory GGetGroupQueryData_getGroup(
          [Function(GGetGroupQueryData_getGroupBuilder b) updates]) =
      _$GGetGroupQueryData_getGroup;

  static void _initializeBuilder(GGetGroupQueryData_getGroupBuilder b) =>
      b..G__typename = 'Group';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get parentGroup;
  BuiltList<GGetGroupQueryData_getGroup_images>? get images;
  String get name;
  static Serializer<GGetGroupQueryData_getGroup> get serializer =>
      _$gGetGroupQueryDataGetGroupSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetGroupQueryData_getGroup.serializer, this) as Map<String, dynamic>);
  static GGetGroupQueryData_getGroup? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GGetGroupQueryData_getGroup.serializer, json);
}

abstract class GGetGroupQueryData_getGroup_images
    implements
        Built<GGetGroupQueryData_getGroup_images,
            GGetGroupQueryData_getGroup_imagesBuilder>,
        _i2.GGroupFragment_images {
  GGetGroupQueryData_getGroup_images._();

  factory GGetGroupQueryData_getGroup_images(
          [Function(GGetGroupQueryData_getGroup_imagesBuilder b) updates]) =
      _$GGetGroupQueryData_getGroup_images;

  static void _initializeBuilder(GGetGroupQueryData_getGroup_imagesBuilder b) =>
      b..G__typename = 'ProductImage';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get imageUrl;
  static Serializer<GGetGroupQueryData_getGroup_images> get serializer =>
      _$gGetGroupQueryDataGetGroupImagesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GGetGroupQueryData_getGroup_images.serializer, this)
      as Map<String, dynamic>);
  static GGetGroupQueryData_getGroup_images? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GGetGroupQueryData_getGroup_images.serializer, json);
}
