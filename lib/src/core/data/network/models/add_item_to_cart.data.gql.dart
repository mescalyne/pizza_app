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

part 'add_item_to_cart.data.gql.g.dart';

abstract class GAddItemToCartData
    implements Built<GAddItemToCartData, GAddItemToCartDataBuilder> {
  GAddItemToCartData._();

  factory GAddItemToCartData([Function(GAddItemToCartDataBuilder b) updates]) =
      _$GAddItemToCartData;

  static void _initializeBuilder(GAddItemToCartDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GAddItemToCartData_addItemToCart get addItemToCart;
  static Serializer<GAddItemToCartData> get serializer =>
      _$gAddItemToCartDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GAddItemToCartData.serializer, this)
          as Map<String, dynamic>);
  static GAddItemToCartData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GAddItemToCartData.serializer, json);
}

abstract class GAddItemToCartData_addItemToCart
    implements
        Built<GAddItemToCartData_addItemToCart,
            GAddItemToCartData_addItemToCartBuilder>,
        _i2.GCartFragment {
  GAddItemToCartData_addItemToCart._();

  factory GAddItemToCartData_addItemToCart(
          [Function(GAddItemToCartData_addItemToCartBuilder b) updates]) =
      _$GAddItemToCartData_addItemToCart;

  static void _initializeBuilder(GAddItemToCartData_addItemToCartBuilder b) =>
      b..G__typename = 'Cart';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get organization;
  String? get terminal_id;
  GAddItemToCartData_addItemToCart_delivery_address? get delivery_address;
  bool get is_self_service;
  _i3.GCartOrderStatus get cart_order_status;
  _i3.GCartPaymentStatus get cart_payment_status;
  BuiltList<GAddItemToCartData_addItemToCart_items>? get items;
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
  GAddItemToCartData_addItemToCart_order_info? get order_info;
  String? get comment;
  GAddItemToCartData_addItemToCart_restaurant? get restaurant;
  static Serializer<GAddItemToCartData_addItemToCart> get serializer =>
      _$gAddItemToCartDataAddItemToCartSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GAddItemToCartData_addItemToCart.serializer, this)
      as Map<String, dynamic>);
  static GAddItemToCartData_addItemToCart? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GAddItemToCartData_addItemToCart.serializer, json);
}

abstract class GAddItemToCartData_addItemToCart_delivery_address
    implements
        Built<GAddItemToCartData_addItemToCart_delivery_address,
            GAddItemToCartData_addItemToCart_delivery_addressBuilder>,
        _i2.GCartFragment_delivery_address,
        _i4.GDeliveryAddressFragment {
  GAddItemToCartData_addItemToCart_delivery_address._();

  factory GAddItemToCartData_addItemToCart_delivery_address(
      [Function(GAddItemToCartData_addItemToCart_delivery_addressBuilder b)
          updates]) = _$GAddItemToCartData_addItemToCart_delivery_address;

  static void _initializeBuilder(
          GAddItemToCartData_addItemToCart_delivery_addressBuilder b) =>
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
  GAddItemToCartData_addItemToCart_delivery_address_city? get city;
  bool? get address_in_zone;
  static Serializer<GAddItemToCartData_addItemToCart_delivery_address>
      get serializer =>
          _$gAddItemToCartDataAddItemToCartDeliveryAddressSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GAddItemToCartData_addItemToCart_delivery_address.serializer, this)
      as Map<String, dynamic>);
  static GAddItemToCartData_addItemToCart_delivery_address? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GAddItemToCartData_addItemToCart_delivery_address.serializer, json);
}

abstract class GAddItemToCartData_addItemToCart_delivery_address_city
    implements
        Built<GAddItemToCartData_addItemToCart_delivery_address_city,
            GAddItemToCartData_addItemToCart_delivery_address_cityBuilder>,
        _i2.GCartFragment_delivery_address_city,
        _i4.GDeliveryAddressFragment_city,
        _i5.GCityFragment {
  GAddItemToCartData_addItemToCart_delivery_address_city._();

  factory GAddItemToCartData_addItemToCart_delivery_address_city(
      [Function(GAddItemToCartData_addItemToCart_delivery_address_cityBuilder b)
          updates]) = _$GAddItemToCartData_addItemToCart_delivery_address_city;

  static void _initializeBuilder(
          GAddItemToCartData_addItemToCart_delivery_address_cityBuilder b) =>
      b..G__typename = 'City';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  String? get prefix;
  String? get postal_code;
  String? get city_type;
  bool? get available;
  static Serializer<GAddItemToCartData_addItemToCart_delivery_address_city>
      get serializer =>
          _$gAddItemToCartDataAddItemToCartDeliveryAddressCitySerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GAddItemToCartData_addItemToCart_delivery_address_city.serializer,
      this) as Map<String, dynamic>);
  static GAddItemToCartData_addItemToCart_delivery_address_city? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GAddItemToCartData_addItemToCart_delivery_address_city.serializer,
          json);
}

abstract class GAddItemToCartData_addItemToCart_items
    implements
        Built<GAddItemToCartData_addItemToCart_items,
            GAddItemToCartData_addItemToCart_itemsBuilder>,
        _i2.GCartFragment_items,
        _i6.GCartItemFragment {
  GAddItemToCartData_addItemToCart_items._();

  factory GAddItemToCartData_addItemToCart_items(
          [Function(GAddItemToCartData_addItemToCart_itemsBuilder b) updates]) =
      _$GAddItemToCartData_addItemToCart_items;

  static void _initializeBuilder(
          GAddItemToCartData_addItemToCart_itemsBuilder b) =>
      b..G__typename = 'CartItem';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  String get product_id;
  GAddItemToCartData_addItemToCart_items_product get product;
  String get name;
  int get amount;
  double? get total;
  double? get discount_sum;
  double? get sum;
  String? get code;
  BuiltList<GAddItemToCartData_addItemToCart_items_modifiers>? get modifiers;
  static Serializer<GAddItemToCartData_addItemToCart_items> get serializer =>
      _$gAddItemToCartDataAddItemToCartItemsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GAddItemToCartData_addItemToCart_items.serializer, this)
      as Map<String, dynamic>);
  static GAddItemToCartData_addItemToCart_items? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GAddItemToCartData_addItemToCart_items.serializer, json);
}

abstract class GAddItemToCartData_addItemToCart_items_product
    implements
        Built<GAddItemToCartData_addItemToCart_items_product,
            GAddItemToCartData_addItemToCart_items_productBuilder>,
        _i2.GCartFragment_items_product,
        _i6.GCartItemFragment_product,
        _i7.GProductFragment {
  GAddItemToCartData_addItemToCart_items_product._();

  factory GAddItemToCartData_addItemToCart_items_product(
      [Function(GAddItemToCartData_addItemToCart_items_productBuilder b)
          updates]) = _$GAddItemToCartData_addItemToCart_items_product;

  static void _initializeBuilder(
          GAddItemToCartData_addItemToCart_items_productBuilder b) =>
      b..G__typename = 'Product';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get parentGroupId;
  String? get groupId;
  GAddItemToCartData_addItemToCart_items_product_parentGroup? get parentGroup;
  GAddItemToCartData_addItemToCart_items_product_group? get group;
  String? get productCategoryId;
  GAddItemToCartData_addItemToCart_items_product_category? get category;
  BuiltList<GAddItemToCartData_addItemToCart_items_product_products_sizes>?
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
  BuiltList<GAddItemToCartData_addItemToCart_items_product_images>? get images;
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
  BuiltList<GAddItemToCartData_addItemToCart_items_product_modifiers>?
      get modifiers;
  BuiltList<GAddItemToCartData_addItemToCart_items_product_groupModifiers>?
      get groupModifiers;
  static Serializer<GAddItemToCartData_addItemToCart_items_product>
      get serializer => _$gAddItemToCartDataAddItemToCartItemsProductSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GAddItemToCartData_addItemToCart_items_product.serializer, this)
      as Map<String, dynamic>);
  static GAddItemToCartData_addItemToCart_items_product? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GAddItemToCartData_addItemToCart_items_product.serializer, json);
}

