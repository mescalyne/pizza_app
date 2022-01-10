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

part 'get_cart.data.gql.g.dart';

abstract class GGetCartQueryData
    implements Built<GGetCartQueryData, GGetCartQueryDataBuilder> {
  GGetCartQueryData._();

  factory GGetCartQueryData([Function(GGetCartQueryDataBuilder b) updates]) =
      _$GGetCartQueryData;

  static void _initializeBuilder(GGetCartQueryDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GGetCartQueryData_getCart get getCart;
  static Serializer<GGetCartQueryData> get serializer =>
      _$gGetCartQueryDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GGetCartQueryData.serializer, this)
          as Map<String, dynamic>);
  static GGetCartQueryData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GGetCartQueryData.serializer, json);
}

abstract class GGetCartQueryData_getCart
    implements
        Built<GGetCartQueryData_getCart, GGetCartQueryData_getCartBuilder>,
        _i2.GCartFragment {
  GGetCartQueryData_getCart._();

  factory GGetCartQueryData_getCart(
          [Function(GGetCartQueryData_getCartBuilder b) updates]) =
      _$GGetCartQueryData_getCart;

  static void _initializeBuilder(GGetCartQueryData_getCartBuilder b) =>
      b..G__typename = 'Cart';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get organization;
  String? get terminal_id;
  GGetCartQueryData_getCart_delivery_address? get delivery_address;
  bool get is_self_service;
  _i3.GCartOrderStatus get cart_order_status;
  _i3.GCartPaymentStatus get cart_payment_status;
  BuiltList<GGetCartQueryData_getCart_items>? get items;
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
  GGetCartQueryData_getCart_order_info? get order_info;
  String? get comment;
  GGetCartQueryData_getCart_restaurant? get restaurant;
  static Serializer<GGetCartQueryData_getCart> get serializer =>
      _$gGetCartQueryDataGetCartSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GGetCartQueryData_getCart.serializer, this)
          as Map<String, dynamic>);
  static GGetCartQueryData_getCart? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GGetCartQueryData_getCart.serializer, json);
}

abstract class GGetCartQueryData_getCart_delivery_address
    implements
        Built<GGetCartQueryData_getCart_delivery_address,
            GGetCartQueryData_getCart_delivery_addressBuilder>,
        _i2.GCartFragment_delivery_address,
        _i4.GDeliveryAddressFragment {
  GGetCartQueryData_getCart_delivery_address._();

  factory GGetCartQueryData_getCart_delivery_address(
      [Function(GGetCartQueryData_getCart_delivery_addressBuilder b)
          updates]) = _$GGetCartQueryData_getCart_delivery_address;

  static void _initializeBuilder(
          GGetCartQueryData_getCart_delivery_addressBuilder b) =>
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
  GGetCartQueryData_getCart_delivery_address_city? get city;
  bool? get address_in_zone;
  static Serializer<GGetCartQueryData_getCart_delivery_address>
      get serializer => _$gGetCartQueryDataGetCartDeliveryAddressSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GGetCartQueryData_getCart_delivery_address.serializer, this)
      as Map<String, dynamic>);
  static GGetCartQueryData_getCart_delivery_address? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GGetCartQueryData_getCart_delivery_address.serializer, json);
}

abstract class GGetCartQueryData_getCart_delivery_address_city
    implements
        Built<GGetCartQueryData_getCart_delivery_address_city,
            GGetCartQueryData_getCart_delivery_address_cityBuilder>,
        _i2.GCartFragment_delivery_address_city,
        _i4.GDeliveryAddressFragment_city,
        _i5.GCityFragment {
  GGetCartQueryData_getCart_delivery_address_city._();

  factory GGetCartQueryData_getCart_delivery_address_city(
      [Function(GGetCartQueryData_getCart_delivery_address_cityBuilder b)
          updates]) = _$GGetCartQueryData_getCart_delivery_address_city;

  static void _initializeBuilder(
          GGetCartQueryData_getCart_delivery_address_cityBuilder b) =>
      b..G__typename = 'City';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  String? get prefix;
  String? get postal_code;
  String? get city_type;
  bool? get available;
  static Serializer<GGetCartQueryData_getCart_delivery_address_city>
      get serializer => _$gGetCartQueryDataGetCartDeliveryAddressCitySerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GGetCartQueryData_getCart_delivery_address_city.serializer, this)
      as Map<String, dynamic>);
  static GGetCartQueryData_getCart_delivery_address_city? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GGetCartQueryData_getCart_delivery_address_city.serializer, json);
}

abstract class GGetCartQueryData_getCart_items
    implements
        Built<GGetCartQueryData_getCart_items,
            GGetCartQueryData_getCart_itemsBuilder>,
        _i2.GCartFragment_items,
        _i6.GCartItemFragment {
  GGetCartQueryData_getCart_items._();

  factory GGetCartQueryData_getCart_items(
          [Function(GGetCartQueryData_getCart_itemsBuilder b) updates]) =
      _$GGetCartQueryData_getCart_items;

  static void _initializeBuilder(GGetCartQueryData_getCart_itemsBuilder b) =>
      b..G__typename = 'CartItem';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  String get product_id;
  GGetCartQueryData_getCart_items_product get product;
  String get name;
  int get amount;
  double? get total;
  double? get discount_sum;
  double? get sum;
  String? get code;
  BuiltList<GGetCartQueryData_getCart_items_modifiers>? get modifiers;
  static Serializer<GGetCartQueryData_getCart_items> get serializer =>
      _$gGetCartQueryDataGetCartItemsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GGetCartQueryData_getCart_items.serializer, this)
      as Map<String, dynamic>);
  static GGetCartQueryData_getCart_items? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GGetCartQueryData_getCart_items.serializer, json);
}

abstract class GGetCartQueryData_getCart_items_product
    implements
        Built<GGetCartQueryData_getCart_items_product,
            GGetCartQueryData_getCart_items_productBuilder>,
        _i2.GCartFragment_items_product,
        _i6.GCartItemFragment_product,
        _i7.GProductFragment {
  GGetCartQueryData_getCart_items_product._();

  factory GGetCartQueryData_getCart_items_product(
      [Function(GGetCartQueryData_getCart_items_productBuilder b)
          updates]) = _$GGetCartQueryData_getCart_items_product;

  static void _initializeBuilder(
          GGetCartQueryData_getCart_items_productBuilder b) =>
      b..G__typename = 'Product';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get parentGroupId;
  String? get groupId;
  GGetCartQueryData_getCart_items_product_parentGroup? get parentGroup;
  GGetCartQueryData_getCart_items_product_group? get group;
  String? get productCategoryId;
  GGetCartQueryData_getCart_items_product_category? get category;
  BuiltList<GGetCartQueryData_getCart_items_product_products_sizes>?
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
  BuiltList<GGetCartQueryData_getCart_items_product_images>? get images;
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
  BuiltList<GGetCartQueryData_getCart_items_product_modifiers>? get modifiers;
  BuiltList<GGetCartQueryData_getCart_items_product_groupModifiers>?
      get groupModifiers;
  static Serializer<GGetCartQueryData_getCart_items_product> get serializer =>
      _$gGetCartQueryDataGetCartItemsProductSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GGetCartQueryData_getCart_items_product.serializer, this)
      as Map<String, dynamic>);
  static GGetCartQueryData_getCart_items_product? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GGetCartQueryData_getCart_items_product.serializer, json);
}

