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

part 'get_product.data.gql.g.dart';

abstract class GGetProductData
    implements Built<GGetProductData, GGetProductDataBuilder> {
  GGetProductData._();

  factory GGetProductData([Function(GGetProductDataBuilder b) updates]) =
      _$GGetProductData;

  static void _initializeBuilder(GGetProductDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GGetProductData_getProduct? get getProduct;
  static Serializer<GGetProductData> get serializer =>
      _$gGetProductDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GGetProductData.serializer, this)
          as Map<String, dynamic>);
  static GGetProductData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GGetProductData.serializer, json);
}

abstract class GGetProductData_getProduct
    implements
        Built<GGetProductData_getProduct, GGetProductData_getProductBuilder>,
        _i2.GProductFragment {
  GGetProductData_getProduct._();

  factory GGetProductData_getProduct(
          [Function(GGetProductData_getProductBuilder b) updates]) =
      _$GGetProductData_getProduct;

  static void _initializeBuilder(GGetProductData_getProductBuilder b) =>
      b..G__typename = 'Product';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get parentGroupId;
  String? get groupId;
  GGetProductData_getProduct_parentGroup? get parentGroup;
  GGetProductData_getProduct_group? get group;
  String? get productCategoryId;
  GGetProductData_getProduct_category? get category;
  BuiltList<GGetProductData_getProduct_products_sizes>? get products_sizes;
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
  BuiltList<GGetProductData_getProduct_images>? get images;
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
  BuiltList<GGetProductData_getProduct_modifiers>? get modifiers;
  BuiltList<GGetProductData_getProduct_groupModifiers>? get groupModifiers;
  static Serializer<GGetProductData_getProduct> get serializer =>
      _$gGetProductDataGetProductSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetProductData_getProduct.serializer, this) as Map<String, dynamic>);
  static GGetProductData_getProduct? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GGetProductData_getProduct.serializer, json);
}

abstract class GGetProductData_getProduct_parentGroup
    implements
        Built<GGetProductData_getProduct_parentGroup,
            GGetProductData_getProduct_parentGroupBuilder>,
        _i2.GProductFragment_parentGroup {
  GGetProductData_getProduct_parentGroup._();

  factory GGetProductData_getProduct_parentGroup(
          [Function(GGetProductData_getProduct_parentGroupBuilder b) updates]) =
      _$GGetProductData_getProduct_parentGroup;

  static void _initializeBuilder(
          GGetProductData_getProduct_parentGroupBuilder b) =>
      b..G__typename = 'Group';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get parentGroup;
  String? get additionalInfo;
  String get name;
  String? get description;
  static Serializer<GGetProductData_getProduct_parentGroup> get serializer =>
      _$gGetProductDataGetProductParentGroupSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GGetProductData_getProduct_parentGroup.serializer, this)
      as Map<String, dynamic>);
  static GGetProductData_getProduct_parentGroup? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GGetProductData_getProduct_parentGroup.serializer, json);
}

abstract class GGetProductData_getProduct_group
    implements
        Built<GGetProductData_getProduct_group,
            GGetProductData_getProduct_groupBuilder>,
        _i2.GProductFragment_group {
  GGetProductData_getProduct_group._();

  factory GGetProductData_getProduct_group(
          [Function(GGetProductData_getProduct_groupBuilder b) updates]) =
      _$GGetProductData_getProduct_group;

  static void _initializeBuilder(GGetProductData_getProduct_groupBuilder b) =>
      b..G__typename = 'Group';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get parentGroup;
  String? get additionalInfo;
  String get name;
  String? get description;
  static Serializer<GGetProductData_getProduct_group> get serializer =>
      _$gGetProductDataGetProductGroupSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GGetProductData_getProduct_group.serializer, this)
      as Map<String, dynamic>);
  static GGetProductData_getProduct_group? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GGetProductData_getProduct_group.serializer, json);
}

abstract class GGetProductData_getProduct_category
    implements
        Built<GGetProductData_getProduct_category,
            GGetProductData_getProduct_categoryBuilder>,
        _i2.GProductFragment_category {
  GGetProductData_getProduct_category._();

  factory GGetProductData_getProduct_category(
          [Function(GGetProductData_getProduct_categoryBuilder b) updates]) =
      _$GGetProductData_getProduct_category;

  static void _initializeBuilder(
          GGetProductData_getProduct_categoryBuilder b) =>
      b..G__typename = 'ProductCategory';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  static Serializer<GGetProductData_getProduct_category> get serializer =>
      _$gGetProductDataGetProductCategorySerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GGetProductData_getProduct_category.serializer, this)
      as Map<String, dynamic>);
  static GGetProductData_getProduct_category? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GGetProductData_getProduct_category.serializer, json);
}

