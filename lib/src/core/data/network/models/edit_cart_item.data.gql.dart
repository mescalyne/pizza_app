// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:toto_mobile/src/core/data/network/models/cart_fragment.data.gql.dart'
    as _i2;
import 'package:toto_mobile/src/core/data/network/models/cartItem_fragment.data.gql.dart'
    as _i6;
import 'package:toto_mobile/src/core/data/network/models/cartItem_modifier_fragment.data.gql.dart'
    as _i11;
import 'package:toto_mobile/src/core/data/network/models/city_fragment.data.gql.dart'
    as _i5;
import 'package:toto_mobile/src/core/data/network/models/delivery_address_fragment.data.gql.dart'
    as _i4;
import 'package:toto_mobile/src/core/data/network/models/group_modificator_fragment.data.gql.dart'
    as _i10;
import 'package:toto_mobile/src/core/data/network/models/modificator_fragment.data.gql.dart'
    as _i9;
import 'package:toto_mobile/src/core/data/network/models/order_info_fragment.data.gql.dart'
    as _i12;
import 'package:toto_mobile/src/core/data/network/models/product_fragment.data.gql.dart'
    as _i7;
import 'package:toto_mobile/src/core/data/network/models/products_size_fragment.data.gql.dart'
    as _i8;
import 'package:toto_mobile/src/core/data/network/models/restaurants_fragment.data.gql.dart'
    as _i13;
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i1;
import 'package:toto_mobile/src/core/data/network/models/terminal_fragment.data.gql.dart'
    as _i14;
import 'package:toto_mobile/src/core/data/network/models/toto.schema.schema.gql.dart'
    as _i3;

part 'edit_cart_item.data.gql.g.dart';

abstract class GEditCartItemData
    implements Built<GEditCartItemData, GEditCartItemDataBuilder> {
  GEditCartItemData._();

  factory GEditCartItemData([Function(GEditCartItemDataBuilder b) updates]) =
      _$GEditCartItemData;

  static void _initializeBuilder(GEditCartItemDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GEditCartItemData_editCartItem get editCartItem;
  static Serializer<GEditCartItemData> get serializer =>
      _$gEditCartItemDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GEditCartItemData.serializer, this)
          as Map<String, dynamic>);
  static GEditCartItemData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GEditCartItemData.serializer, json);
}

abstract class GEditCartItemData_editCartItem
    implements
        Built<GEditCartItemData_editCartItem,
            GEditCartItemData_editCartItemBuilder>,
        _i2.GCartFragment {
  GEditCartItemData_editCartItem._();

  factory GEditCartItemData_editCartItem(
          [Function(GEditCartItemData_editCartItemBuilder b) updates]) =
      _$GEditCartItemData_editCartItem;

  static void _initializeBuilder(GEditCartItemData_editCartItemBuilder b) =>
      b..G__typename = 'Cart';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get organization;
  String? get terminal_id;
  GEditCartItemData_editCartItem_delivery_address? get delivery_address;
  bool get is_self_service;
  _i3.GCartOrderStatus get cart_order_status;
  _i3.GCartPaymentStatus get cart_payment_status;
  BuiltList<GEditCartItemData_editCartItem_items>? get items;
  _i3.GCartPaymentType get payment_type;
  int? get change_from;
  String? get coupon;
  int? get bonus_sum;
  double? get discount_sum;
  String? get customer_name;
  String? get customer_phone;
  _i3.GDateTime? get date;
  int get persons_count;
  String get total;
  String get total_payment;
  String? get delivery_price;
  GEditCartItemData_editCartItem_order_info? get order_info;
  String? get comment;
  GEditCartItemData_editCartItem_restaurant? get restaurant;
  static Serializer<GEditCartItemData_editCartItem> get serializer =>
      _$gEditCartItemDataEditCartItemSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GEditCartItemData_editCartItem.serializer, this) as Map<String, dynamic>);
  static GEditCartItemData_editCartItem? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GEditCartItemData_editCartItem.serializer, json);
}

abstract class GEditCartItemData_editCartItem_delivery_address
    implements
        Built<GEditCartItemData_editCartItem_delivery_address,
            GEditCartItemData_editCartItem_delivery_addressBuilder>,
        _i2.GCartFragment_delivery_address,
        _i4.GDeliveryAddressFragment {
  GEditCartItemData_editCartItem_delivery_address._();

  factory GEditCartItemData_editCartItem_delivery_address(
      [Function(GEditCartItemData_editCartItem_delivery_addressBuilder b)
          updates]) = _$GEditCartItemData_editCartItem_delivery_address;

  static void _initializeBuilder(
          GEditCartItemData_editCartItem_delivery_addressBuilder b) =>
      b..G__typename = 'DeliveryAddress';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  String? get city_name;
  String get street;
  String? get home;
  String? get housing;
  String? get apartment;
  String? get comment;
  double? get latitude;
  double? get longitude;
  GEditCartItemData_editCartItem_delivery_address_city? get city;
  bool? get address_in_zone;
  static Serializer<GEditCartItemData_editCartItem_delivery_address>
      get serializer =>
          _$gEditCartItemDataEditCartItemDeliveryAddressSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GEditCartItemData_editCartItem_delivery_address.serializer, this)
      as Map<String, dynamic>);
  static GEditCartItemData_editCartItem_delivery_address? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GEditCartItemData_editCartItem_delivery_address.serializer, json);
}

abstract class GEditCartItemData_editCartItem_delivery_address_city
    implements
        Built<GEditCartItemData_editCartItem_delivery_address_city,
            GEditCartItemData_editCartItem_delivery_address_cityBuilder>,
        _i2.GCartFragment_delivery_address_city,
        _i4.GDeliveryAddressFragment_city,
        _i5.GCityFragment {
  GEditCartItemData_editCartItem_delivery_address_city._();

  factory GEditCartItemData_editCartItem_delivery_address_city(
      [Function(GEditCartItemData_editCartItem_delivery_address_cityBuilder b)
          updates]) = _$GEditCartItemData_editCartItem_delivery_address_city;

  static void _initializeBuilder(
          GEditCartItemData_editCartItem_delivery_address_cityBuilder b) =>
      b..G__typename = 'City';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  String? get prefix;
  String? get postal_code;
  String? get city_type;
  bool? get available;
  static Serializer<GEditCartItemData_editCartItem_delivery_address_city>
      get serializer =>
          _$gEditCartItemDataEditCartItemDeliveryAddressCitySerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GEditCartItemData_editCartItem_delivery_address_city.serializer, this)
      as Map<String, dynamic>);
  static GEditCartItemData_editCartItem_delivery_address_city? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GEditCartItemData_editCartItem_delivery_address_city.serializer,
          json);
}

abstract class GEditCartItemData_editCartItem_items
    implements
        Built<GEditCartItemData_editCartItem_items,
            GEditCartItemData_editCartItem_itemsBuilder>,
        _i2.GCartFragment_items,
        _i6.GCartItemFragment {
  GEditCartItemData_editCartItem_items._();

  factory GEditCartItemData_editCartItem_items(
          [Function(GEditCartItemData_editCartItem_itemsBuilder b) updates]) =
      _$GEditCartItemData_editCartItem_items;

  static void _initializeBuilder(
          GEditCartItemData_editCartItem_itemsBuilder b) =>
      b..G__typename = 'CartItem';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  String get product_id;
  GEditCartItemData_editCartItem_items_product get product;
  String get name;
  int get amount;
  double? get total;
  double? get discount_sum;
  double? get sum;
  String? get code;
  BuiltList<GEditCartItemData_editCartItem_items_modifiers>? get modifiers;
  static Serializer<GEditCartItemData_editCartItem_items> get serializer =>
      _$gEditCartItemDataEditCartItemItemsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GEditCartItemData_editCartItem_items.serializer, this)
      as Map<String, dynamic>);
  static GEditCartItemData_editCartItem_items? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GEditCartItemData_editCartItem_items.serializer, json);
}

