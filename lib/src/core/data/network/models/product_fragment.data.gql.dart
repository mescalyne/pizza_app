// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:toto_mobile/src/core/data/network/models/group_modificator_fragment.data.gql.dart'
    as _i3;
import 'package:toto_mobile/src/core/data/network/models/modificator_fragment.data.gql.dart'
    as _i2;
import 'package:toto_mobile/src/core/data/network/models/products_size_fragment.data.gql.dart'
    as _i1;
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i4;

part 'product_fragment.data.gql.g.dart';

abstract class GProductFragment {
  String get G__typename;
  String get id;
  String? get parentGroupId;
  String? get groupId;
  GProductFragment_parentGroup? get parentGroup;
  GProductFragment_group? get group;
  String? get productCategoryId;
  GProductFragment_category? get category;
  BuiltList<GProductFragment_products_sizes>? get products_sizes;
  String? get additionalInfo;
  String get name;
  String get code;
  String? get description;
  String? get seoDescription;
  String? get seoKeywords;
  String? get seoText;
  String? get seoTitle;
  bool? get isDeleted;
  BuiltList<String>? get tags;
  BuiltList<GProductFragment_images>? get images;
  bool? get isIncludedInMenu;
  int? get order;
  bool? get doNotPrintInCheque;
  String? get carbohydrateAmount;
  String? get carbohydrateFullAmount;
  String? get energyAmount;
  String? get energyFullAmount;
  String? get fatAmount;
  String? get fatFullAmount;
  String? get fiberAmount;
  String? get fiberFullAmount;
  String? get measureUnit;
  String? get price;
  bool? get useBalanceForSell;
  String? get weight;
  BuiltList<GProductFragment_modifiers>? get modifiers;
  BuiltList<GProductFragment_groupModifiers>? get groupModifiers;
  Map<String, dynamic> toJson();
}

abstract class GProductFragment_parentGroup {
  String get G__typename;
  String get id;
  String? get parentGroup;
  String? get additionalInfo;
  String get name;
  String? get description;
  Map<String, dynamic> toJson();
}

abstract class GProductFragment_group {
  String get G__typename;
  String get id;
  String? get parentGroup;
  String? get additionalInfo;
  String get name;
  String? get description;
  Map<String, dynamic> toJson();
}

abstract class GProductFragment_category {
  String get G__typename;
  String get id;
  String get name;
  Map<String, dynamic> toJson();
}

abstract class GProductFragment_products_sizes
    implements _i1.GProductsSizesFragment {
  String get G__typename;
  String get id;
  String get name;
  String? get additionalInfo;
  String? get description;
  GProductFragment_products_sizes_parentGroup? get parentGroup;
  BuiltList<GProductFragment_products_sizes_images>? get images;
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
  BuiltList<GProductFragment_products_sizes_modifiers>? get modifiers;
  BuiltList<GProductFragment_products_sizes_groupModifiers>? get groupModifiers;
  Map<String, dynamic> toJson();
}

abstract class GProductFragment_products_sizes_parentGroup
    implements _i1.GProductsSizesFragment_parentGroup {
  String get G__typename;
  String get id;
  String get name;
  Map<String, dynamic> toJson();
}

abstract class GProductFragment_products_sizes_images
    implements _i1.GProductsSizesFragment_images {
  String get G__typename;
  String? get imageId;
  String? get imageUrl;
  Map<String, dynamic> toJson();
}

abstract class GProductFragment_products_sizes_modifiers
    implements _i1.GProductsSizesFragment_modifiers, _i2.GModificatorFragment {
  String get G__typename;
  int? get maxAmount;
  int? get minAmount;
  String get modifierId;
  bool? get required;
  int? get defaultAmount;
  bool? get hideIfDefaultAmount;
  Map<String, dynamic> toJson();
}

abstract class GProductFragment_products_sizes_groupModifiers
    implements
        _i1.GProductsSizesFragment_groupModifiers,
        _i3.GGroupModificatorFragment {
  String get G__typename;
  int? get maxAmount;
  int? get minAmount;
  String get modifierId;
  bool? get required;
  BuiltList<GProductFragment_products_sizes_groupModifiers_childModifiers>?
      get childModifiers;
  bool? get childModifiersHaveMinMaxRestrictions;
  Map<String, dynamic> toJson();
}

