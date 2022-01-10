// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:toto_mobile/src/core/data/network/models/feedback_options_fragment.data.gql.dart'
    as _i2;
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i1;
import 'package:toto_mobile/src/core/data/network/models/toto.schema.schema.gql.dart'
    as _i3;

part 'get_feedback_options.data.gql.g.dart';

abstract class GGetFeedbackOptionsData
    implements Built<GGetFeedbackOptionsData, GGetFeedbackOptionsDataBuilder> {
  GGetFeedbackOptionsData._();

  factory GGetFeedbackOptionsData(
          [Function(GGetFeedbackOptionsDataBuilder b) updates]) =
      _$GGetFeedbackOptionsData;

  static void _initializeBuilder(GGetFeedbackOptionsDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GGetFeedbackOptionsData_getFeedbackOptions>? get getFeedbackOptions;
  static Serializer<GGetFeedbackOptionsData> get serializer =>
      _$gGetFeedbackOptionsDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GGetFeedbackOptionsData.serializer, this)
          as Map<String, dynamic>);
  static GGetFeedbackOptionsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GGetFeedbackOptionsData.serializer, json);
}

abstract class GGetFeedbackOptionsData_getFeedbackOptions
    implements
        Built<GGetFeedbackOptionsData_getFeedbackOptions,
            GGetFeedbackOptionsData_getFeedbackOptionsBuilder>,
        _i2.GFeedbackOptionFragment {
  GGetFeedbackOptionsData_getFeedbackOptions._();

  factory GGetFeedbackOptionsData_getFeedbackOptions(
      [Function(GGetFeedbackOptionsData_getFeedbackOptionsBuilder b)
          updates]) = _$GGetFeedbackOptionsData_getFeedbackOptions;

  static void _initializeBuilder(
          GGetFeedbackOptionsData_getFeedbackOptionsBuilder b) =>
      b..G__typename = 'FeedbackOption';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  String get type;
  String get text;
  GGetFeedbackOptionsData_getFeedbackOptions_icon? get icon;
  static Serializer<GGetFeedbackOptionsData_getFeedbackOptions>
      get serializer => _$gGetFeedbackOptionsDataGetFeedbackOptionsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GGetFeedbackOptionsData_getFeedbackOptions.serializer, this)
      as Map<String, dynamic>);
  static GGetFeedbackOptionsData_getFeedbackOptions? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GGetFeedbackOptionsData_getFeedbackOptions.serializer, json);
}

abstract class GGetFeedbackOptionsData_getFeedbackOptions_icon
    implements
        Built<GGetFeedbackOptionsData_getFeedbackOptions_icon,
            GGetFeedbackOptionsData_getFeedbackOptions_iconBuilder>,
        _i2.GFeedbackOptionFragment_icon {
  GGetFeedbackOptionsData_getFeedbackOptions_icon._();

  factory GGetFeedbackOptionsData_getFeedbackOptions_icon(
      [Function(GGetFeedbackOptionsData_getFeedbackOptions_iconBuilder b)
          updates]) = _$GGetFeedbackOptionsData_getFeedbackOptions_icon;

  static void _initializeBuilder(
          GGetFeedbackOptionsData_getFeedbackOptions_iconBuilder b) =>
      b..G__typename = 'File';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  _i3.GTypeFile? get type;
  String? get url;
  String? get url_thumbnail;
  static Serializer<GGetFeedbackOptionsData_getFeedbackOptions_icon>
      get serializer =>
          _$gGetFeedbackOptionsDataGetFeedbackOptionsIconSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GGetFeedbackOptionsData_getFeedbackOptions_icon.serializer, this)
      as Map<String, dynamic>);
  static GGetFeedbackOptionsData_getFeedbackOptions_icon? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GGetFeedbackOptionsData_getFeedbackOptions_icon.serializer, json);
}