abstract class GAddItemToCartData_addItemToCart_items_product_parentGroup
    implements
        Built<GAddItemToCartData_addItemToCart_items_product_parentGroup,
            GAddItemToCartData_addItemToCart_items_product_parentGroupBuilder>,
        _i2.GCartFragment_items_product_parentGroup,
        _i6.GCartItemFragment_product_parentGroup,
        _i7.GProductFragment_parentGroup {
  GAddItemToCartData_addItemToCart_items_product_parentGroup._();

  factory GAddItemToCartData_addItemToCart_items_product_parentGroup(
      [Function(
              GAddItemToCartData_addItemToCart_items_product_parentGroupBuilder
                  b)
          updates]) = _$GAddItemToCartData_addItemToCart_items_product_parentGroup;

  static void _initializeBuilder(
          GAddItemToCartData_addItemToCart_items_product_parentGroupBuilder
              b) =>
      b..G__typename = 'Group';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get parentGroup;
  String? get additionalInfo;
  String get name;
  String? get description;
  static Serializer<GAddItemToCartData_addItemToCart_items_product_parentGroup>
      get serializer =>
          _$gAddItemToCartDataAddItemToCartItemsProductParentGroupSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GAddItemToCartData_addItemToCart_items_product_parentGroup.serializer,
      this) as Map<String, dynamic>);
  static GAddItemToCartData_addItemToCart_items_product_parentGroup? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GAddItemToCartData_addItemToCart_items_product_parentGroup.serializer,
          json);
}

abstract class GAddItemToCartData_addItemToCart_items_product_group
    implements
        Built<GAddItemToCartData_addItemToCart_items_product_group,
            GAddItemToCartData_addItemToCart_items_product_groupBuilder>,
        _i2.GCartFragment_items_product_group,
        _i6.GCartItemFragment_product_group,
        _i7.GProductFragment_group {
  GAddItemToCartData_addItemToCart_items_product_group._();

  factory GAddItemToCartData_addItemToCart_items_product_group(
      [Function(GAddItemToCartData_addItemToCart_items_product_groupBuilder b)
          updates]) = _$GAddItemToCartData_addItemToCart_items_product_group;

  static void _initializeBuilder(
          GAddItemToCartData_addItemToCart_items_product_groupBuilder b) =>
      b..G__typename = 'Group';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get parentGroup;
  String? get additionalInfo;
  String get name;
  String? get description;
  static Serializer<GAddItemToCartData_addItemToCart_items_product_group>
      get serializer =>
          _$gAddItemToCartDataAddItemToCartItemsProductGroupSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GAddItemToCartData_addItemToCart_items_product_group.serializer, this)
      as Map<String, dynamic>);
  static GAddItemToCartData_addItemToCart_items_product_group? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GAddItemToCartData_addItemToCart_items_product_group.serializer,
          json);
}

abstract class GAddItemToCartData_addItemToCart_items_product_category
    implements
        Built<GAddItemToCartData_addItemToCart_items_product_category,
            GAddItemToCartData_addItemToCart_items_product_categoryBuilder>,
        _i2.GCartFragment_items_product_category,
        _i6.GCartItemFragment_product_category,
        _i7.GProductFragment_category {
  GAddItemToCartData_addItemToCart_items_product_category._();

  factory GAddItemToCartData_addItemToCart_items_product_category(
      [Function(
              GAddItemToCartData_addItemToCart_items_product_categoryBuilder b)
          updates]) = _$GAddItemToCartData_addItemToCart_items_product_category;

  static void _initializeBuilder(
          GAddItemToCartData_addItemToCart_items_product_categoryBuilder b) =>
      b..G__typename = 'ProductCategory';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  static Serializer<GAddItemToCartData_addItemToCart_items_product_category>
      get serializer =>
          _$gAddItemToCartDataAddItemToCartItemsProductCategorySerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GAddItemToCartData_addItemToCart_items_product_category.serializer,
      this) as Map<String, dynamic>);
  static GAddItemToCartData_addItemToCart_items_product_category? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GAddItemToCartData_addItemToCart_items_product_category.serializer,
          json);
}

abstract class GAddItemToCartData_addItemToCart_items_product_products_sizes
    implements
        Built<GAddItemToCartData_addItemToCart_items_product_products_sizes,
            GAddItemToCartData_addItemToCart_items_product_products_sizesBuilder>,
        _i2.GCartFragment_items_product_products_sizes,
        _i6.GCartItemFragment_product_products_sizes,
        _i7.GProductFragment_products_sizes,
        _i8.GProductsSizesFragment {
  GAddItemToCartData_addItemToCart_items_product_products_sizes._();

  factory GAddItemToCartData_addItemToCart_items_product_products_sizes(
          [Function(
                  GAddItemToCartData_addItemToCart_items_product_products_sizesBuilder
                      b)
              updates]) =
      _$GAddItemToCartData_addItemToCart_items_product_products_sizes;

  static void _initializeBuilder(
          GAddItemToCartData_addItemToCart_items_product_products_sizesBuilder
              b) =>
      b..G__typename = 'Product';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  String? get additionalInfo;
  String? get description;
  GAddItemToCartData_addItemToCart_items_product_products_sizes_parentGroup?
      get parentGroup;
  BuiltList<
          GAddItemToCartData_addItemToCart_items_product_products_sizes_images>?
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
          GAddItemToCartData_addItemToCart_items_product_products_sizes_modifiers>?
      get modifiers;
  BuiltList<
          GAddItemToCartData_addItemToCart_items_product_products_sizes_groupModifiers>?
      get groupModifiers;
  static Serializer<
          GAddItemToCartData_addItemToCart_items_product_products_sizes>
      get serializer =>
          _$gAddItemToCartDataAddItemToCartItemsProductProductsSizesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GAddItemToCartData_addItemToCart_items_product_products_sizes.serializer,
      this) as Map<String, dynamic>);
  static GAddItemToCartData_addItemToCart_items_product_products_sizes?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GAddItemToCartData_addItemToCart_items_product_products_sizes
              .serializer,
          json);
}

abstract class GAddItemToCartData_addItemToCart_items_product_products_sizes_parentGroup
    implements
        Built<
            GAddItemToCartData_addItemToCart_items_product_products_sizes_parentGroup,
            GAddItemToCartData_addItemToCart_items_product_products_sizes_parentGroupBuilder>,
        _i2.GCartFragment_items_product_products_sizes_parentGroup,
        _i6.GCartItemFragment_product_products_sizes_parentGroup,
        _i7.GProductFragment_products_sizes_parentGroup,
        _i8.GProductsSizesFragment_parentGroup {
  GAddItemToCartData_addItemToCart_items_product_products_sizes_parentGroup._();

  factory GAddItemToCartData_addItemToCart_items_product_products_sizes_parentGroup(
          [Function(
                  GAddItemToCartData_addItemToCart_items_product_products_sizes_parentGroupBuilder
                      b)
              updates]) =
      _$GAddItemToCartData_addItemToCart_items_product_products_sizes_parentGroup;

  static void _initializeBuilder(
          GAddItemToCartData_addItemToCart_items_product_products_sizes_parentGroupBuilder
              b) =>
      b..G__typename = 'Group';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  static Serializer<
          GAddItemToCartData_addItemToCart_items_product_products_sizes_parentGroup>
      get serializer =>
          _$gAddItemToCartDataAddItemToCartItemsProductProductsSizesParentGroupSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GAddItemToCartData_addItemToCart_items_product_products_sizes_parentGroup
          .serializer,
      this) as Map<String, dynamic>);
  static GAddItemToCartData_addItemToCart_items_product_products_sizes_parentGroup?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GAddItemToCartData_addItemToCart_items_product_products_sizes_parentGroup
              .serializer,
          json);
}