abstract class GEditCartItemData_editCartItem_items_product
    implements
        Built<GEditCartItemData_editCartItem_items_product,
            GEditCartItemData_editCartItem_items_productBuilder>,
        _i2.GCartFragment_items_product,
        _i6.GCartItemFragment_product,
        _i7.GProductFragment {
  GEditCartItemData_editCartItem_items_product._();

  factory GEditCartItemData_editCartItem_items_product(
      [Function(GEditCartItemData_editCartItem_items_productBuilder b)
          updates]) = _$GEditCartItemData_editCartItem_items_product;

  static void _initializeBuilder(
          GEditCartItemData_editCartItem_items_productBuilder b) =>
      b..G__typename = 'Product';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get parentGroupId;
  String? get groupId;
  GEditCartItemData_editCartItem_items_product_parentGroup? get parentGroup;
  GEditCartItemData_editCartItem_items_product_group? get group;
  String? get productCategoryId;
  GEditCartItemData_editCartItem_items_product_category? get category;
  BuiltList<GEditCartItemData_editCartItem_items_product_products_sizes>?
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
  BuiltList<GEditCartItemData_editCartItem_items_product_images>? get images;
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
  BuiltList<GEditCartItemData_editCartItem_items_product_modifiers>?
      get modifiers;
  BuiltList<GEditCartItemData_editCartItem_items_product_groupModifiers>?
      get groupModifiers;
  static Serializer<GEditCartItemData_editCartItem_items_product>
      get serializer => _$gEditCartItemDataEditCartItemItemsProductSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GEditCartItemData_editCartItem_items_product.serializer, this)
      as Map<String, dynamic>);
  static GEditCartItemData_editCartItem_items_product? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GEditCartItemData_editCartItem_items_product.serializer, json);
}

abstract class GEditCartItemData_editCartItem_items_product_parentGroup
    implements
        Built<GEditCartItemData_editCartItem_items_product_parentGroup,
            GEditCartItemData_editCartItem_items_product_parentGroupBuilder>,
        _i2.GCartFragment_items_product_parentGroup,
        _i6.GCartItemFragment_product_parentGroup,
        _i7.GProductFragment_parentGroup {
  GEditCartItemData_editCartItem_items_product_parentGroup._();

  factory GEditCartItemData_editCartItem_items_product_parentGroup(
      [Function(
              GEditCartItemData_editCartItem_items_product_parentGroupBuilder b)
          updates]) = _$GEditCartItemData_editCartItem_items_product_parentGroup;

  static void _initializeBuilder(
          GEditCartItemData_editCartItem_items_product_parentGroupBuilder b) =>
      b..G__typename = 'Group';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get parentGroup;
  String? get additionalInfo;
  String get name;
  String? get description;
  static Serializer<GEditCartItemData_editCartItem_items_product_parentGroup>
      get serializer =>
          _$gEditCartItemDataEditCartItemItemsProductParentGroupSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GEditCartItemData_editCartItem_items_product_parentGroup.serializer,
      this) as Map<String, dynamic>);
  static GEditCartItemData_editCartItem_items_product_parentGroup? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GEditCartItemData_editCartItem_items_product_parentGroup.serializer,
          json);
}

abstract class GEditCartItemData_editCartItem_items_product_group
    implements
        Built<GEditCartItemData_editCartItem_items_product_group,
            GEditCartItemData_editCartItem_items_product_groupBuilder>,
        _i2.GCartFragment_items_product_group,
        _i6.GCartItemFragment_product_group,
        _i7.GProductFragment_group {
  GEditCartItemData_editCartItem_items_product_group._();

  factory GEditCartItemData_editCartItem_items_product_group(
      [Function(GEditCartItemData_editCartItem_items_product_groupBuilder b)
          updates]) = _$GEditCartItemData_editCartItem_items_product_group;

  static void _initializeBuilder(
          GEditCartItemData_editCartItem_items_product_groupBuilder b) =>
      b..G__typename = 'Group';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get parentGroup;
  String? get additionalInfo;
  String get name;
  String? get description;
  static Serializer<GEditCartItemData_editCartItem_items_product_group>
      get serializer =>
          _$gEditCartItemDataEditCartItemItemsProductGroupSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GEditCartItemData_editCartItem_items_product_group.serializer, this)
      as Map<String, dynamic>);
  static GEditCartItemData_editCartItem_items_product_group? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GEditCartItemData_editCartItem_items_product_group.serializer, json);
}

abstract class GEditCartItemData_editCartItem_items_product_category
    implements
        Built<GEditCartItemData_editCartItem_items_product_category,
            GEditCartItemData_editCartItem_items_product_categoryBuilder>,
        _i2.GCartFragment_items_product_category,
        _i6.GCartItemFragment_product_category,
        _i7.GProductFragment_category {
  GEditCartItemData_editCartItem_items_product_category._();

  factory GEditCartItemData_editCartItem_items_product_category(
      [Function(GEditCartItemData_editCartItem_items_product_categoryBuilder b)
          updates]) = _$GEditCartItemData_editCartItem_items_product_category;

  static void _initializeBuilder(
          GEditCartItemData_editCartItem_items_product_categoryBuilder b) =>
      b..G__typename = 'ProductCategory';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  static Serializer<GEditCartItemData_editCartItem_items_product_category>
      get serializer =>
          _$gEditCartItemDataEditCartItemItemsProductCategorySerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GEditCartItemData_editCartItem_items_product_category.serializer,
      this) as Map<String, dynamic>);
  static GEditCartItemData_editCartItem_items_product_category? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GEditCartItemData_editCartItem_items_product_category.serializer,
          json);
}

abstract class GEditCartItemData_editCartItem_items_product_products_sizes
    implements
        Built<GEditCartItemData_editCartItem_items_product_products_sizes,
            GEditCartItemData_editCartItem_items_product_products_sizesBuilder>,
        _i2.GCartFragment_items_product_products_sizes,
        _i6.GCartItemFragment_product_products_sizes,
        _i7.GProductFragment_products_sizes,
        _i8.GProductsSizesFragment {
  GEditCartItemData_editCartItem_items_product_products_sizes._();

  factory GEditCartItemData_editCartItem_items_product_products_sizes(
      [Function(
              GEditCartItemData_editCartItem_items_product_products_sizesBuilder
                  b)
          updates]) = _$GEditCartItemData_editCartItem_items_product_products_sizes;

  static void _initializeBuilder(
          GEditCartItemData_editCartItem_items_product_products_sizesBuilder
              b) =>
      b..G__typename = 'Product';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  String? get additionalInfo;
  String? get description;
  GEditCartItemData_editCartItem_items_product_products_sizes_parentGroup?
      get parentGroup;
  BuiltList<GEditCartItemData_editCartItem_items_product_products_sizes_images>?
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
          GEditCartItemData_editCartItem_items_product_products_sizes_modifiers>?
      get modifiers;
  BuiltList<
          GEditCartItemData_editCartItem_items_product_products_sizes_groupModifiers>?
      get groupModifiers;
  static Serializer<GEditCartItemData_editCartItem_items_product_products_sizes>
      get serializer =>
          _$gEditCartItemDataEditCartItemItemsProductProductsSizesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GEditCartItemData_editCartItem_items_product_products_sizes.serializer,
      this) as Map<String, dynamic>);
  static GEditCartItemData_editCartItem_items_product_products_sizes? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GEditCartItemData_editCartItem_items_product_products_sizes
              .serializer,
          json);
}

