// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i1;

part 'terminal_fragment.data.gql.g.dart';

abstract class GTerminalFragment {
  String get G__typename;
  String get id;
  Map<String, dynamic> toJson();
}

abstract class GTerminalFragmentData
    implements
        Built<GTerminalFragmentData, GTerminalFragmentDataBuilder>,
        GTerminalFragment {
  GTerminalFragmentData._();

  factory GTerminalFragmentData(
          [Function(GTerminalFragmentDataBuilder b) updates]) =
      _$GTerminalFragmentData;

  static void _initializeBuilder(GTerminalFragmentDataBuilder b) =>
      b..G__typename = 'Terminal';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  static Serializer<GTerminalFragmentData> get serializer =>
      _$gTerminalFragmentDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GTerminalFragmentData.serializer, this)
          as Map<String, dynamic>);
  static GTerminalFragmentData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GTerminalFragmentData.serializer, json);
}
