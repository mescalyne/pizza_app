// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i1;

part 'city_fragment.data.gql.g.dart';

abstract class GCityFragment {
  String get G__typename;
  String get id;
  String get name;
  String? get prefix;
  String? get postal_code;
  String? get city_type;
  bool? get available;
  Map<String, dynamic> toJson();
}

abstract class GCityFragmentData
    implements
        Built<GCityFragmentData, GCityFragmentDataBuilder>,
        GCityFragment {
  GCityFragmentData._();

  factory GCityFragmentData([Function(GCityFragmentDataBuilder b) updates]) =
      _$GCityFragmentData;

  static void _initializeBuilder(GCityFragmentDataBuilder b) =>
      b..G__typename = 'City';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  String? get prefix;
  String? get postal_code;
  String? get city_type;
  bool? get available;
  static Serializer<GCityFragmentData> get serializer =>
      _$gCityFragmentDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GCityFragmentData.serializer, this)
          as Map<String, dynamic>);
  static GCityFragmentData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GCityFragmentData.serializer, json);
}
