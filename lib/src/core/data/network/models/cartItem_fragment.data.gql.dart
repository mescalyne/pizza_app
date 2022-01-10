// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:toto_mobile/src/core/data/network/models/cartItem_modifier_fragment.data.gql.dart'
    as _i5;
import 'package:toto_mobile/src/core/data/network/models/group_modificator_fragment.data.gql.dart'
    as _i4;
import 'package:toto_mobile/src/core/data/network/models/modificator_fragment.data.gql.dart'
    as _i3;
import 'package:toto_mobile/src/core/data/network/models/product_fragment.data.gql.dart'
    as _i1;
import 'package:toto_mobile/src/core/data/network/models/products_size_fragment.data.gql.dart'
    as _i2;
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i6;

part 'cartItem_fragment.data.gql.g.dart';

abstract class GCartItemFragment {
  String get G__typename;
  int get id;
  String get product_id;
  GCartItemFragment_product get product;
  String get name;
  int get amount;
  double? get total;
  double? get discount_sum;
  double? get sum;
  String? get code;
  BuiltList<GCartItemFragment_modifiers>? get modifiers;
  Map<String, dynamic> toJson();
}

abstract class GCartItemFragment_product implements _i1.GProductFragment {
  String get G__typename;
  String get id;
  String? get parentGroupId;
  String? get groupId;
  GCartItemFragment_product_parentGroup? get parentGroup;
  GCartItemFragment_product_group? get group;
  String? get productCategoryId;
  GCartItemFragment_product_category? get category;
  BuiltList<GCartItemFragment_product_products_sizes>? get products_sizes;
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
  BuiltList<GCartItemFragment_product_images>? get images;
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
  BuiltList<GCartItemFragment_product_modifiers>? get modifiers;
  BuiltList<GCartItemFragment_product_groupModifiers>? get groupModifiers;
  Map<String, dynamic> toJson();
}

abstract class GCartItemFragment_product_parentGroup
    implements _i1.GProductFragment_parentGroup {
  String get G__typename;
  String get id;
  String? get parentGroup;
  String? get additionalInfo;
  String get name;
  String? get description;
  Map<String, dynamic> toJson();
}

abstract class GCartItemFragment_product_group
    implements _i1.GProductFragment_group {
  String get G__typename;
  String get id;
  String? get parentGroup;
  String? get additionalInfo;
  String get name;
  String? get description;
  Map<String, dynamic> toJson();
}

abstract class GCartItemFragment_product_category
    implements _i1.GProductFragment_category {
  String get G__typename;
  String get id;
  String get name;
  Map<String, dynamic> toJson();
}

abstract class GCartItemFragment_product_products_sizes
    implements _i1.GProductFragment_products_sizes, _i2.GProductsSizesFragment {
  String get G__typename;
  String get id;
  String get name;
  String? get additionalInfo;
  String? get description;
  GCartItemFragment_product_products_sizes_parentGroup? get parentGroup;
  BuiltList<GCartItemFragment_product_products_sizes_images>? get images;
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
  BuiltList<GCartItemFragment_product_products_sizes_modifiers>? get modifiers;
  BuiltList<GCartItemFragment_product_products_sizes_groupModifiers>?
      get groupModifiers;
  Map<String, dynamic> toJson();
}

abstract class GCartItemFragment_product_products_sizes_parentGroup
    implements
        _i1.GProductFragment_products_sizes_parentGroup,
        _i2.GProductsSizesFragment_parentGroup {
  String get G__typename;
  String get id;
  String get name;
  Map<String, dynamic> toJson();
}

abstract class GCartItemFragment_product_products_sizes_images
    implements
        _i1.GProductFragment_products_sizes_images,
        _i2.GProductsSizesFragment_images {
  String get G__typename;
  String? get imageId;
  String? get imageUrl;
  Map<String, dynamic> toJson();
}

abstract class GCartItemFragment_product_products_sizes_modifiers
    implements
        _i1.GProductFragment_products_sizes_modifiers,
        _i2.GProductsSizesFragment_modifiers,
        _i3.GModificatorFragment {
  String get G__typename;
  int? get maxAmount;
  int? get minAmount;
  String get modifierId;
  bool? get required;
  int? get defaultAmount;
  bool? get hideIfDefaultAmount;
  Map<String, dynamic> toJson();
}

abstract class GCartItemFragment_product_products_sizes_groupModifiers
    implements
        _i1.GProductFragment_products_sizes_groupModifiers,
        _i2.GProductsSizesFragment_groupModifiers,
        _i4.GGroupModificatorFragment {
  String get G__typename;
  int? get maxAmount;
  int? get minAmount;
  String get modifierId;
  bool? get required;
  BuiltList<
          GCartItemFragment_product_products_sizes_groupModifiers_childModifiers>?
      get childModifiers;
  bool? get childModifiersHaveMinMaxRestrictions;
  Map<String, dynamic> toJson();
}

abstract class GCartItemFragment_product_products_sizes_groupModifiers_childModifiers
    implements
        _i1.GProductFragment_products_sizes_groupModifiers_childModifiers,
        _i2.GProductsSizesFragment_groupModifiers_childModifiers,
        _i4.GGroupModificatorFragment_childModifiers,
        _i3.GModificatorFragment {
  String get G__typename;
  int? get maxAmount;
  int? get minAmount;
  String get modifierId;
  bool? get required;
  int? get defaultAmount;
  bool? get hideIfDefaultAmount;
  Map<String, dynamic> toJson();
}

abstract class GCartItemFragment_product_images
    implements _i1.GProductFragment_images {
  String get G__typename;
  String? get imageId;
  String? get imageUrl;
  Map<String, dynamic> toJson();
}

abstract class GCartItemFragment_product_modifiers
    implements _i1.GProductFragment_modifiers, _i3.GModificatorFragment {
  String get G__typename;
  int? get maxAmount;
  int? get minAmount;
  String get modifierId;
  bool? get required;
  int? get defaultAmount;
  bool? get hideIfDefaultAmount;
  Map<String, dynamic> toJson();
}

abstract class GCartItemFragment_product_groupModifiers
    implements
        _i1.GProductFragment_groupModifiers,
        _i4.GGroupModificatorFragment {
  String get G__typename;
  int? get maxAmount;
  int? get minAmount;
  String get modifierId;
  bool? get required;
  BuiltList<GCartItemFragment_product_groupModifiers_childModifiers>?
      get childModifiers;
  bool? get childModifiersHaveMinMaxRestrictions;
  Map<String, dynamic> toJson();
}

abstract class GCartItemFragment_product_groupModifiers_childModifiers
    implements
        _i1.GProductFragment_groupModifiers_childModifiers,
        _i4.GGroupModificatorFragment_childModifiers,
        _i3.GModificatorFragment {
  String get G__typename;
  int? get maxAmount;
  int? get minAmount;
  String get modifierId;
  bool? get required;
  int? get defaultAmount;
  bool? get hideIfDefaultAmount;
  Map<String, dynamic> toJson();
}

abstract class GCartItemFragment_modifiers
    implements _i5.GCartItemModifierFragment {
  String get G__typename;
  String get id;
  String get type;
  String get product_id;
  GCartItemFragment_modifiers_product get product;
  String get name;
  int get amount;
  String? get group_id;
  String? get group_name;
  Map<String, dynamic> toJson();
}

