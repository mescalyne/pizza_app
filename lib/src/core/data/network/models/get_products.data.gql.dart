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

part 'get_products.data.gql.g.dart';

abstract class GGetProductsQueryData
    implements Built<GGetProductsQueryData, GGetProductsQueryDataBuilder> {
  GGetProductsQueryData._();

  factory GGetProductsQueryData(
          [Function(GGetProductsQueryDataBuilder b) updates]) =
      _$GGetProductsQueryData;

  static void _initializeBuilder(GGetProductsQueryDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GGetProductsQueryData_getProducts>? get getProducts;
  static Serializer<GGetProductsQueryData> get serializer =>
      _$gGetProductsQueryDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GGetProductsQueryData.serializer, this)
          as Map<String, dynamic>);
  static GGetProductsQueryData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GGetProductsQueryData.serializer, json);
}

abstract class GGetProductsQueryData_getProducts
    implements
        Built<GGetProductsQueryData_getProducts,
            GGetProductsQueryData_getProductsBuilder>,
        _i2.GProductFragment {
  GGetProductsQueryData_getProducts._();

  factory GGetProductsQueryData_getProducts(
          [Function(GGetProductsQueryData_getProductsBuilder b) updates]) =
      _$GGetProductsQueryData_getProducts;

  static void _initializeBuilder(GGetProductsQueryData_getProductsBuilder b) =>
      b..G__typename = 'Product';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get parentGroupId;
  String? get groupId;
  GGetProductsQueryData_getProducts_parentGroup? get parentGroup;
  GGetProductsQueryData_getProducts_group? get group;
  String? get productCategoryId;
  GGetProductsQueryData_getProducts_category? get category;
  BuiltList<GGetProductsQueryData_getProducts_products_sizes>?
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
  BuiltList<GGetProductsQueryData_getProducts_images>? get images;
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
  BuiltList<GGetProductsQueryData_getProducts_modifiers>? get modifiers;
  BuiltList<GGetProductsQueryData_getProducts_groupModifiers>?
      get groupModifiers;
  static Serializer<GGetProductsQueryData_getProducts> get serializer =>
      _$gGetProductsQueryDataGetProductsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GGetProductsQueryData_getProducts.serializer, this)
      as Map<String, dynamic>);
  static GGetProductsQueryData_getProducts? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GGetProductsQueryData_getProducts.serializer, json);
}

abstract class GGetProductsQueryData_getProducts_parentGroup
    implements
        Built<GGetProductsQueryData_getProducts_parentGroup,
            GGetProductsQueryData_getProducts_parentGroupBuilder>,
        _i2.GProductFragment_parentGroup {
  GGetProductsQueryData_getProducts_parentGroup._();

  factory GGetProductsQueryData_getProducts_parentGroup(
      [Function(GGetProductsQueryData_getProducts_parentGroupBuilder b)
          updates]) = _$GGetProductsQueryData_getProducts_parentGroup;

  static void _initializeBuilder(
          GGetProductsQueryData_getProducts_parentGroupBuilder b) =>
      b..G__typename = 'Group';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get parentGroup;
  String? get additionalInfo;
  String get name;
  String? get description;
  static Serializer<GGetProductsQueryData_getProducts_parentGroup>
      get serializer => _$gGetProductsQueryDataGetProductsParentGroupSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GGetProductsQueryData_getProducts_parentGroup.serializer, this)
      as Map<String, dynamic>);
  static GGetProductsQueryData_getProducts_parentGroup? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GGetProductsQueryData_getProducts_parentGroup.serializer, json);
}

