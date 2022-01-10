// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:toto_mobile/src/core/data/network/models/group_modificator_fragment.data.gql.dart'
    as _i4;
import 'package:toto_mobile/src/core/data/network/models/modificator_fragment.data.gql.dart'
    as _i3;
import 'package:toto_mobile/src/core/data/network/models/product_fragment.data.gql.dart'
    as _i1;
import 'package:toto_mobile/src/core/data/network/models/products_size_fragment.data.gql.dart'
    as _i2;
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i5;

part 'cartItem_modifier_fragment.data.gql.g.dart';

abstract class GCartItemModifierFragment {
  String get G__typename;
  String get id;
  String get type;
  String get product_id;
  GCartItemModifierFragment_product get product;
  String get name;
  int get amount;
  String? get group_id;
  String? get group_name;
  Map<String, dynamic> toJson();
}

abstract class GCartItemModifierFragment_product
    implements _i1.GProductFragment {
  String get G__typename;
  String get id;
  String? get parentGroupId;
  String? get groupId;
  GCartItemModifierFragment_product_parentGroup? get parentGroup;
  GCartItemModifierFragment_product_group? get group;
  String? get productCategoryId;
  GCartItemModifierFragment_product_category? get category;
  BuiltList<GCartItemModifierFragment_product_products_sizes>?
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
  BuiltList<GCartItemModifierFragment_product_images>? get images;
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
  BuiltList<GCartItemModifierFragment_product_modifiers>? get modifiers;
  BuiltList<GCartItemModifierFragment_product_groupModifiers>?
      get groupModifiers;
  Map<String, dynamic> toJson();
}

abstract class GCartItemModifierFragment_product_parentGroup
    implements _i1.GProductFragment_parentGroup {
  String get G__typename;
  String get id;
  String? get parentGroup;
  String? get additionalInfo;
  String get name;
  String? get description;
  Map<String, dynamic> toJson();
}

abstract class GCartItemModifierFragment_product_group
    implements _i1.GProductFragment_group {
  String get G__typename;
  String get id;
  String? get parentGroup;
  String? get additionalInfo;
  String get name;
  String? get description;
  Map<String, dynamic> toJson();
}

abstract class GCartItemModifierFragment_product_category
    implements _i1.GProductFragment_category {
  String get G__typename;
  String get id;
  String get name;
  Map<String, dynamic> toJson();
}

abstract class GCartItemModifierFragment_product_products_sizes
    implements _i1.GProductFragment_products_sizes, _i2.GProductsSizesFragment {
  String get G__typename;
  String get id;
  String get name;
  String? get additionalInfo;
  String? get description;
  GCartItemModifierFragment_product_products_sizes_parentGroup? get parentGroup;
  BuiltList<GCartItemModifierFragment_product_products_sizes_images>?
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
  BuiltList<GCartItemModifierFragment_product_products_sizes_modifiers>?
      get modifiers;
  BuiltList<GCartItemModifierFragment_product_products_sizes_groupModifiers>?
      get groupModifiers;
  Map<String, dynamic> toJson();
}

abstract class GCartItemModifierFragment_product_products_sizes_parentGroup
    implements
        _i1.GProductFragment_products_sizes_parentGroup,
        _i2.GProductsSizesFragment_parentGroup {
  String get G__typename;
  String get id;
  String get name;
  Map<String, dynamic> toJson();
}

abstract class GCartItemModifierFragment_product_products_sizes_images
    implements
        _i1.GProductFragment_products_sizes_images,
        _i2.GProductsSizesFragment_images {
  String get G__typename;
  String? get imageId;
  String? get imageUrl;
  Map<String, dynamic> toJson();
}

abstract class GCartItemModifierFragment_product_products_sizes_modifiers
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

abstract class GCartItemModifierFragment_product_products_sizes_groupModifiers
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
          GCartItemModifierFragment_product_products_sizes_groupModifiers_childModifiers>?
      get childModifiers;
  bool? get childModifiersHaveMinMaxRestrictions;
  Map<String, dynamic> toJson();
}

abstract class GCartItemModifierFragment_product_products_sizes_groupModifiers_childModifiers
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

