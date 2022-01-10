// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:toto_mobile/src/core/data/network/models/group_modificator_fragment.data.gql.dart'
    as _i5;
import 'package:toto_mobile/src/core/data/network/models/modificator_fragment.data.gql.dart'
    as _i4;
import 'package:toto_mobile/src/core/data/network/models/product_fragment.data.gql.dart'
    as _i2;
import 'package:toto_mobile/src/core/data/network/models/products_size_fragment.data.gql.dart'
    as _i3;
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i1;

part 'get_recommended_products_for_cart.data.gql.g.dart';

abstract class GGetRecommendedProductsForCartData
    implements
        Built<GGetRecommendedProductsForCartData,
            GGetRecommendedProductsForCartDataBuilder> {
  GGetRecommendedProductsForCartData._();

  factory GGetRecommendedProductsForCartData(
          [Function(GGetRecommendedProductsForCartDataBuilder b) updates]) =
      _$GGetRecommendedProductsForCartData;

  static void _initializeBuilder(GGetRecommendedProductsForCartDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GGetRecommendedProductsForCartData_getRecommendedProductsForCart>?
      get getRecommendedProductsForCart;
  static Serializer<GGetRecommendedProductsForCartData> get serializer =>
      _$gGetRecommendedProductsForCartDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GGetRecommendedProductsForCartData.serializer, this)
      as Map<String, dynamic>);
  static GGetRecommendedProductsForCartData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GGetRecommendedProductsForCartData.serializer, json);
}

abstract class GGetRecommendedProductsForCartData_getRecommendedProductsForCart
    implements
        Built<GGetRecommendedProductsForCartData_getRecommendedProductsForCart,
            GGetRecommendedProductsForCartData_getRecommendedProductsForCartBuilder>,
        _i2.GProductFragment {
  GGetRecommendedProductsForCartData_getRecommendedProductsForCart._();

  factory GGetRecommendedProductsForCartData_getRecommendedProductsForCart(
          [Function(
                  GGetRecommendedProductsForCartData_getRecommendedProductsForCartBuilder
                      b)
              updates]) =
      _$GGetRecommendedProductsForCartData_getRecommendedProductsForCart;

  static void _initializeBuilder(
          GGetRecommendedProductsForCartData_getRecommendedProductsForCartBuilder
              b) =>
      b..G__typename = 'Product';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get parentGroupId;
  String? get groupId;
  GGetRecommendedProductsForCartData_getRecommendedProductsForCart_parentGroup?
      get parentGroup;
  GGetRecommendedProductsForCartData_getRecommendedProductsForCart_group?
      get group;
  String? get productCategoryId;
  GGetRecommendedProductsForCartData_getRecommendedProductsForCart_category?
      get category;
  BuiltList<
          GGetRecommendedProductsForCartData_getRecommendedProductsForCart_products_sizes>?
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
  BuiltList<
          GGetRecommendedProductsForCartData_getRecommendedProductsForCart_images>?
      get images;
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
  BuiltList<
          GGetRecommendedProductsForCartData_getRecommendedProductsForCart_modifiers>?
      get modifiers;
  BuiltList<
          GGetRecommendedProductsForCartData_getRecommendedProductsForCart_groupModifiers>?
      get groupModifiers;
  static Serializer<
          GGetRecommendedProductsForCartData_getRecommendedProductsForCart>
      get serializer =>
          _$gGetRecommendedProductsForCartDataGetRecommendedProductsForCartSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetRecommendedProductsForCartData_getRecommendedProductsForCart
          .serializer,
      this) as Map<String, dynamic>);
  static GGetRecommendedProductsForCartData_getRecommendedProductsForCart?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GGetRecommendedProductsForCartData_getRecommendedProductsForCart
              .serializer,
          json);
}