abstract class GProductFragment_products_sizes_groupModifiers_childModifiers
    implements
        _i1.GProductsSizesFragment_groupModifiers_childModifiers,
        _i3.GGroupModificatorFragment_childModifiers,
        _i2.GModificatorFragment {
  String get G__typename;
  int? get maxAmount;
  int? get minAmount;
  String get modifierId;
  bool? get required;
  int? get defaultAmount;
  bool? get hideIfDefaultAmount;
  Map<String, dynamic> toJson();
}

abstract class GProductFragment_images {
  String get G__typename;
  String? get imageId;
  String? get imageUrl;
  Map<String, dynamic> toJson();
}

abstract class GProductFragment_modifiers implements _i2.GModificatorFragment {
  String get G__typename;
  int? get maxAmount;
  int? get minAmount;
  String get modifierId;
  bool? get required;
  int? get defaultAmount;
  bool? get hideIfDefaultAmount;
  Map<String, dynamic> toJson();
}

abstract class GProductFragment_groupModifiers
    implements _i3.GGroupModificatorFragment {
  String get G__typename;
  int? get maxAmount;
  int? get minAmount;
  String get modifierId;
  bool? get required;
  BuiltList<GProductFragment_groupModifiers_childModifiers>? get childModifiers;
  bool? get childModifiersHaveMinMaxRestrictions;
  Map<String, dynamic> toJson();
}

abstract class GProductFragment_groupModifiers_childModifiers
    implements
        _i3.GGroupModificatorFragment_childModifiers,
        _i2.GModificatorFragment {
  String get G__typename;
  int? get maxAmount;
  int? get minAmount;
  String get modifierId;
  bool? get required;
  int? get defaultAmount;
  bool? get hideIfDefaultAmount;
  Map<String, dynamic> toJson();
}

abstract class GProductFragmentData
    implements
        Built<GProductFragmentData, GProductFragmentDataBuilder>,
        GProductFragment {
  GProductFragmentData._();

  factory GProductFragmentData(
          [Function(GProductFragmentDataBuilder b) updates]) =
      _$GProductFragmentData;

  static void _initializeBuilder(GProductFragmentDataBuilder b) =>
      b..G__typename = 'Product';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get parentGroupId;
  String? get groupId;
  GProductFragmentData_parentGroup? get parentGroup;
  GProductFragmentData_group? get group;
  String? get productCategoryId;
  GProductFragmentData_category? get category;
  BuiltList<GProductFragmentData_products_sizes>? get products_sizes;
  String? get additionalInfo;
  String get name;
  String get code;
  String? get description;
  String? get seoDescription;
  String? get seoKeywords;
  String? get seoText;
  String? get seoTitle;
  bool? get isDeleted;
  BuiltList<String>? get tags;
  BuiltList<GProductFragmentData_images>? get images;
  bool? get isIncludedInMenu;
  int? get order;
  bool? get doNotPrintInCheque;
  String? get carbohydrateAmount;
  String? get carbohydrateFullAmount;
  String? get energyAmount;
  String? get energyFullAmount;
  String? get fatAmount;
  String? get fatFullAmount;
  String? get fiberAmount;
  String? get fiberFullAmount;
  String? get measureUnit;
  String? get price;
  bool? get useBalanceForSell;
  String? get weight;
  BuiltList<GProductFragmentData_modifiers>? get modifiers;
  BuiltList<GProductFragmentData_groupModifiers>? get groupModifiers;
  static Serializer<GProductFragmentData> get serializer =>
      _$gProductFragmentDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i4.serializers.serializeWith(GProductFragmentData.serializer, this)
          as Map<String, dynamic>);
  static GProductFragmentData? fromJson(Map<String, dynamic> json) =>
      _i4.serializers.deserializeWith(GProductFragmentData.serializer, json);
}

