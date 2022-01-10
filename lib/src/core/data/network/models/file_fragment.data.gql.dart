// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i1;

part 'file_fragment.data.gql.g.dart';

abstract class GFileFragment {
  String get G__typename;
  String get id;
  String? get size;
  String? get author;
  String? get url;
  Map<String, dynamic> toJson();
}

abstract class GFileFragmentData
    implements
        Built<GFileFragmentData, GFileFragmentDataBuilder>,
        GFileFragment {
  GFileFragmentData._();

  factory GFileFragmentData([Function(GFileFragmentDataBuilder b) updates]) =
      _$GFileFragmentData;

  static void _initializeBuilder(GFileFragmentDataBuilder b) =>
      b..G__typename = 'File';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get size;
  String? get author;
  String? get url;
  static Serializer<GFileFragmentData> get serializer =>
      _$gFileFragmentDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GFileFragmentData.serializer, this)
          as Map<String, dynamic>);
  static GFileFragmentData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GFileFragmentData.serializer, json);
}