abstract class GGetRecommendedProductsForCartData_getRecommendedProductsForCart_parentGroup
    implements
        Built<
            GGetRecommendedProductsForCartData_getRecommendedProductsForCart_parentGroup,
            GGetRecommendedProductsForCartData_getRecommendedProductsForCart_parentGroupBuilder>,
        _i2.GProductFragment_parentGroup {
  GGetRecommendedProductsForCartData_getRecommendedProductsForCart_parentGroup._();

  factory GGetRecommendedProductsForCartData_getRecommendedProductsForCart_parentGroup(
          [Function(
                  GGetRecommendedProductsForCartData_getRecommendedProductsForCart_parentGroupBuilder
                      b)
              updates]) =
      _$GGetRecommendedProductsForCartData_getRecommendedProductsForCart_parentGroup;

  static void _initializeBuilder(
          GGetRecommendedProductsForCartData_getRecommendedProductsForCart_parentGroupBuilder
              b) =>
      b..G__typename = 'Group';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get parentGroup;
  String? get additionalInfo;
  String get name;
  String? get description;
  static Serializer<
          GGetRecommendedProductsForCartData_getRecommendedProductsForCart_parentGroup>
      get serializer =>
          _$gGetRecommendedProductsForCartDataGetRecommendedProductsForCartParentGroupSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetRecommendedProductsForCartData_getRecommendedProductsForCart_parentGroup
          .serializer,
      this) as Map<String, dynamic>);
  static GGetRecommendedProductsForCartData_getRecommendedProductsForCart_parentGroup?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GGetRecommendedProductsForCartData_getRecommendedProductsForCart_parentGroup
              .serializer,
          json);
}

abstract class GGetRecommendedProductsForCartData_getRecommendedProductsForCart_group
    implements
        Built<
            GGetRecommendedProductsForCartData_getRecommendedProductsForCart_group,
            GGetRecommendedProductsForCartData_getRecommendedProductsForCart_groupBuilder>,
        _i2.GProductFragment_group {
  GGetRecommendedProductsForCartData_getRecommendedProductsForCart_group._();

  factory GGetRecommendedProductsForCartData_getRecommendedProductsForCart_group(
          [Function(
                  GGetRecommendedProductsForCartData_getRecommendedProductsForCart_groupBuilder
                      b)
              updates]) =
      _$GGetRecommendedProductsForCartData_getRecommendedProductsForCart_group;

  static void _initializeBuilder(
          GGetRecommendedProductsForCartData_getRecommendedProductsForCart_groupBuilder
              b) =>
      b..G__typename = 'Group';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get parentGroup;
  String? get additionalInfo;
  String get name;
  String? get description;
  static Serializer<
          GGetRecommendedProductsForCartData_getRecommendedProductsForCart_group>
      get serializer =>
          _$gGetRecommendedProductsForCartDataGetRecommendedProductsForCartGroupSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetRecommendedProductsForCartData_getRecommendedProductsForCart_group
          .serializer,
      this) as Map<String, dynamic>);
  static GGetRecommendedProductsForCartData_getRecommendedProductsForCart_group?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GGetRecommendedProductsForCartData_getRecommendedProductsForCart_group
              .serializer,
          json);
}

abstract class GGetRecommendedProductsForCartData_getRecommendedProductsForCart_category
    implements
        Built<
            GGetRecommendedProductsForCartData_getRecommendedProductsForCart_category,
            GGetRecommendedProductsForCartData_getRecommendedProductsForCart_categoryBuilder>,
        _i2.GProductFragment_category {
  GGetRecommendedProductsForCartData_getRecommendedProductsForCart_category._();

  factory GGetRecommendedProductsForCartData_getRecommendedProductsForCart_category(
          [Function(
                  GGetRecommendedProductsForCartData_getRecommendedProductsForCart_categoryBuilder
                      b)
              updates]) =
      _$GGetRecommendedProductsForCartData_getRecommendedProductsForCart_category;

  static void _initializeBuilder(
          GGetRecommendedProductsForCartData_getRecommendedProductsForCart_categoryBuilder
              b) =>
      b..G__typename = 'ProductCategory';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  static Serializer<
          GGetRecommendedProductsForCartData_getRecommendedProductsForCart_category>
      get serializer =>
          _$gGetRecommendedProductsForCartDataGetRecommendedProductsForCartCategorySerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetRecommendedProductsForCartData_getRecommendedProductsForCart_category
          .serializer,
      this) as Map<String, dynamic>);
  static GGetRecommendedProductsForCartData_getRecommendedProductsForCart_category?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GGetRecommendedProductsForCartData_getRecommendedProductsForCart_category
              .serializer,
          json);
}