abstract class GCartItemFragment_modifiers_product
    implements _i5.GCartItemModifierFragment_product, _i1.GProductFragment {
  String get G__typename;
  String get id;
  String? get parentGroupId;
  String? get groupId;
  GCartItemFragment_modifiers_product_parentGroup? get parentGroup;
  GCartItemFragment_modifiers_product_group? get group;
  String? get productCategoryId;
  GCartItemFragment_modifiers_product_category? get category;
  BuiltList<GCartItemFragment_modifiers_product_products_sizes>?
      get products_sizes;
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
  BuiltList<GCartItemFragment_modifiers_product_images>? get images;
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
  BuiltList<GCartItemFragment_modifiers_product_modifiers>? get modifiers;
  BuiltList<GCartItemFragment_modifiers_product_groupModifiers>?
      get groupModifiers;
  Map<String, dynamic> toJson();
}

abstract class GCartItemFragment_modifiers_product_parentGroup
    implements
        _i5.GCartItemModifierFragment_product_parentGroup,
        _i1.GProductFragment_parentGroup {
  String get G__typename;
  String get id;
  String? get parentGroup;
  String? get additionalInfo;
  String get name;
  String? get description;
  Map<String, dynamic> toJson();
}

abstract class GCartItemFragment_modifiers_product_group
    implements
        _i5.GCartItemModifierFragment_product_group,
        _i1.GProductFragment_group {
  String get G__typename;
  String get id;
  String? get parentGroup;
  String? get additionalInfo;
  String get name;
  String? get description;
  Map<String, dynamic> toJson();
}

abstract class GCartItemFragment_modifiers_product_category
    implements
        _i5.GCartItemModifierFragment_product_category,
        _i1.GProductFragment_category {
  String get G__typename;
  String get id;
  String get name;
  Map<String, dynamic> toJson();
}

abstract class GCartItemFragment_modifiers_product_products_sizes
    implements
        _i5.GCartItemModifierFragment_product_products_sizes,
        _i1.GProductFragment_products_sizes,
        _i2.GProductsSizesFragment {
  String get G__typename;
  String get id;
  String get name;
  String? get additionalInfo;
  String? get description;
  GCartItemFragment_modifiers_product_products_sizes_parentGroup?
      get parentGroup;
  BuiltList<GCartItemFragment_modifiers_product_products_sizes_images>?
      get images;
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
  BuiltList<GCartItemFragment_modifiers_product_products_sizes_modifiers>?
      get modifiers;
  BuiltList<GCartItemFragment_modifiers_product_products_sizes_groupModifiers>?
      get groupModifiers;
  Map<String, dynamic> toJson();
}

abstract class GCartItemFragment_modifiers_product_products_sizes_parentGroup
    implements
        _i5.GCartItemModifierFragment_product_products_sizes_parentGroup,
        _i1.GProductFragment_products_sizes_parentGroup,
        _i2.GProductsSizesFragment_parentGroup {
  String get G__typename;
  String get id;
  String get name;
  Map<String, dynamic> toJson();
}

abstract class GCartItemFragment_modifiers_product_products_sizes_images
    implements
        _i5.GCartItemModifierFragment_product_products_sizes_images,
        _i1.GProductFragment_products_sizes_images,
        _i2.GProductsSizesFragment_images {
  String get G__typename;
  String? get imageId;
  String? get imageUrl;
  Map<String, dynamic> toJson();
}

abstract class GCartItemFragment_modifiers_product_products_sizes_modifiers
    implements
        _i5.GCartItemModifierFragment_product_products_sizes_modifiers,
        _i1.GProductFragment_products_sizes_modifiers,
        _i2.GProductsSizesFragment_modifiers,
        _i3.GModificatorFragment {
  String get G__typename;
  int? get maxAmount;
  int? get minAmount;
  String get modifierId;
  bool? get required;
  int? get defaultAmount;
  bool? get hideIfDefaultAmount;
  Map<String, dynamic> toJson();
}

abstract class GCartItemFragment_modifiers_product_products_sizes_groupModifiers
    implements
        _i5.GCartItemModifierFragment_product_products_sizes_groupModifiers,
        _i1.GProductFragment_products_sizes_groupModifiers,
        _i2.GProductsSizesFragment_groupModifiers,
        _i4.GGroupModificatorFragment {
  String get G__typename;
  int? get maxAmount;
  int? get minAmount;
  String get modifierId;
  bool? get required;
  BuiltList<
          GCartItemFragment_modifiers_product_products_sizes_groupModifiers_childModifiers>?
      get childModifiers;
  bool? get childModifiersHaveMinMaxRestrictions;
  Map<String, dynamic> toJson();
}

abstract class GCartItemFragment_modifiers_product_products_sizes_groupModifiers_childModifiers
    implements
        _i5.GCartItemModifierFragment_product_products_sizes_groupModifiers_childModifiers,
        _i1.GProductFragment_products_sizes_groupModifiers_childModifiers,
        _i2.GProductsSizesFragment_groupModifiers_childModifiers,
        _i4.GGroupModificatorFragment_childModifiers,
        _i3.GModificatorFragment {
  String get G__typename;
  int? get maxAmount;
  int? get minAmount;
  String get modifierId;
  bool? get required;
  int? get defaultAmount;
  bool? get hideIfDefaultAmount;
  Map<String, dynamic> toJson();
}

abstract class GCartItemFragment_modifiers_product_images
    implements
        _i5.GCartItemModifierFragment_product_images,
        _i1.GProductFragment_images {
  String get G__typename;
  String? get imageId;
  String? get imageUrl;
  Map<String, dynamic> toJson();
}

abstract class GCartItemFragment_modifiers_product_modifiers
    implements
        _i5.GCartItemModifierFragment_product_modifiers,
        _i1.GProductFragment_modifiers,
        _i3.GModificatorFragment {
  String get G__typename;
  int? get maxAmount;
  int? get minAmount;
  String get modifierId;
  bool? get required;
  int? get defaultAmount;
  bool? get hideIfDefaultAmount;
  Map<String, dynamic> toJson();
}

abstract class GCartItemFragment_modifiers_product_groupModifiers
    implements
        _i5.GCartItemModifierFragment_product_groupModifiers,
        _i1.GProductFragment_groupModifiers,
        _i4.GGroupModificatorFragment {
  String get G__typename;
  int? get maxAmount;
  int? get minAmount;
  String get modifierId;
  bool? get required;
  BuiltList<GCartItemFragment_modifiers_product_groupModifiers_childModifiers>?
      get childModifiers;
  bool? get childModifiersHaveMinMaxRestrictions;
  Map<String, dynamic> toJson();
}

abstract class GCartItemFragment_modifiers_product_groupModifiers_childModifiers
    implements
        _i5.GCartItemModifierFragment_product_groupModifiers_childModifiers,
        _i1.GProductFragment_groupModifiers_childModifiers,
        _i4.GGroupModificatorFragment_childModifiers,
        _i3.GModificatorFragment {
  String get G__typename;
  int? get maxAmount;
  int? get minAmount;
  String get modifierId;
  bool? get required;
  int? get defaultAmount;
  bool? get hideIfDefaultAmount;
  Map<String, dynamic> toJson();
}