abstract class GEditCartItemData_editCartItem_items_product_products_sizes_parentGroup
    implements
        Built<
            GEditCartItemData_editCartItem_items_product_products_sizes_parentGroup,
            GEditCartItemData_editCartItem_items_product_products_sizes_parentGroupBuilder>,
        _i2.GCartFragment_items_product_products_sizes_parentGroup,
        _i6.GCartItemFragment_product_products_sizes_parentGroup,
        _i7.GProductFragment_products_sizes_parentGroup,
        _i8.GProductsSizesFragment_parentGroup {
  GEditCartItemData_editCartItem_items_product_products_sizes_parentGroup._();

  factory GEditCartItemData_editCartItem_items_product_products_sizes_parentGroup(
          [Function(
                  GEditCartItemData_editCartItem_items_product_products_sizes_parentGroupBuilder
                      b)
              updates]) =
      _$GEditCartItemData_editCartItem_items_product_products_sizes_parentGroup;

  static void _initializeBuilder(
          GEditCartItemData_editCartItem_items_product_products_sizes_parentGroupBuilder
              b) =>
      b..G__typename = 'Group';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  static Serializer<
          GEditCartItemData_editCartItem_items_product_products_sizes_parentGroup>
      get serializer =>
          _$gEditCartItemDataEditCartItemItemsProductProductsSizesParentGroupSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GEditCartItemData_editCartItem_items_product_products_sizes_parentGroup
          .serializer,
      this) as Map<String, dynamic>);
  static GEditCartItemData_editCartItem_items_product_products_sizes_parentGroup?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GEditCartItemData_editCartItem_items_product_products_sizes_parentGroup
              .serializer,
          json);
}

abstract class GEditCartItemData_editCartItem_items_product_products_sizes_images
    implements
        Built<
            GEditCartItemData_editCartItem_items_product_products_sizes_images,
            GEditCartItemData_editCartItem_items_product_products_sizes_imagesBuilder>,
        _i2.GCartFragment_items_product_products_sizes_images,
        _i6.GCartItemFragment_product_products_sizes_images,
        _i7.GProductFragment_products_sizes_images,
        _i8.GProductsSizesFragment_images {
  GEditCartItemData_editCartItem_items_product_products_sizes_images._();

  factory GEditCartItemData_editCartItem_items_product_products_sizes_images(
          [Function(
                  GEditCartItemData_editCartItem_items_product_products_sizes_imagesBuilder
                      b)
              updates]) =
      _$GEditCartItemData_editCartItem_items_product_products_sizes_images;

  static void _initializeBuilder(
          GEditCartItemData_editCartItem_items_product_products_sizes_imagesBuilder
              b) =>
      b..G__typename = 'ProductImage';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get imageId;
  String? get imageUrl;
  static Serializer<
          GEditCartItemData_editCartItem_items_product_products_sizes_images>
      get serializer =>
          _$gEditCartItemDataEditCartItemItemsProductProductsSizesImagesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GEditCartItemData_editCartItem_items_product_products_sizes_images
          .serializer,
      this) as Map<String, dynamic>);
  static GEditCartItemData_editCartItem_items_product_products_sizes_images?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GEditCartItemData_editCartItem_items_product_products_sizes_images
              .serializer,
          json);
}

abstract class GEditCartItemData_editCartItem_items_product_products_sizes_modifiers
    implements
        Built<
            GEditCartItemData_editCartItem_items_product_products_sizes_modifiers,
            GEditCartItemData_editCartItem_items_product_products_sizes_modifiersBuilder>,
        _i2.GCartFragment_items_product_products_sizes_modifiers,
        _i6.GCartItemFragment_product_products_sizes_modifiers,
        _i7.GProductFragment_products_sizes_modifiers,
        _i8.GProductsSizesFragment_modifiers,
        _i9.GModificatorFragment {
  GEditCartItemData_editCartItem_items_product_products_sizes_modifiers._();

  factory GEditCartItemData_editCartItem_items_product_products_sizes_modifiers(
          [Function(
                  GEditCartItemData_editCartItem_items_product_products_sizes_modifiersBuilder
                      b)
              updates]) =
      _$GEditCartItemData_editCartItem_items_product_products_sizes_modifiers;

  static void _initializeBuilder(
          GEditCartItemData_editCartItem_items_product_products_sizes_modifiersBuilder
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
          GEditCartItemData_editCartItem_items_product_products_sizes_modifiers>
      get serializer =>
          _$gEditCartItemDataEditCartItemItemsProductProductsSizesModifiersSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GEditCartItemData_editCartItem_items_product_products_sizes_modifiers
          .serializer,
      this) as Map<String, dynamic>);
  static GEditCartItemData_editCartItem_items_product_products_sizes_modifiers?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GEditCartItemData_editCartItem_items_product_products_sizes_modifiers
              .serializer,
          json);
}

abstract class GEditCartItemData_editCartItem_items_product_products_sizes_groupModifiers
    implements
        Built<
            GEditCartItemData_editCartItem_items_product_products_sizes_groupModifiers,
            GEditCartItemData_editCartItem_items_product_products_sizes_groupModifiersBuilder>,
        _i2.GCartFragment_items_product_products_sizes_groupModifiers,
        _i6.GCartItemFragment_product_products_sizes_groupModifiers,
        _i7.GProductFragment_products_sizes_groupModifiers,
        _i8.GProductsSizesFragment_groupModifiers,
        _i10.GGroupModificatorFragment {
  GEditCartItemData_editCartItem_items_product_products_sizes_groupModifiers._();

  factory GEditCartItemData_editCartItem_items_product_products_sizes_groupModifiers(
          [Function(
                  GEditCartItemData_editCartItem_items_product_products_sizes_groupModifiersBuilder
                      b)
              updates]) =
      _$GEditCartItemData_editCartItem_items_product_products_sizes_groupModifiers;

  static void _initializeBuilder(
          GEditCartItemData_editCartItem_items_product_products_sizes_groupModifiersBuilder
              b) =>
      b..G__typename = 'GroupModificator';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get maxAmount;
  int? get minAmount;
  String get modifierId;
  bool? get required;
  BuiltList<
          GEditCartItemData_editCartItem_items_product_products_sizes_groupModifiers_childModifiers>?
      get childModifiers;
  bool? get childModifiersHaveMinMaxRestrictions;
  static Serializer<
          GEditCartItemData_editCartItem_items_product_products_sizes_groupModifiers>
      get serializer =>
          _$gEditCartItemDataEditCartItemItemsProductProductsSizesGroupModifiersSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GEditCartItemData_editCartItem_items_product_products_sizes_groupModifiers
          .serializer,
      this) as Map<String, dynamic>);
  static GEditCartItemData_editCartItem_items_product_products_sizes_groupModifiers?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GEditCartItemData_editCartItem_items_product_products_sizes_groupModifiers
              .serializer,
          json);
}

abstract class GEditCartItemData_editCartItem_items_product_products_sizes_groupModifiers_childModifiers
    implements
        Built<
            GEditCartItemData_editCartItem_items_product_products_sizes_groupModifiers_childModifiers,
            GEditCartItemData_editCartItem_items_product_products_sizes_groupModifiers_childModifiersBuilder>,
        _i2.GCartFragment_items_product_products_sizes_groupModifiers_childModifiers,
        _i6.GCartItemFragment_product_products_sizes_groupModifiers_childModifiers,
        _i7.GProductFragment_products_sizes_groupModifiers_childModifiers,
        _i8.GProductsSizesFragment_groupModifiers_childModifiers,
        _i10.GGroupModificatorFragment_childModifiers,
        _i9.GModificatorFragment {
  GEditCartItemData_editCartItem_items_product_products_sizes_groupModifiers_childModifiers._();

  factory GEditCartItemData_editCartItem_items_product_products_sizes_groupModifiers_childModifiers(
          [Function(
                  GEditCartItemData_editCartItem_items_product_products_sizes_groupModifiers_childModifiersBuilder
                      b)
              updates]) =
      _$GEditCartItemData_editCartItem_items_product_products_sizes_groupModifiers_childModifiers;

  static void _initializeBuilder(
          GEditCartItemData_editCartItem_items_product_products_sizes_groupModifiers_childModifiersBuilder
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
          GEditCartItemData_editCartItem_items_product_products_sizes_groupModifiers_childModifiers>
      get serializer =>
          _$gEditCartItemDataEditCartItemItemsProductProductsSizesGroupModifiersChildModifiersSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GEditCartItemData_editCartItem_items_product_products_sizes_groupModifiers_childModifiers
          .serializer,
      this) as Map<String, dynamic>);
  static GEditCartItemData_editCartItem_items_product_products_sizes_groupModifiers_childModifiers?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GEditCartItemData_editCartItem_items_product_products_sizes_groupModifiers_childModifiers
              .serializer,
          json);
}