abstract class GProductFragmentData_parentGroup
    implements
        Built<GProductFragmentData_parentGroup,
            GProductFragmentData_parentGroupBuilder>,
        GProductFragment_parentGroup {
  GProductFragmentData_parentGroup._();

  factory GProductFragmentData_parentGroup(
          [Function(GProductFragmentData_parentGroupBuilder b) updates]) =
      _$GProductFragmentData_parentGroup;

  static void _initializeBuilder(GProductFragmentData_parentGroupBuilder b) =>
      b..G__typename = 'Group';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get parentGroup;
  String? get additionalInfo;
  String get name;
  String? get description;
  static Serializer<GProductFragmentData_parentGroup> get serializer =>
      _$gProductFragmentDataParentGroupSerializer;
  Map<String, dynamic> toJson() => (_i4.serializers
          .serializeWith(GProductFragmentData_parentGroup.serializer, this)
      as Map<String, dynamic>);
  static GProductFragmentData_parentGroup? fromJson(
          Map<String, dynamic> json) =>
      _i4.serializers
          .deserializeWith(GProductFragmentData_parentGroup.serializer, json);
}

abstract class GProductFragmentData_group
    implements
        Built<GProductFragmentData_group, GProductFragmentData_groupBuilder>,
        GProductFragment_group {
  GProductFragmentData_group._();

  factory GProductFragmentData_group(
          [Function(GProductFragmentData_groupBuilder b) updates]) =
      _$GProductFragmentData_group;

  static void _initializeBuilder(GProductFragmentData_groupBuilder b) =>
      b..G__typename = 'Group';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get parentGroup;
  String? get additionalInfo;
  String get name;
  String? get description;
  static Serializer<GProductFragmentData_group> get serializer =>
      _$gProductFragmentDataGroupSerializer;
  Map<String, dynamic> toJson() => (_i4.serializers.serializeWith(
      GProductFragmentData_group.serializer, this) as Map<String, dynamic>);
  static GProductFragmentData_group? fromJson(Map<String, dynamic> json) =>
      _i4.serializers
          .deserializeWith(GProductFragmentData_group.serializer, json);
}

abstract class GProductFragmentData_category
    implements
        Built<GProductFragmentData_category,
            GProductFragmentData_categoryBuilder>,
        GProductFragment_category {
  GProductFragmentData_category._();

  factory GProductFragmentData_category(
          [Function(GProductFragmentData_categoryBuilder b) updates]) =
      _$GProductFragmentData_category;

  static void _initializeBuilder(GProductFragmentData_categoryBuilder b) =>
      b..G__typename = 'ProductCategory';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  static Serializer<GProductFragmentData_category> get serializer =>
      _$gProductFragmentDataCategorySerializer;
  Map<String, dynamic> toJson() => (_i4.serializers.serializeWith(
      GProductFragmentData_category.serializer, this) as Map<String, dynamic>);
  static GProductFragmentData_category? fromJson(Map<String, dynamic> json) =>
      _i4.serializers
          .deserializeWith(GProductFragmentData_category.serializer, json);
}

abstract class GProductFragmentData_products_sizes
    implements
        Built<GProductFragmentData_products_sizes,
            GProductFragmentData_products_sizesBuilder>,
        GProductFragment_products_sizes,
        _i1.GProductsSizesFragment {
  GProductFragmentData_products_sizes._();

  factory GProductFragmentData_products_sizes(
          [Function(GProductFragmentData_products_sizesBuilder b) updates]) =
      _$GProductFragmentData_products_sizes;

  static void _initializeBuilder(
          GProductFragmentData_products_sizesBuilder b) =>
      b..G__typename = 'Product';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  String? get additionalInfo;
  String? get description;
  GProductFragmentData_products_sizes_parentGroup? get parentGroup;
  BuiltList<GProductFragmentData_products_sizes_images>? get images;
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
  BuiltList<GProductFragmentData_products_sizes_modifiers>? get modifiers;
  BuiltList<GProductFragmentData_products_sizes_groupModifiers>?
      get groupModifiers;
  static Serializer<GProductFragmentData_products_sizes> get serializer =>
      _$gProductFragmentDataProductsSizesSerializer;
  Map<String, dynamic> toJson() => (_i4.serializers
          .serializeWith(GProductFragmentData_products_sizes.serializer, this)
      as Map<String, dynamic>);
  static GProductFragmentData_products_sizes? fromJson(
          Map<String, dynamic> json) =>
      _i4.serializers.deserializeWith(
          GProductFragmentData_products_sizes.serializer, json);
}