abstract class GCartItemFragmentData
    implements
        Built<GCartItemFragmentData, GCartItemFragmentDataBuilder>,
        GCartItemFragment {
  GCartItemFragmentData._();

  factory GCartItemFragmentData(
          [Function(GCartItemFragmentDataBuilder b) updates]) =
      _$GCartItemFragmentData;

  static void _initializeBuilder(GCartItemFragmentDataBuilder b) =>
      b..G__typename = 'CartItem';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  String get product_id;
  GCartItemFragmentData_product get product;
  String get name;
  int get amount;
  double? get total;
  double? get discount_sum;
  double? get sum;
  String? get code;
  BuiltList<GCartItemFragmentData_modifiers>? get modifiers;
  static Serializer<GCartItemFragmentData> get serializer =>
      _$gCartItemFragmentDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GCartItemFragmentData.serializer, this)
          as Map<String, dynamic>);
  static GCartItemFragmentData? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GCartItemFragmentData.serializer, json);
}

abstract class GCartItemFragmentData_product
    implements
        Built<GCartItemFragmentData_product,
            GCartItemFragmentData_productBuilder>,
        GCartItemFragment_product,
        _i1.GProductFragment {
  GCartItemFragmentData_product._();

  factory GCartItemFragmentData_product(
          [Function(GCartItemFragmentData_productBuilder b) updates]) =
      _$GCartItemFragmentData_product;

  static void _initializeBuilder(GCartItemFragmentData_productBuilder b) =>
      b..G__typename = 'Product';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get parentGroupId;
  String? get groupId;
  GCartItemFragmentData_product_parentGroup? get parentGroup;
  GCartItemFragmentData_product_group? get group;
  String? get productCategoryId;
  GCartItemFragmentData_product_category? get category;
  BuiltList<GCartItemFragmentData_product_products_sizes>? get products_sizes;
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
  BuiltList<GCartItemFragmentData_product_images>? get images;
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
  BuiltList<GCartItemFragmentData_product_modifiers>? get modifiers;
  BuiltList<GCartItemFragmentData_product_groupModifiers>? get groupModifiers;
  static Serializer<GCartItemFragmentData_product> get serializer =>
      _$gCartItemFragmentDataProductSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
      GCartItemFragmentData_product.serializer, this) as Map<String, dynamic>);
  static GCartItemFragmentData_product? fromJson(Map<String, dynamic> json) =>
      _i6.serializers
          .deserializeWith(GCartItemFragmentData_product.serializer, json);
}

abstract class GCartItemFragmentData_product_parentGroup
    implements
        Built<GCartItemFragmentData_product_parentGroup,
            GCartItemFragmentData_product_parentGroupBuilder>,
        GCartItemFragment_product_parentGroup,
        _i1.GProductFragment_parentGroup {
  GCartItemFragmentData_product_parentGroup._();

  factory GCartItemFragmentData_product_parentGroup(
      [Function(GCartItemFragmentData_product_parentGroupBuilder b)
          updates]) = _$GCartItemFragmentData_product_parentGroup;

  static void _initializeBuilder(
          GCartItemFragmentData_product_parentGroupBuilder b) =>
      b..G__typename = 'Group';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get parentGroup;
  String? get additionalInfo;
  String get name;
  String? get description;
  static Serializer<GCartItemFragmentData_product_parentGroup> get serializer =>
      _$gCartItemFragmentDataProductParentGroupSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
          GCartItemFragmentData_product_parentGroup.serializer, this)
      as Map<String, dynamic>);
  static GCartItemFragmentData_product_parentGroup? fromJson(
          Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
          GCartItemFragmentData_product_parentGroup.serializer, json);
}

abstract class GCartItemFragmentData_product_group
    implements
        Built<GCartItemFragmentData_product_group,
            GCartItemFragmentData_product_groupBuilder>,
        GCartItemFragment_product_group,
        _i1.GProductFragment_group {
  GCartItemFragmentData_product_group._();

  factory GCartItemFragmentData_product_group(
          [Function(GCartItemFragmentData_product_groupBuilder b) updates]) =
      _$GCartItemFragmentData_product_group;

  static void _initializeBuilder(
          GCartItemFragmentData_product_groupBuilder b) =>
      b..G__typename = 'Group';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get parentGroup;
  String? get additionalInfo;
  String get name;
  String? get description;
  static Serializer<GCartItemFragmentData_product_group> get serializer =>
      _$gCartItemFragmentDataProductGroupSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers
          .serializeWith(GCartItemFragmentData_product_group.serializer, this)
      as Map<String, dynamic>);
  static GCartItemFragmentData_product_group? fromJson(
          Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
          GCartItemFragmentData_product_group.serializer, json);
}

abstract class GCartItemFragmentData_product_category
    implements
        Built<GCartItemFragmentData_product_category,
            GCartItemFragmentData_product_categoryBuilder>,
        GCartItemFragment_product_category,
        _i1.GProductFragment_category {
  GCartItemFragmentData_product_category._();

  factory GCartItemFragmentData_product_category(
          [Function(GCartItemFragmentData_product_categoryBuilder b) updates]) =
      _$GCartItemFragmentData_product_category;

  static void _initializeBuilder(
          GCartItemFragmentData_product_categoryBuilder b) =>
      b..G__typename = 'ProductCategory';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  static Serializer<GCartItemFragmentData_product_category> get serializer =>
      _$gCartItemFragmentDataProductCategorySerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
          GCartItemFragmentData_product_category.serializer, this)
      as Map<String, dynamic>);
  static GCartItemFragmentData_product_category? fromJson(
          Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
          GCartItemFragmentData_product_category.serializer, json);
}

abstract class GCartItemFragmentData_product_products_sizes
    implements
        Built<GCartItemFragmentData_product_products_sizes,
            GCartItemFragmentData_product_products_sizesBuilder>,
        GCartItemFragment_product_products_sizes,
        _i1.GProductFragment_products_sizes,
        _i2.GProductsSizesFragment {
  GCartItemFragmentData_product_products_sizes._();

  factory GCartItemFragmentData_product_products_sizes(
      [Function(GCartItemFragmentData_product_products_sizesBuilder b)
          updates]) = _$GCartItemFragmentData_product_products_sizes;

  static void _initializeBuilder(
          GCartItemFragmentData_product_products_sizesBuilder b) =>
      b..G__typename = 'Product';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  String? get additionalInfo;
  String? get description;
  GCartItemFragmentData_product_products_sizes_parentGroup? get parentGroup;
  BuiltList<GCartItemFragmentData_product_products_sizes_images>? get images;
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
  BuiltList<GCartItemFragmentData_product_products_sizes_modifiers>?
      get modifiers;
  BuiltList<GCartItemFragmentData_product_products_sizes_groupModifiers>?
      get groupModifiers;
  static Serializer<GCartItemFragmentData_product_products_sizes>
      get serializer => _$gCartItemFragmentDataProductProductsSizesSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
          GCartItemFragmentData_product_products_sizes.serializer, this)
      as Map<String, dynamic>);
  static GCartItemFragmentData_product_products_sizes? fromJson(
          Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
          GCartItemFragmentData_product_products_sizes.serializer, json);
}

