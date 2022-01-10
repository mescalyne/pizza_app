// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i2;
import 'package:toto_mobile/src/core/data/network/models/toto.schema.schema.gql.dart'
    as _i1;

part 'unique_page_fragment.data.gql.g.dart';

abstract class GUniquePageFragment {
  String get G__typename;
  String get title;
  String get slug;
  GUniquePageFragment_icon? get icon;
  Map<String, dynamic> toJson();
}

abstract class GUniquePageFragment_icon {
  String get G__typename;
  _i1.GTypeFile? get type;
  String? get url;
  String? get url_thumbnail;
  Map<String, dynamic> toJson();
}

abstract class GUniquePageFragmentData
    implements
        Built<GUniquePageFragmentData, GUniquePageFragmentDataBuilder>,
        GUniquePageFragment {
  GUniquePageFragmentData._();

  factory GUniquePageFragmentData(
          [Function(GUniquePageFragmentDataBuilder b) updates]) =
      _$GUniquePageFragmentData;

  static void _initializeBuilder(GUniquePageFragmentDataBuilder b) =>
      b..G__typename = 'Page';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get title;
  String get slug;
  GUniquePageFragmentData_icon? get icon;
  static Serializer<GUniquePageFragmentData> get serializer =>
      _$gUniquePageFragmentDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GUniquePageFragmentData.serializer, this)
          as Map<String, dynamic>);
  static GUniquePageFragmentData? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GUniquePageFragmentData.serializer, json);
}

abstract class GUniquePageFragmentData_icon
    implements
        Built<GUniquePageFragmentData_icon,
            GUniquePageFragmentData_iconBuilder>,
        GUniquePageFragment_icon {
  GUniquePageFragmentData_icon._();

  factory GUniquePageFragmentData_icon(
          [Function(GUniquePageFragmentData_iconBuilder b) updates]) =
      _$GUniquePageFragmentData_icon;

  static void _initializeBuilder(GUniquePageFragmentData_iconBuilder b) =>
      b..G__typename = 'File';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  _i1.GTypeFile? get type;
  String? get url;
  String? get url_thumbnail;
  static Serializer<GUniquePageFragmentData_icon> get serializer =>
      _$gUniquePageFragmentDataIconSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
      GUniquePageFragmentData_icon.serializer, this) as Map<String, dynamic>);
  static GUniquePageFragmentData_icon? fromJson(Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GUniquePageFragmentData_icon.serializer, json);
}
