// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i2;
import 'package:toto_mobile/src/core/data/network/models/toto.schema.schema.gql.dart'
    as _i1;

part 'feedback_options_fragment.data.gql.g.dart';

abstract class GFeedbackOptionFragment {
  String get G__typename;
  int get id;
  String get type;
  String get text;
  GFeedbackOptionFragment_icon? get icon;
  Map<String, dynamic> toJson();
}

abstract class GFeedbackOptionFragment_icon {
  String get G__typename;
  _i1.GTypeFile? get type;
  String? get url;
  String? get url_thumbnail;
  Map<String, dynamic> toJson();
}

abstract class GFeedbackOptionFragmentData
    implements
        Built<GFeedbackOptionFragmentData, GFeedbackOptionFragmentDataBuilder>,
        GFeedbackOptionFragment {
  GFeedbackOptionFragmentData._();

  factory GFeedbackOptionFragmentData(
          [Function(GFeedbackOptionFragmentDataBuilder b) updates]) =
      _$GFeedbackOptionFragmentData;

  static void _initializeBuilder(GFeedbackOptionFragmentDataBuilder b) =>
      b..G__typename = 'FeedbackOption';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  String get type;
  String get text;
  GFeedbackOptionFragmentData_icon? get icon;
  static Serializer<GFeedbackOptionFragmentData> get serializer =>
      _$gFeedbackOptionFragmentDataSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
      GFeedbackOptionFragmentData.serializer, this) as Map<String, dynamic>);
  static GFeedbackOptionFragmentData? fromJson(Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GFeedbackOptionFragmentData.serializer, json);
}

abstract class GFeedbackOptionFragmentData_icon
    implements
        Built<GFeedbackOptionFragmentData_icon,
            GFeedbackOptionFragmentData_iconBuilder>,
        GFeedbackOptionFragment_icon {
  GFeedbackOptionFragmentData_icon._();

  factory GFeedbackOptionFragmentData_icon(
          [Function(GFeedbackOptionFragmentData_iconBuilder b) updates]) =
      _$GFeedbackOptionFragmentData_icon;

  static void _initializeBuilder(GFeedbackOptionFragmentData_iconBuilder b) =>
      b..G__typename = 'File';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  _i1.GTypeFile? get type;
  String? get url;
  String? get url_thumbnail;
  static Serializer<GFeedbackOptionFragmentData_icon> get serializer =>
      _$gFeedbackOptionFragmentDataIconSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers
          .serializeWith(GFeedbackOptionFragmentData_icon.serializer, this)
      as Map<String, dynamic>);
  static GFeedbackOptionFragmentData_icon? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GFeedbackOptionFragmentData_icon.serializer, json);
}