abstract class GAddItemToCartData_addItemToCart_items_product_products_sizes_images
    implements
        Built<
            GAddItemToCartData_addItemToCart_items_product_products_sizes_images,
            GAddItemToCartData_addItemToCart_items_product_products_sizes_imagesBuilder>,
        _i2.GCartFragment_items_product_products_sizes_images,
        _i6.GCartItemFragment_product_products_sizes_images,
        _i7.GProductFragment_products_sizes_images,
        _i8.GProductsSizesFragment_images {
  GAddItemToCartData_addItemToCart_items_product_products_sizes_images._();

  factory GAddItemToCartData_addItemToCart_items_product_products_sizes_images(
          [Function(
                  GAddItemToCartData_addItemToCart_items_product_products_sizes_imagesBuilder
                      b)
              updates]) =
      _$GAddItemToCartData_addItemToCart_items_product_products_sizes_images;

  static void _initializeBuilder(
          GAddItemToCartData_addItemToCart_items_product_products_sizes_imagesBuilder
              b) =>
      b..G__typename = 'ProductImage';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get imageId;
  String? get imageUrl;
  static Serializer<
          GAddItemToCartData_addItemToCart_items_product_products_sizes_images>
      get serializer =>
          _$gAddItemToCartDataAddItemToCartItemsProductProductsSizesImagesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GAddItemToCartData_addItemToCart_items_product_products_sizes_images
          .serializer,
      this) as Map<String, dynamic>);
  static GAddItemToCartData_addItemToCart_items_product_products_sizes_images?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GAddItemToCartData_addItemToCart_items_product_products_sizes_images
              .serializer,
          json);
}

abstract class GAddItemToCartData_addItemToCart_items_product_products_sizes_modifiers
    implements
        Built<
            GAddItemToCartData_addItemToCart_items_product_products_sizes_modifiers,
            GAddItemToCartData_addItemToCart_items_product_products_sizes_modifiersBuilder>,
        _i2.GCartFragment_items_product_products_sizes_modifiers,
        _i6.GCartItemFragment_product_products_sizes_modifiers,
        _i7.GProductFragment_products_sizes_modifiers,
        _i8.GProductsSizesFragment_modifiers,
        _i9.GModificatorFragment {
  GAddItemToCartData_addItemToCart_items_product_products_sizes_modifiers._();

  factory GAddItemToCartData_addItemToCart_items_product_products_sizes_modifiers(
          [Function(
                  GAddItemToCartData_addItemToCart_items_product_products_sizes_modifiersBuilder
                      b)
              updates]) =
      _$GAddItemToCartData_addItemToCart_items_product_products_sizes_modifiers;

  static void _initializeBuilder(
          GAddItemToCartData_addItemToCart_items_product_products_sizes_modifiersBuilder
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
          GAddItemToCartData_addItemToCart_items_product_products_sizes_modifiers>
      get serializer =>
          _$gAddItemToCartDataAddItemToCartItemsProductProductsSizesModifiersSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GAddItemToCartData_addItemToCart_items_product_products_sizes_modifiers
          .serializer,
      this) as Map<String, dynamic>);
  static GAddItemToCartData_addItemToCart_items_product_products_sizes_modifiers?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GAddItemToCartData_addItemToCart_items_product_products_sizes_modifiers
              .serializer,
          json);
}

abstract class GAddItemToCartData_addItemToCart_items_product_products_sizes_groupModifiers
    implements
        Built<
            GAddItemToCartData_addItemToCart_items_product_products_sizes_groupModifiers,
            GAddItemToCartData_addItemToCart_items_product_products_sizes_groupModifiersBuilder>,
        _i2.GCartFragment_items_product_products_sizes_groupModifiers,
        _i6.GCartItemFragment_product_products_sizes_groupModifiers,
        _i7.GProductFragment_products_sizes_groupModifiers,
        _i8.GProductsSizesFragment_groupModifiers,
        _i10.GGroupModificatorFragment {
  GAddItemToCartData_addItemToCart_items_product_products_sizes_groupModifiers._();

  factory GAddItemToCartData_addItemToCart_items_product_products_sizes_groupModifiers(
          [Function(
                  GAddItemToCartData_addItemToCart_items_product_products_sizes_groupModifiersBuilder
                      b)
              updates]) =
      _$GAddItemToCartData_addItemToCart_items_product_products_sizes_groupModifiers;

  static void _initializeBuilder(
          GAddItemToCartData_addItemToCart_items_product_products_sizes_groupModifiersBuilder
              b) =>
      b..G__typename = 'GroupModificator';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get maxAmount;
  int? get minAmount;
  String get modifierId;
  bool? get required;
  BuiltList<
          GAddItemToCartData_addItemToCart_items_product_products_sizes_groupModifiers_childModifiers>?
      get childModifiers;
  bool? get childModifiersHaveMinMaxRestrictions;
  static Serializer<
          GAddItemToCartData_addItemToCart_items_product_products_sizes_groupModifiers>
      get serializer =>
          _$gAddItemToCartDataAddItemToCartItemsProductProductsSizesGroupModifiersSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GAddItemToCartData_addItemToCart_items_product_products_sizes_groupModifiers
          .serializer,
      this) as Map<String, dynamic>);
  static GAddItemToCartData_addItemToCart_items_product_products_sizes_groupModifiers?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GAddItemToCartData_addItemToCart_items_product_products_sizes_groupModifiers
              .serializer,
          json);
}

abstract class GAddItemToCartData_addItemToCart_items_product_products_sizes_groupModifiers_childModifiers
    implements
        Built<
            GAddItemToCartData_addItemToCart_items_product_products_sizes_groupModifiers_childModifiers,
            GAddItemToCartData_addItemToCart_items_product_products_sizes_groupModifiers_childModifiersBuilder>,
        _i2.GCartFragment_items_product_products_sizes_groupModifiers_childModifiers,
        _i6.GCartItemFragment_product_products_sizes_groupModifiers_childModifiers,
        _i7.GProductFragment_products_sizes_groupModifiers_childModifiers,
        _i8.GProductsSizesFragment_groupModifiers_childModifiers,
        _i10.GGroupModificatorFragment_childModifiers,
        _i9.GModificatorFragment {
  GAddItemToCartData_addItemToCart_items_product_products_sizes_groupModifiers_childModifiers._();

  factory GAddItemToCartData_addItemToCart_items_product_products_sizes_groupModifiers_childModifiers(
          [Function(
                  GAddItemToCartData_addItemToCart_items_product_products_sizes_groupModifiers_childModifiersBuilder
                      b)
              updates]) =
      _$GAddItemToCartData_addItemToCart_items_product_products_sizes_groupModifiers_childModifiers;

  static void _initializeBuilder(
          GAddItemToCartData_addItemToCart_items_product_products_sizes_groupModifiers_childModifiersBuilder
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
          GAddItemToCartData_addItemToCart_items_product_products_sizes_groupModifiers_childModifiers>
      get serializer =>
          _$gAddItemToCartDataAddItemToCartItemsProductProductsSizesGroupModifiersChildModifiersSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GAddItemToCartData_addItemToCart_items_product_products_sizes_groupModifiers_childModifiers
          .serializer,
      this) as Map<String, dynamic>);
  static GAddItemToCartData_addItemToCart_items_product_products_sizes_groupModifiers_childModifiers?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GAddItemToCartData_addItemToCart_items_product_products_sizes_groupModifiers_childModifiers
              .serializer,
          json);
}

abstract class GAddItemToCartData_addItemToCart_items_product_images
    implements
        Built<GAddItemToCartData_addItemToCart_items_product_images,
            GAddItemToCartData_addItemToCart_items_product_imagesBuilder>,
        _i2.GCartFragment_items_product_images,
        _i6.GCartItemFragment_product_images,
        _i7.GProductFragment_images {
  GAddItemToCartData_addItemToCart_items_product_images._();

  factory GAddItemToCartData_addItemToCart_items_product_images(
      [Function(GAddItemToCartData_addItemToCart_items_product_imagesBuilder b)
          updates]) = _$GAddItemToCartData_addItemToCart_items_product_images;

  static void _initializeBuilder(
          GAddItemToCartData_addItemToCart_items_product_imagesBuilder b) =>
      b..G__typename = 'ProductImage';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get imageId;
  String? get imageUrl;
  static Serializer<GAddItemToCartData_addItemToCart_items_product_images>
      get serializer =>
          _$gAddItemToCartDataAddItemToCartItemsProductImagesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GAddItemToCartData_addItemToCart_items_product_images.serializer,
      this) as Map<String, dynamic>);
  static GAddItemToCartData_addItemToCart_items_product_images? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GAddItemToCartData_addItemToCart_items_product_images.serializer,
          json);
}