abstract class GGetCartQueryData_getCart_items_product_parentGroup
    implements
        Built<GGetCartQueryData_getCart_items_product_parentGroup,
            GGetCartQueryData_getCart_items_product_parentGroupBuilder>,
        _i2.GCartFragment_items_product_parentGroup,
        _i6.GCartItemFragment_product_parentGroup,
        _i7.GProductFragment_parentGroup {
  GGetCartQueryData_getCart_items_product_parentGroup._();

  factory GGetCartQueryData_getCart_items_product_parentGroup(
      [Function(GGetCartQueryData_getCart_items_product_parentGroupBuilder b)
          updates]) = _$GGetCartQueryData_getCart_items_product_parentGroup;

  static void _initializeBuilder(
          GGetCartQueryData_getCart_items_product_parentGroupBuilder b) =>
      b..G__typename = 'Group';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get parentGroup;
  String? get additionalInfo;
  String get name;
  String? get description;
  static Serializer<GGetCartQueryData_getCart_items_product_parentGroup>
      get serializer =>
          _$gGetCartQueryDataGetCartItemsProductParentGroupSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GGetCartQueryData_getCart_items_product_parentGroup.serializer, this)
      as Map<String, dynamic>);
  static GGetCartQueryData_getCart_items_product_parentGroup? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GGetCartQueryData_getCart_items_product_parentGroup.serializer, json);
}

abstract class GGetCartQueryData_getCart_items_product_group
    implements
        Built<GGetCartQueryData_getCart_items_product_group,
            GGetCartQueryData_getCart_items_product_groupBuilder>,
        _i2.GCartFragment_items_product_group,
        _i6.GCartItemFragment_product_group,
        _i7.GProductFragment_group {
  GGetCartQueryData_getCart_items_product_group._();

  factory GGetCartQueryData_getCart_items_product_group(
      [Function(GGetCartQueryData_getCart_items_product_groupBuilder b)
          updates]) = _$GGetCartQueryData_getCart_items_product_group;

  static void _initializeBuilder(
          GGetCartQueryData_getCart_items_product_groupBuilder b) =>
      b..G__typename = 'Group';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get parentGroup;
  String? get additionalInfo;
  String get name;
  String? get description;
  static Serializer<GGetCartQueryData_getCart_items_product_group>
      get serializer => _$gGetCartQueryDataGetCartItemsProductGroupSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GGetCartQueryData_getCart_items_product_group.serializer, this)
      as Map<String, dynamic>);
  static GGetCartQueryData_getCart_items_product_group? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GGetCartQueryData_getCart_items_product_group.serializer, json);
}

abstract class GGetCartQueryData_getCart_items_product_category
    implements
        Built<GGetCartQueryData_getCart_items_product_category,
            GGetCartQueryData_getCart_items_product_categoryBuilder>,
        _i2.GCartFragment_items_product_category,
        _i6.GCartItemFragment_product_category,
        _i7.GProductFragment_category {
  GGetCartQueryData_getCart_items_product_category._();

  factory GGetCartQueryData_getCart_items_product_category(
      [Function(GGetCartQueryData_getCart_items_product_categoryBuilder b)
          updates]) = _$GGetCartQueryData_getCart_items_product_category;

  static void _initializeBuilder(
          GGetCartQueryData_getCart_items_product_categoryBuilder b) =>
      b..G__typename = 'ProductCategory';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  static Serializer<GGetCartQueryData_getCart_items_product_category>
      get serializer =>
          _$gGetCartQueryDataGetCartItemsProductCategorySerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GGetCartQueryData_getCart_items_product_category.serializer, this)
      as Map<String, dynamic>);
  static GGetCartQueryData_getCart_items_product_category? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GGetCartQueryData_getCart_items_product_category.serializer, json);
}

abstract class GGetCartQueryData_getCart_items_product_products_sizes
    implements
        Built<GGetCartQueryData_getCart_items_product_products_sizes,
            GGetCartQueryData_getCart_items_product_products_sizesBuilder>,
        _i2.GCartFragment_items_product_products_sizes,
        _i6.GCartItemFragment_product_products_sizes,
        _i7.GProductFragment_products_sizes,
        _i8.GProductsSizesFragment {
  GGetCartQueryData_getCart_items_product_products_sizes._();

  factory GGetCartQueryData_getCart_items_product_products_sizes(
      [Function(GGetCartQueryData_getCart_items_product_products_sizesBuilder b)
          updates]) = _$GGetCartQueryData_getCart_items_product_products_sizes;

  static void _initializeBuilder(
          GGetCartQueryData_getCart_items_product_products_sizesBuilder b) =>
      b..G__typename = 'Product';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  String? get additionalInfo;
  String? get description;
  GGetCartQueryData_getCart_items_product_products_sizes_parentGroup?
      get parentGroup;
  BuiltList<GGetCartQueryData_getCart_items_product_products_sizes_images>?
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
  BuiltList<GGetCartQueryData_getCart_items_product_products_sizes_modifiers>?
      get modifiers;
  BuiltList<
          GGetCartQueryData_getCart_items_product_products_sizes_groupModifiers>?
      get groupModifiers;
  static Serializer<GGetCartQueryData_getCart_items_product_products_sizes>
      get serializer =>
          _$gGetCartQueryDataGetCartItemsProductProductsSizesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetCartQueryData_getCart_items_product_products_sizes.serializer,
      this) as Map<String, dynamic>);
  static GGetCartQueryData_getCart_items_product_products_sizes? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GGetCartQueryData_getCart_items_product_products_sizes.serializer,
          json);
}

abstract class GGetCartQueryData_getCart_items_product_products_sizes_parentGroup
    implements
        Built<
            GGetCartQueryData_getCart_items_product_products_sizes_parentGroup,
            GGetCartQueryData_getCart_items_product_products_sizes_parentGroupBuilder>,
        _i2.GCartFragment_items_product_products_sizes_parentGroup,
        _i6.GCartItemFragment_product_products_sizes_parentGroup,
        _i7.GProductFragment_products_sizes_parentGroup,
        _i8.GProductsSizesFragment_parentGroup {
  GGetCartQueryData_getCart_items_product_products_sizes_parentGroup._();

  factory GGetCartQueryData_getCart_items_product_products_sizes_parentGroup(
          [Function(
                  GGetCartQueryData_getCart_items_product_products_sizes_parentGroupBuilder
                      b)
              updates]) =
      _$GGetCartQueryData_getCart_items_product_products_sizes_parentGroup;

  static void _initializeBuilder(
          GGetCartQueryData_getCart_items_product_products_sizes_parentGroupBuilder
              b) =>
      b..G__typename = 'Group';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  static Serializer<
          GGetCartQueryData_getCart_items_product_products_sizes_parentGroup>
      get serializer =>
          _$gGetCartQueryDataGetCartItemsProductProductsSizesParentGroupSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetCartQueryData_getCart_items_product_products_sizes_parentGroup
          .serializer,
      this) as Map<String, dynamic>);
  static GGetCartQueryData_getCart_items_product_products_sizes_parentGroup?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GGetCartQueryData_getCart_items_product_products_sizes_parentGroup
              .serializer,
          json);
}