abstract class GCartItemFragmentData_product_products_sizes_parentGroup
    implements
        Built<GCartItemFragmentData_product_products_sizes_parentGroup,
            GCartItemFragmentData_product_products_sizes_parentGroupBuilder>,
        GCartItemFragment_product_products_sizes_parentGroup,
        _i1.GProductFragment_products_sizes_parentGroup,
        _i2.GProductsSizesFragment_parentGroup {
  GCartItemFragmentData_product_products_sizes_parentGroup._();

  factory GCartItemFragmentData_product_products_sizes_parentGroup(
      [Function(
              GCartItemFragmentData_product_products_sizes_parentGroupBuilder b)
          updates]) = _$GCartItemFragmentData_product_products_sizes_parentGroup;

  static void _initializeBuilder(
          GCartItemFragmentData_product_products_sizes_parentGroupBuilder b) =>
      b..G__typename = 'Group';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  static Serializer<GCartItemFragmentData_product_products_sizes_parentGroup>
      get serializer =>
          _$gCartItemFragmentDataProductProductsSizesParentGroupSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
      GCartItemFragmentData_product_products_sizes_parentGroup.serializer,
      this) as Map<String, dynamic>);
  static GCartItemFragmentData_product_products_sizes_parentGroup? fromJson(
          Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
          GCartItemFragmentData_product_products_sizes_parentGroup.serializer,
          json);
}

abstract class GCartItemFragmentData_product_products_sizes_images
    implements
        Built<GCartItemFragmentData_product_products_sizes_images,
            GCartItemFragmentData_product_products_sizes_imagesBuilder>,
        GCartItemFragment_product_products_sizes_images,
        _i1.GProductFragment_products_sizes_images,
        _i2.GProductsSizesFragment_images {
  GCartItemFragmentData_product_products_sizes_images._();

  factory GCartItemFragmentData_product_products_sizes_images(
      [Function(GCartItemFragmentData_product_products_sizes_imagesBuilder b)
          updates]) = _$GCartItemFragmentData_product_products_sizes_images;

  static void _initializeBuilder(
          GCartItemFragmentData_product_products_sizes_imagesBuilder b) =>
      b..G__typename = 'ProductImage';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get imageId;
  String? get imageUrl;
  static Serializer<GCartItemFragmentData_product_products_sizes_images>
      get serializer =>
          _$gCartItemFragmentDataProductProductsSizesImagesSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
          GCartItemFragmentData_product_products_sizes_images.serializer, this)
      as Map<String, dynamic>);
  static GCartItemFragmentData_product_products_sizes_images? fromJson(
          Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
          GCartItemFragmentData_product_products_sizes_images.serializer, json);
}

abstract class GCartItemFragmentData_product_products_sizes_modifiers
    implements
        Built<GCartItemFragmentData_product_products_sizes_modifiers,
            GCartItemFragmentData_product_products_sizes_modifiersBuilder>,
        GCartItemFragment_product_products_sizes_modifiers,
        _i1.GProductFragment_products_sizes_modifiers,
        _i2.GProductsSizesFragment_modifiers,
        _i3.GModificatorFragment {
  GCartItemFragmentData_product_products_sizes_modifiers._();

  factory GCartItemFragmentData_product_products_sizes_modifiers(
      [Function(GCartItemFragmentData_product_products_sizes_modifiersBuilder b)
          updates]) = _$GCartItemFragmentData_product_products_sizes_modifiers;

  static void _initializeBuilder(
          GCartItemFragmentData_product_products_sizes_modifiersBuilder b) =>
      b..G__typename = 'Modificator';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get maxAmount;
  int? get minAmount;
  String get modifierId;
  bool? get required;
  int? get defaultAmount;
  bool? get hideIfDefaultAmount;
  static Serializer<GCartItemFragmentData_product_products_sizes_modifiers>
      get serializer =>
          _$gCartItemFragmentDataProductProductsSizesModifiersSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
      GCartItemFragmentData_product_products_sizes_modifiers.serializer,
      this) as Map<String, dynamic>);
  static GCartItemFragmentData_product_products_sizes_modifiers? fromJson(
          Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
          GCartItemFragmentData_product_products_sizes_modifiers.serializer,
          json);
}

abstract class GCartItemFragmentData_product_products_sizes_groupModifiers
    implements
        Built<GCartItemFragmentData_product_products_sizes_groupModifiers,
            GCartItemFragmentData_product_products_sizes_groupModifiersBuilder>,
        GCartItemFragment_product_products_sizes_groupModifiers,
        _i1.GProductFragment_products_sizes_groupModifiers,
        _i2.GProductsSizesFragment_groupModifiers,
        _i4.GGroupModificatorFragment {
  GCartItemFragmentData_product_products_sizes_groupModifiers._();

  factory GCartItemFragmentData_product_products_sizes_groupModifiers(
      [Function(
              GCartItemFragmentData_product_products_sizes_groupModifiersBuilder
                  b)
          updates]) = _$GCartItemFragmentData_product_products_sizes_groupModifiers;

  static void _initializeBuilder(
          GCartItemFragmentData_product_products_sizes_groupModifiersBuilder
              b) =>
      b..G__typename = 'GroupModificator';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get maxAmount;
  int? get minAmount;
  String get modifierId;
  bool? get required;
  BuiltList<
          GCartItemFragmentData_product_products_sizes_groupModifiers_childModifiers>?
      get childModifiers;
  bool? get childModifiersHaveMinMaxRestrictions;
  static Serializer<GCartItemFragmentData_product_products_sizes_groupModifiers>
      get serializer =>
          _$gCartItemFragmentDataProductProductsSizesGroupModifiersSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
      GCartItemFragmentData_product_products_sizes_groupModifiers.serializer,
      this) as Map<String, dynamic>);
  static GCartItemFragmentData_product_products_sizes_groupModifiers? fromJson(
          Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
          GCartItemFragmentData_product_products_sizes_groupModifiers
              .serializer,
          json);
}

abstract class GCartItemFragmentData_product_products_sizes_groupModifiers_childModifiers
    implements
        Built<
            GCartItemFragmentData_product_products_sizes_groupModifiers_childModifiers,
            GCartItemFragmentData_product_products_sizes_groupModifiers_childModifiersBuilder>,
        GCartItemFragment_product_products_sizes_groupModifiers_childModifiers,
        _i1.GProductFragment_products_sizes_groupModifiers_childModifiers,
        _i2.GProductsSizesFragment_groupModifiers_childModifiers,
        _i4.GGroupModificatorFragment_childModifiers,
        _i3.GModificatorFragment {
  GCartItemFragmentData_product_products_sizes_groupModifiers_childModifiers._();

  factory GCartItemFragmentData_product_products_sizes_groupModifiers_childModifiers(
          [Function(
                  GCartItemFragmentData_product_products_sizes_groupModifiers_childModifiersBuilder
                      b)
              updates]) =
      _$GCartItemFragmentData_product_products_sizes_groupModifiers_childModifiers;

  static void _initializeBuilder(
          GCartItemFragmentData_product_products_sizes_groupModifiers_childModifiersBuilder
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
          GCartItemFragmentData_product_products_sizes_groupModifiers_childModifiers>
      get serializer =>
          _$gCartItemFragmentDataProductProductsSizesGroupModifiersChildModifiersSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
      GCartItemFragmentData_product_products_sizes_groupModifiers_childModifiers
          .serializer,
      this) as Map<String, dynamic>);
  static GCartItemFragmentData_product_products_sizes_groupModifiers_childModifiers?
      fromJson(Map<String, dynamic> json) => _i6.serializers.deserializeWith(
          GCartItemFragmentData_product_products_sizes_groupModifiers_childModifiers
              .serializer,
          json);
}