abstract class GAddItemToCartData_addItemToCart_items_product_modifiers
    implements
        Built<GAddItemToCartData_addItemToCart_items_product_modifiers,
            GAddItemToCartData_addItemToCart_items_product_modifiersBuilder>,
        _i2.GCartFragment_items_product_modifiers,
        _i6.GCartItemFragment_product_modifiers,
        _i7.GProductFragment_modifiers,
        _i9.GModificatorFragment {
  GAddItemToCartData_addItemToCart_items_product_modifiers._();

  factory GAddItemToCartData_addItemToCart_items_product_modifiers(
      [Function(
              GAddItemToCartData_addItemToCart_items_product_modifiersBuilder b)
          updates]) = _$GAddItemToCartData_addItemToCart_items_product_modifiers;

  static void _initializeBuilder(
          GAddItemToCartData_addItemToCart_items_product_modifiersBuilder b) =>
      b..G__typename = 'Modificator';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get maxAmount;
  int? get minAmount;
  String get modifierId;
  bool? get required;
  int? get defaultAmount;
  bool? get hideIfDefaultAmount;
  static Serializer<GAddItemToCartData_addItemToCart_items_product_modifiers>
      get serializer =>
          _$gAddItemToCartDataAddItemToCartItemsProductModifiersSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GAddItemToCartData_addItemToCart_items_product_modifiers.serializer,
      this) as Map<String, dynamic>);
  static GAddItemToCartData_addItemToCart_items_product_modifiers? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GAddItemToCartData_addItemToCart_items_product_modifiers.serializer,
          json);
}

abstract class GAddItemToCartData_addItemToCart_items_product_groupModifiers
    implements
        Built<GAddItemToCartData_addItemToCart_items_product_groupModifiers,
            GAddItemToCartData_addItemToCart_items_product_groupModifiersBuilder>,
        _i2.GCartFragment_items_product_groupModifiers,
        _i6.GCartItemFragment_product_groupModifiers,
        _i7.GProductFragment_groupModifiers,
        _i10.GGroupModificatorFragment {
  GAddItemToCartData_addItemToCart_items_product_groupModifiers._();

  factory GAddItemToCartData_addItemToCart_items_product_groupModifiers(
          [Function(
                  GAddItemToCartData_addItemToCart_items_product_groupModifiersBuilder
                      b)
              updates]) =
      _$GAddItemToCartData_addItemToCart_items_product_groupModifiers;

  static void _initializeBuilder(
          GAddItemToCartData_addItemToCart_items_product_groupModifiersBuilder
              b) =>
      b..G__typename = 'GroupModificator';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get maxAmount;
  int? get minAmount;
  String get modifierId;
  bool? get required;
  BuiltList<
          GAddItemToCartData_addItemToCart_items_product_groupModifiers_childModifiers>?
      get childModifiers;
  bool? get childModifiersHaveMinMaxRestrictions;
  static Serializer<
          GAddItemToCartData_addItemToCart_items_product_groupModifiers>
      get serializer =>
          _$gAddItemToCartDataAddItemToCartItemsProductGroupModifiersSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GAddItemToCartData_addItemToCart_items_product_groupModifiers.serializer,
      this) as Map<String, dynamic>);
  static GAddItemToCartData_addItemToCart_items_product_groupModifiers?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GAddItemToCartData_addItemToCart_items_product_groupModifiers
              .serializer,
          json);
}

abstract class GAddItemToCartData_addItemToCart_items_product_groupModifiers_childModifiers
    implements
        Built<
            GAddItemToCartData_addItemToCart_items_product_groupModifiers_childModifiers,
            GAddItemToCartData_addItemToCart_items_product_groupModifiers_childModifiersBuilder>,
        _i2.GCartFragment_items_product_groupModifiers_childModifiers,
        _i6.GCartItemFragment_product_groupModifiers_childModifiers,
        _i7.GProductFragment_groupModifiers_childModifiers,
        _i10.GGroupModificatorFragment_childModifiers,
        _i9.GModificatorFragment {
  GAddItemToCartData_addItemToCart_items_product_groupModifiers_childModifiers._();

  factory GAddItemToCartData_addItemToCart_items_product_groupModifiers_childModifiers(
          [Function(
                  GAddItemToCartData_addItemToCart_items_product_groupModifiers_childModifiersBuilder
                      b)
              updates]) =
      _$GAddItemToCartData_addItemToCart_items_product_groupModifiers_childModifiers;

  static void _initializeBuilder(
          GAddItemToCartData_addItemToCart_items_product_groupModifiers_childModifiersBuilder
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
          GAddItemToCartData_addItemToCart_items_product_groupModifiers_childModifiers>
      get serializer =>
          _$gAddItemToCartDataAddItemToCartItemsProductGroupModifiersChildModifiersSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GAddItemToCartData_addItemToCart_items_product_groupModifiers_childModifiers
          .serializer,
      this) as Map<String, dynamic>);
  static GAddItemToCartData_addItemToCart_items_product_groupModifiers_childModifiers?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GAddItemToCartData_addItemToCart_items_product_groupModifiers_childModifiers
              .serializer,
          json);
}

abstract class GAddItemToCartData_addItemToCart_items_modifiers
    implements
        Built<GAddItemToCartData_addItemToCart_items_modifiers,
            GAddItemToCartData_addItemToCart_items_modifiersBuilder>,
        _i2.GCartFragment_items_modifiers,
        _i6.GCartItemFragment_modifiers,
        _i11.GCartItemModifierFragment {
  GAddItemToCartData_addItemToCart_items_modifiers._();

  factory GAddItemToCartData_addItemToCart_items_modifiers(
      [Function(GAddItemToCartData_addItemToCart_items_modifiersBuilder b)
          updates]) = _$GAddItemToCartData_addItemToCart_items_modifiers;

  static void _initializeBuilder(
          GAddItemToCartData_addItemToCart_items_modifiersBuilder b) =>
      b..G__typename = 'CartItemModifier';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get type;
  String get product_id;
  GAddItemToCartData_addItemToCart_items_modifiers_product get product;
  String get name;
  int get amount;
  String? get group_id;
  String? get group_name;
  static Serializer<GAddItemToCartData_addItemToCart_items_modifiers>
      get serializer =>
          _$gAddItemToCartDataAddItemToCartItemsModifiersSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GAddItemToCartData_addItemToCart_items_modifiers.serializer, this)
      as Map<String, dynamic>);
  static GAddItemToCartData_addItemToCart_items_modifiers? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GAddItemToCartData_addItemToCart_items_modifiers.serializer, json);
}

abstract class GAddItemToCartData_addItemToCart_items_modifiers_product
    implements
        Built<GAddItemToCartData_addItemToCart_items_modifiers_product,
            GAddItemToCartData_addItemToCart_items_modifiers_productBuilder>,
        _i2.GCartFragment_items_modifiers_product,
        _i6.GCartItemFragment_modifiers_product,
        _i11.GCartItemModifierFragment_product,
        _i7.GProductFragment {
  GAddItemToCartData_addItemToCart_items_modifiers_product._();

  factory GAddItemToCartData_addItemToCart_items_modifiers_product(
      [Function(
              GAddItemToCartData_addItemToCart_items_modifiers_productBuilder b)
          updates]) = _$GAddItemToCartData_addItemToCart_items_modifiers_product;

  static void _initializeBuilder(
          GAddItemToCartData_addItemToCart_items_modifiers_productBuilder b) =>
      b..G__typename = 'Product';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get parentGroupId;
  String? get groupId;
  GAddItemToCartData_addItemToCart_items_modifiers_product_parentGroup?
      get parentGroup;
  GAddItemToCartData_addItemToCart_items_modifiers_product_group? get group;
  String? get productCategoryId;
  GAddItemToCartData_addItemToCart_items_modifiers_product_category?
      get category;
  BuiltList<
          GAddItemToCartData_addItemToCart_items_modifiers_product_products_sizes>?
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
  BuiltList<GAddItemToCartData_addItemToCart_items_modifiers_product_images>?
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
  BuiltList<GAddItemToCartData_addItemToCart_items_modifiers_product_modifiers>?
      get modifiers;
  BuiltList<
          GAddItemToCartData_addItemToCart_items_modifiers_product_groupModifiers>?
      get groupModifiers;
  static Serializer<GAddItemToCartData_addItemToCart_items_modifiers_product>
      get serializer =>
          _$gAddItemToCartDataAddItemToCartItemsModifiersProductSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GAddItemToCartData_addItemToCart_items_modifiers_product.serializer,
      this) as Map<String, dynamic>);
  static GAddItemToCartData_addItemToCart_items_modifiers_product? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GAddItemToCartData_addItemToCart_items_modifiers_product.serializer,
          json);
}