abstract class GGetProductData_getProduct_products_sizes
    implements
        Built<GGetProductData_getProduct_products_sizes,
            GGetProductData_getProduct_products_sizesBuilder>,
        _i2.GProductFragment_products_sizes,
        _i3.GProductsSizesFragment {
  GGetProductData_getProduct_products_sizes._();

  factory GGetProductData_getProduct_products_sizes(
      [Function(GGetProductData_getProduct_products_sizesBuilder b)
          updates]) = _$GGetProductData_getProduct_products_sizes;

  static void _initializeBuilder(
          GGetProductData_getProduct_products_sizesBuilder b) =>
      b..G__typename = 'Product';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  String? get additionalInfo;
  String? get description;
  GGetProductData_getProduct_products_sizes_parentGroup? get parentGroup;
  BuiltList<GGetProductData_getProduct_products_sizes_images>? get images;
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
  BuiltList<GGetProductData_getProduct_products_sizes_modifiers>? get modifiers;
  BuiltList<GGetProductData_getProduct_products_sizes_groupModifiers>?
      get groupModifiers;
  static Serializer<GGetProductData_getProduct_products_sizes> get serializer =>
      _$gGetProductDataGetProductProductsSizesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GGetProductData_getProduct_products_sizes.serializer, this)
      as Map<String, dynamic>);
  static GGetProductData_getProduct_products_sizes? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GGetProductData_getProduct_products_sizes.serializer, json);
}

abstract class GGetProductData_getProduct_products_sizes_parentGroup
    implements
        Built<GGetProductData_getProduct_products_sizes_parentGroup,
            GGetProductData_getProduct_products_sizes_parentGroupBuilder>,
        _i2.GProductFragment_products_sizes_parentGroup,
        _i3.GProductsSizesFragment_parentGroup {
  GGetProductData_getProduct_products_sizes_parentGroup._();

  factory GGetProductData_getProduct_products_sizes_parentGroup(
      [Function(GGetProductData_getProduct_products_sizes_parentGroupBuilder b)
          updates]) = _$GGetProductData_getProduct_products_sizes_parentGroup;

  static void _initializeBuilder(
          GGetProductData_getProduct_products_sizes_parentGroupBuilder b) =>
      b..G__typename = 'Group';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  static Serializer<GGetProductData_getProduct_products_sizes_parentGroup>
      get serializer =>
          _$gGetProductDataGetProductProductsSizesParentGroupSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetProductData_getProduct_products_sizes_parentGroup.serializer,
      this) as Map<String, dynamic>);
  static GGetProductData_getProduct_products_sizes_parentGroup? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GGetProductData_getProduct_products_sizes_parentGroup.serializer,
          json);
}

abstract class GGetProductData_getProduct_products_sizes_images
    implements
        Built<GGetProductData_getProduct_products_sizes_images,
            GGetProductData_getProduct_products_sizes_imagesBuilder>,
        _i2.GProductFragment_products_sizes_images,
        _i3.GProductsSizesFragment_images {
  GGetProductData_getProduct_products_sizes_images._();

  factory GGetProductData_getProduct_products_sizes_images(
      [Function(GGetProductData_getProduct_products_sizes_imagesBuilder b)
          updates]) = _$GGetProductData_getProduct_products_sizes_images;

  static void _initializeBuilder(
          GGetProductData_getProduct_products_sizes_imagesBuilder b) =>
      b..G__typename = 'ProductImage';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get imageId;
  String? get imageUrl;
  static Serializer<GGetProductData_getProduct_products_sizes_images>
      get serializer =>
          _$gGetProductDataGetProductProductsSizesImagesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GGetProductData_getProduct_products_sizes_images.serializer, this)
      as Map<String, dynamic>);
  static GGetProductData_getProduct_products_sizes_images? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GGetProductData_getProduct_products_sizes_images.serializer, json);
}