abstract class GCartItemFragmentData_product_images
    implements
        Built<GCartItemFragmentData_product_images,
            GCartItemFragmentData_product_imagesBuilder>,
        GCartItemFragment_product_images,
        _i1.GProductFragment_images {
  GCartItemFragmentData_product_images._();

  factory GCartItemFragmentData_product_images(
          [Function(GCartItemFragmentData_product_imagesBuilder b) updates]) =
      _$GCartItemFragmentData_product_images;

  static void _initializeBuilder(
          GCartItemFragmentData_product_imagesBuilder b) =>
      b..G__typename = 'ProductImage';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get imageId;
  String? get imageUrl;
  static Serializer<GCartItemFragmentData_product_images> get serializer =>
      _$gCartItemFragmentDataProductImagesSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers
          .serializeWith(GCartItemFragmentData_product_images.serializer, this)
      as Map<String, dynamic>);
  static GCartItemFragmentData_product_images? fromJson(
          Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
          GCartItemFragmentData_product_images.serializer, json);
}

abstract class GCartItemFragmentData_product_modifiers
    implements
        Built<GCartItemFragmentData_product_modifiers,
            GCartItemFragmentData_product_modifiersBuilder>,
        GCartItemFragment_product_modifiers,
        _i1.GProductFragment_modifiers,
        _i3.GModificatorFragment {
  GCartItemFragmentData_product_modifiers._();

  factory GCartItemFragmentData_product_modifiers(
      [Function(GCartItemFragmentData_product_modifiersBuilder b)
          updates]) = _$GCartItemFragmentData_product_modifiers;

  static void _initializeBuilder(
          GCartItemFragmentData_product_modifiersBuilder b) =>
      b..G__typename = 'Modificator';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get maxAmount;
  int? get minAmount;
  String get modifierId;
  bool? get required;
  int? get defaultAmount;
  bool? get hideIfDefaultAmount;
  static Serializer<GCartItemFragmentData_product_modifiers> get serializer =>
      _$gCartItemFragmentDataProductModifiersSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
          GCartItemFragmentData_product_modifiers.serializer, this)
      as Map<String, dynamic>);
  static GCartItemFragmentData_product_modifiers? fromJson(
          Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
          GCartItemFragmentData_product_modifiers.serializer, json);
}

abstract class GCartItemFragmentData_product_groupModifiers
    implements
        Built<GCartItemFragmentData_product_groupModifiers,
            GCartItemFragmentData_product_groupModifiersBuilder>,
        GCartItemFragment_product_groupModifiers,
        _i1.GProductFragment_groupModifiers,
        _i4.GGroupModificatorFragment {
  GCartItemFragmentData_product_groupModifiers._();

  factory GCartItemFragmentData_product_groupModifiers(
      [Function(GCartItemFragmentData_product_groupModifiersBuilder b)
          updates]) = _$GCartItemFragmentData_product_groupModifiers;

  static void _initializeBuilder(
          GCartItemFragmentData_product_groupModifiersBuilder b) =>
      b..G__typename = 'GroupModificator';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get maxAmount;
  int? get minAmount;
  String get modifierId;
  bool? get required;
  BuiltList<GCartItemFragmentData_product_groupModifiers_childModifiers>?
      get childModifiers;
  bool? get childModifiersHaveMinMaxRestrictions;
  static Serializer<GCartItemFragmentData_product_groupModifiers>
      get serializer => _$gCartItemFragmentDataProductGroupModifiersSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
          GCartItemFragmentData_product_groupModifiers.serializer, this)
      as Map<String, dynamic>);
  static GCartItemFragmentData_product_groupModifiers? fromJson(
          Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
          GCartItemFragmentData_product_groupModifiers.serializer, json);
}

abstract class GCartItemFragmentData_product_groupModifiers_childModifiers
    implements
        Built<GCartItemFragmentData_product_groupModifiers_childModifiers,
            GCartItemFragmentData_product_groupModifiers_childModifiersBuilder>,
        GCartItemFragment_product_groupModifiers_childModifiers,
        _i1.GProductFragment_groupModifiers_childModifiers,
        _i4.GGroupModificatorFragment_childModifiers,
        _i3.GModificatorFragment {
  GCartItemFragmentData_product_groupModifiers_childModifiers._();

  factory GCartItemFragmentData_product_groupModifiers_childModifiers(
      [Function(
              GCartItemFragmentData_product_groupModifiers_childModifiersBuilder
                  b)
          updates]) = _$GCartItemFragmentData_product_groupModifiers_childModifiers;

  static void _initializeBuilder(
          GCartItemFragmentData_product_groupModifiers_childModifiersBuilder
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
  static Serializer<GCartItemFragmentData_product_groupModifiers_childModifiers>
      get serializer =>
          _$gCartItemFragmentDataProductGroupModifiersChildModifiersSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
      GCartItemFragmentData_product_groupModifiers_childModifiers.serializer,
      this) as Map<String, dynamic>);
  static GCartItemFragmentData_product_groupModifiers_childModifiers? fromJson(
          Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
          GCartItemFragmentData_product_groupModifiers_childModifiers
              .serializer,
          json);
}

abstract class GCartItemFragmentData_modifiers
    implements
        Built<GCartItemFragmentData_modifiers,
            GCartItemFragmentData_modifiersBuilder>,
        GCartItemFragment_modifiers,
        _i5.GCartItemModifierFragment {
  GCartItemFragmentData_modifiers._();

  factory GCartItemFragmentData_modifiers(
          [Function(GCartItemFragmentData_modifiersBuilder b) updates]) =
      _$GCartItemFragmentData_modifiers;

  static void _initializeBuilder(GCartItemFragmentData_modifiersBuilder b) =>
      b..G__typename = 'CartItemModifier';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get type;
  String get product_id;
  GCartItemFragmentData_modifiers_product get product;
  String get name;
  int get amount;
  String? get group_id;
  String? get group_name;
  static Serializer<GCartItemFragmentData_modifiers> get serializer =>
      _$gCartItemFragmentDataModifiersSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers
          .serializeWith(GCartItemFragmentData_modifiers.serializer, this)
      as Map<String, dynamic>);
  static GCartItemFragmentData_modifiers? fromJson(Map<String, dynamic> json) =>
      _i6.serializers
          .deserializeWith(GCartItemFragmentData_modifiers.serializer, json);
}