abstract class GAddItemToCartData_addItemToCart_items_modifiers_product_parentGroup
    implements
        Built<
            GAddItemToCartData_addItemToCart_items_modifiers_product_parentGroup,
            GAddItemToCartData_addItemToCart_items_modifiers_product_parentGroupBuilder>,
        _i2.GCartFragment_items_modifiers_product_parentGroup,
        _i6.GCartItemFragment_modifiers_product_parentGroup,
        _i11.GCartItemModifierFragment_product_parentGroup,
        _i7.GProductFragment_parentGroup {
  GAddItemToCartData_addItemToCart_items_modifiers_product_parentGroup._();

  factory GAddItemToCartData_addItemToCart_items_modifiers_product_parentGroup(
          [Function(
                  GAddItemToCartData_addItemToCart_items_modifiers_product_parentGroupBuilder
                      b)
              updates]) =
      _$GAddItemToCartData_addItemToCart_items_modifiers_product_parentGroup;

  static void _initializeBuilder(
          GAddItemToCartData_addItemToCart_items_modifiers_product_parentGroupBuilder
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
          GAddItemToCartData_addItemToCart_items_modifiers_product_parentGroup>
      get serializer =>
          _$gAddItemToCartDataAddItemToCartItemsModifiersProductParentGroupSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GAddItemToCartData_addItemToCart_items_modifiers_product_parentGroup
          .serializer,
      this) as Map<String, dynamic>);
  static GAddItemToCartData_addItemToCart_items_modifiers_product_parentGroup?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GAddItemToCartData_addItemToCart_items_modifiers_product_parentGroup
              .serializer,
          json);
}

abstract class GAddItemToCartData_addItemToCart_items_modifiers_product_group
    implements
        Built<GAddItemToCartData_addItemToCart_items_modifiers_product_group,
            GAddItemToCartData_addItemToCart_items_modifiers_product_groupBuilder>,
        _i2.GCartFragment_items_modifiers_product_group,
        _i6.GCartItemFragment_modifiers_product_group,
        _i11.GCartItemModifierFragment_product_group,
        _i7.GProductFragment_group {
  GAddItemToCartData_addItemToCart_items_modifiers_product_group._();

  factory GAddItemToCartData_addItemToCart_items_modifiers_product_group(
          [Function(
                  GAddItemToCartData_addItemToCart_items_modifiers_product_groupBuilder
                      b)
              updates]) =
      _$GAddItemToCartData_addItemToCart_items_modifiers_product_group;

  static void _initializeBuilder(
          GAddItemToCartData_addItemToCart_items_modifiers_product_groupBuilder
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
          GAddItemToCartData_addItemToCart_items_modifiers_product_group>
      get serializer =>
          _$gAddItemToCartDataAddItemToCartItemsModifiersProductGroupSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GAddItemToCartData_addItemToCart_items_modifiers_product_group.serializer,
      this) as Map<String, dynamic>);
  static GAddItemToCartData_addItemToCart_items_modifiers_product_group?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GAddItemToCartData_addItemToCart_items_modifiers_product_group
              .serializer,
          json);
}

abstract class GAddItemToCartData_addItemToCart_items_modifiers_product_category
    implements
        Built<GAddItemToCartData_addItemToCart_items_modifiers_product_category,
            GAddItemToCartData_addItemToCart_items_modifiers_product_categoryBuilder>,
        _i2.GCartFragment_items_modifiers_product_category,
        _i6.GCartItemFragment_modifiers_product_category,
        _i11.GCartItemModifierFragment_product_category,
        _i7.GProductFragment_category {
  GAddItemToCartData_addItemToCart_items_modifiers_product_category._();

  factory GAddItemToCartData_addItemToCart_items_modifiers_product_category(
          [Function(
                  GAddItemToCartData_addItemToCart_items_modifiers_product_categoryBuilder
                      b)
              updates]) =
      _$GAddItemToCartData_addItemToCart_items_modifiers_product_category;

  static void _initializeBuilder(
          GAddItemToCartData_addItemToCart_items_modifiers_product_categoryBuilder
              b) =>
      b..G__typename = 'ProductCategory';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  static Serializer<
          GAddItemToCartData_addItemToCart_items_modifiers_product_category>
      get serializer =>
          _$gAddItemToCartDataAddItemToCartItemsModifiersProductCategorySerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GAddItemToCartData_addItemToCart_items_modifiers_product_category
          .serializer,
      this) as Map<String, dynamic>);
  static GAddItemToCartData_addItemToCart_items_modifiers_product_category?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GAddItemToCartData_addItemToCart_items_modifiers_product_category
              .serializer,
          json);
}

abstract class GAddItemToCartData_addItemToCart_items_modifiers_product_products_sizes
    implements
        Built<
            GAddItemToCartData_addItemToCart_items_modifiers_product_products_sizes,
            GAddItemToCartData_addItemToCart_items_modifiers_product_products_sizesBuilder>,
        _i2.GCartFragment_items_modifiers_product_products_sizes,
        _i6.GCartItemFragment_modifiers_product_products_sizes,
        _i11.GCartItemModifierFragment_product_products_sizes,
        _i7.GProductFragment_products_sizes,
        _i8.GProductsSizesFragment {
  GAddItemToCartData_addItemToCart_items_modifiers_product_products_sizes._();

  factory GAddItemToCartData_addItemToCart_items_modifiers_product_products_sizes(
          [Function(
                  GAddItemToCartData_addItemToCart_items_modifiers_product_products_sizesBuilder
                      b)
              updates]) =
      _$GAddItemToCartData_addItemToCart_items_modifiers_product_products_sizes;

  static void _initializeBuilder(
          GAddItemToCartData_addItemToCart_items_modifiers_product_products_sizesBuilder
              b) =>
      b..G__typename = 'Product';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  String? get additionalInfo;
  String? get description;
  GAddItemToCartData_addItemToCart_items_modifiers_product_products_sizes_parentGroup?
      get parentGroup;
  BuiltList<
          GAddItemToCartData_addItemToCart_items_modifiers_product_products_sizes_images>?
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
          GAddItemToCartData_addItemToCart_items_modifiers_product_products_sizes_modifiers>?
      get modifiers;
  BuiltList<
          GAddItemToCartData_addItemToCart_items_modifiers_product_products_sizes_groupModifiers>?
      get groupModifiers;
  static Serializer<
          GAddItemToCartData_addItemToCart_items_modifiers_product_products_sizes>
      get serializer =>
          _$gAddItemToCartDataAddItemToCartItemsModifiersProductProductsSizesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GAddItemToCartData_addItemToCart_items_modifiers_product_products_sizes
          .serializer,
      this) as Map<String, dynamic>);
  static GAddItemToCartData_addItemToCart_items_modifiers_product_products_sizes?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GAddItemToCartData_addItemToCart_items_modifiers_product_products_sizes
              .serializer,
          json);
}

