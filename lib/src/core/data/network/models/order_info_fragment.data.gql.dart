// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i2;
import 'package:toto_mobile/src/core/data/network/models/toto.schema.schema.gql.dart'
    as _i1;

part 'order_info_fragment.data.gql.g.dart';

abstract class GOrderInfoFragment {
  String get G__typename;
  String? get order_id;
  String? get delivery_cancel_cause;
  String? get delivery_cancel_comment;
  _i1.GDateTime? get delivery_date;
  _i1.GDateTime? get actual_time;
  String? get bill_time;
  String? get cancel_time;
  String? get confirm_time;
  _i1.GDateTime? get created_time;
  _i1.GDateTime? get print_time;
  _i1.GDateTime? get send_time;
  int? get persons_count;
  Map<String, dynamic> toJson();
}

abstract class GOrderInfoFragmentData
    implements
        Built<GOrderInfoFragmentData, GOrderInfoFragmentDataBuilder>,
        GOrderInfoFragment {
  GOrderInfoFragmentData._();

  factory GOrderInfoFragmentData(
          [Function(GOrderInfoFragmentDataBuilder b) updates]) =
      _$GOrderInfoFragmentData;

  static void _initializeBuilder(GOrderInfoFragmentDataBuilder b) =>
      b..G__typename = 'OrderInfo';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get order_id;
  String? get delivery_cancel_cause;
  String? get delivery_cancel_comment;
  _i1.GDateTime? get delivery_date;
  _i1.GDateTime? get actual_time;
  String? get bill_time;
  String? get cancel_time;
  String? get confirm_time;
  _i1.GDateTime? get created_time;
  _i1.GDateTime? get print_time;
  _i1.GDateTime? get send_time;
  int? get persons_count;
  static Serializer<GOrderInfoFragmentData> get serializer =>
      _$gOrderInfoFragmentDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GOrderInfoFragmentData.serializer, this)
          as Map<String, dynamic>);
  static GOrderInfoFragmentData? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GOrderInfoFragmentData.serializer, json);
}