abstract class GCartItemFragmentData_modifiers_product
    implements
        Built<GCartItemFragmentData_modifiers_product,
            GCartItemFragmentData_modifiers_productBuilder>,
        GCartItemFragment_modifiers_product,
        _i5.GCartItemModifierFragment_product,
        _i1.GProductFragment {
  GCartItemFragmentData_modifiers_product._();

  factory GCartItemFragmentData_modifiers_product(
      [Function(GCartItemFragmentData_modifiers_productBuilder b)
          updates]) = _$GCartItemFragmentData_modifiers_product;

  static void _initializeBuilder(
          GCartItemFragmentData_modifiers_productBuilder b) =>
      b..G__typename = 'Product';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get parentGroupId;
  String? get groupId;
  GCartItemFragmentData_modifiers_product_parentGroup? get parentGroup;
  GCartItemFragmentData_modifiers_product_group? get group;
  String? get productCategoryId;
  GCartItemFragmentData_modifiers_product_category? get category;
  BuiltList<GCartItemFragmentData_modifiers_product_products_sizes>?
      get products_sizes;
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
  BuiltList<GCartItemFragmentData_modifiers_product_images>? get images;
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
  BuiltList<GCartItemFragmentData_modifiers_product_modifiers>? get modifiers;
  BuiltList<GCartItemFragmentData_modifiers_product_groupModifiers>?
      get groupModifiers;
  static Serializer<GCartItemFragmentData_modifiers_product> get serializer =>
      _$gCartItemFragmentDataModifiersProductSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
          GCartItemFragmentData_modifiers_product.serializer, this)
      as Map<String, dynamic>);
  static GCartItemFragmentData_modifiers_product? fromJson(
          Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
          GCartItemFragmentData_modifiers_product.serializer, json);
}

abstract class GCartItemFragmentData_modifiers_product_parentGroup
    implements
        Built<GCartItemFragmentData_modifiers_product_parentGroup,
            GCartItemFragmentData_modifiers_product_parentGroupBuilder>,
        GCartItemFragment_modifiers_product_parentGroup,
        _i5.GCartItemModifierFragment_product_parentGroup,
        _i1.GProductFragment_parentGroup {
  GCartItemFragmentData_modifiers_product_parentGroup._();

  factory GCartItemFragmentData_modifiers_product_parentGroup(
      [Function(GCartItemFragmentData_modifiers_product_parentGroupBuilder b)
          updates]) = _$GCartItemFragmentData_modifiers_product_parentGroup;

  static void _initializeBuilder(
          GCartItemFragmentData_modifiers_product_parentGroupBuilder b) =>
      b..G__typename = 'Group';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get parentGroup;
  String? get additionalInfo;
  String get name;
  String? get description;
  static Serializer<GCartItemFragmentData_modifiers_product_parentGroup>
      get serializer =>
          _$gCartItemFragmentDataModifiersProductParentGroupSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
          GCartItemFragmentData_modifiers_product_parentGroup.serializer, this)
      as Map<String, dynamic>);
  static GCartItemFragmentData_modifiers_product_parentGroup? fromJson(
          Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
          GCartItemFragmentData_modifiers_product_parentGroup.serializer, json);
}

abstract class GCartItemFragmentData_modifiers_product_group
    implements
        Built<GCartItemFragmentData_modifiers_product_group,
            GCartItemFragmentData_modifiers_product_groupBuilder>,
        GCartItemFragment_modifiers_product_group,
        _i5.GCartItemModifierFragment_product_group,
        _i1.GProductFragment_group {
  GCartItemFragmentData_modifiers_product_group._();

  factory GCartItemFragmentData_modifiers_product_group(
      [Function(GCartItemFragmentData_modifiers_product_groupBuilder b)
          updates]) = _$GCartItemFragmentData_modifiers_product_group;

  static void _initializeBuilder(
          GCartItemFragmentData_modifiers_product_groupBuilder b) =>
      b..G__typename = 'Group';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get parentGroup;
  String? get additionalInfo;
  String get name;
  String? get description;
  static Serializer<GCartItemFragmentData_modifiers_product_group>
      get serializer => _$gCartItemFragmentDataModifiersProductGroupSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
          GCartItemFragmentData_modifiers_product_group.serializer, this)
      as Map<String, dynamic>);
  static GCartItemFragmentData_modifiers_product_group? fromJson(
          Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
          GCartItemFragmentData_modifiers_product_group.serializer, json);
}

abstract class GCartItemFragmentData_modifiers_product_category
    implements
        Built<GCartItemFragmentData_modifiers_product_category,
            GCartItemFragmentData_modifiers_product_categoryBuilder>,
        GCartItemFragment_modifiers_product_category,
        _i5.GCartItemModifierFragment_product_category,
        _i1.GProductFragment_category {
  GCartItemFragmentData_modifiers_product_category._();

  factory GCartItemFragmentData_modifiers_product_category(
      [Function(GCartItemFragmentData_modifiers_product_categoryBuilder b)
          updates]) = _$GCartItemFragmentData_modifiers_product_category;

  static void _initializeBuilder(
          GCartItemFragmentData_modifiers_product_categoryBuilder b) =>
      b..G__typename = 'ProductCategory';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  static Serializer<GCartItemFragmentData_modifiers_product_category>
      get serializer =>
          _$gCartItemFragmentDataModifiersProductCategorySerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
          GCartItemFragmentData_modifiers_product_category.serializer, this)
      as Map<String, dynamic>);
  static GCartItemFragmentData_modifiers_product_category? fromJson(
          Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
          GCartItemFragmentData_modifiers_product_category.serializer, json);
}

abstract class GCartItemFragmentData_modifiers_product_products_sizes
    implements
        Built<GCartItemFragmentData_modifiers_product_products_sizes,
            GCartItemFragmentData_modifiers_product_products_sizesBuilder>,
        GCartItemFragment_modifiers_product_products_sizes,
        _i5.GCartItemModifierFragment_product_products_sizes,
        _i1.GProductFragment_products_sizes,
        _i2.GProductsSizesFragment {
  GCartItemFragmentData_modifiers_product_products_sizes._();

  factory GCartItemFragmentData_modifiers_product_products_sizes(
      [Function(GCartItemFragmentData_modifiers_product_products_sizesBuilder b)
          updates]) = _$GCartItemFragmentData_modifiers_product_products_sizes;

  static void _initializeBuilder(
          GCartItemFragmentData_modifiers_product_products_sizesBuilder b) =>
      b..G__typename = 'Product';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  String? get additionalInfo;
  String? get description;
  GCartItemFragmentData_modifiers_product_products_sizes_parentGroup?
      get parentGroup;
  BuiltList<GCartItemFragmentData_modifiers_product_products_sizes_images>?
      get images;
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
  BuiltList<GCartItemFragmentData_modifiers_product_products_sizes_modifiers>?
      get modifiers;
  BuiltList<
          GCartItemFragmentData_modifiers_product_products_sizes_groupModifiers>?
      get groupModifiers;
  static Serializer<GCartItemFragmentData_modifiers_product_products_sizes>
      get serializer =>
          _$gCartItemFragmentDataModifiersProductProductsSizesSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
      GCartItemFragmentData_modifiers_product_products_sizes.serializer,
      this) as Map<String, dynamic>);
  static GCartItemFragmentData_modifiers_product_products_sizes? fromJson(
          Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
          GCartItemFragmentData_modifiers_product_products_sizes.serializer,
          json);
}