abstract class GAddItemToCartData_addItemToCart_items_modifiers_product_products_sizes_parentGroup
    implements
        Built<
            GAddItemToCartData_addItemToCart_items_modifiers_product_products_sizes_parentGroup,
            GAddItemToCartData_addItemToCart_items_modifiers_product_products_sizes_parentGroupBuilder>,
        _i2.GCartFragment_items_modifiers_product_products_sizes_parentGroup,
        _i6.GCartItemFragment_modifiers_product_products_sizes_parentGroup,
        _i11.GCartItemModifierFragment_product_products_sizes_parentGroup,
        _i7.GProductFragment_products_sizes_parentGroup,
        _i8.GProductsSizesFragment_parentGroup {
  GAddItemToCartData_addItemToCart_items_modifiers_product_products_sizes_parentGroup._();

  factory GAddItemToCartData_addItemToCart_items_modifiers_product_products_sizes_parentGroup(
          [Function(
                  GAddItemToCartData_addItemToCart_items_modifiers_product_products_sizes_parentGroupBuilder
                      b)
              updates]) =
      _$GAddItemToCartData_addItemToCart_items_modifiers_product_products_sizes_parentGroup;

  static void _initializeBuilder(
          GAddItemToCartData_addItemToCart_items_modifiers_product_products_sizes_parentGroupBuilder
              b) =>
      b..G__typename = 'Group';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  static Serializer<
          GAddItemToCartData_addItemToCart_items_modifiers_product_products_sizes_parentGroup>
      get serializer =>
          _$gAddItemToCartDataAddItemToCartItemsModifiersProductProductsSizesParentGroupSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GAddItemToCartData_addItemToCart_items_modifiers_product_products_sizes_parentGroup
          .serializer,
      this) as Map<String, dynamic>);
  static GAddItemToCartData_addItemToCart_items_modifiers_product_products_sizes_parentGroup?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GAddItemToCartData_addItemToCart_items_modifiers_product_products_sizes_parentGroup
              .serializer,
          json);
}

abstract class GAddItemToCartData_addItemToCart_items_modifiers_product_products_sizes_images
    implements
        Built<
            GAddItemToCartData_addItemToCart_items_modifiers_product_products_sizes_images,
            GAddItemToCartData_addItemToCart_items_modifiers_product_products_sizes_imagesBuilder>,
        _i2.GCartFragment_items_modifiers_product_products_sizes_images,
        _i6.GCartItemFragment_modifiers_product_products_sizes_images,
        _i11.GCartItemModifierFragment_product_products_sizes_images,
        _i7.GProductFragment_products_sizes_images,
        _i8.GProductsSizesFragment_images {
  GAddItemToCartData_addItemToCart_items_modifiers_product_products_sizes_images._();

  factory GAddItemToCartData_addItemToCart_items_modifiers_product_products_sizes_images(
          [Function(
                  GAddItemToCartData_addItemToCart_items_modifiers_product_products_sizes_imagesBuilder
                      b)
              updates]) =
      _$GAddItemToCartData_addItemToCart_items_modifiers_product_products_sizes_images;

  static void _initializeBuilder(
          GAddItemToCartData_addItemToCart_items_modifiers_product_products_sizes_imagesBuilder
              b) =>
      b..G__typename = 'ProductImage';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get imageId;
  String? get imageUrl;
  static Serializer<
          GAddItemToCartData_addItemToCart_items_modifiers_product_products_sizes_images>
      get serializer =>
          _$gAddItemToCartDataAddItemToCartItemsModifiersProductProductsSizesImagesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GAddItemToCartData_addItemToCart_items_modifiers_product_products_sizes_images
          .serializer,
      this) as Map<String, dynamic>);
  static GAddItemToCartData_addItemToCart_items_modifiers_product_products_sizes_images?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GAddItemToCartData_addItemToCart_items_modifiers_product_products_sizes_images
              .serializer,
          json);
}

abstract class GAddItemToCartData_addItemToCart_items_modifiers_product_products_sizes_modifiers
    implements
        Built<
            GAddItemToCartData_addItemToCart_items_modifiers_product_products_sizes_modifiers,
            GAddItemToCartData_addItemToCart_items_modifiers_product_products_sizes_modifiersBuilder>,
        _i2.GCartFragment_items_modifiers_product_products_sizes_modifiers,
        _i6.GCartItemFragment_modifiers_product_products_sizes_modifiers,
        _i11.GCartItemModifierFragment_product_products_sizes_modifiers,
        _i7.GProductFragment_products_sizes_modifiers,
        _i8.GProductsSizesFragment_modifiers,
        _i9.GModificatorFragment {
  GAddItemToCartData_addItemToCart_items_modifiers_product_products_sizes_modifiers._();

  factory GAddItemToCartData_addItemToCart_items_modifiers_product_products_sizes_modifiers(
          [Function(
                  GAddItemToCartData_addItemToCart_items_modifiers_product_products_sizes_modifiersBuilder
                      b)
              updates]) =
      _$GAddItemToCartData_addItemToCart_items_modifiers_product_products_sizes_modifiers;

  static void _initializeBuilder(
          GAddItemToCartData_addItemToCart_items_modifiers_product_products_sizes_modifiersBuilder
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
          GAddItemToCartData_addItemToCart_items_modifiers_product_products_sizes_modifiers>
      get serializer =>
          _$gAddItemToCartDataAddItemToCartItemsModifiersProductProductsSizesModifiersSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GAddItemToCartData_addItemToCart_items_modifiers_product_products_sizes_modifiers
          .serializer,
      this) as Map<String, dynamic>);
  static GAddItemToCartData_addItemToCart_items_modifiers_product_products_sizes_modifiers?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GAddItemToCartData_addItemToCart_items_modifiers_product_products_sizes_modifiers
              .serializer,
          json);
}

abstract class GAddItemToCartData_addItemToCart_items_modifiers_product_products_sizes_groupModifiers
    implements
        Built<
            GAddItemToCartData_addItemToCart_items_modifiers_product_products_sizes_groupModifiers,
            GAddItemToCartData_addItemToCart_items_modifiers_product_products_sizes_groupModifiersBuilder>,
        _i2.GCartFragment_items_modifiers_product_products_sizes_groupModifiers,
        _i6.GCartItemFragment_modifiers_product_products_sizes_groupModifiers,
        _i11.GCartItemModifierFragment_product_products_sizes_groupModifiers,
        _i7.GProductFragment_products_sizes_groupModifiers,
        _i8.GProductsSizesFragment_groupModifiers,
        _i10.GGroupModificatorFragment {
  GAddItemToCartData_addItemToCart_items_modifiers_product_products_sizes_groupModifiers._();

  factory GAddItemToCartData_addItemToCart_items_modifiers_product_products_sizes_groupModifiers(
          [Function(
                  GAddItemToCartData_addItemToCart_items_modifiers_product_products_sizes_groupModifiersBuilder
                      b)
              updates]) =
      _$GAddItemToCartData_addItemToCart_items_modifiers_product_products_sizes_groupModifiers;

  static void _initializeBuilder(
          GAddItemToCartData_addItemToCart_items_modifiers_product_products_sizes_groupModifiersBuilder
              b) =>
      b..G__typename = 'GroupModificator';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get maxAmount;
  int? get minAmount;
  String get modifierId;
  bool? get required;
  BuiltList<
          GAddItemToCartData_addItemToCart_items_modifiers_product_products_sizes_groupModifiers_childModifiers>?
      get childModifiers;
  bool? get childModifiersHaveMinMaxRestrictions;
  static Serializer<
          GAddItemToCartData_addItemToCart_items_modifiers_product_products_sizes_groupModifiers>
      get serializer =>
          _$gAddItemToCartDataAddItemToCartItemsModifiersProductProductsSizesGroupModifiersSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GAddItemToCartData_addItemToCart_items_modifiers_product_products_sizes_groupModifiers
          .serializer,
      this) as Map<String, dynamic>);
  static GAddItemToCartData_addItemToCart_items_modifiers_product_products_sizes_groupModifiers?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GAddItemToCartData_addItemToCart_items_modifiers_product_products_sizes_groupModifiers
              .serializer,
          json);
}