abstract class GGetProductsQueryData_getProducts_group
    implements
        Built<GGetProductsQueryData_getProducts_group,
            GGetProductsQueryData_getProducts_groupBuilder>,
        _i2.GProductFragment_group {
  GGetProductsQueryData_getProducts_group._();

  factory GGetProductsQueryData_getProducts_group(
      [Function(GGetProductsQueryData_getProducts_groupBuilder b)
          updates]) = _$GGetProductsQueryData_getProducts_group;

  static void _initializeBuilder(
          GGetProductsQueryData_getProducts_groupBuilder b) =>
      b..G__typename = 'Group';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get parentGroup;
  String? get additionalInfo;
  String get name;
  String? get description;
  static Serializer<GGetProductsQueryData_getProducts_group> get serializer =>
      _$gGetProductsQueryDataGetProductsGroupSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GGetProductsQueryData_getProducts_group.serializer, this)
      as Map<String, dynamic>);
  static GGetProductsQueryData_getProducts_group? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GGetProductsQueryData_getProducts_group.serializer, json);
}

abstract class GGetProductsQueryData_getProducts_category
    implements
        Built<GGetProductsQueryData_getProducts_category,
            GGetProductsQueryData_getProducts_categoryBuilder>,
        _i2.GProductFragment_category {
  GGetProductsQueryData_getProducts_category._();

  factory GGetProductsQueryData_getProducts_category(
      [Function(GGetProductsQueryData_getProducts_categoryBuilder b)
          updates]) = _$GGetProductsQueryData_getProducts_category;

  static void _initializeBuilder(
          GGetProductsQueryData_getProducts_categoryBuilder b) =>
      b..G__typename = 'ProductCategory';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  static Serializer<GGetProductsQueryData_getProducts_category>
      get serializer => _$gGetProductsQueryDataGetProductsCategorySerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GGetProductsQueryData_getProducts_category.serializer, this)
      as Map<String, dynamic>);
  static GGetProductsQueryData_getProducts_category? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GGetProductsQueryData_getProducts_category.serializer, json);
}

abstract class GGetProductsQueryData_getProducts_products_sizes
    implements
        Built<GGetProductsQueryData_getProducts_products_sizes,
            GGetProductsQueryData_getProducts_products_sizesBuilder>,
        _i2.GProductFragment_products_sizes,
        _i3.GProductsSizesFragment {
  GGetProductsQueryData_getProducts_products_sizes._();

  factory GGetProductsQueryData_getProducts_products_sizes(
      [Function(GGetProductsQueryData_getProducts_products_sizesBuilder b)
          updates]) = _$GGetProductsQueryData_getProducts_products_sizes;

  static void _initializeBuilder(
          GGetProductsQueryData_getProducts_products_sizesBuilder b) =>
      b..G__typename = 'Product';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  String? get additionalInfo;
  String? get description;
  GGetProductsQueryData_getProducts_products_sizes_parentGroup? get parentGroup;
  BuiltList<GGetProductsQueryData_getProducts_products_sizes_images>?
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
  BuiltList<GGetProductsQueryData_getProducts_products_sizes_modifiers>?
      get modifiers;
  BuiltList<GGetProductsQueryData_getProducts_products_sizes_groupModifiers>?
      get groupModifiers;
  static Serializer<GGetProductsQueryData_getProducts_products_sizes>
      get serializer =>
          _$gGetProductsQueryDataGetProductsProductsSizesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GGetProductsQueryData_getProducts_products_sizes.serializer, this)
      as Map<String, dynamic>);
  static GGetProductsQueryData_getProducts_products_sizes? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GGetProductsQueryData_getProducts_products_sizes.serializer, json);
}

abstract class GGetProductsQueryData_getProducts_products_sizes_parentGroup
    implements
        Built<GGetProductsQueryData_getProducts_products_sizes_parentGroup,
            GGetProductsQueryData_getProducts_products_sizes_parentGroupBuilder>,
        _i2.GProductFragment_products_sizes_parentGroup,
        _i3.GProductsSizesFragment_parentGroup {
  GGetProductsQueryData_getProducts_products_sizes_parentGroup._();

  factory GGetProductsQueryData_getProducts_products_sizes_parentGroup(
          [Function(
                  GGetProductsQueryData_getProducts_products_sizes_parentGroupBuilder
                      b)
              updates]) =
      _$GGetProductsQueryData_getProducts_products_sizes_parentGroup;

  static void _initializeBuilder(
          GGetProductsQueryData_getProducts_products_sizes_parentGroupBuilder
              b) =>
      b..G__typename = 'Group';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  static Serializer<
          GGetProductsQueryData_getProducts_products_sizes_parentGroup>
      get serializer =>
          _$gGetProductsQueryDataGetProductsProductsSizesParentGroupSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetProductsQueryData_getProducts_products_sizes_parentGroup.serializer,
      this) as Map<String, dynamic>);
  static GGetProductsQueryData_getProducts_products_sizes_parentGroup? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GGetProductsQueryData_getProducts_products_sizes_parentGroup
              .serializer,
          json);
}