abstract class GCartItemFragmentData_modifiers_product_products_sizes_parentGroup
    implements
        Built<
            GCartItemFragmentData_modifiers_product_products_sizes_parentGroup,
            GCartItemFragmentData_modifiers_product_products_sizes_parentGroupBuilder>,
        GCartItemFragment_modifiers_product_products_sizes_parentGroup,
        _i5.GCartItemModifierFragment_product_products_sizes_parentGroup,
        _i1.GProductFragment_products_sizes_parentGroup,
        _i2.GProductsSizesFragment_parentGroup {
  GCartItemFragmentData_modifiers_product_products_sizes_parentGroup._();

  factory GCartItemFragmentData_modifiers_product_products_sizes_parentGroup(
          [Function(
                  GCartItemFragmentData_modifiers_product_products_sizes_parentGroupBuilder
                      b)
              updates]) =
      _$GCartItemFragmentData_modifiers_product_products_sizes_parentGroup;

  static void _initializeBuilder(
          GCartItemFragmentData_modifiers_product_products_sizes_parentGroupBuilder
              b) =>
      b..G__typename = 'Group';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  static Serializer<
          GCartItemFragmentData_modifiers_product_products_sizes_parentGroup>
      get serializer =>
          _$gCartItemFragmentDataModifiersProductProductsSizesParentGroupSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
      GCartItemFragmentData_modifiers_product_products_sizes_parentGroup
          .serializer,
      this) as Map<String, dynamic>);
  static GCartItemFragmentData_modifiers_product_products_sizes_parentGroup?
      fromJson(Map<String, dynamic> json) => _i6.serializers.deserializeWith(
          GCartItemFragmentData_modifiers_product_products_sizes_parentGroup
              .serializer,
          json);
}

abstract class GCartItemFragmentData_modifiers_product_products_sizes_images
    implements
        Built<GCartItemFragmentData_modifiers_product_products_sizes_images,
            GCartItemFragmentData_modifiers_product_products_sizes_imagesBuilder>,
        GCartItemFragment_modifiers_product_products_sizes_images,
        _i5.GCartItemModifierFragment_product_products_sizes_images,
        _i1.GProductFragment_products_sizes_images,
        _i2.GProductsSizesFragment_images {
  GCartItemFragmentData_modifiers_product_products_sizes_images._();

  factory GCartItemFragmentData_modifiers_product_products_sizes_images(
          [Function(
                  GCartItemFragmentData_modifiers_product_products_sizes_imagesBuilder
                      b)
              updates]) =
      _$GCartItemFragmentData_modifiers_product_products_sizes_images;

  static void _initializeBuilder(
          GCartItemFragmentData_modifiers_product_products_sizes_imagesBuilder
              b) =>
      b..G__typename = 'ProductImage';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get imageId;
  String? get imageUrl;
  static Serializer<
          GCartItemFragmentData_modifiers_product_products_sizes_images>
      get serializer =>
          _$gCartItemFragmentDataModifiersProductProductsSizesImagesSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
      GCartItemFragmentData_modifiers_product_products_sizes_images.serializer,
      this) as Map<String, dynamic>);
  static GCartItemFragmentData_modifiers_product_products_sizes_images?
      fromJson(Map<String, dynamic> json) => _i6.serializers.deserializeWith(
          GCartItemFragmentData_modifiers_product_products_sizes_images
              .serializer,
          json);
}

abstract class GCartItemFragmentData_modifiers_product_products_sizes_modifiers
    implements
        Built<GCartItemFragmentData_modifiers_product_products_sizes_modifiers,
            GCartItemFragmentData_modifiers_product_products_sizes_modifiersBuilder>,
        GCartItemFragment_modifiers_product_products_sizes_modifiers,
        _i5.GCartItemModifierFragment_product_products_sizes_modifiers,
        _i1.GProductFragment_products_sizes_modifiers,
        _i2.GProductsSizesFragment_modifiers,
        _i3.GModificatorFragment {
  GCartItemFragmentData_modifiers_product_products_sizes_modifiers._();

  factory GCartItemFragmentData_modifiers_product_products_sizes_modifiers(
          [Function(
                  GCartItemFragmentData_modifiers_product_products_sizes_modifiersBuilder
                      b)
              updates]) =
      _$GCartItemFragmentData_modifiers_product_products_sizes_modifiers;

  static void _initializeBuilder(
          GCartItemFragmentData_modifiers_product_products_sizes_modifiersBuilder
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
          GCartItemFragmentData_modifiers_product_products_sizes_modifiers>
      get serializer =>
          _$gCartItemFragmentDataModifiersProductProductsSizesModifiersSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
      GCartItemFragmentData_modifiers_product_products_sizes_modifiers
          .serializer,
      this) as Map<String, dynamic>);
  static GCartItemFragmentData_modifiers_product_products_sizes_modifiers?
      fromJson(Map<String, dynamic> json) => _i6.serializers.deserializeWith(
          GCartItemFragmentData_modifiers_product_products_sizes_modifiers
              .serializer,
          json);
}

abstract class GCartItemFragmentData_modifiers_product_products_sizes_groupModifiers
    implements
        Built<
            GCartItemFragmentData_modifiers_product_products_sizes_groupModifiers,
            GCartItemFragmentData_modifiers_product_products_sizes_groupModifiersBuilder>,
        GCartItemFragment_modifiers_product_products_sizes_groupModifiers,
        _i5.GCartItemModifierFragment_product_products_sizes_groupModifiers,
        _i1.GProductFragment_products_sizes_groupModifiers,
        _i2.GProductsSizesFragment_groupModifiers,
        _i4.GGroupModificatorFragment {
  GCartItemFragmentData_modifiers_product_products_sizes_groupModifiers._();

  factory GCartItemFragmentData_modifiers_product_products_sizes_groupModifiers(
          [Function(
                  GCartItemFragmentData_modifiers_product_products_sizes_groupModifiersBuilder
                      b)
              updates]) =
      _$GCartItemFragmentData_modifiers_product_products_sizes_groupModifiers;

  static void _initializeBuilder(
          GCartItemFragmentData_modifiers_product_products_sizes_groupModifiersBuilder
              b) =>
      b..G__typename = 'GroupModificator';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get maxAmount;
  int? get minAmount;
  String get modifierId;
  bool? get required;
  BuiltList<
          GCartItemFragmentData_modifiers_product_products_sizes_groupModifiers_childModifiers>?
      get childModifiers;
  bool? get childModifiersHaveMinMaxRestrictions;
  static Serializer<
          GCartItemFragmentData_modifiers_product_products_sizes_groupModifiers>
      get serializer =>
          _$gCartItemFragmentDataModifiersProductProductsSizesGroupModifiersSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
      GCartItemFragmentData_modifiers_product_products_sizes_groupModifiers
          .serializer,
      this) as Map<String, dynamic>);
  static GCartItemFragmentData_modifiers_product_products_sizes_groupModifiers?
      fromJson(Map<String, dynamic> json) => _i6.serializers.deserializeWith(
          GCartItemFragmentData_modifiers_product_products_sizes_groupModifiers
              .serializer,
          json);
}