abstract class GEditCartItemData_editCartItem_items_product_images
    implements
        Built<GEditCartItemData_editCartItem_items_product_images,
            GEditCartItemData_editCartItem_items_product_imagesBuilder>,
        _i2.GCartFragment_items_product_images,
        _i6.GCartItemFragment_product_images,
        _i7.GProductFragment_images {
  GEditCartItemData_editCartItem_items_product_images._();

  factory GEditCartItemData_editCartItem_items_product_images(
      [Function(GEditCartItemData_editCartItem_items_product_imagesBuilder b)
          updates]) = _$GEditCartItemData_editCartItem_items_product_images;

  static void _initializeBuilder(
          GEditCartItemData_editCartItem_items_product_imagesBuilder b) =>
      b..G__typename = 'ProductImage';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get imageId;
  String? get imageUrl;
  static Serializer<GEditCartItemData_editCartItem_items_product_images>
      get serializer =>
          _$gEditCartItemDataEditCartItemItemsProductImagesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GEditCartItemData_editCartItem_items_product_images.serializer, this)
      as Map<String, dynamic>);
  static GEditCartItemData_editCartItem_items_product_images? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GEditCartItemData_editCartItem_items_product_images.serializer, json);
}

abstract class GEditCartItemData_editCartItem_items_product_modifiers
    implements
        Built<GEditCartItemData_editCartItem_items_product_modifiers,
            GEditCartItemData_editCartItem_items_product_modifiersBuilder>,
        _i2.GCartFragment_items_product_modifiers,
        _i6.GCartItemFragment_product_modifiers,
        _i7.GProductFragment_modifiers,
        _i9.GModificatorFragment {
  GEditCartItemData_editCartItem_items_product_modifiers._();

  factory GEditCartItemData_editCartItem_items_product_modifiers(
      [Function(GEditCartItemData_editCartItem_items_product_modifiersBuilder b)
          updates]) = _$GEditCartItemData_editCartItem_items_product_modifiers;

  static void _initializeBuilder(
          GEditCartItemData_editCartItem_items_product_modifiersBuilder b) =>
      b..G__typename = 'Modificator';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get maxAmount;
  int? get minAmount;
  String get modifierId;
  bool? get required;
  int? get defaultAmount;
  bool? get hideIfDefaultAmount;
  static Serializer<GEditCartItemData_editCartItem_items_product_modifiers>
      get serializer =>
          _$gEditCartItemDataEditCartItemItemsProductModifiersSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GEditCartItemData_editCartItem_items_product_modifiers.serializer,
      this) as Map<String, dynamic>);
  static GEditCartItemData_editCartItem_items_product_modifiers? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GEditCartItemData_editCartItem_items_product_modifiers.serializer,
          json);
}

abstract class GEditCartItemData_editCartItem_items_product_groupModifiers
    implements
        Built<GEditCartItemData_editCartItem_items_product_groupModifiers,
            GEditCartItemData_editCartItem_items_product_groupModifiersBuilder>,
        _i2.GCartFragment_items_product_groupModifiers,
        _i6.GCartItemFragment_product_groupModifiers,
        _i7.GProductFragment_groupModifiers,
        _i10.GGroupModificatorFragment {
  GEditCartItemData_editCartItem_items_product_groupModifiers._();

  factory GEditCartItemData_editCartItem_items_product_groupModifiers(
      [Function(
              GEditCartItemData_editCartItem_items_product_groupModifiersBuilder
                  b)
          updates]) = _$GEditCartItemData_editCartItem_items_product_groupModifiers;

  static void _initializeBuilder(
          GEditCartItemData_editCartItem_items_product_groupModifiersBuilder
              b) =>
      b..G__typename = 'GroupModificator';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get maxAmount;
  int? get minAmount;
  String get modifierId;
  bool? get required;
  BuiltList<
          GEditCartItemData_editCartItem_items_product_groupModifiers_childModifiers>?
      get childModifiers;
  bool? get childModifiersHaveMinMaxRestrictions;
  static Serializer<GEditCartItemData_editCartItem_items_product_groupModifiers>
      get serializer =>
          _$gEditCartItemDataEditCartItemItemsProductGroupModifiersSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GEditCartItemData_editCartItem_items_product_groupModifiers.serializer,
      this) as Map<String, dynamic>);
  static GEditCartItemData_editCartItem_items_product_groupModifiers? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GEditCartItemData_editCartItem_items_product_groupModifiers
              .serializer,
          json);
}

abstract class GEditCartItemData_editCartItem_items_product_groupModifiers_childModifiers
    implements
        Built<
            GEditCartItemData_editCartItem_items_product_groupModifiers_childModifiers,
            GEditCartItemData_editCartItem_items_product_groupModifiers_childModifiersBuilder>,
        _i2.GCartFragment_items_product_groupModifiers_childModifiers,
        _i6.GCartItemFragment_product_groupModifiers_childModifiers,
        _i7.GProductFragment_groupModifiers_childModifiers,
        _i10.GGroupModificatorFragment_childModifiers,
        _i9.GModificatorFragment {
  GEditCartItemData_editCartItem_items_product_groupModifiers_childModifiers._();

  factory GEditCartItemData_editCartItem_items_product_groupModifiers_childModifiers(
          [Function(
                  GEditCartItemData_editCartItem_items_product_groupModifiers_childModifiersBuilder
                      b)
              updates]) =
      _$GEditCartItemData_editCartItem_items_product_groupModifiers_childModifiers;

  static void _initializeBuilder(
          GEditCartItemData_editCartItem_items_product_groupModifiers_childModifiersBuilder
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
          GEditCartItemData_editCartItem_items_product_groupModifiers_childModifiers>
      get serializer =>
          _$gEditCartItemDataEditCartItemItemsProductGroupModifiersChildModifiersSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GEditCartItemData_editCartItem_items_product_groupModifiers_childModifiers
          .serializer,
      this) as Map<String, dynamic>);
  static GEditCartItemData_editCartItem_items_product_groupModifiers_childModifiers?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GEditCartItemData_editCartItem_items_product_groupModifiers_childModifiers
              .serializer,
          json);
}

abstract class GEditCartItemData_editCartItem_items_modifiers
    implements
        Built<GEditCartItemData_editCartItem_items_modifiers,
            GEditCartItemData_editCartItem_items_modifiersBuilder>,
        _i2.GCartFragment_items_modifiers,
        _i6.GCartItemFragment_modifiers,
        _i11.GCartItemModifierFragment {
  GEditCartItemData_editCartItem_items_modifiers._();

  factory GEditCartItemData_editCartItem_items_modifiers(
      [Function(GEditCartItemData_editCartItem_items_modifiersBuilder b)
          updates]) = _$GEditCartItemData_editCartItem_items_modifiers;

  static void _initializeBuilder(
          GEditCartItemData_editCartItem_items_modifiersBuilder b) =>
      b..G__typename = 'CartItemModifier';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get type;
  String get product_id;
  GEditCartItemData_editCartItem_items_modifiers_product get product;
  String get name;
  int get amount;
  String? get group_id;
  String? get group_name;
  static Serializer<GEditCartItemData_editCartItem_items_modifiers>
      get serializer => _$gEditCartItemDataEditCartItemItemsModifiersSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GEditCartItemData_editCartItem_items_modifiers.serializer, this)
      as Map<String, dynamic>);
  static GEditCartItemData_editCartItem_items_modifiers? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GEditCartItemData_editCartItem_items_modifiers.serializer, json);
}