abstract class GGetCartQueryData_getCart_items_product_products_sizes_images
    implements
        Built<GGetCartQueryData_getCart_items_product_products_sizes_images,
            GGetCartQueryData_getCart_items_product_products_sizes_imagesBuilder>,
        _i2.GCartFragment_items_product_products_sizes_images,
        _i6.GCartItemFragment_product_products_sizes_images,
        _i7.GProductFragment_products_sizes_images,
        _i8.GProductsSizesFragment_images {
  GGetCartQueryData_getCart_items_product_products_sizes_images._();

  factory GGetCartQueryData_getCart_items_product_products_sizes_images(
          [Function(
                  GGetCartQueryData_getCart_items_product_products_sizes_imagesBuilder
                      b)
              updates]) =
      _$GGetCartQueryData_getCart_items_product_products_sizes_images;

  static void _initializeBuilder(
          GGetCartQueryData_getCart_items_product_products_sizes_imagesBuilder
              b) =>
      b..G__typename = 'ProductImage';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get imageId;
  String? get imageUrl;
  static Serializer<
          GGetCartQueryData_getCart_items_product_products_sizes_images>
      get serializer =>
          _$gGetCartQueryDataGetCartItemsProductProductsSizesImagesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetCartQueryData_getCart_items_product_products_sizes_images.serializer,
      this) as Map<String, dynamic>);
  static GGetCartQueryData_getCart_items_product_products_sizes_images?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GGetCartQueryData_getCart_items_product_products_sizes_images
              .serializer,
          json);
}

abstract class GGetCartQueryData_getCart_items_product_products_sizes_modifiers
    implements
        Built<GGetCartQueryData_getCart_items_product_products_sizes_modifiers,
            GGetCartQueryData_getCart_items_product_products_sizes_modifiersBuilder>,
        _i2.GCartFragment_items_product_products_sizes_modifiers,
        _i6.GCartItemFragment_product_products_sizes_modifiers,
        _i7.GProductFragment_products_sizes_modifiers,
        _i8.GProductsSizesFragment_modifiers,
        _i9.GModificatorFragment {
  GGetCartQueryData_getCart_items_product_products_sizes_modifiers._();

  factory GGetCartQueryData_getCart_items_product_products_sizes_modifiers(
          [Function(
                  GGetCartQueryData_getCart_items_product_products_sizes_modifiersBuilder
                      b)
              updates]) =
      _$GGetCartQueryData_getCart_items_product_products_sizes_modifiers;

  static void _initializeBuilder(
          GGetCartQueryData_getCart_items_product_products_sizes_modifiersBuilder
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
          GGetCartQueryData_getCart_items_product_products_sizes_modifiers>
      get serializer =>
          _$gGetCartQueryDataGetCartItemsProductProductsSizesModifiersSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetCartQueryData_getCart_items_product_products_sizes_modifiers
          .serializer,
      this) as Map<String, dynamic>);
  static GGetCartQueryData_getCart_items_product_products_sizes_modifiers?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GGetCartQueryData_getCart_items_product_products_sizes_modifiers
              .serializer,
          json);
}

abstract class GGetCartQueryData_getCart_items_product_products_sizes_groupModifiers
    implements
        Built<
            GGetCartQueryData_getCart_items_product_products_sizes_groupModifiers,
            GGetCartQueryData_getCart_items_product_products_sizes_groupModifiersBuilder>,
        _i2.GCartFragment_items_product_products_sizes_groupModifiers,
        _i6.GCartItemFragment_product_products_sizes_groupModifiers,
        _i7.GProductFragment_products_sizes_groupModifiers,
        _i8.GProductsSizesFragment_groupModifiers,
        _i10.GGroupModificatorFragment {
  GGetCartQueryData_getCart_items_product_products_sizes_groupModifiers._();

  factory GGetCartQueryData_getCart_items_product_products_sizes_groupModifiers(
          [Function(
                  GGetCartQueryData_getCart_items_product_products_sizes_groupModifiersBuilder
                      b)
              updates]) =
      _$GGetCartQueryData_getCart_items_product_products_sizes_groupModifiers;

  static void _initializeBuilder(
          GGetCartQueryData_getCart_items_product_products_sizes_groupModifiersBuilder
              b) =>
      b..G__typename = 'GroupModificator';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get maxAmount;
  int? get minAmount;
  String get modifierId;
  bool? get required;
  BuiltList<
          GGetCartQueryData_getCart_items_product_products_sizes_groupModifiers_childModifiers>?
      get childModifiers;
  bool? get childModifiersHaveMinMaxRestrictions;
  static Serializer<
          GGetCartQueryData_getCart_items_product_products_sizes_groupModifiers>
      get serializer =>
          _$gGetCartQueryDataGetCartItemsProductProductsSizesGroupModifiersSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetCartQueryData_getCart_items_product_products_sizes_groupModifiers
          .serializer,
      this) as Map<String, dynamic>);
  static GGetCartQueryData_getCart_items_product_products_sizes_groupModifiers?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GGetCartQueryData_getCart_items_product_products_sizes_groupModifiers
              .serializer,
          json);
}

abstract class GGetCartQueryData_getCart_items_product_products_sizes_groupModifiers_childModifiers
    implements
        Built<
            GGetCartQueryData_getCart_items_product_products_sizes_groupModifiers_childModifiers,
            GGetCartQueryData_getCart_items_product_products_sizes_groupModifiers_childModifiersBuilder>,
        _i2.GCartFragment_items_product_products_sizes_groupModifiers_childModifiers,
        _i6.GCartItemFragment_product_products_sizes_groupModifiers_childModifiers,
        _i7.GProductFragment_products_sizes_groupModifiers_childModifiers,
        _i8.GProductsSizesFragment_groupModifiers_childModifiers,
        _i10.GGroupModificatorFragment_childModifiers,
        _i9.GModificatorFragment {
  GGetCartQueryData_getCart_items_product_products_sizes_groupModifiers_childModifiers._();

  factory GGetCartQueryData_getCart_items_product_products_sizes_groupModifiers_childModifiers(
          [Function(
                  GGetCartQueryData_getCart_items_product_products_sizes_groupModifiers_childModifiersBuilder
                      b)
              updates]) =
      _$GGetCartQueryData_getCart_items_product_products_sizes_groupModifiers_childModifiers;

  static void _initializeBuilder(
          GGetCartQueryData_getCart_items_product_products_sizes_groupModifiers_childModifiersBuilder
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
          GGetCartQueryData_getCart_items_product_products_sizes_groupModifiers_childModifiers>
      get serializer =>
          _$gGetCartQueryDataGetCartItemsProductProductsSizesGroupModifiersChildModifiersSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetCartQueryData_getCart_items_product_products_sizes_groupModifiers_childModifiers
          .serializer,
      this) as Map<String, dynamic>);
  static GGetCartQueryData_getCart_items_product_products_sizes_groupModifiers_childModifiers?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GGetCartQueryData_getCart_items_product_products_sizes_groupModifiers_childModifiers
              .serializer,
          json);
}

abstract class GGetCartQueryData_getCart_items_product_images
    implements
        Built<GGetCartQueryData_getCart_items_product_images,
            GGetCartQueryData_getCart_items_product_imagesBuilder>,
        _i2.GCartFragment_items_product_images,
        _i6.GCartItemFragment_product_images,
        _i7.GProductFragment_images {
  GGetCartQueryData_getCart_items_product_images._();

  factory GGetCartQueryData_getCart_items_product_images(
      [Function(GGetCartQueryData_getCart_items_product_imagesBuilder b)
          updates]) = _$GGetCartQueryData_getCart_items_product_images;

  static void _initializeBuilder(
          GGetCartQueryData_getCart_items_product_imagesBuilder b) =>
      b..G__typename = 'ProductImage';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get imageId;
  String? get imageUrl;
  static Serializer<GGetCartQueryData_getCart_items_product_images>
      get serializer => _$gGetCartQueryDataGetCartItemsProductImagesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GGetCartQueryData_getCart_items_product_images.serializer, this)
      as Map<String, dynamic>);
  static GGetCartQueryData_getCart_items_product_images? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GGetCartQueryData_getCart_items_product_images.serializer, json);
}