abstract class GCartItemFragmentData_modifiers_product_products_sizes_groupModifiers_childModifiers
    implements
        Built<
            GCartItemFragmentData_modifiers_product_products_sizes_groupModifiers_childModifiers,
            GCartItemFragmentData_modifiers_product_products_sizes_groupModifiers_childModifiersBuilder>,
        GCartItemFragment_modifiers_product_products_sizes_groupModifiers_childModifiers,
        _i5.GCartItemModifierFragment_product_products_sizes_groupModifiers_childModifiers,
        _i1.GProductFragment_products_sizes_groupModifiers_childModifiers,
        _i2.GProductsSizesFragment_groupModifiers_childModifiers,
        _i4.GGroupModificatorFragment_childModifiers,
        _i3.GModificatorFragment {
  GCartItemFragmentData_modifiers_product_products_sizes_groupModifiers_childModifiers._();

  factory GCartItemFragmentData_modifiers_product_products_sizes_groupModifiers_childModifiers(
          [Function(
                  GCartItemFragmentData_modifiers_product_products_sizes_groupModifiers_childModifiersBuilder
                      b)
              updates]) =
      _$GCartItemFragmentData_modifiers_product_products_sizes_groupModifiers_childModifiers;

  static void _initializeBuilder(
          GCartItemFragmentData_modifiers_product_products_sizes_groupModifiers_childModifiersBuilder
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
          GCartItemFragmentData_modifiers_product_products_sizes_groupModifiers_childModifiers>
      get serializer =>
          _$gCartItemFragmentDataModifiersProductProductsSizesGroupModifiersChildModifiersSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
      GCartItemFragmentData_modifiers_product_products_sizes_groupModifiers_childModifiers
          .serializer,
      this) as Map<String, dynamic>);
  static GCartItemFragmentData_modifiers_product_products_sizes_groupModifiers_childModifiers?
      fromJson(Map<String, dynamic> json) => _i6.serializers.deserializeWith(
          GCartItemFragmentData_modifiers_product_products_sizes_groupModifiers_childModifiers
              .serializer,
          json);
}

abstract class GCartItemFragmentData_modifiers_product_images
    implements
        Built<GCartItemFragmentData_modifiers_product_images,
            GCartItemFragmentData_modifiers_product_imagesBuilder>,
        GCartItemFragment_modifiers_product_images,
        _i5.GCartItemModifierFragment_product_images,
        _i1.GProductFragment_images {
  GCartItemFragmentData_modifiers_product_images._();

  factory GCartItemFragmentData_modifiers_product_images(
      [Function(GCartItemFragmentData_modifiers_product_imagesBuilder b)
          updates]) = _$GCartItemFragmentData_modifiers_product_images;

  static void _initializeBuilder(
          GCartItemFragmentData_modifiers_product_imagesBuilder b) =>
      b..G__typename = 'ProductImage';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get imageId;
  String? get imageUrl;
  static Serializer<GCartItemFragmentData_modifiers_product_images>
      get serializer => _$gCartItemFragmentDataModifiersProductImagesSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
          GCartItemFragmentData_modifiers_product_images.serializer, this)
      as Map<String, dynamic>);
  static GCartItemFragmentData_modifiers_product_images? fromJson(
          Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
          GCartItemFragmentData_modifiers_product_images.serializer, json);
}

abstract class GCartItemFragmentData_modifiers_product_modifiers
    implements
        Built<GCartItemFragmentData_modifiers_product_modifiers,
            GCartItemFragmentData_modifiers_product_modifiersBuilder>,
        GCartItemFragment_modifiers_product_modifiers,
        _i5.GCartItemModifierFragment_product_modifiers,
        _i1.GProductFragment_modifiers,
        _i3.GModificatorFragment {
  GCartItemFragmentData_modifiers_product_modifiers._();

  factory GCartItemFragmentData_modifiers_product_modifiers(
      [Function(GCartItemFragmentData_modifiers_product_modifiersBuilder b)
          updates]) = _$GCartItemFragmentData_modifiers_product_modifiers;

  static void _initializeBuilder(
          GCartItemFragmentData_modifiers_product_modifiersBuilder b) =>
      b..G__typename = 'Modificator';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get maxAmount;
  int? get minAmount;
  String get modifierId;
  bool? get required;
  int? get defaultAmount;
  bool? get hideIfDefaultAmount;
  static Serializer<GCartItemFragmentData_modifiers_product_modifiers>
      get serializer =>
          _$gCartItemFragmentDataModifiersProductModifiersSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
          GCartItemFragmentData_modifiers_product_modifiers.serializer, this)
      as Map<String, dynamic>);
  static GCartItemFragmentData_modifiers_product_modifiers? fromJson(
          Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
          GCartItemFragmentData_modifiers_product_modifiers.serializer, json);
}

abstract class GCartItemFragmentData_modifiers_product_groupModifiers
    implements
        Built<GCartItemFragmentData_modifiers_product_groupModifiers,
            GCartItemFragmentData_modifiers_product_groupModifiersBuilder>,
        GCartItemFragment_modifiers_product_groupModifiers,
        _i5.GCartItemModifierFragment_product_groupModifiers,
        _i1.GProductFragment_groupModifiers,
        _i4.GGroupModificatorFragment {
  GCartItemFragmentData_modifiers_product_groupModifiers._();

  factory GCartItemFragmentData_modifiers_product_groupModifiers(
      [Function(GCartItemFragmentData_modifiers_product_groupModifiersBuilder b)
          updates]) = _$GCartItemFragmentData_modifiers_product_groupModifiers;

  static void _initializeBuilder(
          GCartItemFragmentData_modifiers_product_groupModifiersBuilder b) =>
      b..G__typename = 'GroupModificator';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get maxAmount;
  int? get minAmount;
  String get modifierId;
  bool? get required;
  BuiltList<
          GCartItemFragmentData_modifiers_product_groupModifiers_childModifiers>?
      get childModifiers;
  bool? get childModifiersHaveMinMaxRestrictions;
  static Serializer<GCartItemFragmentData_modifiers_product_groupModifiers>
      get serializer =>
          _$gCartItemFragmentDataModifiersProductGroupModifiersSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
      GCartItemFragmentData_modifiers_product_groupModifiers.serializer,
      this) as Map<String, dynamic>);
  static GCartItemFragmentData_modifiers_product_groupModifiers? fromJson(
          Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
          GCartItemFragmentData_modifiers_product_groupModifiers.serializer,
          json);
}

abstract class GCartItemFragmentData_modifiers_product_groupModifiers_childModifiers
    implements
        Built<
            GCartItemFragmentData_modifiers_product_groupModifiers_childModifiers,
            GCartItemFragmentData_modifiers_product_groupModifiers_childModifiersBuilder>,
        GCartItemFragment_modifiers_product_groupModifiers_childModifiers,
        _i5.GCartItemModifierFragment_product_groupModifiers_childModifiers,
        _i1.GProductFragment_groupModifiers_childModifiers,
        _i4.GGroupModificatorFragment_childModifiers,
        _i3.GModificatorFragment {
  GCartItemFragmentData_modifiers_product_groupModifiers_childModifiers._();

  factory GCartItemFragmentData_modifiers_product_groupModifiers_childModifiers(
          [Function(
                  GCartItemFragmentData_modifiers_product_groupModifiers_childModifiersBuilder
                      b)
              updates]) =
      _$GCartItemFragmentData_modifiers_product_groupModifiers_childModifiers;

  static void _initializeBuilder(
          GCartItemFragmentData_modifiers_product_groupModifiers_childModifiersBuilder
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
          GCartItemFragmentData_modifiers_product_groupModifiers_childModifiers>
      get serializer =>
          _$gCartItemFragmentDataModifiersProductGroupModifiersChildModifiersSerializer;
  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
      GCartItemFragmentData_modifiers_product_groupModifiers_childModifiers
          .serializer,
      this) as Map<String, dynamic>);
  static GCartItemFragmentData_modifiers_product_groupModifiers_childModifiers?
      fromJson(Map<String, dynamic> json) => _i6.serializers.deserializeWith(
          GCartItemFragmentData_modifiers_product_groupModifiers_childModifiers
              .serializer,
          json);
}
