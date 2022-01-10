// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i2;
import 'package:toto_mobile/src/core/data/network/models/toto.schema.schema.gql.dart'
    as _i1;

part 'page_fragment.data.gql.g.dart';

abstract class GPageFragment {
  String get G__typename;
  String get title;
  BuiltList<GPageFragment_contents>? get contents;
  Map<String, dynamic> toJson();
}

abstract class GPageFragment_contents {
  String get G__typename;
  _i1.GJsonData? get data;
  int? get order;
  Map<String, dynamic> toJson();
}

abstract class GPageFragmentData
    implements
        Built<GPageFragmentData, GPageFragmentDataBuilder>,
        GPageFragment {
  GPageFragmentData._();

  factory GPageFragmentData([Function(GPageFragmentDataBuilder b) updates]) =
      _$GPageFragmentData;

  static void _initializeBuilder(GPageFragmentDataBuilder b) =>
      b..G__typename = 'Page';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get title;
  BuiltList<GPageFragmentData_contents>? get contents;
  static Serializer<GPageFragmentData> get serializer =>
      _$gPageFragmentDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GPageFragmentData.serializer, this)
          as Map<String, dynamic>);
  static GPageFragmentData? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GPageFragmentData.serializer, json);
}

abstract class GPageFragmentData_contents
    implements
        Built<GPageFragmentData_contents, GPageFragmentData_contentsBuilder>,
        GPageFragment_contents {
  GPageFragmentData_contents._();

  factory GPageFragmentData_contents(
          [Function(GPageFragmentData_contentsBuilder b) updates]) =
      _$GPageFragmentData_contents;

  static void _initializeBuilder(GPageFragmentData_contentsBuilder b) =>
      b..G__typename = 'PageContent';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  _i1.GJsonData? get data;
  int? get order;
  static Serializer<GPageFragmentData_contents> get serializer =>
      _$gPageFragmentDataContentsSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
      GPageFragmentData_contents.serializer, this) as Map<String, dynamic>);
  static GPageFragmentData_contents? fromJson(Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GPageFragmentData_contents.serializer, json);
}