abstract class GGetCartQueryData_getCart_items_product_modifiers
    implements
        Built<GGetCartQueryData_getCart_items_product_modifiers,
            GGetCartQueryData_getCart_items_product_modifiersBuilder>,
        _i2.GCartFragment_items_product_modifiers,
        _i6.GCartItemFragment_product_modifiers,
        _i7.GProductFragment_modifiers,
        _i9.GModificatorFragment {
  GGetCartQueryData_getCart_items_product_modifiers._();

  factory GGetCartQueryData_getCart_items_product_modifiers(
      [Function(GGetCartQueryData_getCart_items_product_modifiersBuilder b)
          updates]) = _$GGetCartQueryData_getCart_items_product_modifiers;

  static void _initializeBuilder(
          GGetCartQueryData_getCart_items_product_modifiersBuilder b) =>
      b..G__typename = 'Modificator';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get maxAmount;
  int? get minAmount;
  String get modifierId;
  bool? get required;
  int? get defaultAmount;
  bool? get hideIfDefaultAmount;
  static Serializer<GGetCartQueryData_getCart_items_product_modifiers>
      get serializer =>
          _$gGetCartQueryDataGetCartItemsProductModifiersSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GGetCartQueryData_getCart_items_product_modifiers.serializer, this)
      as Map<String, dynamic>);
  static GGetCartQueryData_getCart_items_product_modifiers? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GGetCartQueryData_getCart_items_product_modifiers.serializer, json);
}

abstract class GGetCartQueryData_getCart_items_product_groupModifiers
    implements
        Built<GGetCartQueryData_getCart_items_product_groupModifiers,
            GGetCartQueryData_getCart_items_product_groupModifiersBuilder>,
        _i2.GCartFragment_items_product_groupModifiers,
        _i6.GCartItemFragment_product_groupModifiers,
        _i7.GProductFragment_groupModifiers,
        _i10.GGroupModificatorFragment {
  GGetCartQueryData_getCart_items_product_groupModifiers._();

  factory GGetCartQueryData_getCart_items_product_groupModifiers(
      [Function(GGetCartQueryData_getCart_items_product_groupModifiersBuilder b)
          updates]) = _$GGetCartQueryData_getCart_items_product_groupModifiers;

  static void _initializeBuilder(
          GGetCartQueryData_getCart_items_product_groupModifiersBuilder b) =>
      b..G__typename = 'GroupModificator';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get maxAmount;
  int? get minAmount;
  String get modifierId;
  bool? get required;
  BuiltList<
          GGetCartQueryData_getCart_items_product_groupModifiers_childModifiers>?
      get childModifiers;
  bool? get childModifiersHaveMinMaxRestrictions;
  static Serializer<GGetCartQueryData_getCart_items_product_groupModifiers>
      get serializer =>
          _$gGetCartQueryDataGetCartItemsProductGroupModifiersSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetCartQueryData_getCart_items_product_groupModifiers.serializer,
      this) as Map<String, dynamic>);
  static GGetCartQueryData_getCart_items_product_groupModifiers? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GGetCartQueryData_getCart_items_product_groupModifiers.serializer,
          json);
}

abstract class GGetCartQueryData_getCart_items_product_groupModifiers_childModifiers
    implements
        Built<
            GGetCartQueryData_getCart_items_product_groupModifiers_childModifiers,
            GGetCartQueryData_getCart_items_product_groupModifiers_childModifiersBuilder>,
        _i2.GCartFragment_items_product_groupModifiers_childModifiers,
        _i6.GCartItemFragment_product_groupModifiers_childModifiers,
        _i7.GProductFragment_groupModifiers_childModifiers,
        _i10.GGroupModificatorFragment_childModifiers,
        _i9.GModificatorFragment {
  GGetCartQueryData_getCart_items_product_groupModifiers_childModifiers._();

  factory GGetCartQueryData_getCart_items_product_groupModifiers_childModifiers(
          [Function(
                  GGetCartQueryData_getCart_items_product_groupModifiers_childModifiersBuilder
                      b)
              updates]) =
      _$GGetCartQueryData_getCart_items_product_groupModifiers_childModifiers;

  static void _initializeBuilder(
          GGetCartQueryData_getCart_items_product_groupModifiers_childModifiersBuilder
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
          GGetCartQueryData_getCart_items_product_groupModifiers_childModifiers>
      get serializer =>
          _$gGetCartQueryDataGetCartItemsProductGroupModifiersChildModifiersSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetCartQueryData_getCart_items_product_groupModifiers_childModifiers
          .serializer,
      this) as Map<String, dynamic>);
  static GGetCartQueryData_getCart_items_product_groupModifiers_childModifiers?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GGetCartQueryData_getCart_items_product_groupModifiers_childModifiers
              .serializer,
          json);
}

abstract class GGetCartQueryData_getCart_items_modifiers
    implements
        Built<GGetCartQueryData_getCart_items_modifiers,
            GGetCartQueryData_getCart_items_modifiersBuilder>,
        _i2.GCartFragment_items_modifiers,
        _i6.GCartItemFragment_modifiers,
        _i11.GCartItemModifierFragment {
  GGetCartQueryData_getCart_items_modifiers._();

  factory GGetCartQueryData_getCart_items_modifiers(
      [Function(GGetCartQueryData_getCart_items_modifiersBuilder b)
          updates]) = _$GGetCartQueryData_getCart_items_modifiers;

  static void _initializeBuilder(
          GGetCartQueryData_getCart_items_modifiersBuilder b) =>
      b..G__typename = 'CartItemModifier';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get type;
  String get product_id;
  GGetCartQueryData_getCart_items_modifiers_product get product;
  String get name;
  int get amount;
  String? get group_id;
  String? get group_name;
  static Serializer<GGetCartQueryData_getCart_items_modifiers> get serializer =>
      _$gGetCartQueryDataGetCartItemsModifiersSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GGetCartQueryData_getCart_items_modifiers.serializer, this)
      as Map<String, dynamic>);
  static GGetCartQueryData_getCart_items_modifiers? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GGetCartQueryData_getCart_items_modifiers.serializer, json);
}

abstract class GGetCartQueryData_getCart_items_modifiers_product
    implements
        Built<GGetCartQueryData_getCart_items_modifiers_product,
            GGetCartQueryData_getCart_items_modifiers_productBuilder>,
        _i2.GCartFragment_items_modifiers_product,
        _i6.GCartItemFragment_modifiers_product,
        _i11.GCartItemModifierFragment_product,
        _i7.GProductFragment {
  GGetCartQueryData_getCart_items_modifiers_product._();

  factory GGetCartQueryData_getCart_items_modifiers_product(
      [Function(GGetCartQueryData_getCart_items_modifiers_productBuilder b)
          updates]) = _$GGetCartQueryData_getCart_items_modifiers_product;

  static void _initializeBuilder(
          GGetCartQueryData_getCart_items_modifiers_productBuilder b) =>
      b..G__typename = 'Product';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get parentGroupId;
  String? get groupId;
  GGetCartQueryData_getCart_items_modifiers_product_parentGroup?
      get parentGroup;
  GGetCartQueryData_getCart_items_modifiers_product_group? get group;
  String? get productCategoryId;
  GGetCartQueryData_getCart_items_modifiers_product_category? get category;
  BuiltList<GGetCartQueryData_getCart_items_modifiers_product_products_sizes>?
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
  BuiltList<GGetCartQueryData_getCart_items_modifiers_product_images>?
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
  BuiltList<GGetCartQueryData_getCart_items_modifiers_product_modifiers>?
      get modifiers;
  BuiltList<GGetCartQueryData_getCart_items_modifiers_product_groupModifiers>?
      get groupModifiers;
  static Serializer<GGetCartQueryData_getCart_items_modifiers_product>
      get serializer =>
          _$gGetCartQueryDataGetCartItemsModifiersProductSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GGetCartQueryData_getCart_items_modifiers_product.serializer, this)
      as Map<String, dynamic>);
  static GGetCartQueryData_getCart_items_modifiers_product? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GGetCartQueryData_getCart_items_modifiers_product.serializer, json);
}