abstract class GEditCartItemData_editCartItem_items_modifiers_product
    implements
        Built<GEditCartItemData_editCartItem_items_modifiers_product,
            GEditCartItemData_editCartItem_items_modifiers_productBuilder>,
        _i2.GCartFragment_items_modifiers_product,
        _i6.GCartItemFragment_modifiers_product,
        _i11.GCartItemModifierFragment_product,
        _i7.GProductFragment {
  GEditCartItemData_editCartItem_items_modifiers_product._();

  factory GEditCartItemData_editCartItem_items_modifiers_product(
      [Function(GEditCartItemData_editCartItem_items_modifiers_productBuilder b)
          updates]) = _$GEditCartItemData_editCartItem_items_modifiers_product;

  static void _initializeBuilder(
          GEditCartItemData_editCartItem_items_modifiers_productBuilder b) =>
      b..G__typename = 'Product';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get parentGroupId;
  String? get groupId;
  GEditCartItemData_editCartItem_items_modifiers_product_parentGroup?
      get parentGroup;
  GEditCartItemData_editCartItem_items_modifiers_product_group? get group;
  String? get productCategoryId;
  GEditCartItemData_editCartItem_items_modifiers_product_category? get category;
  BuiltList<
          GEditCartItemData_editCartItem_items_modifiers_product_products_sizes>?
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
  BuiltList<GEditCartItemData_editCartItem_items_modifiers_product_images>?
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
  BuiltList<GEditCartItemData_editCartItem_items_modifiers_product_modifiers>?
      get modifiers;
  BuiltList<
          GEditCartItemData_editCartItem_items_modifiers_product_groupModifiers>?
      get groupModifiers;
  static Serializer<GEditCartItemData_editCartItem_items_modifiers_product>
      get serializer =>
          _$gEditCartItemDataEditCartItemItemsModifiersProductSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GEditCartItemData_editCartItem_items_modifiers_product.serializer,
      this) as Map<String, dynamic>);
  static GEditCartItemData_editCartItem_items_modifiers_product? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GEditCartItemData_editCartItem_items_modifiers_product.serializer,
          json);
}

abstract class GEditCartItemData_editCartItem_items_modifiers_product_parentGroup
    implements
        Built<
            GEditCartItemData_editCartItem_items_modifiers_product_parentGroup,
            GEditCartItemData_editCartItem_items_modifiers_product_parentGroupBuilder>,
        _i2.GCartFragment_items_modifiers_product_parentGroup,
        _i6.GCartItemFragment_modifiers_product_parentGroup,
        _i11.GCartItemModifierFragment_product_parentGroup,
        _i7.GProductFragment_parentGroup {
  GEditCartItemData_editCartItem_items_modifiers_product_parentGroup._();

  factory GEditCartItemData_editCartItem_items_modifiers_product_parentGroup(
          [Function(
                  GEditCartItemData_editCartItem_items_modifiers_product_parentGroupBuilder
                      b)
              updates]) =
      _$GEditCartItemData_editCartItem_items_modifiers_product_parentGroup;

  static void _initializeBuilder(
          GEditCartItemData_editCartItem_items_modifiers_product_parentGroupBuilder
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
          GEditCartItemData_editCartItem_items_modifiers_product_parentGroup>
      get serializer =>
          _$gEditCartItemDataEditCartItemItemsModifiersProductParentGroupSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GEditCartItemData_editCartItem_items_modifiers_product_parentGroup
          .serializer,
      this) as Map<String, dynamic>);
  static GEditCartItemData_editCartItem_items_modifiers_product_parentGroup?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GEditCartItemData_editCartItem_items_modifiers_product_parentGroup
              .serializer,
          json);
}

abstract class GEditCartItemData_editCartItem_items_modifiers_product_group
    implements
        Built<GEditCartItemData_editCartItem_items_modifiers_product_group,
            GEditCartItemData_editCartItem_items_modifiers_product_groupBuilder>,
        _i2.GCartFragment_items_modifiers_product_group,
        _i6.GCartItemFragment_modifiers_product_group,
        _i11.GCartItemModifierFragment_product_group,
        _i7.GProductFragment_group {
  GEditCartItemData_editCartItem_items_modifiers_product_group._();

  factory GEditCartItemData_editCartItem_items_modifiers_product_group(
          [Function(
                  GEditCartItemData_editCartItem_items_modifiers_product_groupBuilder
                      b)
              updates]) =
      _$GEditCartItemData_editCartItem_items_modifiers_product_group;

  static void _initializeBuilder(
          GEditCartItemData_editCartItem_items_modifiers_product_groupBuilder
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
          GEditCartItemData_editCartItem_items_modifiers_product_group>
      get serializer =>
          _$gEditCartItemDataEditCartItemItemsModifiersProductGroupSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GEditCartItemData_editCartItem_items_modifiers_product_group.serializer,
      this) as Map<String, dynamic>);
  static GEditCartItemData_editCartItem_items_modifiers_product_group? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GEditCartItemData_editCartItem_items_modifiers_product_group
              .serializer,
          json);
}

abstract class GEditCartItemData_editCartItem_items_modifiers_product_category
    implements
        Built<GEditCartItemData_editCartItem_items_modifiers_product_category,
            GEditCartItemData_editCartItem_items_modifiers_product_categoryBuilder>,
        _i2.GCartFragment_items_modifiers_product_category,
        _i6.GCartItemFragment_modifiers_product_category,
        _i11.GCartItemModifierFragment_product_category,
        _i7.GProductFragment_category {
  GEditCartItemData_editCartItem_items_modifiers_product_category._();

  factory GEditCartItemData_editCartItem_items_modifiers_product_category(
          [Function(
                  GEditCartItemData_editCartItem_items_modifiers_product_categoryBuilder
                      b)
              updates]) =
      _$GEditCartItemData_editCartItem_items_modifiers_product_category;

  static void _initializeBuilder(
          GEditCartItemData_editCartItem_items_modifiers_product_categoryBuilder
              b) =>
      b..G__typename = 'ProductCategory';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  static Serializer<
          GEditCartItemData_editCartItem_items_modifiers_product_category>
      get serializer =>
          _$gEditCartItemDataEditCartItemItemsModifiersProductCategorySerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GEditCartItemData_editCartItem_items_modifiers_product_category
          .serializer,
      this) as Map<String, dynamic>);
  static GEditCartItemData_editCartItem_items_modifiers_product_category?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GEditCartItemData_editCartItem_items_modifiers_product_category
              .serializer,
          json);
}

abstract class GEditCartItemData_editCartItem_items_modifiers_product_products_sizes
    implements
        Built<
            GEditCartItemData_editCartItem_items_modifiers_product_products_sizes,
            GEditCartItemData_editCartItem_items_modifiers_product_products_sizesBuilder>,
        _i2.GCartFragment_items_modifiers_product_products_sizes,
        _i6.GCartItemFragment_modifiers_product_products_sizes,
        _i11.GCartItemModifierFragment_product_products_sizes,
        _i7.GProductFragment_products_sizes,
        _i8.GProductsSizesFragment {
  GEditCartItemData_editCartItem_items_modifiers_product_products_sizes._();

  factory GEditCartItemData_editCartItem_items_modifiers_product_products_sizes(
          [Function(
                  GEditCartItemData_editCartItem_items_modifiers_product_products_sizesBuilder
                      b)
              updates]) =
      _$GEditCartItemData_editCartItem_items_modifiers_product_products_sizes;

  static void _initializeBuilder(
          GEditCartItemData_editCartItem_items_modifiers_product_products_sizesBuilder
              b) =>
      b..G__typename = 'Product';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  String? get additionalInfo;
  String? get description;
  GEditCartItemData_editCartItem_items_modifiers_product_products_sizes_parentGroup?
      get parentGroup;
  BuiltList<
          GEditCartItemData_editCartItem_items_modifiers_product_products_sizes_images>?
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
          GEditCartItemData_editCartItem_items_modifiers_product_products_sizes_modifiers>?
      get modifiers;
  BuiltList<
          GEditCartItemData_editCartItem_items_modifiers_product_products_sizes_groupModifiers>?
      get groupModifiers;
  static Serializer<
          GEditCartItemData_editCartItem_items_modifiers_product_products_sizes>
      get serializer =>
          _$gEditCartItemDataEditCartItemItemsModifiersProductProductsSizesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GEditCartItemData_editCartItem_items_modifiers_product_products_sizes
          .serializer,
      this) as Map<String, dynamic>);
  static GEditCartItemData_editCartItem_items_modifiers_product_products_sizes?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GEditCartItemData_editCartItem_items_modifiers_product_products_sizes
              .serializer,
          json);
}