abstract class GGetRecommendedProductsForCartData_getRecommendedProductsForCart_products_sizes
    implements
        Built<
            GGetRecommendedProductsForCartData_getRecommendedProductsForCart_products_sizes,
            GGetRecommendedProductsForCartData_getRecommendedProductsForCart_products_sizesBuilder>,
        _i2.GProductFragment_products_sizes,
        _i3.GProductsSizesFragment {
  GGetRecommendedProductsForCartData_getRecommendedProductsForCart_products_sizes._();

  factory GGetRecommendedProductsForCartData_getRecommendedProductsForCart_products_sizes(
          [Function(
                  GGetRecommendedProductsForCartData_getRecommendedProductsForCart_products_sizesBuilder
                      b)
              updates]) =
      _$GGetRecommendedProductsForCartData_getRecommendedProductsForCart_products_sizes;

  static void _initializeBuilder(
          GGetRecommendedProductsForCartData_getRecommendedProductsForCart_products_sizesBuilder
              b) =>
      b..G__typename = 'Product';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  String? get additionalInfo;
  String? get description;
  GGetRecommendedProductsForCartData_getRecommendedProductsForCart_products_sizes_parentGroup?
      get parentGroup;
  BuiltList<
          GGetRecommendedProductsForCartData_getRecommendedProductsForCart_products_sizes_images>?
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
  BuiltList<
          GGetRecommendedProductsForCartData_getRecommendedProductsForCart_products_sizes_modifiers>?
      get modifiers;
  BuiltList<
          GGetRecommendedProductsForCartData_getRecommendedProductsForCart_products_sizes_groupModifiers>?
      get groupModifiers;
  static Serializer<
          GGetRecommendedProductsForCartData_getRecommendedProductsForCart_products_sizes>
      get serializer =>
          _$gGetRecommendedProductsForCartDataGetRecommendedProductsForCartProductsSizesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetRecommendedProductsForCartData_getRecommendedProductsForCart_products_sizes
          .serializer,
      this) as Map<String, dynamic>);
  static GGetRecommendedProductsForCartData_getRecommendedProductsForCart_products_sizes?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GGetRecommendedProductsForCartData_getRecommendedProductsForCart_products_sizes
              .serializer,
          json);
}

abstract class GGetRecommendedProductsForCartData_getRecommendedProductsForCart_products_sizes_parentGroup
    implements
        Built<
            GGetRecommendedProductsForCartData_getRecommendedProductsForCart_products_sizes_parentGroup,
            GGetRecommendedProductsForCartData_getRecommendedProductsForCart_products_sizes_parentGroupBuilder>,
        _i2.GProductFragment_products_sizes_parentGroup,
        _i3.GProductsSizesFragment_parentGroup {
  GGetRecommendedProductsForCartData_getRecommendedProductsForCart_products_sizes_parentGroup._();

  factory GGetRecommendedProductsForCartData_getRecommendedProductsForCart_products_sizes_parentGroup(
          [Function(
                  GGetRecommendedProductsForCartData_getRecommendedProductsForCart_products_sizes_parentGroupBuilder
                      b)
              updates]) =
      _$GGetRecommendedProductsForCartData_getRecommendedProductsForCart_products_sizes_parentGroup;

  static void _initializeBuilder(
          GGetRecommendedProductsForCartData_getRecommendedProductsForCart_products_sizes_parentGroupBuilder
              b) =>
      b..G__typename = 'Group';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  static Serializer<
          GGetRecommendedProductsForCartData_getRecommendedProductsForCart_products_sizes_parentGroup>
      get serializer =>
          _$gGetRecommendedProductsForCartDataGetRecommendedProductsForCartProductsSizesParentGroupSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetRecommendedProductsForCartData_getRecommendedProductsForCart_products_sizes_parentGroup
          .serializer,
      this) as Map<String, dynamic>);
  static GGetRecommendedProductsForCartData_getRecommendedProductsForCart_products_sizes_parentGroup?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GGetRecommendedProductsForCartData_getRecommendedProductsForCart_products_sizes_parentGroup
              .serializer,
          json);
}