abstract class GGetCartQueryData_getCart_items_modifiers_product_parentGroup
    implements
        Built<GGetCartQueryData_getCart_items_modifiers_product_parentGroup,
            GGetCartQueryData_getCart_items_modifiers_product_parentGroupBuilder>,
        _i2.GCartFragment_items_modifiers_product_parentGroup,
        _i6.GCartItemFragment_modifiers_product_parentGroup,
        _i11.GCartItemModifierFragment_product_parentGroup,
        _i7.GProductFragment_parentGroup {
  GGetCartQueryData_getCart_items_modifiers_product_parentGroup._();

  factory GGetCartQueryData_getCart_items_modifiers_product_parentGroup(
          [Function(
                  GGetCartQueryData_getCart_items_modifiers_product_parentGroupBuilder
                      b)
              updates]) =
      _$GGetCartQueryData_getCart_items_modifiers_product_parentGroup;

  static void _initializeBuilder(
          GGetCartQueryData_getCart_items_modifiers_product_parentGroupBuilder
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
          GGetCartQueryData_getCart_items_modifiers_product_parentGroup>
      get serializer =>
          _$gGetCartQueryDataGetCartItemsModifiersProductParentGroupSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetCartQueryData_getCart_items_modifiers_product_parentGroup.serializer,
      this) as Map<String, dynamic>);
  static GGetCartQueryData_getCart_items_modifiers_product_parentGroup?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GGetCartQueryData_getCart_items_modifiers_product_parentGroup
              .serializer,
          json);
}

abstract class GGetCartQueryData_getCart_items_modifiers_product_group
    implements
        Built<GGetCartQueryData_getCart_items_modifiers_product_group,
            GGetCartQueryData_getCart_items_modifiers_product_groupBuilder>,
        _i2.GCartFragment_items_modifiers_product_group,
        _i6.GCartItemFragment_modifiers_product_group,
        _i11.GCartItemModifierFragment_product_group,
        _i7.GProductFragment_group {
  GGetCartQueryData_getCart_items_modifiers_product_group._();

  factory GGetCartQueryData_getCart_items_modifiers_product_group(
      [Function(
              GGetCartQueryData_getCart_items_modifiers_product_groupBuilder b)
          updates]) = _$GGetCartQueryData_getCart_items_modifiers_product_group;

  static void _initializeBuilder(
          GGetCartQueryData_getCart_items_modifiers_product_groupBuilder b) =>
      b..G__typename = 'Group';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get parentGroup;
  String? get additionalInfo;
  String get name;
  String? get description;
  static Serializer<GGetCartQueryData_getCart_items_modifiers_product_group>
      get serializer =>
          _$gGetCartQueryDataGetCartItemsModifiersProductGroupSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetCartQueryData_getCart_items_modifiers_product_group.serializer,
      this) as Map<String, dynamic>);
  static GGetCartQueryData_getCart_items_modifiers_product_group? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GGetCartQueryData_getCart_items_modifiers_product_group.serializer,
          json);
}

abstract class GGetCartQueryData_getCart_items_modifiers_product_category
    implements
        Built<GGetCartQueryData_getCart_items_modifiers_product_category,
            GGetCartQueryData_getCart_items_modifiers_product_categoryBuilder>,
        _i2.GCartFragment_items_modifiers_product_category,
        _i6.GCartItemFragment_modifiers_product_category,
        _i11.GCartItemModifierFragment_product_category,
        _i7.GProductFragment_category {
  GGetCartQueryData_getCart_items_modifiers_product_category._();

  factory GGetCartQueryData_getCart_items_modifiers_product_category(
      [Function(
              GGetCartQueryData_getCart_items_modifiers_product_categoryBuilder
                  b)
          updates]) = _$GGetCartQueryData_getCart_items_modifiers_product_category;

  static void _initializeBuilder(
          GGetCartQueryData_getCart_items_modifiers_product_categoryBuilder
              b) =>
      b..G__typename = 'ProductCategory';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  static Serializer<GGetCartQueryData_getCart_items_modifiers_product_category>
      get serializer =>
          _$gGetCartQueryDataGetCartItemsModifiersProductCategorySerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetCartQueryData_getCart_items_modifiers_product_category.serializer,
      this) as Map<String, dynamic>);
  static GGetCartQueryData_getCart_items_modifiers_product_category? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GGetCartQueryData_getCart_items_modifiers_product_category.serializer,
          json);
}

abstract class GGetCartQueryData_getCart_items_modifiers_product_products_sizes
    implements
        Built<GGetCartQueryData_getCart_items_modifiers_product_products_sizes,
            GGetCartQueryData_getCart_items_modifiers_product_products_sizesBuilder>,
        _i2.GCartFragment_items_modifiers_product_products_sizes,
        _i6.GCartItemFragment_modifiers_product_products_sizes,
        _i11.GCartItemModifierFragment_product_products_sizes,
        _i7.GProductFragment_products_sizes,
        _i8.GProductsSizesFragment {
  GGetCartQueryData_getCart_items_modifiers_product_products_sizes._();

  factory GGetCartQueryData_getCart_items_modifiers_product_products_sizes(
          [Function(
                  GGetCartQueryData_getCart_items_modifiers_product_products_sizesBuilder
                      b)
              updates]) =
      _$GGetCartQueryData_getCart_items_modifiers_product_products_sizes;

  static void _initializeBuilder(
          GGetCartQueryData_getCart_items_modifiers_product_products_sizesBuilder
              b) =>
      b..G__typename = 'Product';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  String? get additionalInfo;
  String? get description;
  GGetCartQueryData_getCart_items_modifiers_product_products_sizes_parentGroup?
      get parentGroup;
  BuiltList<
          GGetCartQueryData_getCart_items_modifiers_product_products_sizes_images>?
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
          GGetCartQueryData_getCart_items_modifiers_product_products_sizes_modifiers>?
      get modifiers;
  BuiltList<
          GGetCartQueryData_getCart_items_modifiers_product_products_sizes_groupModifiers>?
      get groupModifiers;
  static Serializer<
          GGetCartQueryData_getCart_items_modifiers_product_products_sizes>
      get serializer =>
          _$gGetCartQueryDataGetCartItemsModifiersProductProductsSizesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetCartQueryData_getCart_items_modifiers_product_products_sizes
          .serializer,
      this) as Map<String, dynamic>);
  static GGetCartQueryData_getCart_items_modifiers_product_products_sizes?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GGetCartQueryData_getCart_items_modifiers_product_products_sizes
              .serializer,
          json);
}