abstract class GEditCartItemData_editCartItem_items_modifiers_product_products_sizes_parentGroup
    implements
        Built<
            GEditCartItemData_editCartItem_items_modifiers_product_products_sizes_parentGroup,
            GEditCartItemData_editCartItem_items_modifiers_product_products_sizes_parentGroupBuilder>,
        _i2.GCartFragment_items_modifiers_product_products_sizes_parentGroup,
        _i6.GCartItemFragment_modifiers_product_products_sizes_parentGroup,
        _i11.GCartItemModifierFragment_product_products_sizes_parentGroup,
        _i7.GProductFragment_products_sizes_parentGroup,
        _i8.GProductsSizesFragment_parentGroup {
  GEditCartItemData_editCartItem_items_modifiers_product_products_sizes_parentGroup._();

  factory GEditCartItemData_editCartItem_items_modifiers_product_products_sizes_parentGroup(
          [Function(
                  GEditCartItemData_editCartItem_items_modifiers_product_products_sizes_parentGroupBuilder
                      b)
              updates]) =
      _$GEditCartItemData_editCartItem_items_modifiers_product_products_sizes_parentGroup;

  static void _initializeBuilder(
          GEditCartItemData_editCartItem_items_modifiers_product_products_sizes_parentGroupBuilder
              b) =>
      b..G__typename = 'Group';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  static Serializer<
          GEditCartItemData_editCartItem_items_modifiers_product_products_sizes_parentGroup>
      get serializer =>
          _$gEditCartItemDataEditCartItemItemsModifiersProductProductsSizesParentGroupSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GEditCartItemData_editCartItem_items_modifiers_product_products_sizes_parentGroup
          .serializer,
      this) as Map<String, dynamic>);
  static GEditCartItemData_editCartItem_items_modifiers_product_products_sizes_parentGroup?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GEditCartItemData_editCartItem_items_modifiers_product_products_sizes_parentGroup
              .serializer,
          json);
}

abstract class GEditCartItemData_editCartItem_items_modifiers_product_products_sizes_images
    implements
        Built<
            GEditCartItemData_editCartItem_items_modifiers_product_products_sizes_images,
            GEditCartItemData_editCartItem_items_modifiers_product_products_sizes_imagesBuilder>,
        _i2.GCartFragment_items_modifiers_product_products_sizes_images,
        _i6.GCartItemFragment_modifiers_product_products_sizes_images,
        _i11.GCartItemModifierFragment_product_products_sizes_images,
        _i7.GProductFragment_products_sizes_images,
        _i8.GProductsSizesFragment_images {
  GEditCartItemData_editCartItem_items_modifiers_product_products_sizes_images._();

  factory GEditCartItemData_editCartItem_items_modifiers_product_products_sizes_images(
          [Function(
                  GEditCartItemData_editCartItem_items_modifiers_product_products_sizes_imagesBuilder
                      b)
              updates]) =
      _$GEditCartItemData_editCartItem_items_modifiers_product_products_sizes_images;

  static void _initializeBuilder(
          GEditCartItemData_editCartItem_items_modifiers_product_products_sizes_imagesBuilder
              b) =>
      b..G__typename = 'ProductImage';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get imageId;
  String? get imageUrl;
  static Serializer<
          GEditCartItemData_editCartItem_items_modifiers_product_products_sizes_images>
      get serializer =>
          _$gEditCartItemDataEditCartItemItemsModifiersProductProductsSizesImagesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GEditCartItemData_editCartItem_items_modifiers_product_products_sizes_images
          .serializer,
      this) as Map<String, dynamic>);
  static GEditCartItemData_editCartItem_items_modifiers_product_products_sizes_images?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GEditCartItemData_editCartItem_items_modifiers_product_products_sizes_images
              .serializer,
          json);
}

abstract class GEditCartItemData_editCartItem_items_modifiers_product_products_sizes_modifiers
    implements
        Built<
            GEditCartItemData_editCartItem_items_modifiers_product_products_sizes_modifiers,
            GEditCartItemData_editCartItem_items_modifiers_product_products_sizes_modifiersBuilder>,
        _i2.GCartFragment_items_modifiers_product_products_sizes_modifiers,
        _i6.GCartItemFragment_modifiers_product_products_sizes_modifiers,
        _i11.GCartItemModifierFragment_product_products_sizes_modifiers,
        _i7.GProductFragment_products_sizes_modifiers,
        _i8.GProductsSizesFragment_modifiers,
        _i9.GModificatorFragment {
  GEditCartItemData_editCartItem_items_modifiers_product_products_sizes_modifiers._();

  factory GEditCartItemData_editCartItem_items_modifiers_product_products_sizes_modifiers(
          [Function(
                  GEditCartItemData_editCartItem_items_modifiers_product_products_sizes_modifiersBuilder
                      b)
              updates]) =
      _$GEditCartItemData_editCartItem_items_modifiers_product_products_sizes_modifiers;

  static void _initializeBuilder(
          GEditCartItemData_editCartItem_items_modifiers_product_products_sizes_modifiersBuilder
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
          GEditCartItemData_editCartItem_items_modifiers_product_products_sizes_modifiers>
      get serializer =>
          _$gEditCartItemDataEditCartItemItemsModifiersProductProductsSizesModifiersSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GEditCartItemData_editCartItem_items_modifiers_product_products_sizes_modifiers
          .serializer,
      this) as Map<String, dynamic>);
  static GEditCartItemData_editCartItem_items_modifiers_product_products_sizes_modifiers?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GEditCartItemData_editCartItem_items_modifiers_product_products_sizes_modifiers
              .serializer,
          json);
}

abstract class GEditCartItemData_editCartItem_items_modifiers_product_products_sizes_groupModifiers
    implements
        Built<
            GEditCartItemData_editCartItem_items_modifiers_product_products_sizes_groupModifiers,
            GEditCartItemData_editCartItem_items_modifiers_product_products_sizes_groupModifiersBuilder>,
        _i2.GCartFragment_items_modifiers_product_products_sizes_groupModifiers,
        _i6.GCartItemFragment_modifiers_product_products_sizes_groupModifiers,
        _i11.GCartItemModifierFragment_product_products_sizes_groupModifiers,
        _i7.GProductFragment_products_sizes_groupModifiers,
        _i8.GProductsSizesFragment_groupModifiers,
        _i10.GGroupModificatorFragment {
  GEditCartItemData_editCartItem_items_modifiers_product_products_sizes_groupModifiers._();

  factory GEditCartItemData_editCartItem_items_modifiers_product_products_sizes_groupModifiers(
          [Function(
                  GEditCartItemData_editCartItem_items_modifiers_product_products_sizes_groupModifiersBuilder
                      b)
              updates]) =
      _$GEditCartItemData_editCartItem_items_modifiers_product_products_sizes_groupModifiers;

  static void _initializeBuilder(
          GEditCartItemData_editCartItem_items_modifiers_product_products_sizes_groupModifiersBuilder
              b) =>
      b..G__typename = 'GroupModificator';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get maxAmount;
  int? get minAmount;
  String get modifierId;
  bool? get required;
  BuiltList<
          GEditCartItemData_editCartItem_items_modifiers_product_products_sizes_groupModifiers_childModifiers>?
      get childModifiers;
  bool? get childModifiersHaveMinMaxRestrictions;
  static Serializer<
          GEditCartItemData_editCartItem_items_modifiers_product_products_sizes_groupModifiers>
      get serializer =>
          _$gEditCartItemDataEditCartItemItemsModifiersProductProductsSizesGroupModifiersSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GEditCartItemData_editCartItem_items_modifiers_product_products_sizes_groupModifiers
          .serializer,
      this) as Map<String, dynamic>);
  static GEditCartItemData_editCartItem_items_modifiers_product_products_sizes_groupModifiers?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GEditCartItemData_editCartItem_items_modifiers_product_products_sizes_groupModifiers
              .serializer,
          json);
}