abstract class GGetRecommendedProductsForCartData_getRecommendedProductsForCart_products_sizes_images
    implements
        Built<
            GGetRecommendedProductsForCartData_getRecommendedProductsForCart_products_sizes_images,
            GGetRecommendedProductsForCartData_getRecommendedProductsForCart_products_sizes_imagesBuilder>,
        _i2.GProductFragment_products_sizes_images,
        _i3.GProductsSizesFragment_images {
  GGetRecommendedProductsForCartData_getRecommendedProductsForCart_products_sizes_images._();

  factory GGetRecommendedProductsForCartData_getRecommendedProductsForCart_products_sizes_images(
          [Function(
                  GGetRecommendedProductsForCartData_getRecommendedProductsForCart_products_sizes_imagesBuilder
                      b)
              updates]) =
      _$GGetRecommendedProductsForCartData_getRecommendedProductsForCart_products_sizes_images;

  static void _initializeBuilder(
          GGetRecommendedProductsForCartData_getRecommendedProductsForCart_products_sizes_imagesBuilder
              b) =>
      b..G__typename = 'ProductImage';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get imageId;
  String? get imageUrl;
  static Serializer<
          GGetRecommendedProductsForCartData_getRecommendedProductsForCart_products_sizes_images>
      get serializer =>
          _$gGetRecommendedProductsForCartDataGetRecommendedProductsForCartProductsSizesImagesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetRecommendedProductsForCartData_getRecommendedProductsForCart_products_sizes_images
          .serializer,
      this) as Map<String, dynamic>);
  static GGetRecommendedProductsForCartData_getRecommendedProductsForCart_products_sizes_images?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GGetRecommendedProductsForCartData_getRecommendedProductsForCart_products_sizes_images
              .serializer,
          json);
}

abstract class GGetRecommendedProductsForCartData_getRecommendedProductsForCart_products_sizes_modifiers
    implements
        Built<
            GGetRecommendedProductsForCartData_getRecommendedProductsForCart_products_sizes_modifiers,
            GGetRecommendedProductsForCartData_getRecommendedProductsForCart_products_sizes_modifiersBuilder>,
        _i2.GProductFragment_products_sizes_modifiers,
        _i3.GProductsSizesFragment_modifiers,
        _i4.GModificatorFragment {
  GGetRecommendedProductsForCartData_getRecommendedProductsForCart_products_sizes_modifiers._();

  factory GGetRecommendedProductsForCartData_getRecommendedProductsForCart_products_sizes_modifiers(
          [Function(
                  GGetRecommendedProductsForCartData_getRecommendedProductsForCart_products_sizes_modifiersBuilder
                      b)
              updates]) =
      _$GGetRecommendedProductsForCartData_getRecommendedProductsForCart_products_sizes_modifiers;

  static void _initializeBuilder(
          GGetRecommendedProductsForCartData_getRecommendedProductsForCart_products_sizes_modifiersBuilder
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
          GGetRecommendedProductsForCartData_getRecommendedProductsForCart_products_sizes_modifiers>
      get serializer =>
          _$gGetRecommendedProductsForCartDataGetRecommendedProductsForCartProductsSizesModifiersSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetRecommendedProductsForCartData_getRecommendedProductsForCart_products_sizes_modifiers
          .serializer,
      this) as Map<String, dynamic>);
  static GGetRecommendedProductsForCartData_getRecommendedProductsForCart_products_sizes_modifiers?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GGetRecommendedProductsForCartData_getRecommendedProductsForCart_products_sizes_modifiers
              .serializer,
          json);
}

