// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:toto_mobile/src/core/data/network/models/city_fragment.data.gql.dart'
    as _i2;
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i1;

part 'get_cities.data.gql.g.dart';

abstract class GGetCitiesQueryData
    implements Built<GGetCitiesQueryData, GGetCitiesQueryDataBuilder> {
  GGetCitiesQueryData._();

  factory GGetCitiesQueryData(
      [Function(GGetCitiesQueryDataBuilder b) updates]) = _$GGetCitiesQueryData;

  static void _initializeBuilder(GGetCitiesQueryDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GGetCitiesQueryData_getCities>? get getCities;
  static Serializer<GGetCitiesQueryData> get serializer =>
      _$gGetCitiesQueryDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GGetCitiesQueryData.serializer, this)
          as Map<String, dynamic>);
  static GGetCitiesQueryData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GGetCitiesQueryData.serializer, json);
}

abstract class GGetCitiesQueryData_getCities
    implements
        Built<GGetCitiesQueryData_getCities,
            GGetCitiesQueryData_getCitiesBuilder>,
        _i2.GCityFragment {
  GGetCitiesQueryData_getCities._();

  factory GGetCitiesQueryData_getCities(
          [Function(GGetCitiesQueryData_getCitiesBuilder b) updates]) =
      _$GGetCitiesQueryData_getCities;

  static void _initializeBuilder(GGetCitiesQueryData_getCitiesBuilder b) =>
      b..G__typename = 'City';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  String? get prefix;
  String? get postal_code;
  String? get city_type;
  bool? get available;
  static Serializer<GGetCitiesQueryData_getCities> get serializer =>
      _$gGetCitiesQueryDataGetCitiesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetCitiesQueryData_getCities.serializer, this) as Map<String, dynamic>);
  static GGetCitiesQueryData_getCities? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GGetCitiesQueryData_getCities.serializer, json);
}