abstract class GEditCartItemData_editCartItem_items_modifiers_product_products_sizes_groupModifiers_childModifiers
    implements
        Built<
            GEditCartItemData_editCartItem_items_modifiers_product_products_sizes_groupModifiers_childModifiers,
            GEditCartItemData_editCartItem_items_modifiers_product_products_sizes_groupModifiers_childModifiersBuilder>,
        _i2.GCartFragment_items_modifiers_product_products_sizes_groupModifiers_childModifiers,
        _i6.GCartItemFragment_modifiers_product_products_sizes_groupModifiers_childModifiers,
        _i11.GCartItemModifierFragment_product_products_sizes_groupModifiers_childModifiers,
        _i7.GProductFragment_products_sizes_groupModifiers_childModifiers,
        _i8.GProductsSizesFragment_groupModifiers_childModifiers,
        _i10.GGroupModificatorFragment_childModifiers,
        _i9.GModificatorFragment {
  GEditCartItemData_editCartItem_items_modifiers_product_products_sizes_groupModifiers_childModifiers._();

  factory GEditCartItemData_editCartItem_items_modifiers_product_products_sizes_groupModifiers_childModifiers(
          [Function(
                  GEditCartItemData_editCartItem_items_modifiers_product_products_sizes_groupModifiers_childModifiersBuilder
                      b)
              updates]) =
      _$GEditCartItemData_editCartItem_items_modifiers_product_products_sizes_groupModifiers_childModifiers;

  static void _initializeBuilder(
          GEditCartItemData_editCartItem_items_modifiers_product_products_sizes_groupModifiers_childModifiersBuilder
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
          GEditCartItemData_editCartItem_items_modifiers_product_products_sizes_groupModifiers_childModifiers>
      get serializer =>
          _$gEditCartItemDataEditCartItemItemsModifiersProductProductsSizesGroupModifiersChildModifiersSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GEditCartItemData_editCartItem_items_modifiers_product_products_sizes_groupModifiers_childModifiers
          .serializer,
      this) as Map<String, dynamic>);
  static GEditCartItemData_editCartItem_items_modifiers_product_products_sizes_groupModifiers_childModifiers?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GEditCartItemData_editCartItem_items_modifiers_product_products_sizes_groupModifiers_childModifiers
              .serializer,
          json);
}

abstract class GEditCartItemData_editCartItem_items_modifiers_product_images
    implements
        Built<GEditCartItemData_editCartItem_items_modifiers_product_images,
            GEditCartItemData_editCartItem_items_modifiers_product_imagesBuilder>,
        _i2.GCartFragment_items_modifiers_product_images,
        _i6.GCartItemFragment_modifiers_product_images,
        _i11.GCartItemModifierFragment_product_images,
        _i7.GProductFragment_images {
  GEditCartItemData_editCartItem_items_modifiers_product_images._();

  factory GEditCartItemData_editCartItem_items_modifiers_product_images(
          [Function(
                  GEditCartItemData_editCartItem_items_modifiers_product_imagesBuilder
                      b)
              updates]) =
      _$GEditCartItemData_editCartItem_items_modifiers_product_images;

  static void _initializeBuilder(
          GEditCartItemData_editCartItem_items_modifiers_product_imagesBuilder
              b) =>
      b..G__typename = 'ProductImage';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get imageId;
  String? get imageUrl;
  static Serializer<
          GEditCartItemData_editCartItem_items_modifiers_product_images>
      get serializer =>
          _$gEditCartItemDataEditCartItemItemsModifiersProductImagesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GEditCartItemData_editCartItem_items_modifiers_product_images.serializer,
      this) as Map<String, dynamic>);
  static GEditCartItemData_editCartItem_items_modifiers_product_images?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GEditCartItemData_editCartItem_items_modifiers_product_images
              .serializer,
          json);
}

abstract class GEditCartItemData_editCartItem_items_modifiers_product_modifiers
    implements
        Built<GEditCartItemData_editCartItem_items_modifiers_product_modifiers,
            GEditCartItemData_editCartItem_items_modifiers_product_modifiersBuilder>,
        _i2.GCartFragment_items_modifiers_product_modifiers,
        _i6.GCartItemFragment_modifiers_product_modifiers,
        _i11.GCartItemModifierFragment_product_modifiers,
        _i7.GProductFragment_modifiers,
        _i9.GModificatorFragment {
  GEditCartItemData_editCartItem_items_modifiers_product_modifiers._();

  factory GEditCartItemData_editCartItem_items_modifiers_product_modifiers(
          [Function(
                  GEditCartItemData_editCartItem_items_modifiers_product_modifiersBuilder
                      b)
              updates]) =
      _$GEditCartItemData_editCartItem_items_modifiers_product_modifiers;

  static void _initializeBuilder(
          GEditCartItemData_editCartItem_items_modifiers_product_modifiersBuilder
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
          GEditCartItemData_editCartItem_items_modifiers_product_modifiers>
      get serializer =>
          _$gEditCartItemDataEditCartItemItemsModifiersProductModifiersSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GEditCartItemData_editCartItem_items_modifiers_product_modifiers
          .serializer,
      this) as Map<String, dynamic>);
  static GEditCartItemData_editCartItem_items_modifiers_product_modifiers?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GEditCartItemData_editCartItem_items_modifiers_product_modifiers
              .serializer,
          json);
}

abstract class GEditCartItemData_editCartItem_items_modifiers_product_groupModifiers
    implements
        Built<
            GEditCartItemData_editCartItem_items_modifiers_product_groupModifiers,
            GEditCartItemData_editCartItem_items_modifiers_product_groupModifiersBuilder>,
        _i2.GCartFragment_items_modifiers_product_groupModifiers,
        _i6.GCartItemFragment_modifiers_product_groupModifiers,
        _i11.GCartItemModifierFragment_product_groupModifiers,
        _i7.GProductFragment_groupModifiers,
        _i10.GGroupModificatorFragment {
  GEditCartItemData_editCartItem_items_modifiers_product_groupModifiers._();

  factory GEditCartItemData_editCartItem_items_modifiers_product_groupModifiers(
          [Function(
                  GEditCartItemData_editCartItem_items_modifiers_product_groupModifiersBuilder
                      b)
              updates]) =
      _$GEditCartItemData_editCartItem_items_modifiers_product_groupModifiers;

  static void _initializeBuilder(
          GEditCartItemData_editCartItem_items_modifiers_product_groupModifiersBuilder
              b) =>
      b..G__typename = 'GroupModificator';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get maxAmount;
  int? get minAmount;
  String get modifierId;
  bool? get required;
  BuiltList<
          GEditCartItemData_editCartItem_items_modifiers_product_groupModifiers_childModifiers>?
      get childModifiers;
  bool? get childModifiersHaveMinMaxRestrictions;
  static Serializer<
          GEditCartItemData_editCartItem_items_modifiers_product_groupModifiers>
      get serializer =>
          _$gEditCartItemDataEditCartItemItemsModifiersProductGroupModifiersSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GEditCartItemData_editCartItem_items_modifiers_product_groupModifiers
          .serializer,
      this) as Map<String, dynamic>);
  static GEditCartItemData_editCartItem_items_modifiers_product_groupModifiers?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GEditCartItemData_editCartItem_items_modifiers_product_groupModifiers
              .serializer,
          json);
}

abstract class GEditCartItemData_editCartItem_items_modifiers_product_groupModifiers_childModifiers
    implements
        Built<
            GEditCartItemData_editCartItem_items_modifiers_product_groupModifiers_childModifiers,
            GEditCartItemData_editCartItem_items_modifiers_product_groupModifiers_childModifiersBuilder>,
        _i2.GCartFragment_items_modifiers_product_groupModifiers_childModifiers,
        _i6.GCartItemFragment_modifiers_product_groupModifiers_childModifiers,
        _i11.GCartItemModifierFragment_product_groupModifiers_childModifiers,
        _i7.GProductFragment_groupModifiers_childModifiers,
        _i10.GGroupModificatorFragment_childModifiers,
        _i9.GModificatorFragment {
  GEditCartItemData_editCartItem_items_modifiers_product_groupModifiers_childModifiers._();

  factory GEditCartItemData_editCartItem_items_modifiers_product_groupModifiers_childModifiers(
          [Function(
                  GEditCartItemData_editCartItem_items_modifiers_product_groupModifiers_childModifiersBuilder
                      b)
              updates]) =
      _$GEditCartItemData_editCartItem_items_modifiers_product_groupModifiers_childModifiers;

  static void _initializeBuilder(
          GEditCartItemData_editCartItem_items_modifiers_product_groupModifiers_childModifiersBuilder
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
          GEditCartItemData_editCartItem_items_modifiers_product_groupModifiers_childModifiers>
      get serializer =>
          _$gEditCartItemDataEditCartItemItemsModifiersProductGroupModifiersChildModifiersSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GEditCartItemData_editCartItem_items_modifiers_product_groupModifiers_childModifiers
          .serializer,
      this) as Map<String, dynamic>);
  static GEditCartItemData_editCartItem_items_modifiers_product_groupModifiers_childModifiers?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GEditCartItemData_editCartItem_items_modifiers_product_groupModifiers_childModifiers
              .serializer,
          json);
}