abstract class GGetRecommendedProductsForCartData_getRecommendedProductsForCart_products_sizes_groupModifiers
    implements
        Built<
            GGetRecommendedProductsForCartData_getRecommendedProductsForCart_products_sizes_groupModifiers,
            GGetRecommendedProductsForCartData_getRecommendedProductsForCart_products_sizes_groupModifiersBuilder>,
        _i2.GProductFragment_products_sizes_groupModifiers,
        _i3.GProductsSizesFragment_groupModifiers,
        _i5.GGroupModificatorFragment {
  GGetRecommendedProductsForCartData_getRecommendedProductsForCart_products_sizes_groupModifiers._();

  factory GGetRecommendedProductsForCartData_getRecommendedProductsForCart_products_sizes_groupModifiers(
          [Function(
                  GGetRecommendedProductsForCartData_getRecommendedProductsForCart_products_sizes_groupModifiersBuilder
                      b)
              updates]) =
      _$GGetRecommendedProductsForCartData_getRecommendedProductsForCart_products_sizes_groupModifiers;

  static void _initializeBuilder(
          GGetRecommendedProductsForCartData_getRecommendedProductsForCart_products_sizes_groupModifiersBuilder
              b) =>
      b..G__typename = 'GroupModificator';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get maxAmount;
  int? get minAmount;
  String get modifierId;
  bool? get required;
  BuiltList<
          GGetRecommendedProductsForCartData_getRecommendedProductsForCart_products_sizes_groupModifiers_childModifiers>?
      get childModifiers;
  bool? get childModifiersHaveMinMaxRestrictions;
  static Serializer<
          GGetRecommendedProductsForCartData_getRecommendedProductsForCart_products_sizes_groupModifiers>
      get serializer =>
          _$gGetRecommendedProductsForCartDataGetRecommendedProductsForCartProductsSizesGroupModifiersSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetRecommendedProductsForCartData_getRecommendedProductsForCart_products_sizes_groupModifiers
          .serializer,
      this) as Map<String, dynamic>);
  static GGetRecommendedProductsForCartData_getRecommendedProductsForCart_products_sizes_groupModifiers?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GGetRecommendedProductsForCartData_getRecommendedProductsForCart_products_sizes_groupModifiers
              .serializer,
          json);
}

abstract class GGetRecommendedProductsForCartData_getRecommendedProductsForCart_products_sizes_groupModifiers_childModifiers
    implements
        Built<
            GGetRecommendedProductsForCartData_getRecommendedProductsForCart_products_sizes_groupModifiers_childModifiers,
            GGetRecommendedProductsForCartData_getRecommendedProductsForCart_products_sizes_groupModifiers_childModifiersBuilder>,
        _i2.GProductFragment_products_sizes_groupModifiers_childModifiers,
        _i3.GProductsSizesFragment_groupModifiers_childModifiers,
        _i5.GGroupModificatorFragment_childModifiers,
        _i4.GModificatorFragment {
  GGetRecommendedProductsForCartData_getRecommendedProductsForCart_products_sizes_groupModifiers_childModifiers._();

  factory GGetRecommendedProductsForCartData_getRecommendedProductsForCart_products_sizes_groupModifiers_childModifiers(
          [Function(
                  GGetRecommendedProductsForCartData_getRecommendedProductsForCart_products_sizes_groupModifiers_childModifiersBuilder
                      b)
              updates]) =
      _$GGetRecommendedProductsForCartData_getRecommendedProductsForCart_products_sizes_groupModifiers_childModifiers;

  static void _initializeBuilder(
          GGetRecommendedProductsForCartData_getRecommendedProductsForCart_products_sizes_groupModifiers_childModifiersBuilder
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
          GGetRecommendedProductsForCartData_getRecommendedProductsForCart_products_sizes_groupModifiers_childModifiers>
      get serializer =>
          _$gGetRecommendedProductsForCartDataGetRecommendedProductsForCartProductsSizesGroupModifiersChildModifiersSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetRecommendedProductsForCartData_getRecommendedProductsForCart_products_sizes_groupModifiers_childModifiers
          .serializer,
      this) as Map<String, dynamic>);
  static GGetRecommendedProductsForCartData_getRecommendedProductsForCart_products_sizes_groupModifiers_childModifiers?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GGetRecommendedProductsForCartData_getRecommendedProductsForCart_products_sizes_groupModifiers_childModifiers
              .serializer,
          json);
}