abstract class GGetCartQueryData_getCart_items_modifiers_product_products_sizes_parentGroup
    implements
        Built<
            GGetCartQueryData_getCart_items_modifiers_product_products_sizes_parentGroup,
            GGetCartQueryData_getCart_items_modifiers_product_products_sizes_parentGroupBuilder>,
        _i2.GCartFragment_items_modifiers_product_products_sizes_parentGroup,
        _i6.GCartItemFragment_modifiers_product_products_sizes_parentGroup,
        _i11.GCartItemModifierFragment_product_products_sizes_parentGroup,
        _i7.GProductFragment_products_sizes_parentGroup,
        _i8.GProductsSizesFragment_parentGroup {
  GGetCartQueryData_getCart_items_modifiers_product_products_sizes_parentGroup._();

  factory GGetCartQueryData_getCart_items_modifiers_product_products_sizes_parentGroup(
          [Function(
                  GGetCartQueryData_getCart_items_modifiers_product_products_sizes_parentGroupBuilder
                      b)
              updates]) =
      _$GGetCartQueryData_getCart_items_modifiers_product_products_sizes_parentGroup;

  static void _initializeBuilder(
          GGetCartQueryData_getCart_items_modifiers_product_products_sizes_parentGroupBuilder
              b) =>
      b..G__typename = 'Group';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  static Serializer<
          GGetCartQueryData_getCart_items_modifiers_product_products_sizes_parentGroup>
      get serializer =>
          _$gGetCartQueryDataGetCartItemsModifiersProductProductsSizesParentGroupSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetCartQueryData_getCart_items_modifiers_product_products_sizes_parentGroup
          .serializer,
      this) as Map<String, dynamic>);
  static GGetCartQueryData_getCart_items_modifiers_product_products_sizes_parentGroup?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GGetCartQueryData_getCart_items_modifiers_product_products_sizes_parentGroup
              .serializer,
          json);
}

abstract class GGetCartQueryData_getCart_items_modifiers_product_products_sizes_images
    implements
        Built<
            GGetCartQueryData_getCart_items_modifiers_product_products_sizes_images,
            GGetCartQueryData_getCart_items_modifiers_product_products_sizes_imagesBuilder>,
        _i2.GCartFragment_items_modifiers_product_products_sizes_images,
        _i6.GCartItemFragment_modifiers_product_products_sizes_images,
        _i11.GCartItemModifierFragment_product_products_sizes_images,
        _i7.GProductFragment_products_sizes_images,
        _i8.GProductsSizesFragment_images {
  GGetCartQueryData_getCart_items_modifiers_product_products_sizes_images._();

  factory GGetCartQueryData_getCart_items_modifiers_product_products_sizes_images(
          [Function(
                  GGetCartQueryData_getCart_items_modifiers_product_products_sizes_imagesBuilder
                      b)
              updates]) =
      _$GGetCartQueryData_getCart_items_modifiers_product_products_sizes_images;

  static void _initializeBuilder(
          GGetCartQueryData_getCart_items_modifiers_product_products_sizes_imagesBuilder
              b) =>
      b..G__typename = 'ProductImage';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get imageId;
  String? get imageUrl;
  static Serializer<
          GGetCartQueryData_getCart_items_modifiers_product_products_sizes_images>
      get serializer =>
          _$gGetCartQueryDataGetCartItemsModifiersProductProductsSizesImagesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetCartQueryData_getCart_items_modifiers_product_products_sizes_images
          .serializer,
      this) as Map<String, dynamic>);
  static GGetCartQueryData_getCart_items_modifiers_product_products_sizes_images?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GGetCartQueryData_getCart_items_modifiers_product_products_sizes_images
              .serializer,
          json);
}

abstract class GGetCartQueryData_getCart_items_modifiers_product_products_sizes_modifiers
    implements
        Built<
            GGetCartQueryData_getCart_items_modifiers_product_products_sizes_modifiers,
            GGetCartQueryData_getCart_items_modifiers_product_products_sizes_modifiersBuilder>,
        _i2.GCartFragment_items_modifiers_product_products_sizes_modifiers,
        _i6.GCartItemFragment_modifiers_product_products_sizes_modifiers,
        _i11.GCartItemModifierFragment_product_products_sizes_modifiers,
        _i7.GProductFragment_products_sizes_modifiers,
        _i8.GProductsSizesFragment_modifiers,
        _i9.GModificatorFragment {
  GGetCartQueryData_getCart_items_modifiers_product_products_sizes_modifiers._();

  factory GGetCartQueryData_getCart_items_modifiers_product_products_sizes_modifiers(
          [Function(
                  GGetCartQueryData_getCart_items_modifiers_product_products_sizes_modifiersBuilder
                      b)
              updates]) =
      _$GGetCartQueryData_getCart_items_modifiers_product_products_sizes_modifiers;

  static void _initializeBuilder(
          GGetCartQueryData_getCart_items_modifiers_product_products_sizes_modifiersBuilder
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
          GGetCartQueryData_getCart_items_modifiers_product_products_sizes_modifiers>
      get serializer =>
          _$gGetCartQueryDataGetCartItemsModifiersProductProductsSizesModifiersSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetCartQueryData_getCart_items_modifiers_product_products_sizes_modifiers
          .serializer,
      this) as Map<String, dynamic>);
  static GGetCartQueryData_getCart_items_modifiers_product_products_sizes_modifiers?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GGetCartQueryData_getCart_items_modifiers_product_products_sizes_modifiers
              .serializer,
          json);
}

abstract class GGetCartQueryData_getCart_items_modifiers_product_products_sizes_groupModifiers
    implements
        Built<
            GGetCartQueryData_getCart_items_modifiers_product_products_sizes_groupModifiers,
            GGetCartQueryData_getCart_items_modifiers_product_products_sizes_groupModifiersBuilder>,
        _i2.GCartFragment_items_modifiers_product_products_sizes_groupModifiers,
        _i6.GCartItemFragment_modifiers_product_products_sizes_groupModifiers,
        _i11.GCartItemModifierFragment_product_products_sizes_groupModifiers,
        _i7.GProductFragment_products_sizes_groupModifiers,
        _i8.GProductsSizesFragment_groupModifiers,
        _i10.GGroupModificatorFragment {
  GGetCartQueryData_getCart_items_modifiers_product_products_sizes_groupModifiers._();

  factory GGetCartQueryData_getCart_items_modifiers_product_products_sizes_groupModifiers(
          [Function(
                  GGetCartQueryData_getCart_items_modifiers_product_products_sizes_groupModifiersBuilder
                      b)
              updates]) =
      _$GGetCartQueryData_getCart_items_modifiers_product_products_sizes_groupModifiers;

  static void _initializeBuilder(
          GGetCartQueryData_getCart_items_modifiers_product_products_sizes_groupModifiersBuilder
              b) =>
      b..G__typename = 'GroupModificator';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get maxAmount;
  int? get minAmount;
  String get modifierId;
  bool? get required;
  BuiltList<
          GGetCartQueryData_getCart_items_modifiers_product_products_sizes_groupModifiers_childModifiers>?
      get childModifiers;
  bool? get childModifiersHaveMinMaxRestrictions;
  static Serializer<
          GGetCartQueryData_getCart_items_modifiers_product_products_sizes_groupModifiers>
      get serializer =>
          _$gGetCartQueryDataGetCartItemsModifiersProductProductsSizesGroupModifiersSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetCartQueryData_getCart_items_modifiers_product_products_sizes_groupModifiers
          .serializer,
      this) as Map<String, dynamic>);
  static GGetCartQueryData_getCart_items_modifiers_product_products_sizes_groupModifiers?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GGetCartQueryData_getCart_items_modifiers_product_products_sizes_groupModifiers
              .serializer,
          json);
}

