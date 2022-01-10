// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:toto_mobile/src/core/data/network/models/page_fragment.data.gql.dart'
    as _i2;
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i1;
import 'package:toto_mobile/src/core/data/network/models/toto.schema.schema.gql.dart'
    as _i3;

part 'get_page.data.gql.g.dart';

abstract class GGetPageQueryData
    implements Built<GGetPageQueryData, GGetPageQueryDataBuilder> {
  GGetPageQueryData._();

  factory GGetPageQueryData([Function(GGetPageQueryDataBuilder b) updates]) =
      _$GGetPageQueryData;

  static void _initializeBuilder(GGetPageQueryDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GGetPageQueryData_getPage? get getPage;
  static Serializer<GGetPageQueryData> get serializer =>
      _$gGetPageQueryDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GGetPageQueryData.serializer, this)
          as Map<String, dynamic>);
  static GGetPageQueryData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GGetPageQueryData.serializer, json);
}

abstract class GGetPageQueryData_getPage
    implements
        Built<GGetPageQueryData_getPage, GGetPageQueryData_getPageBuilder>,
        _i2.GPageFragment {
  GGetPageQueryData_getPage._();

  factory GGetPageQueryData_getPage(
          [Function(GGetPageQueryData_getPageBuilder b) updates]) =
      _$GGetPageQueryData_getPage;

  static void _initializeBuilder(GGetPageQueryData_getPageBuilder b) =>
      b..G__typename = 'Page';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get title;
  BuiltList<GGetPageQueryData_getPage_contents>? get contents;
  static Serializer<GGetPageQueryData_getPage> get serializer =>
      _$gGetPageQueryDataGetPageSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GGetPageQueryData_getPage.serializer, this)
          as Map<String, dynamic>);
  static GGetPageQueryData_getPage? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GGetPageQueryData_getPage.serializer, json);
}

abstract class GGetPageQueryData_getPage_contents
    implements
        Built<GGetPageQueryData_getPage_contents,
            GGetPageQueryData_getPage_contentsBuilder>,
        _i2.GPageFragment_contents {
  GGetPageQueryData_getPage_contents._();

  factory GGetPageQueryData_getPage_contents(
          [Function(GGetPageQueryData_getPage_contentsBuilder b) updates]) =
      _$GGetPageQueryData_getPage_contents;

  static void _initializeBuilder(GGetPageQueryData_getPage_contentsBuilder b) =>
      b..G__typename = 'PageContent';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  _i3.GJsonData? get data;
  int? get order;
  static Serializer<GGetPageQueryData_getPage_contents> get serializer =>
      _$gGetPageQueryDataGetPageContentsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GGetPageQueryData_getPage_contents.serializer, this)
      as Map<String, dynamic>);
  static GGetPageQueryData_getPage_contents? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GGetPageQueryData_getPage_contents.serializer, json);
}