abstract class GGetRecommendedProductsForCartData_getRecommendedProductsForCart_images
    implements
        Built<
            GGetRecommendedProductsForCartData_getRecommendedProductsForCart_images,
            GGetRecommendedProductsForCartData_getRecommendedProductsForCart_imagesBuilder>,
        _i2.GProductFragment_images {
  GGetRecommendedProductsForCartData_getRecommendedProductsForCart_images._();

  factory GGetRecommendedProductsForCartData_getRecommendedProductsForCart_images(
          [Function(
                  GGetRecommendedProductsForCartData_getRecommendedProductsForCart_imagesBuilder
                      b)
              updates]) =
      _$GGetRecommendedProductsForCartData_getRecommendedProductsForCart_images;

  static void _initializeBuilder(
          GGetRecommendedProductsForCartData_getRecommendedProductsForCart_imagesBuilder
              b) =>
      b..G__typename = 'ProductImage';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get imageId;
  String? get imageUrl;
  static Serializer<
          GGetRecommendedProductsForCartData_getRecommendedProductsForCart_images>
      get serializer =>
          _$gGetRecommendedProductsForCartDataGetRecommendedProductsForCartImagesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetRecommendedProductsForCartData_getRecommendedProductsForCart_images
          .serializer,
      this) as Map<String, dynamic>);
  static GGetRecommendedProductsForCartData_getRecommendedProductsForCart_images?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GGetRecommendedProductsForCartData_getRecommendedProductsForCart_images
              .serializer,
          json);
}

abstract class GGetRecommendedProductsForCartData_getRecommendedProductsForCart_modifiers
    implements
        Built<
            GGetRecommendedProductsForCartData_getRecommendedProductsForCart_modifiers,
            GGetRecommendedProductsForCartData_getRecommendedProductsForCart_modifiersBuilder>,
        _i2.GProductFragment_modifiers,
        _i4.GModificatorFragment {
  GGetRecommendedProductsForCartData_getRecommendedProductsForCart_modifiers._();

  factory GGetRecommendedProductsForCartData_getRecommendedProductsForCart_modifiers(
          [Function(
                  GGetRecommendedProductsForCartData_getRecommendedProductsForCart_modifiersBuilder
                      b)
              updates]) =
      _$GGetRecommendedProductsForCartData_getRecommendedProductsForCart_modifiers;

  static void _initializeBuilder(
          GGetRecommendedProductsForCartData_getRecommendedProductsForCart_modifiersBuilder
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
          GGetRecommendedProductsForCartData_getRecommendedProductsForCart_modifiers>
      get serializer =>
          _$gGetRecommendedProductsForCartDataGetRecommendedProductsForCartModifiersSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetRecommendedProductsForCartData_getRecommendedProductsForCart_modifiers
          .serializer,
      this) as Map<String, dynamic>);
  static GGetRecommendedProductsForCartData_getRecommendedProductsForCart_modifiers?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GGetRecommendedProductsForCartData_getRecommendedProductsForCart_modifiers
              .serializer,
          json);
}

