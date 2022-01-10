// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:toto_mobile/src/core/data/network/models/group_modificator_fragment.data.gql.dart'
    as _i2;
import 'package:toto_mobile/src/core/data/network/models/modificator_fragment.data.gql.dart'
    as _i1;
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i3;

part 'products_size_fragment.data.gql.g.dart';

abstract class GProductsSizesFragment {
  String get G__typename;
  String get id;
  String get name;
  String? get additionalInfo;
  String? get description;
  GProductsSizesFragment_parentGroup? get parentGroup;
  BuiltList<GProductsSizesFragment_images>? get images;
  String? get price;
  String? get weight;
  String? get carbohydrateAmount;
  String? get carbohydrateFullAmount;
  String? get energyAmount;
  String? get energyFullAmount;
  String? get fatAmount;
  String? get fatFullAmount;
  String? get fiberAmount;
  String? get fiberFullAmount;
  BuiltList<GProductsSizesFragment_modifiers>? get modifiers;
  BuiltList<GProductsSizesFragment_groupModifiers>? get groupModifiers;
  Map<String, dynamic> toJson();
}

abstract class GProductsSizesFragment_parentGroup {
  String get G__typename;
  String get id;
  String get name;
  Map<String, dynamic> toJson();
}

abstract class GProductsSizesFragment_images {
  String get G__typename;
  String? get imageId;
  String? get imageUrl;
  Map<String, dynamic> toJson();
}

abstract class GProductsSizesFragment_modifiers
    implements _i1.GModificatorFragment {
  String get G__typename;
  int? get maxAmount;
  int? get minAmount;
  String get modifierId;
  bool? get required;
  int? get defaultAmount;
  bool? get hideIfDefaultAmount;
  Map<String, dynamic> toJson();
}

abstract class GProductsSizesFragment_groupModifiers
    implements _i2.GGroupModificatorFragment {
  String get G__typename;
  int? get maxAmount;
  int? get minAmount;
  String get modifierId;
  bool? get required;
  BuiltList<GProductsSizesFragment_groupModifiers_childModifiers>?
      get childModifiers;
  bool? get childModifiersHaveMinMaxRestrictions;
  Map<String, dynamic> toJson();
}

abstract class GProductsSizesFragment_groupModifiers_childModifiers
    implements
        _i2.GGroupModificatorFragment_childModifiers,
        _i1.GModificatorFragment {
  String get G__typename;
  int? get maxAmount;
  int? get minAmount;
  String get modifierId;
  bool? get required;
  int? get defaultAmount;
  bool? get hideIfDefaultAmount;
  Map<String, dynamic> toJson();
}

abstract class GProductsSizesFragmentData
    implements
        Built<GProductsSizesFragmentData, GProductsSizesFragmentDataBuilder>,
        GProductsSizesFragment {
  GProductsSizesFragmentData._();

  factory GProductsSizesFragmentData(
          [Function(GProductsSizesFragmentDataBuilder b) updates]) =
      _$GProductsSizesFragmentData;

  static void _initializeBuilder(GProductsSizesFragmentDataBuilder b) =>
      b..G__typename = 'Product';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  String? get additionalInfo;
  String? get description;
  GProductsSizesFragmentData_parentGroup? get parentGroup;
  BuiltList<GProductsSizesFragmentData_images>? get images;
  String? get price;
  String? get weight;
  String? get carbohydrateAmount;
  String? get carbohydrateFullAmount;
  String? get energyAmount;
  String? get energyFullAmount;
  String? get fatAmount;
  String? get fatFullAmount;
  String? get fiberAmount;
  String? get fiberFullAmount;
  BuiltList<GProductsSizesFragmentData_modifiers>? get modifiers;
  BuiltList<GProductsSizesFragmentData_groupModifiers>? get groupModifiers;
  static Serializer<GProductsSizesFragmentData> get serializer =>
      _$gProductsSizesFragmentDataSerializer;
  Map<String, dynamic> toJson() => (_i3.serializers.serializeWith(
      GProductsSizesFragmentData.serializer, this) as Map<String, dynamic>);
  static GProductsSizesFragmentData? fromJson(Map<String, dynamic> json) =>
      _i3.serializers
          .deserializeWith(GProductsSizesFragmentData.serializer, json);
}

abstract class GProductsSizesFragmentData_parentGroup
    implements
        Built<GProductsSizesFragmentData_parentGroup,
            GProductsSizesFragmentData_parentGroupBuilder>,
        GProductsSizesFragment_parentGroup {
  GProductsSizesFragmentData_parentGroup._();

  factory GProductsSizesFragmentData_parentGroup(
          [Function(GProductsSizesFragmentData_parentGroupBuilder b) updates]) =
      _$GProductsSizesFragmentData_parentGroup;

  static void _initializeBuilder(
          GProductsSizesFragmentData_parentGroupBuilder b) =>
      b..G__typename = 'Group';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  static Serializer<GProductsSizesFragmentData_parentGroup> get serializer =>
      _$gProductsSizesFragmentDataParentGroupSerializer;
  Map<String, dynamic> toJson() => (_i3.serializers.serializeWith(
          GProductsSizesFragmentData_parentGroup.serializer, this)
      as Map<String, dynamic>);
  static GProductsSizesFragmentData_parentGroup? fromJson(
          Map<String, dynamic> json) =>
      _i3.serializers.deserializeWith(
          GProductsSizesFragmentData_parentGroup.serializer, json);
}