abstract class GGetProductsQueryData_getProducts_products_sizes_images
    implements
        Built<GGetProductsQueryData_getProducts_products_sizes_images,
            GGetProductsQueryData_getProducts_products_sizes_imagesBuilder>,
        _i2.GProductFragment_products_sizes_images,
        _i3.GProductsSizesFragment_images {
  GGetProductsQueryData_getProducts_products_sizes_images._();

  factory GGetProductsQueryData_getProducts_products_sizes_images(
      [Function(
              GGetProductsQueryData_getProducts_products_sizes_imagesBuilder b)
          updates]) = _$GGetProductsQueryData_getProducts_products_sizes_images;

  static void _initializeBuilder(
          GGetProductsQueryData_getProducts_products_sizes_imagesBuilder b) =>
      b..G__typename = 'ProductImage';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get imageId;
  String? get imageUrl;
  static Serializer<GGetProductsQueryData_getProducts_products_sizes_images>
      get serializer =>
          _$gGetProductsQueryDataGetProductsProductsSizesImagesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetProductsQueryData_getProducts_products_sizes_images.serializer,
      this) as Map<String, dynamic>);
  static GGetProductsQueryData_getProducts_products_sizes_images? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GGetProductsQueryData_getProducts_products_sizes_images.serializer,
          json);
}

abstract class GGetProductsQueryData_getProducts_products_sizes_modifiers
    implements
        Built<GGetProductsQueryData_getProducts_products_sizes_modifiers,
            GGetProductsQueryData_getProducts_products_sizes_modifiersBuilder>,
        _i2.GProductFragment_products_sizes_modifiers,
        _i3.GProductsSizesFragment_modifiers,
        _i4.GModificatorFragment {
  GGetProductsQueryData_getProducts_products_sizes_modifiers._();

  factory GGetProductsQueryData_getProducts_products_sizes_modifiers(
      [Function(
              GGetProductsQueryData_getProducts_products_sizes_modifiersBuilder
                  b)
          updates]) = _$GGetProductsQueryData_getProducts_products_sizes_modifiers;

  static void _initializeBuilder(
          GGetProductsQueryData_getProducts_products_sizes_modifiersBuilder
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
  static Serializer<GGetProductsQueryData_getProducts_products_sizes_modifiers>
      get serializer =>
          _$gGetProductsQueryDataGetProductsProductsSizesModifiersSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetProductsQueryData_getProducts_products_sizes_modifiers.serializer,
      this) as Map<String, dynamic>);
  static GGetProductsQueryData_getProducts_products_sizes_modifiers? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GGetProductsQueryData_getProducts_products_sizes_modifiers.serializer,
          json);
}