abstract class GGetCartQueryData_getCart_items_modifiers_product_products_sizes_groupModifiers_childModifiers
    implements
        Built<
            GGetCartQueryData_getCart_items_modifiers_product_products_sizes_groupModifiers_childModifiers,
            GGetCartQueryData_getCart_items_modifiers_product_products_sizes_groupModifiers_childModifiersBuilder>,
        _i2.GCartFragment_items_modifiers_product_products_sizes_groupModifiers_childModifiers,
        _i6.GCartItemFragment_modifiers_product_products_sizes_groupModifiers_childModifiers,
        _i11.GCartItemModifierFragment_product_products_sizes_groupModifiers_childModifiers,
        _i7.GProductFragment_products_sizes_groupModifiers_childModifiers,
        _i8.GProductsSizesFragment_groupModifiers_childModifiers,
        _i10.GGroupModificatorFragment_childModifiers,
        _i9.GModificatorFragment {
  GGetCartQueryData_getCart_items_modifiers_product_products_sizes_groupModifiers_childModifiers._();

  factory GGetCartQueryData_getCart_items_modifiers_product_products_sizes_groupModifiers_childModifiers(
          [Function(
                  GGetCartQueryData_getCart_items_modifiers_product_products_sizes_groupModifiers_childModifiersBuilder
                      b)
              updates]) =
      _$GGetCartQueryData_getCart_items_modifiers_product_products_sizes_groupModifiers_childModifiers;

  static void _initializeBuilder(
          GGetCartQueryData_getCart_items_modifiers_product_products_sizes_groupModifiers_childModifiersBuilder
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
          GGetCartQueryData_getCart_items_modifiers_product_products_sizes_groupModifiers_childModifiers>
      get serializer =>
          _$gGetCartQueryDataGetCartItemsModifiersProductProductsSizesGroupModifiersChildModifiersSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetCartQueryData_getCart_items_modifiers_product_products_sizes_groupModifiers_childModifiers
          .serializer,
      this) as Map<String, dynamic>);
  static GGetCartQueryData_getCart_items_modifiers_product_products_sizes_groupModifiers_childModifiers?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GGetCartQueryData_getCart_items_modifiers_product_products_sizes_groupModifiers_childModifiers
              .serializer,
          json);
}

abstract class GGetCartQueryData_getCart_items_modifiers_product_images
    implements
        Built<GGetCartQueryData_getCart_items_modifiers_product_images,
            GGetCartQueryData_getCart_items_modifiers_product_imagesBuilder>,
        _i2.GCartFragment_items_modifiers_product_images,
        _i6.GCartItemFragment_modifiers_product_images,
        _i11.GCartItemModifierFragment_product_images,
        _i7.GProductFragment_images {
  GGetCartQueryData_getCart_items_modifiers_product_images._();

  factory GGetCartQueryData_getCart_items_modifiers_product_images(
      [Function(
              GGetCartQueryData_getCart_items_modifiers_product_imagesBuilder b)
          updates]) = _$GGetCartQueryData_getCart_items_modifiers_product_images;

  static void _initializeBuilder(
          GGetCartQueryData_getCart_items_modifiers_product_imagesBuilder b) =>
      b..G__typename = 'ProductImage';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get imageId;
  String? get imageUrl;
  static Serializer<GGetCartQueryData_getCart_items_modifiers_product_images>
      get serializer =>
          _$gGetCartQueryDataGetCartItemsModifiersProductImagesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetCartQueryData_getCart_items_modifiers_product_images.serializer,
      this) as Map<String, dynamic>);
  static GGetCartQueryData_getCart_items_modifiers_product_images? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GGetCartQueryData_getCart_items_modifiers_product_images.serializer,
          json);
}

abstract class GGetCartQueryData_getCart_items_modifiers_product_modifiers
    implements
        Built<GGetCartQueryData_getCart_items_modifiers_product_modifiers,
            GGetCartQueryData_getCart_items_modifiers_product_modifiersBuilder>,
        _i2.GCartFragment_items_modifiers_product_modifiers,
        _i6.GCartItemFragment_modifiers_product_modifiers,
        _i11.GCartItemModifierFragment_product_modifiers,
        _i7.GProductFragment_modifiers,
        _i9.GModificatorFragment {
  GGetCartQueryData_getCart_items_modifiers_product_modifiers._();

  factory GGetCartQueryData_getCart_items_modifiers_product_modifiers(
      [Function(
              GGetCartQueryData_getCart_items_modifiers_product_modifiersBuilder
                  b)
          updates]) = _$GGetCartQueryData_getCart_items_modifiers_product_modifiers;

  static void _initializeBuilder(
          GGetCartQueryData_getCart_items_modifiers_product_modifiersBuilder
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
  static Serializer<GGetCartQueryData_getCart_items_modifiers_product_modifiers>
      get serializer =>
          _$gGetCartQueryDataGetCartItemsModifiersProductModifiersSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetCartQueryData_getCart_items_modifiers_product_modifiers.serializer,
      this) as Map<String, dynamic>);
  static GGetCartQueryData_getCart_items_modifiers_product_modifiers? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GGetCartQueryData_getCart_items_modifiers_product_modifiers
              .serializer,
          json);
}

abstract class GGetCartQueryData_getCart_items_modifiers_product_groupModifiers
    implements
        Built<GGetCartQueryData_getCart_items_modifiers_product_groupModifiers,
            GGetCartQueryData_getCart_items_modifiers_product_groupModifiersBuilder>,
        _i2.GCartFragment_items_modifiers_product_groupModifiers,
        _i6.GCartItemFragment_modifiers_product_groupModifiers,
        _i11.GCartItemModifierFragment_product_groupModifiers,
        _i7.GProductFragment_groupModifiers,
        _i10.GGroupModificatorFragment {
  GGetCartQueryData_getCart_items_modifiers_product_groupModifiers._();

  factory GGetCartQueryData_getCart_items_modifiers_product_groupModifiers(
          [Function(
                  GGetCartQueryData_getCart_items_modifiers_product_groupModifiersBuilder
                      b)
              updates]) =
      _$GGetCartQueryData_getCart_items_modifiers_product_groupModifiers;

  static void _initializeBuilder(
          GGetCartQueryData_getCart_items_modifiers_product_groupModifiersBuilder
              b) =>
      b..G__typename = 'GroupModificator';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get maxAmount;
  int? get minAmount;
  String get modifierId;
  bool? get required;
  BuiltList<
          GGetCartQueryData_getCart_items_modifiers_product_groupModifiers_childModifiers>?
      get childModifiers;
  bool? get childModifiersHaveMinMaxRestrictions;
  static Serializer<
          GGetCartQueryData_getCart_items_modifiers_product_groupModifiers>
      get serializer =>
          _$gGetCartQueryDataGetCartItemsModifiersProductGroupModifiersSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetCartQueryData_getCart_items_modifiers_product_groupModifiers
          .serializer,
      this) as Map<String, dynamic>);
  static GGetCartQueryData_getCart_items_modifiers_product_groupModifiers?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GGetCartQueryData_getCart_items_modifiers_product_groupModifiers
              .serializer,
          json);
}