abstract class GProductFragmentData_products_sizes_parentGroup
    implements
        Built<GProductFragmentData_products_sizes_parentGroup,
            GProductFragmentData_products_sizes_parentGroupBuilder>,
        GProductFragment_products_sizes_parentGroup,
        _i1.GProductsSizesFragment_parentGroup {
  GProductFragmentData_products_sizes_parentGroup._();

  factory GProductFragmentData_products_sizes_parentGroup(
      [Function(GProductFragmentData_products_sizes_parentGroupBuilder b)
          updates]) = _$GProductFragmentData_products_sizes_parentGroup;

  static void _initializeBuilder(
          GProductFragmentData_products_sizes_parentGroupBuilder b) =>
      b..G__typename = 'Group';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  static Serializer<GProductFragmentData_products_sizes_parentGroup>
      get serializer =>
          _$gProductFragmentDataProductsSizesParentGroupSerializer;
  Map<String, dynamic> toJson() => (_i4.serializers.serializeWith(
          GProductFragmentData_products_sizes_parentGroup.serializer, this)
      as Map<String, dynamic>);
  static GProductFragmentData_products_sizes_parentGroup? fromJson(
          Map<String, dynamic> json) =>
      _i4.serializers.deserializeWith(
          GProductFragmentData_products_sizes_parentGroup.serializer, json);
}

abstract class GProductFragmentData_products_sizes_images
    implements
        Built<GProductFragmentData_products_sizes_images,
            GProductFragmentData_products_sizes_imagesBuilder>,
        GProductFragment_products_sizes_images,
        _i1.GProductsSizesFragment_images {
  GProductFragmentData_products_sizes_images._();

  factory GProductFragmentData_products_sizes_images(
      [Function(GProductFragmentData_products_sizes_imagesBuilder b)
          updates]) = _$GProductFragmentData_products_sizes_images;

  static void _initializeBuilder(
          GProductFragmentData_products_sizes_imagesBuilder b) =>
      b..G__typename = 'ProductImage';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get imageId;
  String? get imageUrl;
  static Serializer<GProductFragmentData_products_sizes_images>
      get serializer => _$gProductFragmentDataProductsSizesImagesSerializer;
  Map<String, dynamic> toJson() => (_i4.serializers.serializeWith(
          GProductFragmentData_products_sizes_images.serializer, this)
      as Map<String, dynamic>);
  static GProductFragmentData_products_sizes_images? fromJson(
          Map<String, dynamic> json) =>
      _i4.serializers.deserializeWith(
          GProductFragmentData_products_sizes_images.serializer, json);
}

abstract class GProductFragmentData_products_sizes_modifiers
    implements
        Built<GProductFragmentData_products_sizes_modifiers,
            GProductFragmentData_products_sizes_modifiersBuilder>,
        GProductFragment_products_sizes_modifiers,
        _i1.GProductsSizesFragment_modifiers,
        _i2.GModificatorFragment {
  GProductFragmentData_products_sizes_modifiers._();

  factory GProductFragmentData_products_sizes_modifiers(
      [Function(GProductFragmentData_products_sizes_modifiersBuilder b)
          updates]) = _$GProductFragmentData_products_sizes_modifiers;

  static void _initializeBuilder(
          GProductFragmentData_products_sizes_modifiersBuilder b) =>
      b..G__typename = 'Modificator';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get maxAmount;
  int? get minAmount;
  String get modifierId;
  bool? get required;
  int? get defaultAmount;
  bool? get hideIfDefaultAmount;
  static Serializer<GProductFragmentData_products_sizes_modifiers>
      get serializer => _$gProductFragmentDataProductsSizesModifiersSerializer;
  Map<String, dynamic> toJson() => (_i4.serializers.serializeWith(
          GProductFragmentData_products_sizes_modifiers.serializer, this)
      as Map<String, dynamic>);
  static GProductFragmentData_products_sizes_modifiers? fromJson(
          Map<String, dynamic> json) =>
      _i4.serializers.deserializeWith(
          GProductFragmentData_products_sizes_modifiers.serializer, json);
}