abstract class GCartItemModifierFragment_product_images
    implements _i1.GProductFragment_images {
  String get G__typename;
  String? get imageId;
  String? get imageUrl;
  Map<String, dynamic> toJson();
}

abstract class GCartItemModifierFragment_product_modifiers
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

abstract class GCartItemModifierFragment_product_groupModifiers
    implements
        _i1.GProductFragment_groupModifiers,
        _i4.GGroupModificatorFragment {
  String get G__typename;
  int? get maxAmount;
  int? get minAmount;
  String get modifierId;
  bool? get required;
  BuiltList<GCartItemModifierFragment_product_groupModifiers_childModifiers>?
      get childModifiers;
  bool? get childModifiersHaveMinMaxRestrictions;
  Map<String, dynamic> toJson();
}

abstract class GCartItemModifierFragment_product_groupModifiers_childModifiers
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

abstract class GCartItemModifierFragmentData
    implements
        Built<GCartItemModifierFragmentData,
            GCartItemModifierFragmentDataBuilder>,
        GCartItemModifierFragment {
  GCartItemModifierFragmentData._();

  factory GCartItemModifierFragmentData(
          [Function(GCartItemModifierFragmentDataBuilder b) updates]) =
      _$GCartItemModifierFragmentData;

  static void _initializeBuilder(GCartItemModifierFragmentDataBuilder b) =>
      b..G__typename = 'CartItemModifier';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get type;
  String get product_id;
  GCartItemModifierFragmentData_product get product;
  String get name;
  int get amount;
  String? get group_id;
  String? get group_name;
  static Serializer<GCartItemModifierFragmentData> get serializer =>
      _$gCartItemModifierFragmentDataSerializer;
  Map<String, dynamic> toJson() => (_i5.serializers.serializeWith(
      GCartItemModifierFragmentData.serializer, this) as Map<String, dynamic>);
  static GCartItemModifierFragmentData? fromJson(Map<String, dynamic> json) =>
      _i5.serializers
          .deserializeWith(GCartItemModifierFragmentData.serializer, json);
}

abstract class GCartItemModifierFragmentData_product
    implements
        Built<GCartItemModifierFragmentData_product,
            GCartItemModifierFragmentData_productBuilder>,
        GCartItemModifierFragment_product,
        _i1.GProductFragment {
  GCartItemModifierFragmentData_product._();

  factory GCartItemModifierFragmentData_product(
          [Function(GCartItemModifierFragmentData_productBuilder b) updates]) =
      _$GCartItemModifierFragmentData_product;

  static void _initializeBuilder(
          GCartItemModifierFragmentData_productBuilder b) =>
      b..G__typename = 'Product';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get parentGroupId;
  String? get groupId;
  GCartItemModifierFragmentData_product_parentGroup? get parentGroup;
  GCartItemModifierFragmentData_product_group? get group;
  String? get productCategoryId;
  GCartItemModifierFragmentData_product_category? get category;
  BuiltList<GCartItemModifierFragmentData_product_products_sizes>?
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
  BuiltList<GCartItemModifierFragmentData_product_images>? get images;
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
  BuiltList<GCartItemModifierFragmentData_product_modifiers>? get modifiers;
  BuiltList<GCartItemModifierFragmentData_product_groupModifiers>?
      get groupModifiers;
  static Serializer<GCartItemModifierFragmentData_product> get serializer =>
      _$gCartItemModifierFragmentDataProductSerializer;
  Map<String, dynamic> toJson() => (_i5.serializers
          .serializeWith(GCartItemModifierFragmentData_product.serializer, this)
      as Map<String, dynamic>);
  static GCartItemModifierFragmentData_product? fromJson(
          Map<String, dynamic> json) =>
      _i5.serializers.deserializeWith(
          GCartItemModifierFragmentData_product.serializer, json);
}