abstract class GProductsSizesFragmentData_images
    implements
        Built<GProductsSizesFragmentData_images,
            GProductsSizesFragmentData_imagesBuilder>,
        GProductsSizesFragment_images {
  GProductsSizesFragmentData_images._();

  factory GProductsSizesFragmentData_images(
          [Function(GProductsSizesFragmentData_imagesBuilder b) updates]) =
      _$GProductsSizesFragmentData_images;

  static void _initializeBuilder(GProductsSizesFragmentData_imagesBuilder b) =>
      b..G__typename = 'ProductImage';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get imageId;
  String? get imageUrl;
  static Serializer<GProductsSizesFragmentData_images> get serializer =>
      _$gProductsSizesFragmentDataImagesSerializer;
  Map<String, dynamic> toJson() => (_i3.serializers
          .serializeWith(GProductsSizesFragmentData_images.serializer, this)
      as Map<String, dynamic>);
  static GProductsSizesFragmentData_images? fromJson(
          Map<String, dynamic> json) =>
      _i3.serializers
          .deserializeWith(GProductsSizesFragmentData_images.serializer, json);
}

abstract class GProductsSizesFragmentData_modifiers
    implements
        Built<GProductsSizesFragmentData_modifiers,
            GProductsSizesFragmentData_modifiersBuilder>,
        GProductsSizesFragment_modifiers,
        _i1.GModificatorFragment {
  GProductsSizesFragmentData_modifiers._();

  factory GProductsSizesFragmentData_modifiers(
          [Function(GProductsSizesFragmentData_modifiersBuilder b) updates]) =
      _$GProductsSizesFragmentData_modifiers;

  static void _initializeBuilder(
          GProductsSizesFragmentData_modifiersBuilder b) =>
      b..G__typename = 'Modificator';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get maxAmount;
  int? get minAmount;
  String get modifierId;
  bool? get required;
  int? get defaultAmount;
  bool? get hideIfDefaultAmount;
  static Serializer<GProductsSizesFragmentData_modifiers> get serializer =>
      _$gProductsSizesFragmentDataModifiersSerializer;
  Map<String, dynamic> toJson() => (_i3.serializers
          .serializeWith(GProductsSizesFragmentData_modifiers.serializer, this)
      as Map<String, dynamic>);
  static GProductsSizesFragmentData_modifiers? fromJson(
          Map<String, dynamic> json) =>
      _i3.serializers.deserializeWith(
          GProductsSizesFragmentData_modifiers.serializer, json);
}

abstract class GProductsSizesFragmentData_groupModifiers
    implements
        Built<GProductsSizesFragmentData_groupModifiers,
            GProductsSizesFragmentData_groupModifiersBuilder>,
        GProductsSizesFragment_groupModifiers,
        _i2.GGroupModificatorFragment {
  GProductsSizesFragmentData_groupModifiers._();

  factory GProductsSizesFragmentData_groupModifiers(
      [Function(GProductsSizesFragmentData_groupModifiersBuilder b)
          updates]) = _$GProductsSizesFragmentData_groupModifiers;

  static void _initializeBuilder(
          GProductsSizesFragmentData_groupModifiersBuilder b) =>
      b..G__typename = 'GroupModificator';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get maxAmount;
  int? get minAmount;
  String get modifierId;
  bool? get required;
  BuiltList<GProductsSizesFragmentData_groupModifiers_childModifiers>?
      get childModifiers;
  bool? get childModifiersHaveMinMaxRestrictions;
  static Serializer<GProductsSizesFragmentData_groupModifiers> get serializer =>
      _$gProductsSizesFragmentDataGroupModifiersSerializer;
  Map<String, dynamic> toJson() => (_i3.serializers.serializeWith(
          GProductsSizesFragmentData_groupModifiers.serializer, this)
      as Map<String, dynamic>);
  static GProductsSizesFragmentData_groupModifiers? fromJson(
          Map<String, dynamic> json) =>
      _i3.serializers.deserializeWith(
          GProductsSizesFragmentData_groupModifiers.serializer, json);
}

abstract class GProductsSizesFragmentData_groupModifiers_childModifiers
    implements
        Built<GProductsSizesFragmentData_groupModifiers_childModifiers,
            GProductsSizesFragmentData_groupModifiers_childModifiersBuilder>,
        GProductsSizesFragment_groupModifiers_childModifiers,
        _i2.GGroupModificatorFragment_childModifiers,
        _i1.GModificatorFragment {
  GProductsSizesFragmentData_groupModifiers_childModifiers._();

  factory GProductsSizesFragmentData_groupModifiers_childModifiers(
      [Function(
              GProductsSizesFragmentData_groupModifiers_childModifiersBuilder b)
          updates]) = _$GProductsSizesFragmentData_groupModifiers_childModifiers;

  static void _initializeBuilder(
          GProductsSizesFragmentData_groupModifiers_childModifiersBuilder b) =>
      b..G__typename = 'Modificator';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get maxAmount;
  int? get minAmount;
  String get modifierId;
  bool? get required;
  int? get defaultAmount;
  bool? get hideIfDefaultAmount;
  static Serializer<GProductsSizesFragmentData_groupModifiers_childModifiers>
      get serializer =>
          _$gProductsSizesFragmentDataGroupModifiersChildModifiersSerializer;
  Map<String, dynamic> toJson() => (_i3.serializers.serializeWith(
      GProductsSizesFragmentData_groupModifiers_childModifiers.serializer,
      this) as Map<String, dynamic>);
  static GProductsSizesFragmentData_groupModifiers_childModifiers? fromJson(
          Map<String, dynamic> json) =>
      _i3.serializers.deserializeWith(
          GProductsSizesFragmentData_groupModifiers_childModifiers.serializer,
          json);
}