abstract class GGetProductsQueryData_getProducts_products_sizes_groupModifiers
    implements
        Built<GGetProductsQueryData_getProducts_products_sizes_groupModifiers,
            GGetProductsQueryData_getProducts_products_sizes_groupModifiersBuilder>,
        _i2.GProductFragment_products_sizes_groupModifiers,
        _i3.GProductsSizesFragment_groupModifiers,
        _i5.GGroupModificatorFragment {
  GGetProductsQueryData_getProducts_products_sizes_groupModifiers._();

  factory GGetProductsQueryData_getProducts_products_sizes_groupModifiers(
          [Function(
                  GGetProductsQueryData_getProducts_products_sizes_groupModifiersBuilder
                      b)
              updates]) =
      _$GGetProductsQueryData_getProducts_products_sizes_groupModifiers;

  static void _initializeBuilder(
          GGetProductsQueryData_getProducts_products_sizes_groupModifiersBuilder
              b) =>
      b..G__typename = 'GroupModificator';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get maxAmount;
  int? get minAmount;
  String get modifierId;
  bool? get required;
  BuiltList<
          GGetProductsQueryData_getProducts_products_sizes_groupModifiers_childModifiers>?
      get childModifiers;
  bool? get childModifiersHaveMinMaxRestrictions;
  static Serializer<
          GGetProductsQueryData_getProducts_products_sizes_groupModifiers>
      get serializer =>
          _$gGetProductsQueryDataGetProductsProductsSizesGroupModifiersSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetProductsQueryData_getProducts_products_sizes_groupModifiers
          .serializer,
      this) as Map<String, dynamic>);
  static GGetProductsQueryData_getProducts_products_sizes_groupModifiers?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GGetProductsQueryData_getProducts_products_sizes_groupModifiers
              .serializer,
          json);
}

abstract class GGetProductsQueryData_getProducts_products_sizes_groupModifiers_childModifiers
    implements
        Built<
            GGetProductsQueryData_getProducts_products_sizes_groupModifiers_childModifiers,
            GGetProductsQueryData_getProducts_products_sizes_groupModifiers_childModifiersBuilder>,
        _i2.GProductFragment_products_sizes_groupModifiers_childModifiers,
        _i3.GProductsSizesFragment_groupModifiers_childModifiers,
        _i5.GGroupModificatorFragment_childModifiers,
        _i4.GModificatorFragment {
  GGetProductsQueryData_getProducts_products_sizes_groupModifiers_childModifiers._();

  factory GGetProductsQueryData_getProducts_products_sizes_groupModifiers_childModifiers(
          [Function(
                  GGetProductsQueryData_getProducts_products_sizes_groupModifiers_childModifiersBuilder
                      b)
              updates]) =
      _$GGetProductsQueryData_getProducts_products_sizes_groupModifiers_childModifiers;

  static void _initializeBuilder(
          GGetProductsQueryData_getProducts_products_sizes_groupModifiers_childModifiersBuilder
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
          GGetProductsQueryData_getProducts_products_sizes_groupModifiers_childModifiers>
      get serializer =>
          _$gGetProductsQueryDataGetProductsProductsSizesGroupModifiersChildModifiersSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetProductsQueryData_getProducts_products_sizes_groupModifiers_childModifiers
          .serializer,
      this) as Map<String, dynamic>);
  static GGetProductsQueryData_getProducts_products_sizes_groupModifiers_childModifiers?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GGetProductsQueryData_getProducts_products_sizes_groupModifiers_childModifiers
              .serializer,
          json);
}

abstract class GGetProductsQueryData_getProducts_images
    implements
        Built<GGetProductsQueryData_getProducts_images,
            GGetProductsQueryData_getProducts_imagesBuilder>,
        _i2.GProductFragment_images {
  GGetProductsQueryData_getProducts_images._();

  factory GGetProductsQueryData_getProducts_images(
      [Function(GGetProductsQueryData_getProducts_imagesBuilder b)
          updates]) = _$GGetProductsQueryData_getProducts_images;

  static void _initializeBuilder(
          GGetProductsQueryData_getProducts_imagesBuilder b) =>
      b..G__typename = 'ProductImage';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get imageId;
  String? get imageUrl;
  static Serializer<GGetProductsQueryData_getProducts_images> get serializer =>
      _$gGetProductsQueryDataGetProductsImagesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GGetProductsQueryData_getProducts_images.serializer, this)
      as Map<String, dynamic>);
  static GGetProductsQueryData_getProducts_images? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GGetProductsQueryData_getProducts_images.serializer, json);
}