abstract class GCartItemModifierFragmentData_product_parentGroup
    implements
        Built<GCartItemModifierFragmentData_product_parentGroup,
            GCartItemModifierFragmentData_product_parentGroupBuilder>,
        GCartItemModifierFragment_product_parentGroup,
        _i1.GProductFragment_parentGroup {
  GCartItemModifierFragmentData_product_parentGroup._();

  factory GCartItemModifierFragmentData_product_parentGroup(
      [Function(GCartItemModifierFragmentData_product_parentGroupBuilder b)
          updates]) = _$GCartItemModifierFragmentData_product_parentGroup;

  static void _initializeBuilder(
          GCartItemModifierFragmentData_product_parentGroupBuilder b) =>
      b..G__typename = 'Group';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get parentGroup;
  String? get additionalInfo;
  String get name;
  String? get description;
  static Serializer<GCartItemModifierFragmentData_product_parentGroup>
      get serializer =>
          _$gCartItemModifierFragmentDataProductParentGroupSerializer;
  Map<String, dynamic> toJson() => (_i5.serializers.serializeWith(
          GCartItemModifierFragmentData_product_parentGroup.serializer, this)
      as Map<String, dynamic>);
  static GCartItemModifierFragmentData_product_parentGroup? fromJson(
          Map<String, dynamic> json) =>
      _i5.serializers.deserializeWith(
          GCartItemModifierFragmentData_product_parentGroup.serializer, json);
}

abstract class GCartItemModifierFragmentData_product_group
    implements
        Built<GCartItemModifierFragmentData_product_group,
            GCartItemModifierFragmentData_product_groupBuilder>,
        GCartItemModifierFragment_product_group,
        _i1.GProductFragment_group {
  GCartItemModifierFragmentData_product_group._();

  factory GCartItemModifierFragmentData_product_group(
      [Function(GCartItemModifierFragmentData_product_groupBuilder b)
          updates]) = _$GCartItemModifierFragmentData_product_group;

  static void _initializeBuilder(
          GCartItemModifierFragmentData_product_groupBuilder b) =>
      b..G__typename = 'Group';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get parentGroup;
  String? get additionalInfo;
  String get name;
  String? get description;
  static Serializer<GCartItemModifierFragmentData_product_group>
      get serializer => _$gCartItemModifierFragmentDataProductGroupSerializer;
  Map<String, dynamic> toJson() => (_i5.serializers.serializeWith(
          GCartItemModifierFragmentData_product_group.serializer, this)
      as Map<String, dynamic>);
  static GCartItemModifierFragmentData_product_group? fromJson(
          Map<String, dynamic> json) =>
      _i5.serializers.deserializeWith(
          GCartItemModifierFragmentData_product_group.serializer, json);
}

abstract class GCartItemModifierFragmentData_product_category
    implements
        Built<GCartItemModifierFragmentData_product_category,
            GCartItemModifierFragmentData_product_categoryBuilder>,
        GCartItemModifierFragment_product_category,
        _i1.GProductFragment_category {
  GCartItemModifierFragmentData_product_category._();

  factory GCartItemModifierFragmentData_product_category(
      [Function(GCartItemModifierFragmentData_product_categoryBuilder b)
          updates]) = _$GCartItemModifierFragmentData_product_category;

  static void _initializeBuilder(
          GCartItemModifierFragmentData_product_categoryBuilder b) =>
      b..G__typename = 'ProductCategory';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  static Serializer<GCartItemModifierFragmentData_product_category>
      get serializer =>
          _$gCartItemModifierFragmentDataProductCategorySerializer;
  Map<String, dynamic> toJson() => (_i5.serializers.serializeWith(
          GCartItemModifierFragmentData_product_category.serializer, this)
      as Map<String, dynamic>);
  static GCartItemModifierFragmentData_product_category? fromJson(
          Map<String, dynamic> json) =>
      _i5.serializers.deserializeWith(
          GCartItemModifierFragmentData_product_category.serializer, json);
}