abstract class GProductFragmentData_products_sizes_groupModifiers
    implements
        Built<GProductFragmentData_products_sizes_groupModifiers,
            GProductFragmentData_products_sizes_groupModifiersBuilder>,
        GProductFragment_products_sizes_groupModifiers,
        _i1.GProductsSizesFragment_groupModifiers,
        _i3.GGroupModificatorFragment {
  GProductFragmentData_products_sizes_groupModifiers._();

  factory GProductFragmentData_products_sizes_groupModifiers(
      [Function(GProductFragmentData_products_sizes_groupModifiersBuilder b)
          updates]) = _$GProductFragmentData_products_sizes_groupModifiers;

  static void _initializeBuilder(
          GProductFragmentData_products_sizes_groupModifiersBuilder b) =>
      b..G__typename = 'GroupModificator';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get maxAmount;
  int? get minAmount;
  String get modifierId;
  bool? get required;
  BuiltList<GProductFragmentData_products_sizes_groupModifiers_childModifiers>?
      get childModifiers;
  bool? get childModifiersHaveMinMaxRestrictions;
  static Serializer<GProductFragmentData_products_sizes_groupModifiers>
      get serializer =>
          _$gProductFragmentDataProductsSizesGroupModifiersSerializer;
  Map<String, dynamic> toJson() => (_i4.serializers.serializeWith(
          GProductFragmentData_products_sizes_groupModifiers.serializer, this)
      as Map<String, dynamic>);
  static GProductFragmentData_products_sizes_groupModifiers? fromJson(
          Map<String, dynamic> json) =>
      _i4.serializers.deserializeWith(
          GProductFragmentData_products_sizes_groupModifiers.serializer, json);
}

abstract class GProductFragmentData_products_sizes_groupModifiers_childModifiers
    implements
        Built<GProductFragmentData_products_sizes_groupModifiers_childModifiers,
            GProductFragmentData_products_sizes_groupModifiers_childModifiersBuilder>,
        GProductFragment_products_sizes_groupModifiers_childModifiers,
        _i1.GProductsSizesFragment_groupModifiers_childModifiers,
        _i3.GGroupModificatorFragment_childModifiers,
        _i2.GModificatorFragment {
  GProductFragmentData_products_sizes_groupModifiers_childModifiers._();

  factory GProductFragmentData_products_sizes_groupModifiers_childModifiers(
          [Function(
                  GProductFragmentData_products_sizes_groupModifiers_childModifiersBuilder
                      b)
              updates]) =
      _$GProductFragmentData_products_sizes_groupModifiers_childModifiers;

  static void _initializeBuilder(
          GProductFragmentData_products_sizes_groupModifiers_childModifiersBuilder
              b) =>
      b..G__typename = 'Modificator';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get maxAmount;
  int? get minAmount;
  String get modifierId;
  bool? get required;
  int? get defaultAmount;
  bool? get hideIfDefaultAmount;
  static Serializer<
          GProductFragmentData_products_sizes_groupModifiers_childModifiers>
      get serializer =>
          _$gProductFragmentDataProductsSizesGroupModifiersChildModifiersSerializer;
  Map<String, dynamic> toJson() => (_i4.serializers.serializeWith(
      GProductFragmentData_products_sizes_groupModifiers_childModifiers
          .serializer,
      this) as Map<String, dynamic>);
  static GProductFragmentData_products_sizes_groupModifiers_childModifiers?
      fromJson(Map<String, dynamic> json) => _i4.serializers.deserializeWith(
          GProductFragmentData_products_sizes_groupModifiers_childModifiers
              .serializer,
          json);
}

abstract class GProductFragmentData_images
    implements
        Built<GProductFragmentData_images, GProductFragmentData_imagesBuilder>,
        GProductFragment_images {
  GProductFragmentData_images._();

  factory GProductFragmentData_images(
          [Function(GProductFragmentData_imagesBuilder b) updates]) =
      _$GProductFragmentData_images;

  static void _initializeBuilder(GProductFragmentData_imagesBuilder b) =>
      b..G__typename = 'ProductImage';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get imageId;
  String? get imageUrl;
  static Serializer<GProductFragmentData_images> get serializer =>
      _$gProductFragmentDataImagesSerializer;
  Map<String, dynamic> toJson() => (_i4.serializers.serializeWith(
      GProductFragmentData_images.serializer, this) as Map<String, dynamic>);
  static GProductFragmentData_images? fromJson(Map<String, dynamic> json) =>
      _i4.serializers
          .deserializeWith(GProductFragmentData_images.serializer, json);
}

