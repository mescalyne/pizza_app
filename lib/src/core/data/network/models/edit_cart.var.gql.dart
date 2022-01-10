// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i2;
import 'package:toto_mobile/src/core/data/network/models/toto.schema.schema.gql.dart'
    as _i1;

part 'edit_cart.var.gql.g.dart';

abstract class GEditCartVars
    implements Built<GEditCartVars, GEditCartVarsBuilder> {
  GEditCartVars._();

  factory GEditCartVars([Function(GEditCartVarsBuilder b) updates]) =
      _$GEditCartVars;

  _i1.GeditCartInput? get input;
  static Serializer<GEditCartVars> get serializer => _$gEditCartVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GEditCartVars.serializer, this)
          as Map<String, dynamic>);
  static GEditCartVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GEditCartVars.serializer, json);
}