abstract class GCartItemModifierFragmentData_product_products_sizes
    implements
        Built<GCartItemModifierFragmentData_product_products_sizes,
            GCartItemModifierFragmentData_product_products_sizesBuilder>,
        GCartItemModifierFragment_product_products_sizes,
        _i1.GProductFragment_products_sizes,
        _i2.GProductsSizesFragment {
  GCartItemModifierFragmentData_product_products_sizes._();

  factory GCartItemModifierFragmentData_product_products_sizes(
      [Function(GCartItemModifierFragmentData_product_products_sizesBuilder b)
          updates]) = _$GCartItemModifierFragmentData_product_products_sizes;

  static void _initializeBuilder(
          GCartItemModifierFragmentData_product_products_sizesBuilder b) =>
      b..G__typename = 'Product';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  String? get additionalInfo;
  String? get description;
  GCartItemModifierFragmentData_product_products_sizes_parentGroup?
      get parentGroup;
  BuiltList<GCartItemModifierFragmentData_product_products_sizes_images>?
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
  BuiltList<GCartItemModifierFragmentData_product_products_sizes_modifiers>?
      get modifiers;
  BuiltList<
          GCartItemModifierFragmentData_product_products_sizes_groupModifiers>?
      get groupModifiers;
  static Serializer<GCartItemModifierFragmentData_product_products_sizes>
      get serializer =>
          _$gCartItemModifierFragmentDataProductProductsSizesSerializer;
  Map<String, dynamic> toJson() => (_i5.serializers.serializeWith(
          GCartItemModifierFragmentData_product_products_sizes.serializer, this)
      as Map<String, dynamic>);
  static GCartItemModifierFragmentData_product_products_sizes? fromJson(
          Map<String, dynamic> json) =>
      _i5.serializers.deserializeWith(
          GCartItemModifierFragmentData_product_products_sizes.serializer,
          json);
}

abstract class GCartItemModifierFragmentData_product_products_sizes_parentGroup
    implements
        Built<GCartItemModifierFragmentData_product_products_sizes_parentGroup,
            GCartItemModifierFragmentData_product_products_sizes_parentGroupBuilder>,
        GCartItemModifierFragment_product_products_sizes_parentGroup,
        _i1.GProductFragment_products_sizes_parentGroup,
        _i2.GProductsSizesFragment_parentGroup {
  GCartItemModifierFragmentData_product_products_sizes_parentGroup._();

  factory GCartItemModifierFragmentData_product_products_sizes_parentGroup(
          [Function(
                  GCartItemModifierFragmentData_product_products_sizes_parentGroupBuilder
                      b)
              updates]) =
      _$GCartItemModifierFragmentData_product_products_sizes_parentGroup;

  static void _initializeBuilder(
          GCartItemModifierFragmentData_product_products_sizes_parentGroupBuilder
              b) =>
      b..G__typename = 'Group';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  static Serializer<
          GCartItemModifierFragmentData_product_products_sizes_parentGroup>
      get serializer =>
          _$gCartItemModifierFragmentDataProductProductsSizesParentGroupSerializer;
  Map<String, dynamic> toJson() => (_i5.serializers.serializeWith(
      GCartItemModifierFragmentData_product_products_sizes_parentGroup
          .serializer,
      this) as Map<String, dynamic>);
  static GCartItemModifierFragmentData_product_products_sizes_parentGroup?
      fromJson(Map<String, dynamic> json) => _i5.serializers.deserializeWith(
          GCartItemModifierFragmentData_product_products_sizes_parentGroup
              .serializer,
          json);
}

abstract class GCartItemModifierFragmentData_product_products_sizes_images
    implements
        Built<GCartItemModifierFragmentData_product_products_sizes_images,
            GCartItemModifierFragmentData_product_products_sizes_imagesBuilder>,
        GCartItemModifierFragment_product_products_sizes_images,
        _i1.GProductFragment_products_sizes_images,
        _i2.GProductsSizesFragment_images {
  GCartItemModifierFragmentData_product_products_sizes_images._();

  factory GCartItemModifierFragmentData_product_products_sizes_images(
      [Function(
              GCartItemModifierFragmentData_product_products_sizes_imagesBuilder
                  b)
          updates]) = _$GCartItemModifierFragmentData_product_products_sizes_images;

  static void _initializeBuilder(
          GCartItemModifierFragmentData_product_products_sizes_imagesBuilder
              b) =>
      b..G__typename = 'ProductImage';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get imageId;
  String? get imageUrl;
  static Serializer<GCartItemModifierFragmentData_product_products_sizes_images>
      get serializer =>
          _$gCartItemModifierFragmentDataProductProductsSizesImagesSerializer;
  Map<String, dynamic> toJson() => (_i5.serializers.serializeWith(
      GCartItemModifierFragmentData_product_products_sizes_images.serializer,
      this) as Map<String, dynamic>);
  static GCartItemModifierFragmentData_product_products_sizes_images? fromJson(
          Map<String, dynamic> json) =>
      _i5.serializers.deserializeWith(
          GCartItemModifierFragmentData_product_products_sizes_images
              .serializer,
          json);
}