abstract class GGetProductData_getProduct_products_sizes_modifiers
    implements
        Built<GGetProductData_getProduct_products_sizes_modifiers,
            GGetProductData_getProduct_products_sizes_modifiersBuilder>,
        _i2.GProductFragment_products_sizes_modifiers,
        _i3.GProductsSizesFragment_modifiers,
        _i4.GModificatorFragment {
  GGetProductData_getProduct_products_sizes_modifiers._();

  factory GGetProductData_getProduct_products_sizes_modifiers(
      [Function(GGetProductData_getProduct_products_sizes_modifiersBuilder b)
          updates]) = _$GGetProductData_getProduct_products_sizes_modifiers;

  static void _initializeBuilder(
          GGetProductData_getProduct_products_sizes_modifiersBuilder b) =>
      b..G__typename = 'Modificator';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get maxAmount;
  int? get minAmount;
  String get modifierId;
  bool? get required;
  int? get defaultAmount;
  bool? get hideIfDefaultAmount;
  static Serializer<GGetProductData_getProduct_products_sizes_modifiers>
      get serializer =>
          _$gGetProductDataGetProductProductsSizesModifiersSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GGetProductData_getProduct_products_sizes_modifiers.serializer, this)
      as Map<String, dynamic>);
  static GGetProductData_getProduct_products_sizes_modifiers? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GGetProductData_getProduct_products_sizes_modifiers.serializer, json);
}

abstract class GGetProductData_getProduct_products_sizes_groupModifiers
    implements
        Built<GGetProductData_getProduct_products_sizes_groupModifiers,
            GGetProductData_getProduct_products_sizes_groupModifiersBuilder>,
        _i2.GProductFragment_products_sizes_groupModifiers,
        _i3.GProductsSizesFragment_groupModifiers,
        _i5.GGroupModificatorFragment {
  GGetProductData_getProduct_products_sizes_groupModifiers._();

  factory GGetProductData_getProduct_products_sizes_groupModifiers(
      [Function(
              GGetProductData_getProduct_products_sizes_groupModifiersBuilder b)
          updates]) = _$GGetProductData_getProduct_products_sizes_groupModifiers;

  static void _initializeBuilder(
          GGetProductData_getProduct_products_sizes_groupModifiersBuilder b) =>
      b..G__typename = 'GroupModificator';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get maxAmount;
  int? get minAmount;
  String get modifierId;
  bool? get required;
  BuiltList<
          GGetProductData_getProduct_products_sizes_groupModifiers_childModifiers>?
      get childModifiers;
  bool? get childModifiersHaveMinMaxRestrictions;
  static Serializer<GGetProductData_getProduct_products_sizes_groupModifiers>
      get serializer =>
          _$gGetProductDataGetProductProductsSizesGroupModifiersSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetProductData_getProduct_products_sizes_groupModifiers.serializer,
      this) as Map<String, dynamic>);
  static GGetProductData_getProduct_products_sizes_groupModifiers? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GGetProductData_getProduct_products_sizes_groupModifiers.serializer,
          json);
}

abstract class GGetProductData_getProduct_products_sizes_groupModifiers_childModifiers
    implements
        Built<
            GGetProductData_getProduct_products_sizes_groupModifiers_childModifiers,
            GGetProductData_getProduct_products_sizes_groupModifiers_childModifiersBuilder>,
        _i2.GProductFragment_products_sizes_groupModifiers_childModifiers,
        _i3.GProductsSizesFragment_groupModifiers_childModifiers,
        _i5.GGroupModificatorFragment_childModifiers,
        _i4.GModificatorFragment {
  GGetProductData_getProduct_products_sizes_groupModifiers_childModifiers._();

  factory GGetProductData_getProduct_products_sizes_groupModifiers_childModifiers(
          [Function(
                  GGetProductData_getProduct_products_sizes_groupModifiers_childModifiersBuilder
                      b)
              updates]) =
      _$GGetProductData_getProduct_products_sizes_groupModifiers_childModifiers;

  static void _initializeBuilder(
          GGetProductData_getProduct_products_sizes_groupModifiers_childModifiersBuilder
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
          GGetProductData_getProduct_products_sizes_groupModifiers_childModifiers>
      get serializer =>
          _$gGetProductDataGetProductProductsSizesGroupModifiersChildModifiersSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetProductData_getProduct_products_sizes_groupModifiers_childModifiers
          .serializer,
      this) as Map<String, dynamic>);
  static GGetProductData_getProduct_products_sizes_groupModifiers_childModifiers?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GGetProductData_getProduct_products_sizes_groupModifiers_childModifiers
              .serializer,
          json);
}