abstract class GProductFragmentData_modifiers
    implements
        Built<GProductFragmentData_modifiers,
            GProductFragmentData_modifiersBuilder>,
        GProductFragment_modifiers,
        _i2.GModificatorFragment {
  GProductFragmentData_modifiers._();

  factory GProductFragmentData_modifiers(
          [Function(GProductFragmentData_modifiersBuilder b) updates]) =
      _$GProductFragmentData_modifiers;

  static void _initializeBuilder(GProductFragmentData_modifiersBuilder b) =>
      b..G__typename = 'Modificator';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get maxAmount;
  int? get minAmount;
  String get modifierId;
  bool? get required;
  int? get defaultAmount;
  bool? get hideIfDefaultAmount;
  static Serializer<GProductFragmentData_modifiers> get serializer =>
      _$gProductFragmentDataModifiersSerializer;
  Map<String, dynamic> toJson() => (_i4.serializers.serializeWith(
      GProductFragmentData_modifiers.serializer, this) as Map<String, dynamic>);
  static GProductFragmentData_modifiers? fromJson(Map<String, dynamic> json) =>
      _i4.serializers
          .deserializeWith(GProductFragmentData_modifiers.serializer, json);
}

abstract class GProductFragmentData_groupModifiers
    implements
        Built<GProductFragmentData_groupModifiers,
            GProductFragmentData_groupModifiersBuilder>,
        GProductFragment_groupModifiers,
        _i3.GGroupModificatorFragment {
  GProductFragmentData_groupModifiers._();

  factory GProductFragmentData_groupModifiers(
          [Function(GProductFragmentData_groupModifiersBuilder b) updates]) =
      _$GProductFragmentData_groupModifiers;

  static void _initializeBuilder(
          GProductFragmentData_groupModifiersBuilder b) =>
      b..G__typename = 'GroupModificator';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get maxAmount;
  int? get minAmount;
  String get modifierId;
  bool? get required;
  BuiltList<GProductFragmentData_groupModifiers_childModifiers>?
      get childModifiers;
  bool? get childModifiersHaveMinMaxRestrictions;
  static Serializer<GProductFragmentData_groupModifiers> get serializer =>
      _$gProductFragmentDataGroupModifiersSerializer;
  Map<String, dynamic> toJson() => (_i4.serializers
          .serializeWith(GProductFragmentData_groupModifiers.serializer, this)
      as Map<String, dynamic>);
  static GProductFragmentData_groupModifiers? fromJson(
          Map<String, dynamic> json) =>
      _i4.serializers.deserializeWith(
          GProductFragmentData_groupModifiers.serializer, json);
}

abstract class GProductFragmentData_groupModifiers_childModifiers
    implements
        Built<GProductFragmentData_groupModifiers_childModifiers,
            GProductFragmentData_groupModifiers_childModifiersBuilder>,
        GProductFragment_groupModifiers_childModifiers,
        _i3.GGroupModificatorFragment_childModifiers,
        _i2.GModificatorFragment {
  GProductFragmentData_groupModifiers_childModifiers._();

  factory GProductFragmentData_groupModifiers_childModifiers(
      [Function(GProductFragmentData_groupModifiers_childModifiersBuilder b)
          updates]) = _$GProductFragmentData_groupModifiers_childModifiers;

  static void _initializeBuilder(
          GProductFragmentData_groupModifiers_childModifiersBuilder b) =>
      b..G__typename = 'Modificator';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get maxAmount;
  int? get minAmount;
  String get modifierId;
  bool? get required;
  int? get defaultAmount;
  bool? get hideIfDefaultAmount;
  static Serializer<GProductFragmentData_groupModifiers_childModifiers>
      get serializer =>
          _$gProductFragmentDataGroupModifiersChildModifiersSerializer;
  Map<String, dynamic> toJson() => (_i4.serializers.serializeWith(
          GProductFragmentData_groupModifiers_childModifiers.serializer, this)
      as Map<String, dynamic>);
  static GProductFragmentData_groupModifiers_childModifiers? fromJson(
          Map<String, dynamic> json) =>
      _i4.serializers.deserializeWith(
          GProductFragmentData_groupModifiers_childModifiers.serializer, json);
}