abstract class GCartItemModifierFragmentData_product_products_sizes_modifiers
    implements
        Built<GCartItemModifierFragmentData_product_products_sizes_modifiers,
            GCartItemModifierFragmentData_product_products_sizes_modifiersBuilder>,
        GCartItemModifierFragment_product_products_sizes_modifiers,
        _i1.GProductFragment_products_sizes_modifiers,
        _i2.GProductsSizesFragment_modifiers,
        _i3.GModificatorFragment {
  GCartItemModifierFragmentData_product_products_sizes_modifiers._();

  factory GCartItemModifierFragmentData_product_products_sizes_modifiers(
          [Function(
                  GCartItemModifierFragmentData_product_products_sizes_modifiersBuilder
                      b)
              updates]) =
      _$GCartItemModifierFragmentData_product_products_sizes_modifiers;

  static void _initializeBuilder(
          GCartItemModifierFragmentData_product_products_sizes_modifiersBuilder
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
          GCartItemModifierFragmentData_product_products_sizes_modifiers>
      get serializer =>
          _$gCartItemModifierFragmentDataProductProductsSizesModifiersSerializer;
  Map<String, dynamic> toJson() => (_i5.serializers.serializeWith(
      GCartItemModifierFragmentData_product_products_sizes_modifiers.serializer,
      this) as Map<String, dynamic>);
  static GCartItemModifierFragmentData_product_products_sizes_modifiers?
      fromJson(Map<String, dynamic> json) => _i5.serializers.deserializeWith(
          GCartItemModifierFragmentData_product_products_sizes_modifiers
              .serializer,
          json);
}

abstract class GCartItemModifierFragmentData_product_products_sizes_groupModifiers
    implements
        Built<
            GCartItemModifierFragmentData_product_products_sizes_groupModifiers,
            GCartItemModifierFragmentData_product_products_sizes_groupModifiersBuilder>,
        GCartItemModifierFragment_product_products_sizes_groupModifiers,
        _i1.GProductFragment_products_sizes_groupModifiers,
        _i2.GProductsSizesFragment_groupModifiers,
        _i4.GGroupModificatorFragment {
  GCartItemModifierFragmentData_product_products_sizes_groupModifiers._();

  factory GCartItemModifierFragmentData_product_products_sizes_groupModifiers(
          [Function(
                  GCartItemModifierFragmentData_product_products_sizes_groupModifiersBuilder
                      b)
              updates]) =
      _$GCartItemModifierFragmentData_product_products_sizes_groupModifiers;

  static void _initializeBuilder(
          GCartItemModifierFragmentData_product_products_sizes_groupModifiersBuilder
              b) =>
      b..G__typename = 'GroupModificator';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get maxAmount;
  int? get minAmount;
  String get modifierId;
  bool? get required;
  BuiltList<
          GCartItemModifierFragmentData_product_products_sizes_groupModifiers_childModifiers>?
      get childModifiers;
  bool? get childModifiersHaveMinMaxRestrictions;
  static Serializer<
          GCartItemModifierFragmentData_product_products_sizes_groupModifiers>
      get serializer =>
          _$gCartItemModifierFragmentDataProductProductsSizesGroupModifiersSerializer;
  Map<String, dynamic> toJson() => (_i5.serializers.serializeWith(
      GCartItemModifierFragmentData_product_products_sizes_groupModifiers
          .serializer,
      this) as Map<String, dynamic>);
  static GCartItemModifierFragmentData_product_products_sizes_groupModifiers?
      fromJson(Map<String, dynamic> json) => _i5.serializers.deserializeWith(
          GCartItemModifierFragmentData_product_products_sizes_groupModifiers
              .serializer,
          json);
}

abstract class GCartItemModifierFragmentData_product_products_sizes_groupModifiers_childModifiers
    implements
        Built<
            GCartItemModifierFragmentData_product_products_sizes_groupModifiers_childModifiers,
            GCartItemModifierFragmentData_product_products_sizes_groupModifiers_childModifiersBuilder>,
        GCartItemModifierFragment_product_products_sizes_groupModifiers_childModifiers,
        _i1.GProductFragment_products_sizes_groupModifiers_childModifiers,
        _i2.GProductsSizesFragment_groupModifiers_childModifiers,
        _i4.GGroupModificatorFragment_childModifiers,
        _i3.GModificatorFragment {
  GCartItemModifierFragmentData_product_products_sizes_groupModifiers_childModifiers._();

  factory GCartItemModifierFragmentData_product_products_sizes_groupModifiers_childModifiers(
          [Function(
                  GCartItemModifierFragmentData_product_products_sizes_groupModifiers_childModifiersBuilder
                      b)
              updates]) =
      _$GCartItemModifierFragmentData_product_products_sizes_groupModifiers_childModifiers;

  static void _initializeBuilder(
          GCartItemModifierFragmentData_product_products_sizes_groupModifiers_childModifiersBuilder
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
          GCartItemModifierFragmentData_product_products_sizes_groupModifiers_childModifiers>
      get serializer =>
          _$gCartItemModifierFragmentDataProductProductsSizesGroupModifiersChildModifiersSerializer;
  Map<String, dynamic> toJson() => (_i5.serializers.serializeWith(
      GCartItemModifierFragmentData_product_products_sizes_groupModifiers_childModifiers
          .serializer,
      this) as Map<String, dynamic>);
  static GCartItemModifierFragmentData_product_products_sizes_groupModifiers_childModifiers?
      fromJson(Map<String, dynamic> json) => _i5.serializers.deserializeWith(
          GCartItemModifierFragmentData_product_products_sizes_groupModifiers_childModifiers
              .serializer,
          json);
}

abstract class GCartItemModifierFragmentData_product_images
    implements
        Built<GCartItemModifierFragmentData_product_images,
            GCartItemModifierFragmentData_product_imagesBuilder>,
        GCartItemModifierFragment_product_images,
        _i1.GProductFragment_images {
  GCartItemModifierFragmentData_product_images._();

  factory GCartItemModifierFragmentData_product_images(
      [Function(GCartItemModifierFragmentData_product_imagesBuilder b)
          updates]) = _$GCartItemModifierFragmentData_product_images;

  static void _initializeBuilder(
          GCartItemModifierFragmentData_product_imagesBuilder b) =>
      b..G__typename = 'ProductImage';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get imageId;
  String? get imageUrl;
  static Serializer<GCartItemModifierFragmentData_product_images>
      get serializer => _$gCartItemModifierFragmentDataProductImagesSerializer;
  Map<String, dynamic> toJson() => (_i5.serializers.serializeWith(
          GCartItemModifierFragmentData_product_images.serializer, this)
      as Map<String, dynamic>);
  static GCartItemModifierFragmentData_product_images? fromJson(
          Map<String, dynamic> json) =>
      _i5.serializers.deserializeWith(
          GCartItemModifierFragmentData_product_images.serializer, json);
}

abstract class GCartItemModifierFragmentData_product_modifiers
    implements
        Built<GCartItemModifierFragmentData_product_modifiers,
            GCartItemModifierFragmentData_product_modifiersBuilder>,
        GCartItemModifierFragment_product_modifiers,
        _i1.GProductFragment_modifiers,
        _i3.GModificatorFragment {
  GCartItemModifierFragmentData_product_modifiers._();

  factory GCartItemModifierFragmentData_product_modifiers(
      [Function(GCartItemModifierFragmentData_product_modifiersBuilder b)
          updates]) = _$GCartItemModifierFragmentData_product_modifiers;

  static void _initializeBuilder(
          GCartItemModifierFragmentData_product_modifiersBuilder b) =>
      b..G__typename = 'Modificator';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get maxAmount;
  int? get minAmount;
  String get modifierId;
  bool? get required;
  int? get defaultAmount;
  bool? get hideIfDefaultAmount;
  static Serializer<GCartItemModifierFragmentData_product_modifiers>
      get serializer =>
          _$gCartItemModifierFragmentDataProductModifiersSerializer;
  Map<String, dynamic> toJson() => (_i5.serializers.serializeWith(
          GCartItemModifierFragmentData_product_modifiers.serializer, this)
      as Map<String, dynamic>);
  static GCartItemModifierFragmentData_product_modifiers? fromJson(
          Map<String, dynamic> json) =>
      _i5.serializers.deserializeWith(
          GCartItemModifierFragmentData_product_modifiers.serializer, json);
}

abstract class GCartItemModifierFragmentData_product_groupModifiers
    implements
        Built<GCartItemModifierFragmentData_product_groupModifiers,
            GCartItemModifierFragmentData_product_groupModifiersBuilder>,
        GCartItemModifierFragment_product_groupModifiers,
        _i1.GProductFragment_groupModifiers,
        _i4.GGroupModificatorFragment {
  GCartItemModifierFragmentData_product_groupModifiers._();

  factory GCartItemModifierFragmentData_product_groupModifiers(
      [Function(GCartItemModifierFragmentData_product_groupModifiersBuilder b)
          updates]) = _$GCartItemModifierFragmentData_product_groupModifiers;

  static void _initializeBuilder(
          GCartItemModifierFragmentData_product_groupModifiersBuilder b) =>
      b..G__typename = 'GroupModificator';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get maxAmount;
  int? get minAmount;
  String get modifierId;
  bool? get required;
  BuiltList<
          GCartItemModifierFragmentData_product_groupModifiers_childModifiers>?
      get childModifiers;
  bool? get childModifiersHaveMinMaxRestrictions;
  static Serializer<GCartItemModifierFragmentData_product_groupModifiers>
      get serializer =>
          _$gCartItemModifierFragmentDataProductGroupModifiersSerializer;
  Map<String, dynamic> toJson() => (_i5.serializers.serializeWith(
          GCartItemModifierFragmentData_product_groupModifiers.serializer, this)
      as Map<String, dynamic>);
  static GCartItemModifierFragmentData_product_groupModifiers? fromJson(
          Map<String, dynamic> json) =>
      _i5.serializers.deserializeWith(
          GCartItemModifierFragmentData_product_groupModifiers.serializer,
          json);
}

abstract class GCartItemModifierFragmentData_product_groupModifiers_childModifiers
    implements
        Built<
            GCartItemModifierFragmentData_product_groupModifiers_childModifiers,
            GCartItemModifierFragmentData_product_groupModifiers_childModifiersBuilder>,
        GCartItemModifierFragment_product_groupModifiers_childModifiers,
        _i1.GProductFragment_groupModifiers_childModifiers,
        _i4.GGroupModificatorFragment_childModifiers,
        _i3.GModificatorFragment {
  GCartItemModifierFragmentData_product_groupModifiers_childModifiers._();

  factory GCartItemModifierFragmentData_product_groupModifiers_childModifiers(
          [Function(
                  GCartItemModifierFragmentData_product_groupModifiers_childModifiersBuilder
                      b)
              updates]) =
      _$GCartItemModifierFragmentData_product_groupModifiers_childModifiers;

  static void _initializeBuilder(
          GCartItemModifierFragmentData_product_groupModifiers_childModifiersBuilder
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
          GCartItemModifierFragmentData_product_groupModifiers_childModifiers>
      get serializer =>
          _$gCartItemModifierFragmentDataProductGroupModifiersChildModifiersSerializer;
  Map<String, dynamic> toJson() => (_i5.serializers.serializeWith(
      GCartItemModifierFragmentData_product_groupModifiers_childModifiers
          .serializer,
      this) as Map<String, dynamic>);
  static GCartItemModifierFragmentData_product_groupModifiers_childModifiers?
      fromJson(Map<String, dynamic> json) => _i5.serializers.deserializeWith(
          GCartItemModifierFragmentData_product_groupModifiers_childModifiers
              .serializer,
          json);
}