abstract class GAddItemToCartData_addItemToCart_items_modifiers_product_products_sizes_groupModifiers_childModifiers
    implements
        Built<
            GAddItemToCartData_addItemToCart_items_modifiers_product_products_sizes_groupModifiers_childModifiers,
            GAddItemToCartData_addItemToCart_items_modifiers_product_products_sizes_groupModifiers_childModifiersBuilder>,
        _i2.GCartFragment_items_modifiers_product_products_sizes_groupModifiers_childModifiers,
        _i6.GCartItemFragment_modifiers_product_products_sizes_groupModifiers_childModifiers,
        _i11.GCartItemModifierFragment_product_products_sizes_groupModifiers_childModifiers,
        _i7.GProductFragment_products_sizes_groupModifiers_childModifiers,
        _i8.GProductsSizesFragment_groupModifiers_childModifiers,
        _i10.GGroupModificatorFragment_childModifiers,
        _i9.GModificatorFragment {
  GAddItemToCartData_addItemToCart_items_modifiers_product_products_sizes_groupModifiers_childModifiers._();

  factory GAddItemToCartData_addItemToCart_items_modifiers_product_products_sizes_groupModifiers_childModifiers(
          [Function(
                  GAddItemToCartData_addItemToCart_items_modifiers_product_products_sizes_groupModifiers_childModifiersBuilder
                      b)
              updates]) =
      _$GAddItemToCartData_addItemToCart_items_modifiers_product_products_sizes_groupModifiers_childModifiers;

  static void _initializeBuilder(
          GAddItemToCartData_addItemToCart_items_modifiers_product_products_sizes_groupModifiers_childModifiersBuilder
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
          GAddItemToCartData_addItemToCart_items_modifiers_product_products_sizes_groupModifiers_childModifiers>
      get serializer =>
          _$gAddItemToCartDataAddItemToCartItemsModifiersProductProductsSizesGroupModifiersChildModifiersSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GAddItemToCartData_addItemToCart_items_modifiers_product_products_sizes_groupModifiers_childModifiers
          .serializer,
      this) as Map<String, dynamic>);
  static GAddItemToCartData_addItemToCart_items_modifiers_product_products_sizes_groupModifiers_childModifiers?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GAddItemToCartData_addItemToCart_items_modifiers_product_products_sizes_groupModifiers_childModifiers
              .serializer,
          json);
}

abstract class GAddItemToCartData_addItemToCart_items_modifiers_product_images
    implements
        Built<GAddItemToCartData_addItemToCart_items_modifiers_product_images,
            GAddItemToCartData_addItemToCart_items_modifiers_product_imagesBuilder>,
        _i2.GCartFragment_items_modifiers_product_images,
        _i6.GCartItemFragment_modifiers_product_images,
        _i11.GCartItemModifierFragment_product_images,
        _i7.GProductFragment_images {
  GAddItemToCartData_addItemToCart_items_modifiers_product_images._();

  factory GAddItemToCartData_addItemToCart_items_modifiers_product_images(
          [Function(
                  GAddItemToCartData_addItemToCart_items_modifiers_product_imagesBuilder
                      b)
              updates]) =
      _$GAddItemToCartData_addItemToCart_items_modifiers_product_images;

  static void _initializeBuilder(
          GAddItemToCartData_addItemToCart_items_modifiers_product_imagesBuilder
              b) =>
      b..G__typename = 'ProductImage';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get imageId;
  String? get imageUrl;
  static Serializer<
          GAddItemToCartData_addItemToCart_items_modifiers_product_images>
      get serializer =>
          _$gAddItemToCartDataAddItemToCartItemsModifiersProductImagesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GAddItemToCartData_addItemToCart_items_modifiers_product_images
          .serializer,
      this) as Map<String, dynamic>);
  static GAddItemToCartData_addItemToCart_items_modifiers_product_images?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GAddItemToCartData_addItemToCart_items_modifiers_product_images
              .serializer,
          json);
}

abstract class GAddItemToCartData_addItemToCart_items_modifiers_product_modifiers
    implements
        Built<
            GAddItemToCartData_addItemToCart_items_modifiers_product_modifiers,
            GAddItemToCartData_addItemToCart_items_modifiers_product_modifiersBuilder>,
        _i2.GCartFragment_items_modifiers_product_modifiers,
        _i6.GCartItemFragment_modifiers_product_modifiers,
        _i11.GCartItemModifierFragment_product_modifiers,
        _i7.GProductFragment_modifiers,
        _i9.GModificatorFragment {
  GAddItemToCartData_addItemToCart_items_modifiers_product_modifiers._();

  factory GAddItemToCartData_addItemToCart_items_modifiers_product_modifiers(
          [Function(
                  GAddItemToCartData_addItemToCart_items_modifiers_product_modifiersBuilder
                      b)
              updates]) =
      _$GAddItemToCartData_addItemToCart_items_modifiers_product_modifiers;

  static void _initializeBuilder(
          GAddItemToCartData_addItemToCart_items_modifiers_product_modifiersBuilder
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
          GAddItemToCartData_addItemToCart_items_modifiers_product_modifiers>
      get serializer =>
          _$gAddItemToCartDataAddItemToCartItemsModifiersProductModifiersSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GAddItemToCartData_addItemToCart_items_modifiers_product_modifiers
          .serializer,
      this) as Map<String, dynamic>);
  static GAddItemToCartData_addItemToCart_items_modifiers_product_modifiers?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GAddItemToCartData_addItemToCart_items_modifiers_product_modifiers
              .serializer,
          json);
}

abstract class GAddItemToCartData_addItemToCart_items_modifiers_product_groupModifiers
    implements
        Built<
            GAddItemToCartData_addItemToCart_items_modifiers_product_groupModifiers,
            GAddItemToCartData_addItemToCart_items_modifiers_product_groupModifiersBuilder>,
        _i2.GCartFragment_items_modifiers_product_groupModifiers,
        _i6.GCartItemFragment_modifiers_product_groupModifiers,
        _i11.GCartItemModifierFragment_product_groupModifiers,
        _i7.GProductFragment_groupModifiers,
        _i10.GGroupModificatorFragment {
  GAddItemToCartData_addItemToCart_items_modifiers_product_groupModifiers._();

  factory GAddItemToCartData_addItemToCart_items_modifiers_product_groupModifiers(
          [Function(
                  GAddItemToCartData_addItemToCart_items_modifiers_product_groupModifiersBuilder
                      b)
              updates]) =
      _$GAddItemToCartData_addItemToCart_items_modifiers_product_groupModifiers;

  static void _initializeBuilder(
          GAddItemToCartData_addItemToCart_items_modifiers_product_groupModifiersBuilder
              b) =>
      b..G__typename = 'GroupModificator';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get maxAmount;
  int? get minAmount;
  String get modifierId;
  bool? get required;
  BuiltList<
          GAddItemToCartData_addItemToCart_items_modifiers_product_groupModifiers_childModifiers>?
      get childModifiers;
  bool? get childModifiersHaveMinMaxRestrictions;
  static Serializer<
          GAddItemToCartData_addItemToCart_items_modifiers_product_groupModifiers>
      get serializer =>
          _$gAddItemToCartDataAddItemToCartItemsModifiersProductGroupModifiersSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GAddItemToCartData_addItemToCart_items_modifiers_product_groupModifiers
          .serializer,
      this) as Map<String, dynamic>);
  static GAddItemToCartData_addItemToCart_items_modifiers_product_groupModifiers?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GAddItemToCartData_addItemToCart_items_modifiers_product_groupModifiers
              .serializer,
          json);
}

abstract class GAddItemToCartData_addItemToCart_items_modifiers_product_groupModifiers_childModifiers
    implements
        Built<
            GAddItemToCartData_addItemToCart_items_modifiers_product_groupModifiers_childModifiers,
            GAddItemToCartData_addItemToCart_items_modifiers_product_groupModifiers_childModifiersBuilder>,
        _i2.GCartFragment_items_modifiers_product_groupModifiers_childModifiers,
        _i6.GCartItemFragment_modifiers_product_groupModifiers_childModifiers,
        _i11.GCartItemModifierFragment_product_groupModifiers_childModifiers,
        _i7.GProductFragment_groupModifiers_childModifiers,
        _i10.GGroupModificatorFragment_childModifiers,
        _i9.GModificatorFragment {
  GAddItemToCartData_addItemToCart_items_modifiers_product_groupModifiers_childModifiers._();

  factory GAddItemToCartData_addItemToCart_items_modifiers_product_groupModifiers_childModifiers(
          [Function(
                  GAddItemToCartData_addItemToCart_items_modifiers_product_groupModifiers_childModifiersBuilder
                      b)
              updates]) =
      _$GAddItemToCartData_addItemToCart_items_modifiers_product_groupModifiers_childModifiers;

  static void _initializeBuilder(
          GAddItemToCartData_addItemToCart_items_modifiers_product_groupModifiers_childModifiersBuilder
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
          GAddItemToCartData_addItemToCart_items_modifiers_product_groupModifiers_childModifiers>
      get serializer =>
          _$gAddItemToCartDataAddItemToCartItemsModifiersProductGroupModifiersChildModifiersSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GAddItemToCartData_addItemToCart_items_modifiers_product_groupModifiers_childModifiers
          .serializer,
      this) as Map<String, dynamic>);
  static GAddItemToCartData_addItemToCart_items_modifiers_product_groupModifiers_childModifiers?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GAddItemToCartData_addItemToCart_items_modifiers_product_groupModifiers_childModifiers
              .serializer,
          json);
}

