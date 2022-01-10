// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i1;

part 'group_fragment.data.gql.g.dart';

abstract class GGroupFragment {
  String get G__typename;
  String get id;
  String? get parentGroup;
  BuiltList<GGroupFragment_images>? get images;
  String get name;
  Map<String, dynamic> toJson();
}

abstract class GGroupFragment_images {
  String get G__typename;
  String? get imageUrl;
  Map<String, dynamic> toJson();
}

abstract class GGroupFragmentData
    implements
        Built<GGroupFragmentData, GGroupFragmentDataBuilder>,
        GGroupFragment {
  GGroupFragmentData._();

  factory GGroupFragmentData([Function(GGroupFragmentDataBuilder b) updates]) =
      _$GGroupFragmentData;

  static void _initializeBuilder(GGroupFragmentDataBuilder b) =>
      b..G__typename = 'Group';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get parentGroup;
  BuiltList<GGroupFragmentData_images>? get images;
  String get name;
  static Serializer<GGroupFragmentData> get serializer =>
      _$gGroupFragmentDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GGroupFragmentData.serializer, this)
          as Map<String, dynamic>);
  static GGroupFragmentData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GGroupFragmentData.serializer, json);
}

abstract class GGroupFragmentData_images
    implements
        Built<GGroupFragmentData_images, GGroupFragmentData_imagesBuilder>,
        GGroupFragment_images {
  GGroupFragmentData_images._();

  factory GGroupFragmentData_images(
          [Function(GGroupFragmentData_imagesBuilder b) updates]) =
      _$GGroupFragmentData_images;

  static void _initializeBuilder(GGroupFragmentData_imagesBuilder b) =>
      b..G__typename = 'ProductImage';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get imageUrl;
  static Serializer<GGroupFragmentData_images> get serializer =>
      _$gGroupFragmentDataImagesSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GGroupFragmentData_images.serializer, this)
          as Map<String, dynamic>);
  static GGroupFragmentData_images? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GGroupFragmentData_images.serializer, json);
}
