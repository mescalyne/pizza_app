// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i1;

part 'paginator_info_fragment.data.gql.g.dart';

abstract class GPaginatorInfoFragment {
  String get G__typename;
  int get count;
  int get currentPage;
  int? get firstItem;
  bool get hasMorePages;
  int? get lastItem;
  int get lastPage;
  int get perPage;
  int get total;
  Map<String, dynamic> toJson();
}

abstract class GPaginatorInfoFragmentData
    implements
        Built<GPaginatorInfoFragmentData, GPaginatorInfoFragmentDataBuilder>,
        GPaginatorInfoFragment {
  GPaginatorInfoFragmentData._();

  factory GPaginatorInfoFragmentData(
          [Function(GPaginatorInfoFragmentDataBuilder b) updates]) =
      _$GPaginatorInfoFragmentData;

  static void _initializeBuilder(GPaginatorInfoFragmentDataBuilder b) =>
      b..G__typename = 'PaginatorInfo';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get count;
  int get currentPage;
  int? get firstItem;
  bool get hasMorePages;
  int? get lastItem;
  int get lastPage;
  int get perPage;
  int get total;
  static Serializer<GPaginatorInfoFragmentData> get serializer =>
      _$gPaginatorInfoFragmentDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GPaginatorInfoFragmentData.serializer, this) as Map<String, dynamic>);
  static GPaginatorInfoFragmentData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GPaginatorInfoFragmentData.serializer, json);
}