abstract class GGetProductsQueryData_getProducts_modifiers
    implements
        Built<GGetProductsQueryData_getProducts_modifiers,
            GGetProductsQueryData_getProducts_modifiersBuilder>,
        _i2.GProductFragment_modifiers,
        _i4.GModificatorFragment {
  GGetProductsQueryData_getProducts_modifiers._();

  factory GGetProductsQueryData_getProducts_modifiers(
      [Function(GGetProductsQueryData_getProducts_modifiersBuilder b)
          updates]) = _$GGetProductsQueryData_getProducts_modifiers;

  static void _initializeBuilder(
          GGetProductsQueryData_getProducts_modifiersBuilder b) =>
      b..G__typename = 'Modificator';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get maxAmount;
  int? get minAmount;
  String get modifierId;
  bool? get required;
  int? get defaultAmount;
  bool? get hideIfDefaultAmount;
  static Serializer<GGetProductsQueryData_getProducts_modifiers>
      get serializer => _$gGetProductsQueryDataGetProductsModifiersSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GGetProductsQueryData_getProducts_modifiers.serializer, this)
      as Map<String, dynamic>);
  static GGetProductsQueryData_getProducts_modifiers? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GGetProductsQueryData_getProducts_modifiers.serializer, json);
}

abstract class GGetProductsQueryData_getProducts_groupModifiers
    implements
        Built<GGetProductsQueryData_getProducts_groupModifiers,
            GGetProductsQueryData_getProducts_groupModifiersBuilder>,
        _i2.GProductFragment_groupModifiers,
        _i5.GGroupModificatorFragment {
  GGetProductsQueryData_getProducts_groupModifiers._();

  factory GGetProductsQueryData_getProducts_groupModifiers(
      [Function(GGetProductsQueryData_getProducts_groupModifiersBuilder b)
          updates]) = _$GGetProductsQueryData_getProducts_groupModifiers;

  static void _initializeBuilder(
          GGetProductsQueryData_getProducts_groupModifiersBuilder b) =>
      b..G__typename = 'GroupModificator';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get maxAmount;
  int? get minAmount;
  String get modifierId;
  bool? get required;
  BuiltList<GGetProductsQueryData_getProducts_groupModifiers_childModifiers>?
      get childModifiers;
  bool? get childModifiersHaveMinMaxRestrictions;
  static Serializer<GGetProductsQueryData_getProducts_groupModifiers>
      get serializer =>
          _$gGetProductsQueryDataGetProductsGroupModifiersSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GGetProductsQueryData_getProducts_groupModifiers.serializer, this)
      as Map<String, dynamic>);
  static GGetProductsQueryData_getProducts_groupModifiers? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GGetProductsQueryData_getProducts_groupModifiers.serializer, json);
}

abstract class GGetProductsQueryData_getProducts_groupModifiers_childModifiers
    implements
        Built<GGetProductsQueryData_getProducts_groupModifiers_childModifiers,
            GGetProductsQueryData_getProducts_groupModifiers_childModifiersBuilder>,
        _i2.GProductFragment_groupModifiers_childModifiers,
        _i5.GGroupModificatorFragment_childModifiers,
        _i4.GModificatorFragment {
  GGetProductsQueryData_getProducts_groupModifiers_childModifiers._();

  factory GGetProductsQueryData_getProducts_groupModifiers_childModifiers(
          [Function(
                  GGetProductsQueryData_getProducts_groupModifiers_childModifiersBuilder
                      b)
              updates]) =
      _$GGetProductsQueryData_getProducts_groupModifiers_childModifiers;

  static void _initializeBuilder(
          GGetProductsQueryData_getProducts_groupModifiers_childModifiersBuilder
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
          GGetProductsQueryData_getProducts_groupModifiers_childModifiers>
      get serializer =>
          _$gGetProductsQueryDataGetProductsGroupModifiersChildModifiersSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetProductsQueryData_getProducts_groupModifiers_childModifiers
          .serializer,
      this) as Map<String, dynamic>);
  static GGetProductsQueryData_getProducts_groupModifiers_childModifiers?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GGetProductsQueryData_getProducts_groupModifiers_childModifiers
              .serializer,
          json);
}