abstract class GAddItemToCartData_addItemToCart_order_info
    implements
        Built<GAddItemToCartData_addItemToCart_order_info,
            GAddItemToCartData_addItemToCart_order_infoBuilder>,
        _i2.GCartFragment_order_info,
        _i12.GOrderInfoFragment {
  GAddItemToCartData_addItemToCart_order_info._();

  factory GAddItemToCartData_addItemToCart_order_info(
      [Function(GAddItemToCartData_addItemToCart_order_infoBuilder b)
          updates]) = _$GAddItemToCartData_addItemToCart_order_info;

  static void _initializeBuilder(
          GAddItemToCartData_addItemToCart_order_infoBuilder b) =>
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
  static Serializer<GAddItemToCartData_addItemToCart_order_info>
      get serializer => _$gAddItemToCartDataAddItemToCartOrderInfoSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GAddItemToCartData_addItemToCart_order_info.serializer, this)
      as Map<String, dynamic>);
  static GAddItemToCartData_addItemToCart_order_info? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GAddItemToCartData_addItemToCart_order_info.serializer, json);
}

abstract class GAddItemToCartData_addItemToCart_restaurant
    implements
        Built<GAddItemToCartData_addItemToCart_restaurant,
            GAddItemToCartData_addItemToCart_restaurantBuilder>,
        _i2.GCartFragment_restaurant,
        _i13.GRestaurantFragment {
  GAddItemToCartData_addItemToCart_restaurant._();

  factory GAddItemToCartData_addItemToCart_restaurant(
      [Function(GAddItemToCartData_addItemToCart_restaurantBuilder b)
          updates]) = _$GAddItemToCartData_addItemToCart_restaurant;

  static void _initializeBuilder(
          GAddItemToCartData_addItemToCart_restaurantBuilder b) =>
      b..G__typename = 'Restaurant';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  String? get address;
  GAddItemToCartData_addItemToCart_restaurant_terminal_kitchen?
      get terminal_kitchen;
  GAddItemToCartData_addItemToCart_restaurant_terminal_delivery?
      get terminal_delivery;
  String? get latitude;
  String? get longitude;
  String? get open_at;
  String? get close_at;
  bool? get is_open;
  String? get delivery_open_at;
  String? get delivery_close_at;
  bool? get is_delivery_open;
  GAddItemToCartData_addItemToCart_restaurant_city? get city;
  static Serializer<GAddItemToCartData_addItemToCart_restaurant>
      get serializer => _$gAddItemToCartDataAddItemToCartRestaurantSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GAddItemToCartData_addItemToCart_restaurant.serializer, this)
      as Map<String, dynamic>);
  static GAddItemToCartData_addItemToCart_restaurant? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GAddItemToCartData_addItemToCart_restaurant.serializer, json);
}

abstract class GAddItemToCartData_addItemToCart_restaurant_terminal_kitchen
    implements
        Built<GAddItemToCartData_addItemToCart_restaurant_terminal_kitchen,
            GAddItemToCartData_addItemToCart_restaurant_terminal_kitchenBuilder>,
        _i2.GCartFragment_restaurant_terminal_kitchen,
        _i13.GRestaurantFragment_terminal_kitchen,
        _i14.GTerminalFragment {
  GAddItemToCartData_addItemToCart_restaurant_terminal_kitchen._();

  factory GAddItemToCartData_addItemToCart_restaurant_terminal_kitchen(
          [Function(
                  GAddItemToCartData_addItemToCart_restaurant_terminal_kitchenBuilder
                      b)
              updates]) =
      _$GAddItemToCartData_addItemToCart_restaurant_terminal_kitchen;

  static void _initializeBuilder(
          GAddItemToCartData_addItemToCart_restaurant_terminal_kitchenBuilder
              b) =>
      b..G__typename = 'Terminal';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  static Serializer<
          GAddItemToCartData_addItemToCart_restaurant_terminal_kitchen>
      get serializer =>
          _$gAddItemToCartDataAddItemToCartRestaurantTerminalKitchenSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GAddItemToCartData_addItemToCart_restaurant_terminal_kitchen.serializer,
      this) as Map<String, dynamic>);
  static GAddItemToCartData_addItemToCart_restaurant_terminal_kitchen? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GAddItemToCartData_addItemToCart_restaurant_terminal_kitchen
              .serializer,
          json);
}

abstract class GAddItemToCartData_addItemToCart_restaurant_terminal_delivery
    implements
        Built<GAddItemToCartData_addItemToCart_restaurant_terminal_delivery,
            GAddItemToCartData_addItemToCart_restaurant_terminal_deliveryBuilder>,
        _i2.GCartFragment_restaurant_terminal_delivery,
        _i13.GRestaurantFragment_terminal_delivery,
        _i14.GTerminalFragment {
  GAddItemToCartData_addItemToCart_restaurant_terminal_delivery._();

  factory GAddItemToCartData_addItemToCart_restaurant_terminal_delivery(
          [Function(
                  GAddItemToCartData_addItemToCart_restaurant_terminal_deliveryBuilder
                      b)
              updates]) =
      _$GAddItemToCartData_addItemToCart_restaurant_terminal_delivery;

  static void _initializeBuilder(
          GAddItemToCartData_addItemToCart_restaurant_terminal_deliveryBuilder
              b) =>
      b..G__typename = 'Terminal';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  static Serializer<
          GAddItemToCartData_addItemToCart_restaurant_terminal_delivery>
      get serializer =>
          _$gAddItemToCartDataAddItemToCartRestaurantTerminalDeliverySerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GAddItemToCartData_addItemToCart_restaurant_terminal_delivery.serializer,
      this) as Map<String, dynamic>);
  static GAddItemToCartData_addItemToCart_restaurant_terminal_delivery?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GAddItemToCartData_addItemToCart_restaurant_terminal_delivery
              .serializer,
          json);
}

abstract class GAddItemToCartData_addItemToCart_restaurant_city
    implements
        Built<GAddItemToCartData_addItemToCart_restaurant_city,
            GAddItemToCartData_addItemToCart_restaurant_cityBuilder>,
        _i2.GCartFragment_restaurant_city,
        _i13.GRestaurantFragment_city,
        _i5.GCityFragment {
  GAddItemToCartData_addItemToCart_restaurant_city._();

  factory GAddItemToCartData_addItemToCart_restaurant_city(
      [Function(GAddItemToCartData_addItemToCart_restaurant_cityBuilder b)
          updates]) = _$GAddItemToCartData_addItemToCart_restaurant_city;

  static void _initializeBuilder(
          GAddItemToCartData_addItemToCart_restaurant_cityBuilder b) =>
      b..G__typename = 'City';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  String? get prefix;
  String? get postal_code;
  String? get city_type;
  bool? get available;
  static Serializer<GAddItemToCartData_addItemToCart_restaurant_city>
      get serializer =>
          _$gAddItemToCartDataAddItemToCartRestaurantCitySerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GAddItemToCartData_addItemToCart_restaurant_city.serializer, this)
      as Map<String, dynamic>);
  static GAddItemToCartData_addItemToCart_restaurant_city? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GAddItemToCartData_addItemToCart_restaurant_city.serializer, json);
}