abstract class GEditCartItemData_editCartItem_order_info
    implements
        Built<GEditCartItemData_editCartItem_order_info,
            GEditCartItemData_editCartItem_order_infoBuilder>,
        _i2.GCartFragment_order_info,
        _i12.GOrderInfoFragment {
  GEditCartItemData_editCartItem_order_info._();

  factory GEditCartItemData_editCartItem_order_info(
      [Function(GEditCartItemData_editCartItem_order_infoBuilder b)
          updates]) = _$GEditCartItemData_editCartItem_order_info;

  static void _initializeBuilder(
          GEditCartItemData_editCartItem_order_infoBuilder b) =>
      b..G__typename = 'OrderInfo';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get order_id;
  String? get delivery_cancel_cause;
  String? get delivery_cancel_comment;
  _i3.GDateTime? get delivery_date;
  _i3.GDateTime? get actual_time;
  String? get bill_time;
  String? get cancel_time;
  String? get confirm_time;
  _i3.GDateTime? get created_time;
  _i3.GDateTime? get print_time;
  _i3.GDateTime? get send_time;
  int? get persons_count;
  static Serializer<GEditCartItemData_editCartItem_order_info> get serializer =>
      _$gEditCartItemDataEditCartItemOrderInfoSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GEditCartItemData_editCartItem_order_info.serializer, this)
      as Map<String, dynamic>);
  static GEditCartItemData_editCartItem_order_info? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GEditCartItemData_editCartItem_order_info.serializer, json);
}

abstract class GEditCartItemData_editCartItem_restaurant
    implements
        Built<GEditCartItemData_editCartItem_restaurant,
            GEditCartItemData_editCartItem_restaurantBuilder>,
        _i2.GCartFragment_restaurant,
        _i13.GRestaurantFragment {
  GEditCartItemData_editCartItem_restaurant._();

  factory GEditCartItemData_editCartItem_restaurant(
      [Function(GEditCartItemData_editCartItem_restaurantBuilder b)
          updates]) = _$GEditCartItemData_editCartItem_restaurant;

  static void _initializeBuilder(
          GEditCartItemData_editCartItem_restaurantBuilder b) =>
      b..G__typename = 'Restaurant';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  String? get address;
  GEditCartItemData_editCartItem_restaurant_terminal_kitchen?
      get terminal_kitchen;
  GEditCartItemData_editCartItem_restaurant_terminal_delivery?
      get terminal_delivery;
  String? get latitude;
  String? get longitude;
  String? get open_at;
  String? get close_at;
  bool? get is_open;
  String? get delivery_open_at;
  String? get delivery_close_at;
  bool? get is_delivery_open;
  GEditCartItemData_editCartItem_restaurant_city? get city;
  static Serializer<GEditCartItemData_editCartItem_restaurant> get serializer =>
      _$gEditCartItemDataEditCartItemRestaurantSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GEditCartItemData_editCartItem_restaurant.serializer, this)
      as Map<String, dynamic>);
  static GEditCartItemData_editCartItem_restaurant? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GEditCartItemData_editCartItem_restaurant.serializer, json);
}

abstract class GEditCartItemData_editCartItem_restaurant_terminal_kitchen
    implements
        Built<GEditCartItemData_editCartItem_restaurant_terminal_kitchen,
            GEditCartItemData_editCartItem_restaurant_terminal_kitchenBuilder>,
        _i2.GCartFragment_restaurant_terminal_kitchen,
        _i13.GRestaurantFragment_terminal_kitchen,
        _i14.GTerminalFragment {
  GEditCartItemData_editCartItem_restaurant_terminal_kitchen._();

  factory GEditCartItemData_editCartItem_restaurant_terminal_kitchen(
      [Function(
              GEditCartItemData_editCartItem_restaurant_terminal_kitchenBuilder
                  b)
          updates]) = _$GEditCartItemData_editCartItem_restaurant_terminal_kitchen;

  static void _initializeBuilder(
          GEditCartItemData_editCartItem_restaurant_terminal_kitchenBuilder
              b) =>
      b..G__typename = 'Terminal';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  static Serializer<GEditCartItemData_editCartItem_restaurant_terminal_kitchen>
      get serializer =>
          _$gEditCartItemDataEditCartItemRestaurantTerminalKitchenSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GEditCartItemData_editCartItem_restaurant_terminal_kitchen.serializer,
      this) as Map<String, dynamic>);
  static GEditCartItemData_editCartItem_restaurant_terminal_kitchen? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GEditCartItemData_editCartItem_restaurant_terminal_kitchen.serializer,
          json);
}

abstract class GEditCartItemData_editCartItem_restaurant_terminal_delivery
    implements
        Built<GEditCartItemData_editCartItem_restaurant_terminal_delivery,
            GEditCartItemData_editCartItem_restaurant_terminal_deliveryBuilder>,
        _i2.GCartFragment_restaurant_terminal_delivery,
        _i13.GRestaurantFragment_terminal_delivery,
        _i14.GTerminalFragment {
  GEditCartItemData_editCartItem_restaurant_terminal_delivery._();

  factory GEditCartItemData_editCartItem_restaurant_terminal_delivery(
      [Function(
              GEditCartItemData_editCartItem_restaurant_terminal_deliveryBuilder
                  b)
          updates]) = _$GEditCartItemData_editCartItem_restaurant_terminal_delivery;

  static void _initializeBuilder(
          GEditCartItemData_editCartItem_restaurant_terminal_deliveryBuilder
              b) =>
      b..G__typename = 'Terminal';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  static Serializer<GEditCartItemData_editCartItem_restaurant_terminal_delivery>
      get serializer =>
          _$gEditCartItemDataEditCartItemRestaurantTerminalDeliverySerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GEditCartItemData_editCartItem_restaurant_terminal_delivery.serializer,
      this) as Map<String, dynamic>);
  static GEditCartItemData_editCartItem_restaurant_terminal_delivery? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GEditCartItemData_editCartItem_restaurant_terminal_delivery
              .serializer,
          json);
}

abstract class GEditCartItemData_editCartItem_restaurant_city
    implements
        Built<GEditCartItemData_editCartItem_restaurant_city,
            GEditCartItemData_editCartItem_restaurant_cityBuilder>,
        _i2.GCartFragment_restaurant_city,
        _i13.GRestaurantFragment_city,
        _i5.GCityFragment {
  GEditCartItemData_editCartItem_restaurant_city._();

  factory GEditCartItemData_editCartItem_restaurant_city(
      [Function(GEditCartItemData_editCartItem_restaurant_cityBuilder b)
          updates]) = _$GEditCartItemData_editCartItem_restaurant_city;

  static void _initializeBuilder(
          GEditCartItemData_editCartItem_restaurant_cityBuilder b) =>
      b..G__typename = 'City';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  String? get prefix;
  String? get postal_code;
  String? get city_type;
  bool? get available;
  static Serializer<GEditCartItemData_editCartItem_restaurant_city>
      get serializer => _$gEditCartItemDataEditCartItemRestaurantCitySerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GEditCartItemData_editCartItem_restaurant_city.serializer, this)
      as Map<String, dynamic>);
  static GEditCartItemData_editCartItem_restaurant_city? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GEditCartItemData_editCartItem_restaurant_city.serializer, json);
}