abstract class GGetCartQueryData_getCart_items_modifiers_product_groupModifiers_childModifiers
    implements
        Built<
            GGetCartQueryData_getCart_items_modifiers_product_groupModifiers_childModifiers,
            GGetCartQueryData_getCart_items_modifiers_product_groupModifiers_childModifiersBuilder>,
        _i2.GCartFragment_items_modifiers_product_groupModifiers_childModifiers,
        _i6.GCartItemFragment_modifiers_product_groupModifiers_childModifiers,
        _i11.GCartItemModifierFragment_product_groupModifiers_childModifiers,
        _i7.GProductFragment_groupModifiers_childModifiers,
        _i10.GGroupModificatorFragment_childModifiers,
        _i9.GModificatorFragment {
  GGetCartQueryData_getCart_items_modifiers_product_groupModifiers_childModifiers._();

  factory GGetCartQueryData_getCart_items_modifiers_product_groupModifiers_childModifiers(
          [Function(
                  GGetCartQueryData_getCart_items_modifiers_product_groupModifiers_childModifiersBuilder
                      b)
              updates]) =
      _$GGetCartQueryData_getCart_items_modifiers_product_groupModifiers_childModifiers;

  static void _initializeBuilder(
          GGetCartQueryData_getCart_items_modifiers_product_groupModifiers_childModifiersBuilder
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
          GGetCartQueryData_getCart_items_modifiers_product_groupModifiers_childModifiers>
      get serializer =>
          _$gGetCartQueryDataGetCartItemsModifiersProductGroupModifiersChildModifiersSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetCartQueryData_getCart_items_modifiers_product_groupModifiers_childModifiers
          .serializer,
      this) as Map<String, dynamic>);
  static GGetCartQueryData_getCart_items_modifiers_product_groupModifiers_childModifiers?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GGetCartQueryData_getCart_items_modifiers_product_groupModifiers_childModifiers
              .serializer,
          json);
}

abstract class GGetCartQueryData_getCart_order_info
    implements
        Built<GGetCartQueryData_getCart_order_info,
            GGetCartQueryData_getCart_order_infoBuilder>,
        _i2.GCartFragment_order_info,
        _i12.GOrderInfoFragment {
  GGetCartQueryData_getCart_order_info._();

  factory GGetCartQueryData_getCart_order_info(
          [Function(GGetCartQueryData_getCart_order_infoBuilder b) updates]) =
      _$GGetCartQueryData_getCart_order_info;

  static void _initializeBuilder(
          GGetCartQueryData_getCart_order_infoBuilder b) =>
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
  static Serializer<GGetCartQueryData_getCart_order_info> get serializer =>
      _$gGetCartQueryDataGetCartOrderInfoSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GGetCartQueryData_getCart_order_info.serializer, this)
      as Map<String, dynamic>);
  static GGetCartQueryData_getCart_order_info? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GGetCartQueryData_getCart_order_info.serializer, json);
}

abstract class GGetCartQueryData_getCart_restaurant
    implements
        Built<GGetCartQueryData_getCart_restaurant,
            GGetCartQueryData_getCart_restaurantBuilder>,
        _i2.GCartFragment_restaurant,
        _i13.GRestaurantFragment {
  GGetCartQueryData_getCart_restaurant._();

  factory GGetCartQueryData_getCart_restaurant(
          [Function(GGetCartQueryData_getCart_restaurantBuilder b) updates]) =
      _$GGetCartQueryData_getCart_restaurant;

  static void _initializeBuilder(
          GGetCartQueryData_getCart_restaurantBuilder b) =>
      b..G__typename = 'Restaurant';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  String? get address;
  GGetCartQueryData_getCart_restaurant_terminal_kitchen? get terminal_kitchen;
  GGetCartQueryData_getCart_restaurant_terminal_delivery? get terminal_delivery;
  String? get latitude;
  String? get longitude;
  String? get open_at;
  String? get close_at;
  bool? get is_open;
  String? get delivery_open_at;
  String? get delivery_close_at;
  bool? get is_delivery_open;
  GGetCartQueryData_getCart_restaurant_city? get city;
  static Serializer<GGetCartQueryData_getCart_restaurant> get serializer =>
      _$gGetCartQueryDataGetCartRestaurantSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GGetCartQueryData_getCart_restaurant.serializer, this)
      as Map<String, dynamic>);
  static GGetCartQueryData_getCart_restaurant? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GGetCartQueryData_getCart_restaurant.serializer, json);
}

abstract class GGetCartQueryData_getCart_restaurant_terminal_kitchen
    implements
        Built<GGetCartQueryData_getCart_restaurant_terminal_kitchen,
            GGetCartQueryData_getCart_restaurant_terminal_kitchenBuilder>,
        _i2.GCartFragment_restaurant_terminal_kitchen,
        _i13.GRestaurantFragment_terminal_kitchen,
        _i14.GTerminalFragment {
  GGetCartQueryData_getCart_restaurant_terminal_kitchen._();

  factory GGetCartQueryData_getCart_restaurant_terminal_kitchen(
      [Function(GGetCartQueryData_getCart_restaurant_terminal_kitchenBuilder b)
          updates]) = _$GGetCartQueryData_getCart_restaurant_terminal_kitchen;

  static void _initializeBuilder(
          GGetCartQueryData_getCart_restaurant_terminal_kitchenBuilder b) =>
      b..G__typename = 'Terminal';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  static Serializer<GGetCartQueryData_getCart_restaurant_terminal_kitchen>
      get serializer =>
          _$gGetCartQueryDataGetCartRestaurantTerminalKitchenSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetCartQueryData_getCart_restaurant_terminal_kitchen.serializer,
      this) as Map<String, dynamic>);
  static GGetCartQueryData_getCart_restaurant_terminal_kitchen? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GGetCartQueryData_getCart_restaurant_terminal_kitchen.serializer,
          json);
}

abstract class GGetCartQueryData_getCart_restaurant_terminal_delivery
    implements
        Built<GGetCartQueryData_getCart_restaurant_terminal_delivery,
            GGetCartQueryData_getCart_restaurant_terminal_deliveryBuilder>,
        _i2.GCartFragment_restaurant_terminal_delivery,
        _i13.GRestaurantFragment_terminal_delivery,
        _i14.GTerminalFragment {
  GGetCartQueryData_getCart_restaurant_terminal_delivery._();

  factory GGetCartQueryData_getCart_restaurant_terminal_delivery(
      [Function(GGetCartQueryData_getCart_restaurant_terminal_deliveryBuilder b)
          updates]) = _$GGetCartQueryData_getCart_restaurant_terminal_delivery;

  static void _initializeBuilder(
          GGetCartQueryData_getCart_restaurant_terminal_deliveryBuilder b) =>
      b..G__typename = 'Terminal';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  static Serializer<GGetCartQueryData_getCart_restaurant_terminal_delivery>
      get serializer =>
          _$gGetCartQueryDataGetCartRestaurantTerminalDeliverySerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetCartQueryData_getCart_restaurant_terminal_delivery.serializer,
      this) as Map<String, dynamic>);
  static GGetCartQueryData_getCart_restaurant_terminal_delivery? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GGetCartQueryData_getCart_restaurant_terminal_delivery.serializer,
          json);
}

abstract class GGetCartQueryData_getCart_restaurant_city
    implements
        Built<GGetCartQueryData_getCart_restaurant_city,
            GGetCartQueryData_getCart_restaurant_cityBuilder>,
        _i2.GCartFragment_restaurant_city,
        _i13.GRestaurantFragment_city,
        _i5.GCityFragment {
  GGetCartQueryData_getCart_restaurant_city._();

  factory GGetCartQueryData_getCart_restaurant_city(
      [Function(GGetCartQueryData_getCart_restaurant_cityBuilder b)
          updates]) = _$GGetCartQueryData_getCart_restaurant_city;

  static void _initializeBuilder(
          GGetCartQueryData_getCart_restaurant_cityBuilder b) =>
      b..G__typename = 'City';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  String? get prefix;
  String? get postal_code;
  String? get city_type;
  bool? get available;
  static Serializer<GGetCartQueryData_getCart_restaurant_city> get serializer =>
      _$gGetCartQueryDataGetCartRestaurantCitySerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GGetCartQueryData_getCart_restaurant_city.serializer, this)
      as Map<String, dynamic>);
  static GGetCartQueryData_getCart_restaurant_city? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GGetCartQueryData_getCart_restaurant_city.serializer, json);
}