abstract class GGetProductData_getProduct_images
    implements
        Built<GGetProductData_getProduct_images,
            GGetProductData_getProduct_imagesBuilder>,
        _i2.GProductFragment_images {
  GGetProductData_getProduct_images._();

  factory GGetProductData_getProduct_images(
          [Function(GGetProductData_getProduct_imagesBuilder b) updates]) =
      _$GGetProductData_getProduct_images;

  static void _initializeBuilder(GGetProductData_getProduct_imagesBuilder b) =>
      b..G__typename = 'ProductImage';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get imageId;
  String? get imageUrl;
  static Serializer<GGetProductData_getProduct_images> get serializer =>
      _$gGetProductDataGetProductImagesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GGetProductData_getProduct_images.serializer, this)
      as Map<String, dynamic>);
  static GGetProductData_getProduct_images? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GGetProductData_getProduct_images.serializer, json);
}

abstract class GGetProductData_getProduct_modifiers
    implements
        Built<GGetProductData_getProduct_modifiers,
            GGetProductData_getProduct_modifiersBuilder>,
        _i2.GProductFragment_modifiers,
        _i4.GModificatorFragment {
  GGetProductData_getProduct_modifiers._();

  factory GGetProductData_getProduct_modifiers(
          [Function(GGetProductData_getProduct_modifiersBuilder b) updates]) =
      _$GGetProductData_getProduct_modifiers;

  static void _initializeBuilder(
          GGetProductData_getProduct_modifiersBuilder b) =>
      b..G__typename = 'Modificator';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get maxAmount;
  int? get minAmount;
  String get modifierId;
  bool? get required;
  int? get defaultAmount;
  bool? get hideIfDefaultAmount;
  static Serializer<GGetProductData_getProduct_modifiers> get serializer =>
      _$gGetProductDataGetProductModifiersSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GGetProductData_getProduct_modifiers.serializer, this)
      as Map<String, dynamic>);
  static GGetProductData_getProduct_modifiers? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GGetProductData_getProduct_modifiers.serializer, json);
}

abstract class GGetProductData_getProduct_groupModifiers
    implements
        Built<GGetProductData_getProduct_groupModifiers,
            GGetProductData_getProduct_groupModifiersBuilder>,
        _i2.GProductFragment_groupModifiers,
        _i5.GGroupModificatorFragment {
  GGetProductData_getProduct_groupModifiers._();

  factory GGetProductData_getProduct_groupModifiers(
      [Function(GGetProductData_getProduct_groupModifiersBuilder b)
          updates]) = _$GGetProductData_getProduct_groupModifiers;

  static void _initializeBuilder(
          GGetProductData_getProduct_groupModifiersBuilder b) =>
      b..G__typename = 'GroupModificator';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get maxAmount;
  int? get minAmount;
  String get modifierId;
  bool? get required;
  BuiltList<GGetProductData_getProduct_groupModifiers_childModifiers>?
      get childModifiers;
  bool? get childModifiersHaveMinMaxRestrictions;
  static Serializer<GGetProductData_getProduct_groupModifiers> get serializer =>
      _$gGetProductDataGetProductGroupModifiersSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GGetProductData_getProduct_groupModifiers.serializer, this)
      as Map<String, dynamic>);
  static GGetProductData_getProduct_groupModifiers? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GGetProductData_getProduct_groupModifiers.serializer, json);
}

abstract class GGetProductData_getProduct_groupModifiers_childModifiers
    implements
        Built<GGetProductData_getProduct_groupModifiers_childModifiers,
            GGetProductData_getProduct_groupModifiers_childModifiersBuilder>,
        _i2.GProductFragment_groupModifiers_childModifiers,
        _i5.GGroupModificatorFragment_childModifiers,
        _i4.GModificatorFragment {
  GGetProductData_getProduct_groupModifiers_childModifiers._();

  factory GGetProductData_getProduct_groupModifiers_childModifiers(
      [Function(
              GGetProductData_getProduct_groupModifiers_childModifiersBuilder b)
          updates]) = _$GGetProductData_getProduct_groupModifiers_childModifiers;

  static void _initializeBuilder(
          GGetProductData_getProduct_groupModifiers_childModifiersBuilder b) =>
      b..G__typename = 'Modificator';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get maxAmount;
  int? get minAmount;
  String get modifierId;
  bool? get required;
  int? get defaultAmount;
  bool? get hideIfDefaultAmount;
  static Serializer<GGetProductData_getProduct_groupModifiers_childModifiers>
      get serializer =>
          _$gGetProductDataGetProductGroupModifiersChildModifiersSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetProductData_getProduct_groupModifiers_childModifiers.serializer,
      this) as Map<String, dynamic>);
  static GGetProductData_getProduct_groupModifiers_childModifiers? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GGetProductData_getProduct_groupModifiers_childModifiers.serializer,
          json);
}