abstract class GGetRecommendedProductsForCartData_getRecommendedProductsForCart_groupModifiers
    implements
        Built<
            GGetRecommendedProductsForCartData_getRecommendedProductsForCart_groupModifiers,
            GGetRecommendedProductsForCartData_getRecommendedProductsForCart_groupModifiersBuilder>,
        _i2.GProductFragment_groupModifiers,
        _i5.GGroupModificatorFragment {
  GGetRecommendedProductsForCartData_getRecommendedProductsForCart_groupModifiers._();

  factory GGetRecommendedProductsForCartData_getRecommendedProductsForCart_groupModifiers(
          [Function(
                  GGetRecommendedProductsForCartData_getRecommendedProductsForCart_groupModifiersBuilder
                      b)
              updates]) =
      _$GGetRecommendedProductsForCartData_getRecommendedProductsForCart_groupModifiers;

  static void _initializeBuilder(
          GGetRecommendedProductsForCartData_getRecommendedProductsForCart_groupModifiersBuilder
              b) =>
      b..G__typename = 'GroupModificator';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get maxAmount;
  int? get minAmount;
  String get modifierId;
  bool? get required;
  BuiltList<
          GGetRecommendedProductsForCartData_getRecommendedProductsForCart_groupModifiers_childModifiers>?
      get childModifiers;
  bool? get childModifiersHaveMinMaxRestrictions;
  static Serializer<
          GGetRecommendedProductsForCartData_getRecommendedProductsForCart_groupModifiers>
      get serializer =>
          _$gGetRecommendedProductsForCartDataGetRecommendedProductsForCartGroupModifiersSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetRecommendedProductsForCartData_getRecommendedProductsForCart_groupModifiers
          .serializer,
      this) as Map<String, dynamic>);
  static GGetRecommendedProductsForCartData_getRecommendedProductsForCart_groupModifiers?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GGetRecommendedProductsForCartData_getRecommendedProductsForCart_groupModifiers
              .serializer,
          json);
}

abstract class GGetRecommendedProductsForCartData_getRecommendedProductsForCart_groupModifiers_childModifiers
    implements
        Built<
            GGetRecommendedProductsForCartData_getRecommendedProductsForCart_groupModifiers_childModifiers,
            GGetRecommendedProductsForCartData_getRecommendedProductsForCart_groupModifiers_childModifiersBuilder>,
        _i2.GProductFragment_groupModifiers_childModifiers,
        _i5.GGroupModificatorFragment_childModifiers,
        _i4.GModificatorFragment {
  GGetRecommendedProductsForCartData_getRecommendedProductsForCart_groupModifiers_childModifiers._();

  factory GGetRecommendedProductsForCartData_getRecommendedProductsForCart_groupModifiers_childModifiers(
          [Function(
                  GGetRecommendedProductsForCartData_getRecommendedProductsForCart_groupModifiers_childModifiersBuilder
                      b)
              updates]) =
      _$GGetRecommendedProductsForCartData_getRecommendedProductsForCart_groupModifiers_childModifiers;

  static void _initializeBuilder(
          GGetRecommendedProductsForCartData_getRecommendedProductsForCart_groupModifiers_childModifiersBuilder
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
          GGetRecommendedProductsForCartData_getRecommendedProductsForCart_groupModifiers_childModifiers>
      get serializer =>
          _$gGetRecommendedProductsForCartDataGetRecommendedProductsForCartGroupModifiersChildModifiersSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetRecommendedProductsForCartData_getRecommendedProductsForCart_groupModifiers_childModifiers
          .serializer,
      this) as Map<String, dynamic>);
  static GGetRecommendedProductsForCartData_getRecommendedProductsForCart_groupModifiers_childModifiers?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GGetRecommendedProductsForCartData_getRecommendedProductsForCart_groupModifiers_childModifiers
              .serializer,
          json);
}
