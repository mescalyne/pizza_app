// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:toto_mobile/src/core/data/network/models/cart_fragment.data.gql.dart'
    as _i4;
import 'package:toto_mobile/src/core/data/network/models/cartItem_fragment.data.gql.dart'
    as _i8;
import 'package:toto_mobile/src/core/data/network/models/cartItem_modifier_fragment.data.gql.dart'
    as _i13;
import 'package:toto_mobile/src/core/data/network/models/carts_paginator.data.gql.dart'
    as _i2;
import 'package:toto_mobile/src/core/data/network/models/city_fragment.data.gql.dart'
    as _i7;
import 'package:toto_mobile/src/core/data/network/models/delivery_address_fragment.data.gql.dart'
    as _i6;
import 'package:toto_mobile/src/core/data/network/models/group_modificator_fragment.data.gql.dart'
    as _i12;
import 'package:toto_mobile/src/core/data/network/models/modificator_fragment.data.gql.dart'
    as _i11;
import 'package:toto_mobile/src/core/data/network/models/order_info_fragment.data.gql.dart'
    as _i14;
import 'package:toto_mobile/src/core/data/network/models/paginator_info_fragment.data.gql.dart'
    as _i3;
import 'package:toto_mobile/src/core/data/network/models/product_fragment.data.gql.dart'
    as _i9;
import 'package:toto_mobile/src/core/data/network/models/products_size_fragment.data.gql.dart'
    as _i10;
import 'package:toto_mobile/src/core/data/network/models/restaurants_fragment.data.gql.dart'
    as _i15;
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i1;
import 'package:toto_mobile/src/core/data/network/models/terminal_fragment.data.gql.dart'
    as _i16;
import 'package:toto_mobile/src/core/data/network/models/toto.schema.schema.gql.dart'
    as _i5;

part 'get_archived_carts.data.gql.g.dart';

abstract class GGetArchivedCartsQueryData
    implements
        Built<GGetArchivedCartsQueryData, GGetArchivedCartsQueryDataBuilder> {
  GGetArchivedCartsQueryData._();

  factory GGetArchivedCartsQueryData(
          [Function(GGetArchivedCartsQueryDataBuilder b) updates]) =
      _$GGetArchivedCartsQueryData;

  static void _initializeBuilder(GGetArchivedCartsQueryDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GGetArchivedCartsQueryData_getArchivedCarts get getArchivedCarts;
  static Serializer<GGetArchivedCartsQueryData> get serializer =>
      _$gGetArchivedCartsQueryDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetArchivedCartsQueryData.serializer, this) as Map<String, dynamic>);
  static GGetArchivedCartsQueryData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GGetArchivedCartsQueryData.serializer, json);
}

abstract class GGetArchivedCartsQueryData_getArchivedCarts
    implements
        Built<GGetArchivedCartsQueryData_getArchivedCarts,
            GGetArchivedCartsQueryData_getArchivedCartsBuilder>,
        _i2.GCartsPaginatorFragment {
  GGetArchivedCartsQueryData_getArchivedCarts._();

  factory GGetArchivedCartsQueryData_getArchivedCarts(
      [Function(GGetArchivedCartsQueryData_getArchivedCartsBuilder b)
          updates]) = _$GGetArchivedCartsQueryData_getArchivedCarts;

  static void _initializeBuilder(
          GGetArchivedCartsQueryData_getArchivedCartsBuilder b) =>
      b..G__typename = 'CartsPaginator';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GGetArchivedCartsQueryData_getArchivedCarts_paginatorInfo? get paginatorInfo;
  BuiltList<GGetArchivedCartsQueryData_getArchivedCarts_data>? get data;
  static Serializer<GGetArchivedCartsQueryData_getArchivedCarts>
      get serializer => _$gGetArchivedCartsQueryDataGetArchivedCartsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GGetArchivedCartsQueryData_getArchivedCarts.serializer, this)
      as Map<String, dynamic>);
  static GGetArchivedCartsQueryData_getArchivedCarts? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GGetArchivedCartsQueryData_getArchivedCarts.serializer, json);
}

abstract class GGetArchivedCartsQueryData_getArchivedCarts_paginatorInfo
    implements
        Built<GGetArchivedCartsQueryData_getArchivedCarts_paginatorInfo,
            GGetArchivedCartsQueryData_getArchivedCarts_paginatorInfoBuilder>,
        _i2.GCartsPaginatorFragment_paginatorInfo,
        _i3.GPaginatorInfoFragment {
  GGetArchivedCartsQueryData_getArchivedCarts_paginatorInfo._();

  factory GGetArchivedCartsQueryData_getArchivedCarts_paginatorInfo(
      [Function(
              GGetArchivedCartsQueryData_getArchivedCarts_paginatorInfoBuilder
                  b)
          updates]) = _$GGetArchivedCartsQueryData_getArchivedCarts_paginatorInfo;

  static void _initializeBuilder(
          GGetArchivedCartsQueryData_getArchivedCarts_paginatorInfoBuilder b) =>
      b..G__typename = 'PaginatorInfo';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get count;
  int get currentPage;
  int? get firstItem;
  bool get hasMorePages;
  int? get lastItem;
  int get lastPage;
  int get perPage;
  int get total;
  static Serializer<GGetArchivedCartsQueryData_getArchivedCarts_paginatorInfo>
      get serializer =>
          _$gGetArchivedCartsQueryDataGetArchivedCartsPaginatorInfoSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetArchivedCartsQueryData_getArchivedCarts_paginatorInfo.serializer,
      this) as Map<String, dynamic>);
  static GGetArchivedCartsQueryData_getArchivedCarts_paginatorInfo? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GGetArchivedCartsQueryData_getArchivedCarts_paginatorInfo.serializer,
          json);
}

abstract class GGetArchivedCartsQueryData_getArchivedCarts_data
    implements
        Built<GGetArchivedCartsQueryData_getArchivedCarts_data,
            GGetArchivedCartsQueryData_getArchivedCarts_dataBuilder>,
        _i2.GCartsPaginatorFragment_data,
        _i4.GCartFragment {
  GGetArchivedCartsQueryData_getArchivedCarts_data._();

  factory GGetArchivedCartsQueryData_getArchivedCarts_data(
      [Function(GGetArchivedCartsQueryData_getArchivedCarts_dataBuilder b)
          updates]) = _$GGetArchivedCartsQueryData_getArchivedCarts_data;

  static void _initializeBuilder(
          GGetArchivedCartsQueryData_getArchivedCarts_dataBuilder b) =>
      b..G__typename = 'Cart';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get organization;
  String? get terminal_id;
  GGetArchivedCartsQueryData_getArchivedCarts_data_delivery_address?
      get delivery_address;
  bool get is_self_service;
  _i5.GCartOrderStatus get cart_order_status;
  _i5.GCartPaymentStatus get cart_payment_status;
  BuiltList<GGetArchivedCartsQueryData_getArchivedCarts_data_items>? get items;
  _i5.GCartPaymentType get payment_type;
  int? get change_from;
  String? get coupon;
  int? get bonus_sum;
  double? get discount_sum;
  String? get customer_name;
  String? get customer_phone;
  _i5.GDateTime? get date;
  int get persons_count;
  String get total;
  String get total_payment;
  String? get delivery_price;
  GGetArchivedCartsQueryData_getArchivedCarts_data_order_info? get order_info;
  String? get comment;
  GGetArchivedCartsQueryData_getArchivedCarts_data_restaurant? get restaurant;
  static Serializer<GGetArchivedCartsQueryData_getArchivedCarts_data>
      get serializer =>
          _$gGetArchivedCartsQueryDataGetArchivedCartsDataSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GGetArchivedCartsQueryData_getArchivedCarts_data.serializer, this)
      as Map<String, dynamic>);
  static GGetArchivedCartsQueryData_getArchivedCarts_data? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GGetArchivedCartsQueryData_getArchivedCarts_data.serializer, json);
}

abstract class GGetArchivedCartsQueryData_getArchivedCarts_data_delivery_address
    implements
        Built<GGetArchivedCartsQueryData_getArchivedCarts_data_delivery_address,
            GGetArchivedCartsQueryData_getArchivedCarts_data_delivery_addressBuilder>,
        _i2.GCartsPaginatorFragment_data_delivery_address,
        _i4.GCartFragment_delivery_address,
        _i6.GDeliveryAddressFragment {
  GGetArchivedCartsQueryData_getArchivedCarts_data_delivery_address._();

  factory GGetArchivedCartsQueryData_getArchivedCarts_data_delivery_address(
          [Function(
                  GGetArchivedCartsQueryData_getArchivedCarts_data_delivery_addressBuilder
                      b)
              updates]) =
      _$GGetArchivedCartsQueryData_getArchivedCarts_data_delivery_address;

  static void _initializeBuilder(
          GGetArchivedCartsQueryData_getArchivedCarts_data_delivery_addressBuilder
              b) =>
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
  GGetArchivedCartsQueryData_getArchivedCarts_data_delivery_address_city?
      get city;
  bool? get address_in_zone;
  static Serializer<
          GGetArchivedCartsQueryData_getArchivedCarts_data_delivery_address>
      get serializer =>
          _$gGetArchivedCartsQueryDataGetArchivedCartsDataDeliveryAddressSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetArchivedCartsQueryData_getArchivedCarts_data_delivery_address
          .serializer,
      this) as Map<String, dynamic>);
  static GGetArchivedCartsQueryData_getArchivedCarts_data_delivery_address?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GGetArchivedCartsQueryData_getArchivedCarts_data_delivery_address
              .serializer,
          json);
}

abstract class GGetArchivedCartsQueryData_getArchivedCarts_data_delivery_address_city
    implements
        Built<
            GGetArchivedCartsQueryData_getArchivedCarts_data_delivery_address_city,
            GGetArchivedCartsQueryData_getArchivedCarts_data_delivery_address_cityBuilder>,
        _i2.GCartsPaginatorFragment_data_delivery_address_city,
        _i4.GCartFragment_delivery_address_city,
        _i6.GDeliveryAddressFragment_city,
        _i7.GCityFragment {
  GGetArchivedCartsQueryData_getArchivedCarts_data_delivery_address_city._();

  factory GGetArchivedCartsQueryData_getArchivedCarts_data_delivery_address_city(
          [Function(
                  GGetArchivedCartsQueryData_getArchivedCarts_data_delivery_address_cityBuilder
                      b)
              updates]) =
      _$GGetArchivedCartsQueryData_getArchivedCarts_data_delivery_address_city;

  static void _initializeBuilder(
          GGetArchivedCartsQueryData_getArchivedCarts_data_delivery_address_cityBuilder
              b) =>
      b..G__typename = 'City';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  String? get prefix;
  String? get postal_code;
  String? get city_type;
  bool? get available;
  static Serializer<
          GGetArchivedCartsQueryData_getArchivedCarts_data_delivery_address_city>
      get serializer =>
          _$gGetArchivedCartsQueryDataGetArchivedCartsDataDeliveryAddressCitySerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetArchivedCartsQueryData_getArchivedCarts_data_delivery_address_city
          .serializer,
      this) as Map<String, dynamic>);
  static GGetArchivedCartsQueryData_getArchivedCarts_data_delivery_address_city?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GGetArchivedCartsQueryData_getArchivedCarts_data_delivery_address_city
              .serializer,
          json);
}

abstract class GGetArchivedCartsQueryData_getArchivedCarts_data_items
    implements
        Built<GGetArchivedCartsQueryData_getArchivedCarts_data_items,
            GGetArchivedCartsQueryData_getArchivedCarts_data_itemsBuilder>,
        _i2.GCartsPaginatorFragment_data_items,
        _i4.GCartFragment_items,
        _i8.GCartItemFragment {
  GGetArchivedCartsQueryData_getArchivedCarts_data_items._();

  factory GGetArchivedCartsQueryData_getArchivedCarts_data_items(
      [Function(GGetArchivedCartsQueryData_getArchivedCarts_data_itemsBuilder b)
          updates]) = _$GGetArchivedCartsQueryData_getArchivedCarts_data_items;

  static void _initializeBuilder(
          GGetArchivedCartsQueryData_getArchivedCarts_data_itemsBuilder b) =>
      b..G__typename = 'CartItem';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  String get product_id;
  GGetArchivedCartsQueryData_getArchivedCarts_data_items_product get product;
  String get name;
  int get amount;
  double? get total;
  double? get discount_sum;
  double? get sum;
  String? get code;
  BuiltList<GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers>?
      get modifiers;
  static Serializer<GGetArchivedCartsQueryData_getArchivedCarts_data_items>
      get serializer =>
          _$gGetArchivedCartsQueryDataGetArchivedCartsDataItemsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetArchivedCartsQueryData_getArchivedCarts_data_items.serializer,
      this) as Map<String, dynamic>);
  static GGetArchivedCartsQueryData_getArchivedCarts_data_items? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GGetArchivedCartsQueryData_getArchivedCarts_data_items.serializer,
          json);
}

abstract class GGetArchivedCartsQueryData_getArchivedCarts_data_items_product
    implements
        Built<GGetArchivedCartsQueryData_getArchivedCarts_data_items_product,
            GGetArchivedCartsQueryData_getArchivedCarts_data_items_productBuilder>,
        _i2.GCartsPaginatorFragment_data_items_product,
        _i4.GCartFragment_items_product,
        _i8.GCartItemFragment_product,
        _i9.GProductFragment {
  GGetArchivedCartsQueryData_getArchivedCarts_data_items_product._();

  factory GGetArchivedCartsQueryData_getArchivedCarts_data_items_product(
          [Function(
                  GGetArchivedCartsQueryData_getArchivedCarts_data_items_productBuilder
                      b)
              updates]) =
      _$GGetArchivedCartsQueryData_getArchivedCarts_data_items_product;

  static void _initializeBuilder(
          GGetArchivedCartsQueryData_getArchivedCarts_data_items_productBuilder
              b) =>
      b..G__typename = 'Product';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get parentGroupId;
  String? get groupId;
  GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_parentGroup?
      get parentGroup;
  GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_group?
      get group;
  String? get productCategoryId;
  GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_category?
      get category;
  BuiltList<
          GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_products_sizes>?
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
          GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_images>?
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
          GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_modifiers>?
      get modifiers;
  BuiltList<
          GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_groupModifiers>?
      get groupModifiers;
  static Serializer<
          GGetArchivedCartsQueryData_getArchivedCarts_data_items_product>
      get serializer =>
          _$gGetArchivedCartsQueryDataGetArchivedCartsDataItemsProductSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetArchivedCartsQueryData_getArchivedCarts_data_items_product.serializer,
      this) as Map<String, dynamic>);
  static GGetArchivedCartsQueryData_getArchivedCarts_data_items_product?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GGetArchivedCartsQueryData_getArchivedCarts_data_items_product
              .serializer,
          json);
}

abstract class GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_parentGroup
    implements
        Built<
            GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_parentGroup,
            GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_parentGroupBuilder>,
        _i2.GCartsPaginatorFragment_data_items_product_parentGroup,
        _i4.GCartFragment_items_product_parentGroup,
        _i8.GCartItemFragment_product_parentGroup,
        _i9.GProductFragment_parentGroup {
  GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_parentGroup._();

  factory GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_parentGroup(
          [Function(
                  GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_parentGroupBuilder
                      b)
              updates]) =
      _$GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_parentGroup;

  static void _initializeBuilder(
          GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_parentGroupBuilder
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
          GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_parentGroup>
      get serializer =>
          _$gGetArchivedCartsQueryDataGetArchivedCartsDataItemsProductParentGroupSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_parentGroup
          .serializer,
      this) as Map<String, dynamic>);
  static GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_parentGroup?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_parentGroup
              .serializer,
          json);
}

abstract class GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_group
    implements
        Built<
            GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_group,
            GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_groupBuilder>,
        _i2.GCartsPaginatorFragment_data_items_product_group,
        _i4.GCartFragment_items_product_group,
        _i8.GCartItemFragment_product_group,
        _i9.GProductFragment_group {
  GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_group._();

  factory GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_group(
          [Function(
                  GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_groupBuilder
                      b)
              updates]) =
      _$GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_group;

  static void _initializeBuilder(
          GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_groupBuilder
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
          GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_group>
      get serializer =>
          _$gGetArchivedCartsQueryDataGetArchivedCartsDataItemsProductGroupSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_group
          .serializer,
      this) as Map<String, dynamic>);
  static GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_group?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_group
              .serializer,
          json);
}

abstract class GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_category
    implements
        Built<
            GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_category,
            GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_categoryBuilder>,
        _i2.GCartsPaginatorFragment_data_items_product_category,
        _i4.GCartFragment_items_product_category,
        _i8.GCartItemFragment_product_category,
        _i9.GProductFragment_category {
  GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_category._();

  factory GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_category(
          [Function(
                  GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_categoryBuilder
                      b)
              updates]) =
      _$GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_category;

  static void _initializeBuilder(
          GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_categoryBuilder
              b) =>
      b..G__typename = 'ProductCategory';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  static Serializer<
          GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_category>
      get serializer =>
          _$gGetArchivedCartsQueryDataGetArchivedCartsDataItemsProductCategorySerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_category
          .serializer,
      this) as Map<String, dynamic>);
  static GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_category?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_category
              .serializer,
          json);
}

abstract class GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_products_sizes
    implements
        Built<
            GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_products_sizes,
            GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_products_sizesBuilder>,
        _i2.GCartsPaginatorFragment_data_items_product_products_sizes,
        _i4.GCartFragment_items_product_products_sizes,
        _i8.GCartItemFragment_product_products_sizes,
        _i9.GProductFragment_products_sizes,
        _i10.GProductsSizesFragment {
  GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_products_sizes._();

  factory GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_products_sizes(
          [Function(
                  GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_products_sizesBuilder
                      b)
              updates]) =
      _$GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_products_sizes;

  static void _initializeBuilder(
          GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_products_sizesBuilder
              b) =>
      b..G__typename = 'Product';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  String? get additionalInfo;
  String? get description;
  GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_products_sizes_parentGroup?
      get parentGroup;
  BuiltList<
          GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_products_sizes_images>?
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
          GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_products_sizes_modifiers>?
      get modifiers;
  BuiltList<
          GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_products_sizes_groupModifiers>?
      get groupModifiers;
  static Serializer<
          GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_products_sizes>
      get serializer =>
          _$gGetArchivedCartsQueryDataGetArchivedCartsDataItemsProductProductsSizesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_products_sizes
          .serializer,
      this) as Map<String, dynamic>);
  static GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_products_sizes?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_products_sizes
              .serializer,
          json);
}

abstract class GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_products_sizes_parentGroup
    implements
        Built<
            GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_products_sizes_parentGroup,
            GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_products_sizes_parentGroupBuilder>,
        _i2.GCartsPaginatorFragment_data_items_product_products_sizes_parentGroup,
        _i4.GCartFragment_items_product_products_sizes_parentGroup,
        _i8.GCartItemFragment_product_products_sizes_parentGroup,
        _i9.GProductFragment_products_sizes_parentGroup,
        _i10.GProductsSizesFragment_parentGroup {
  GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_products_sizes_parentGroup._();

  factory GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_products_sizes_parentGroup(
          [Function(
                  GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_products_sizes_parentGroupBuilder
                      b)
              updates]) =
      _$GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_products_sizes_parentGroup;

  static void _initializeBuilder(
          GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_products_sizes_parentGroupBuilder
              b) =>
      b..G__typename = 'Group';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  static Serializer<
          GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_products_sizes_parentGroup>
      get serializer =>
          _$gGetArchivedCartsQueryDataGetArchivedCartsDataItemsProductProductsSizesParentGroupSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_products_sizes_parentGroup
          .serializer,
      this) as Map<String, dynamic>);
  static GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_products_sizes_parentGroup?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_products_sizes_parentGroup
              .serializer,
          json);
}

abstract class GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_products_sizes_images
    implements
        Built<
            GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_products_sizes_images,
            GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_products_sizes_imagesBuilder>,
        _i2.GCartsPaginatorFragment_data_items_product_products_sizes_images,
        _i4.GCartFragment_items_product_products_sizes_images,
        _i8.GCartItemFragment_product_products_sizes_images,
        _i9.GProductFragment_products_sizes_images,
        _i10.GProductsSizesFragment_images {
  GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_products_sizes_images._();

  factory GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_products_sizes_images(
          [Function(
                  GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_products_sizes_imagesBuilder
                      b)
              updates]) =
      _$GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_products_sizes_images;

  static void _initializeBuilder(
          GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_products_sizes_imagesBuilder
              b) =>
      b..G__typename = 'ProductImage';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get imageId;
  String? get imageUrl;
  static Serializer<
          GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_products_sizes_images>
      get serializer =>
          _$gGetArchivedCartsQueryDataGetArchivedCartsDataItemsProductProductsSizesImagesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_products_sizes_images
          .serializer,
      this) as Map<String, dynamic>);
  static GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_products_sizes_images?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_products_sizes_images
              .serializer,
          json);
}

abstract class GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_products_sizes_modifiers
    implements
        Built<
            GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_products_sizes_modifiers,
            GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_products_sizes_modifiersBuilder>,
        _i2.GCartsPaginatorFragment_data_items_product_products_sizes_modifiers,
        _i4.GCartFragment_items_product_products_sizes_modifiers,
        _i8.GCartItemFragment_product_products_sizes_modifiers,
        _i9.GProductFragment_products_sizes_modifiers,
        _i10.GProductsSizesFragment_modifiers,
        _i11.GModificatorFragment {
  GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_products_sizes_modifiers._();

  factory GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_products_sizes_modifiers(
          [Function(
                  GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_products_sizes_modifiersBuilder
                      b)
              updates]) =
      _$GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_products_sizes_modifiers;

  static void _initializeBuilder(
          GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_products_sizes_modifiersBuilder
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
          GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_products_sizes_modifiers>
      get serializer =>
          _$gGetArchivedCartsQueryDataGetArchivedCartsDataItemsProductProductsSizesModifiersSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_products_sizes_modifiers
          .serializer,
      this) as Map<String, dynamic>);
  static GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_products_sizes_modifiers?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_products_sizes_modifiers
              .serializer,
          json);
}

abstract class GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_products_sizes_groupModifiers
    implements
        Built<
            GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_products_sizes_groupModifiers,
            GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_products_sizes_groupModifiersBuilder>,
        _i2.GCartsPaginatorFragment_data_items_product_products_sizes_groupModifiers,
        _i4.GCartFragment_items_product_products_sizes_groupModifiers,
        _i8.GCartItemFragment_product_products_sizes_groupModifiers,
        _i9.GProductFragment_products_sizes_groupModifiers,
        _i10.GProductsSizesFragment_groupModifiers,
        _i12.GGroupModificatorFragment {
  GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_products_sizes_groupModifiers._();

  factory GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_products_sizes_groupModifiers(
          [Function(
                  GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_products_sizes_groupModifiersBuilder
                      b)
              updates]) =
      _$GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_products_sizes_groupModifiers;

  static void _initializeBuilder(
          GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_products_sizes_groupModifiersBuilder
              b) =>
      b..G__typename = 'GroupModificator';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get maxAmount;
  int? get minAmount;
  String get modifierId;
  bool? get required;
  BuiltList<
          GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_products_sizes_groupModifiers_childModifiers>?
      get childModifiers;
  bool? get childModifiersHaveMinMaxRestrictions;
  static Serializer<
          GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_products_sizes_groupModifiers>
      get serializer =>
          _$gGetArchivedCartsQueryDataGetArchivedCartsDataItemsProductProductsSizesGroupModifiersSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_products_sizes_groupModifiers
          .serializer,
      this) as Map<String, dynamic>);
  static GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_products_sizes_groupModifiers?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_products_sizes_groupModifiers
              .serializer,
          json);
}

abstract class GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_products_sizes_groupModifiers_childModifiers
    implements
        Built<
            GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_products_sizes_groupModifiers_childModifiers,
            GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_products_sizes_groupModifiers_childModifiersBuilder>,
        _i2.GCartsPaginatorFragment_data_items_product_products_sizes_groupModifiers_childModifiers,
        _i4.GCartFragment_items_product_products_sizes_groupModifiers_childModifiers,
        _i8.GCartItemFragment_product_products_sizes_groupModifiers_childModifiers,
        _i9.GProductFragment_products_sizes_groupModifiers_childModifiers,
        _i10.GProductsSizesFragment_groupModifiers_childModifiers,
        _i12.GGroupModificatorFragment_childModifiers,
        _i11.GModificatorFragment {
  GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_products_sizes_groupModifiers_childModifiers._();

  factory GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_products_sizes_groupModifiers_childModifiers(
          [Function(
                  GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_products_sizes_groupModifiers_childModifiersBuilder
                      b)
              updates]) =
      _$GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_products_sizes_groupModifiers_childModifiers;

  static void _initializeBuilder(
          GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_products_sizes_groupModifiers_childModifiersBuilder
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
          GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_products_sizes_groupModifiers_childModifiers>
      get serializer =>
          _$gGetArchivedCartsQueryDataGetArchivedCartsDataItemsProductProductsSizesGroupModifiersChildModifiersSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_products_sizes_groupModifiers_childModifiers
          .serializer,
      this) as Map<String, dynamic>);
  static GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_products_sizes_groupModifiers_childModifiers?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_products_sizes_groupModifiers_childModifiers
              .serializer,
          json);
}

abstract class GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_images
    implements
        Built<
            GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_images,
            GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_imagesBuilder>,
        _i2.GCartsPaginatorFragment_data_items_product_images,
        _i4.GCartFragment_items_product_images,
        _i8.GCartItemFragment_product_images,
        _i9.GProductFragment_images {
  GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_images._();

  factory GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_images(
          [Function(
                  GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_imagesBuilder
                      b)
              updates]) =
      _$GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_images;

  static void _initializeBuilder(
          GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_imagesBuilder
              b) =>
      b..G__typename = 'ProductImage';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get imageId;
  String? get imageUrl;
  static Serializer<
          GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_images>
      get serializer =>
          _$gGetArchivedCartsQueryDataGetArchivedCartsDataItemsProductImagesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_images
          .serializer,
      this) as Map<String, dynamic>);
  static GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_images?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_images
              .serializer,
          json);
}

abstract class GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_modifiers
    implements
        Built<
            GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_modifiers,
            GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_modifiersBuilder>,
        _i2.GCartsPaginatorFragment_data_items_product_modifiers,
        _i4.GCartFragment_items_product_modifiers,
        _i8.GCartItemFragment_product_modifiers,
        _i9.GProductFragment_modifiers,
        _i11.GModificatorFragment {
  GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_modifiers._();

  factory GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_modifiers(
          [Function(
                  GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_modifiersBuilder
                      b)
              updates]) =
      _$GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_modifiers;

  static void _initializeBuilder(
          GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_modifiersBuilder
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
          GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_modifiers>
      get serializer =>
          _$gGetArchivedCartsQueryDataGetArchivedCartsDataItemsProductModifiersSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_modifiers
          .serializer,
      this) as Map<String, dynamic>);
  static GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_modifiers?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_modifiers
              .serializer,
          json);
}

abstract class GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_groupModifiers
    implements
        Built<
            GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_groupModifiers,
            GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_groupModifiersBuilder>,
        _i2.GCartsPaginatorFragment_data_items_product_groupModifiers,
        _i4.GCartFragment_items_product_groupModifiers,
        _i8.GCartItemFragment_product_groupModifiers,
        _i9.GProductFragment_groupModifiers,
        _i12.GGroupModificatorFragment {
  GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_groupModifiers._();

  factory GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_groupModifiers(
          [Function(
                  GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_groupModifiersBuilder
                      b)
              updates]) =
      _$GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_groupModifiers;

  static void _initializeBuilder(
          GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_groupModifiersBuilder
              b) =>
      b..G__typename = 'GroupModificator';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get maxAmount;
  int? get minAmount;
  String get modifierId;
  bool? get required;
  BuiltList<
          GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_groupModifiers_childModifiers>?
      get childModifiers;
  bool? get childModifiersHaveMinMaxRestrictions;
  static Serializer<
          GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_groupModifiers>
      get serializer =>
          _$gGetArchivedCartsQueryDataGetArchivedCartsDataItemsProductGroupModifiersSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_groupModifiers
          .serializer,
      this) as Map<String, dynamic>);
  static GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_groupModifiers?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_groupModifiers
              .serializer,
          json);
}

abstract class GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_groupModifiers_childModifiers
    implements
        Built<
            GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_groupModifiers_childModifiers,
            GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_groupModifiers_childModifiersBuilder>,
        _i2.GCartsPaginatorFragment_data_items_product_groupModifiers_childModifiers,
        _i4.GCartFragment_items_product_groupModifiers_childModifiers,
        _i8.GCartItemFragment_product_groupModifiers_childModifiers,
        _i9.GProductFragment_groupModifiers_childModifiers,
        _i12.GGroupModificatorFragment_childModifiers,
        _i11.GModificatorFragment {
  GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_groupModifiers_childModifiers._();

  factory GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_groupModifiers_childModifiers(
          [Function(
                  GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_groupModifiers_childModifiersBuilder
                      b)
              updates]) =
      _$GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_groupModifiers_childModifiers;

  static void _initializeBuilder(
          GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_groupModifiers_childModifiersBuilder
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
          GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_groupModifiers_childModifiers>
      get serializer =>
          _$gGetArchivedCartsQueryDataGetArchivedCartsDataItemsProductGroupModifiersChildModifiersSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_groupModifiers_childModifiers
          .serializer,
      this) as Map<String, dynamic>);
  static GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_groupModifiers_childModifiers?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_groupModifiers_childModifiers
              .serializer,
          json);
}

abstract class GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers
    implements
        Built<GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers,
            GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiersBuilder>,
        _i2.GCartsPaginatorFragment_data_items_modifiers,
        _i4.GCartFragment_items_modifiers,
        _i8.GCartItemFragment_modifiers,
        _i13.GCartItemModifierFragment {
  GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers._();

  factory GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers(
          [Function(
                  GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiersBuilder
                      b)
              updates]) =
      _$GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers;

  static void _initializeBuilder(
          GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiersBuilder
              b) =>
      b..G__typename = 'CartItemModifier';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get type;
  String get product_id;
  GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product
      get product;
  String get name;
  int get amount;
  String? get group_id;
  String? get group_name;
  static Serializer<
          GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers>
      get serializer =>
          _$gGetArchivedCartsQueryDataGetArchivedCartsDataItemsModifiersSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers
          .serializer,
      this) as Map<String, dynamic>);
  static GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers
              .serializer,
          json);
}

abstract class GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product
    implements
        Built<
            GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product,
            GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_productBuilder>,
        _i2.GCartsPaginatorFragment_data_items_modifiers_product,
        _i4.GCartFragment_items_modifiers_product,
        _i8.GCartItemFragment_modifiers_product,
        _i13.GCartItemModifierFragment_product,
        _i9.GProductFragment {
  GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product._();

  factory GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product(
          [Function(
                  GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_productBuilder
                      b)
              updates]) =
      _$GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product;

  static void _initializeBuilder(
          GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_productBuilder
              b) =>
      b..G__typename = 'Product';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get parentGroupId;
  String? get groupId;
  GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_parentGroup?
      get parentGroup;
  GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_group?
      get group;
  String? get productCategoryId;
  GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_category?
      get category;
  BuiltList<
          GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_products_sizes>?
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
          GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_images>?
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
          GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_modifiers>?
      get modifiers;
  BuiltList<
          GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_groupModifiers>?
      get groupModifiers;
  static Serializer<
          GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product>
      get serializer =>
          _$gGetArchivedCartsQueryDataGetArchivedCartsDataItemsModifiersProductSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product
          .serializer,
      this) as Map<String, dynamic>);
  static GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product
              .serializer,
          json);
}

abstract class GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_parentGroup
    implements
        Built<
            GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_parentGroup,
            GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_parentGroupBuilder>,
        _i2.GCartsPaginatorFragment_data_items_modifiers_product_parentGroup,
        _i4.GCartFragment_items_modifiers_product_parentGroup,
        _i8.GCartItemFragment_modifiers_product_parentGroup,
        _i13.GCartItemModifierFragment_product_parentGroup,
        _i9.GProductFragment_parentGroup {
  GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_parentGroup._();

  factory GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_parentGroup(
          [Function(
                  GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_parentGroupBuilder
                      b)
              updates]) =
      _$GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_parentGroup;

  static void _initializeBuilder(
          GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_parentGroupBuilder
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
          GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_parentGroup>
      get serializer =>
          _$gGetArchivedCartsQueryDataGetArchivedCartsDataItemsModifiersProductParentGroupSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_parentGroup
          .serializer,
      this) as Map<String, dynamic>);
  static GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_parentGroup?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_parentGroup
              .serializer,
          json);
}

abstract class GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_group
    implements
        Built<
            GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_group,
            GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_groupBuilder>,
        _i2.GCartsPaginatorFragment_data_items_modifiers_product_group,
        _i4.GCartFragment_items_modifiers_product_group,
        _i8.GCartItemFragment_modifiers_product_group,
        _i13.GCartItemModifierFragment_product_group,
        _i9.GProductFragment_group {
  GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_group._();

  factory GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_group(
          [Function(
                  GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_groupBuilder
                      b)
              updates]) =
      _$GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_group;

  static void _initializeBuilder(
          GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_groupBuilder
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
          GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_group>
      get serializer =>
          _$gGetArchivedCartsQueryDataGetArchivedCartsDataItemsModifiersProductGroupSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_group
          .serializer,
      this) as Map<String, dynamic>);
  static GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_group?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_group
              .serializer,
          json);
}

abstract class GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_category
    implements
        Built<
            GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_category,
            GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_categoryBuilder>,
        _i2.GCartsPaginatorFragment_data_items_modifiers_product_category,
        _i4.GCartFragment_items_modifiers_product_category,
        _i8.GCartItemFragment_modifiers_product_category,
        _i13.GCartItemModifierFragment_product_category,
        _i9.GProductFragment_category {
  GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_category._();

  factory GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_category(
          [Function(
                  GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_categoryBuilder
                      b)
              updates]) =
      _$GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_category;

  static void _initializeBuilder(
          GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_categoryBuilder
              b) =>
      b..G__typename = 'ProductCategory';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  static Serializer<
          GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_category>
      get serializer =>
          _$gGetArchivedCartsQueryDataGetArchivedCartsDataItemsModifiersProductCategorySerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_category
          .serializer,
      this) as Map<String, dynamic>);
  static GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_category?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_category
              .serializer,
          json);
}

abstract class GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_products_sizes
    implements
        Built<
            GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_products_sizes,
            GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_products_sizesBuilder>,
        _i2.GCartsPaginatorFragment_data_items_modifiers_product_products_sizes,
        _i4.GCartFragment_items_modifiers_product_products_sizes,
        _i8.GCartItemFragment_modifiers_product_products_sizes,
        _i13.GCartItemModifierFragment_product_products_sizes,
        _i9.GProductFragment_products_sizes,
        _i10.GProductsSizesFragment {
  GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_products_sizes._();

  factory GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_products_sizes(
          [Function(
                  GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_products_sizesBuilder
                      b)
              updates]) =
      _$GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_products_sizes;

  static void _initializeBuilder(
          GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_products_sizesBuilder
              b) =>
      b..G__typename = 'Product';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  String? get additionalInfo;
  String? get description;
  GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_products_sizes_parentGroup?
      get parentGroup;
  BuiltList<
          GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_products_sizes_images>?
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
          GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_products_sizes_modifiers>?
      get modifiers;
  BuiltList<
          GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_products_sizes_groupModifiers>?
      get groupModifiers;
  static Serializer<
          GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_products_sizes>
      get serializer =>
          _$gGetArchivedCartsQueryDataGetArchivedCartsDataItemsModifiersProductProductsSizesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_products_sizes
          .serializer,
      this) as Map<String, dynamic>);
  static GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_products_sizes?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_products_sizes
              .serializer,
          json);
}

abstract class GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_products_sizes_parentGroup
    implements
        Built<
            GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_products_sizes_parentGroup,
            GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_products_sizes_parentGroupBuilder>,
        _i2.GCartsPaginatorFragment_data_items_modifiers_product_products_sizes_parentGroup,
        _i4.GCartFragment_items_modifiers_product_products_sizes_parentGroup,
        _i8.GCartItemFragment_modifiers_product_products_sizes_parentGroup,
        _i13.GCartItemModifierFragment_product_products_sizes_parentGroup,
        _i9.GProductFragment_products_sizes_parentGroup,
        _i10.GProductsSizesFragment_parentGroup {
  GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_products_sizes_parentGroup._();

  factory GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_products_sizes_parentGroup(
          [Function(
                  GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_products_sizes_parentGroupBuilder
                      b)
              updates]) =
      _$GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_products_sizes_parentGroup;

  static void _initializeBuilder(
          GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_products_sizes_parentGroupBuilder
              b) =>
      b..G__typename = 'Group';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  static Serializer<
          GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_products_sizes_parentGroup>
      get serializer =>
          _$gGetArchivedCartsQueryDataGetArchivedCartsDataItemsModifiersProductProductsSizesParentGroupSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_products_sizes_parentGroup
          .serializer,
      this) as Map<String, dynamic>);
  static GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_products_sizes_parentGroup?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_products_sizes_parentGroup
              .serializer,
          json);
}

abstract class GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_products_sizes_images
    implements
        Built<
            GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_products_sizes_images,
            GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_products_sizes_imagesBuilder>,
        _i2.GCartsPaginatorFragment_data_items_modifiers_product_products_sizes_images,
        _i4.GCartFragment_items_modifiers_product_products_sizes_images,
        _i8.GCartItemFragment_modifiers_product_products_sizes_images,
        _i13.GCartItemModifierFragment_product_products_sizes_images,
        _i9.GProductFragment_products_sizes_images,
        _i10.GProductsSizesFragment_images {
  GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_products_sizes_images._();

  factory GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_products_sizes_images(
          [Function(
                  GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_products_sizes_imagesBuilder
                      b)
              updates]) =
      _$GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_products_sizes_images;

  static void _initializeBuilder(
          GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_products_sizes_imagesBuilder
              b) =>
      b..G__typename = 'ProductImage';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get imageId;
  String? get imageUrl;
  static Serializer<
          GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_products_sizes_images>
      get serializer =>
          _$gGetArchivedCartsQueryDataGetArchivedCartsDataItemsModifiersProductProductsSizesImagesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_products_sizes_images
          .serializer,
      this) as Map<String, dynamic>);
  static GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_products_sizes_images?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_products_sizes_images
              .serializer,
          json);
}

abstract class GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_products_sizes_modifiers
    implements
        Built<
            GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_products_sizes_modifiers,
            GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_products_sizes_modifiersBuilder>,
        _i2.GCartsPaginatorFragment_data_items_modifiers_product_products_sizes_modifiers,
        _i4.GCartFragment_items_modifiers_product_products_sizes_modifiers,
        _i8.GCartItemFragment_modifiers_product_products_sizes_modifiers,
        _i13.GCartItemModifierFragment_product_products_sizes_modifiers,
        _i9.GProductFragment_products_sizes_modifiers,
        _i10.GProductsSizesFragment_modifiers,
        _i11.GModificatorFragment {
  GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_products_sizes_modifiers._();

  factory GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_products_sizes_modifiers(
          [Function(
                  GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_products_sizes_modifiersBuilder
                      b)
              updates]) =
      _$GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_products_sizes_modifiers;

  static void _initializeBuilder(
          GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_products_sizes_modifiersBuilder
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
          GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_products_sizes_modifiers>
      get serializer =>
          _$gGetArchivedCartsQueryDataGetArchivedCartsDataItemsModifiersProductProductsSizesModifiersSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_products_sizes_modifiers
          .serializer,
      this) as Map<String, dynamic>);
  static GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_products_sizes_modifiers?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_products_sizes_modifiers
              .serializer,
          json);
}

abstract class GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_products_sizes_groupModifiers
    implements
        Built<
            GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_products_sizes_groupModifiers,
            GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_products_sizes_groupModifiersBuilder>,
        _i2.GCartsPaginatorFragment_data_items_modifiers_product_products_sizes_groupModifiers,
        _i4.GCartFragment_items_modifiers_product_products_sizes_groupModifiers,
        _i8.GCartItemFragment_modifiers_product_products_sizes_groupModifiers,
        _i13.GCartItemModifierFragment_product_products_sizes_groupModifiers,
        _i9.GProductFragment_products_sizes_groupModifiers,
        _i10.GProductsSizesFragment_groupModifiers,
        _i12.GGroupModificatorFragment {
  GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_products_sizes_groupModifiers._();

  factory GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_products_sizes_groupModifiers(
          [Function(
                  GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_products_sizes_groupModifiersBuilder
                      b)
              updates]) =
      _$GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_products_sizes_groupModifiers;

  static void _initializeBuilder(
          GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_products_sizes_groupModifiersBuilder
              b) =>
      b..G__typename = 'GroupModificator';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get maxAmount;
  int? get minAmount;
  String get modifierId;
  bool? get required;
  BuiltList<
          GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_products_sizes_groupModifiers_childModifiers>?
      get childModifiers;
  bool? get childModifiersHaveMinMaxRestrictions;
  static Serializer<
          GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_products_sizes_groupModifiers>
      get serializer =>
          _$gGetArchivedCartsQueryDataGetArchivedCartsDataItemsModifiersProductProductsSizesGroupModifiersSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_products_sizes_groupModifiers
          .serializer,
      this) as Map<String, dynamic>);
  static GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_products_sizes_groupModifiers?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_products_sizes_groupModifiers
              .serializer,
          json);
}

abstract class GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_products_sizes_groupModifiers_childModifiers
    implements
        Built<
            GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_products_sizes_groupModifiers_childModifiers,
            GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_products_sizes_groupModifiers_childModifiersBuilder>,
        _i2.GCartsPaginatorFragment_data_items_modifiers_product_products_sizes_groupModifiers_childModifiers,
        _i4.GCartFragment_items_modifiers_product_products_sizes_groupModifiers_childModifiers,
        _i8.GCartItemFragment_modifiers_product_products_sizes_groupModifiers_childModifiers,
        _i13.GCartItemModifierFragment_product_products_sizes_groupModifiers_childModifiers,
        _i9.GProductFragment_products_sizes_groupModifiers_childModifiers,
        _i10.GProductsSizesFragment_groupModifiers_childModifiers,
        _i12.GGroupModificatorFragment_childModifiers,
        _i11.GModificatorFragment {
  GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_products_sizes_groupModifiers_childModifiers._();

  factory GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_products_sizes_groupModifiers_childModifiers(
          [Function(
                  GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_products_sizes_groupModifiers_childModifiersBuilder
                      b)
              updates]) =
      _$GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_products_sizes_groupModifiers_childModifiers;

  static void _initializeBuilder(
          GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_products_sizes_groupModifiers_childModifiersBuilder
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
          GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_products_sizes_groupModifiers_childModifiers>
      get serializer =>
          _$gGetArchivedCartsQueryDataGetArchivedCartsDataItemsModifiersProductProductsSizesGroupModifiersChildModifiersSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_products_sizes_groupModifiers_childModifiers
          .serializer,
      this) as Map<String, dynamic>);
  static GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_products_sizes_groupModifiers_childModifiers?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_products_sizes_groupModifiers_childModifiers
              .serializer,
          json);
}

abstract class GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_images
    implements
        Built<
            GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_images,
            GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_imagesBuilder>,
        _i2.GCartsPaginatorFragment_data_items_modifiers_product_images,
        _i4.GCartFragment_items_modifiers_product_images,
        _i8.GCartItemFragment_modifiers_product_images,
        _i13.GCartItemModifierFragment_product_images,
        _i9.GProductFragment_images {
  GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_images._();

  factory GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_images(
          [Function(
                  GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_imagesBuilder
                      b)
              updates]) =
      _$GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_images;

  static void _initializeBuilder(
          GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_imagesBuilder
              b) =>
      b..G__typename = 'ProductImage';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get imageId;
  String? get imageUrl;
  static Serializer<
          GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_images>
      get serializer =>
          _$gGetArchivedCartsQueryDataGetArchivedCartsDataItemsModifiersProductImagesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_images
          .serializer,
      this) as Map<String, dynamic>);
  static GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_images?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_images
              .serializer,
          json);
}

abstract class GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_modifiers
    implements
        Built<
            GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_modifiers,
            GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_modifiersBuilder>,
        _i2.GCartsPaginatorFragment_data_items_modifiers_product_modifiers,
        _i4.GCartFragment_items_modifiers_product_modifiers,
        _i8.GCartItemFragment_modifiers_product_modifiers,
        _i13.GCartItemModifierFragment_product_modifiers,
        _i9.GProductFragment_modifiers,
        _i11.GModificatorFragment {
  GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_modifiers._();

  factory GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_modifiers(
          [Function(
                  GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_modifiersBuilder
                      b)
              updates]) =
      _$GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_modifiers;

  static void _initializeBuilder(
          GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_modifiersBuilder
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
          GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_modifiers>
      get serializer =>
          _$gGetArchivedCartsQueryDataGetArchivedCartsDataItemsModifiersProductModifiersSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_modifiers
          .serializer,
      this) as Map<String, dynamic>);
  static GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_modifiers?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_modifiers
              .serializer,
          json);
}

abstract class GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_groupModifiers
    implements
        Built<
            GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_groupModifiers,
            GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_groupModifiersBuilder>,
        _i2.GCartsPaginatorFragment_data_items_modifiers_product_groupModifiers,
        _i4.GCartFragment_items_modifiers_product_groupModifiers,
        _i8.GCartItemFragment_modifiers_product_groupModifiers,
        _i13.GCartItemModifierFragment_product_groupModifiers,
        _i9.GProductFragment_groupModifiers,
        _i12.GGroupModificatorFragment {
  GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_groupModifiers._();

  factory GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_groupModifiers(
          [Function(
                  GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_groupModifiersBuilder
                      b)
              updates]) =
      _$GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_groupModifiers;

  static void _initializeBuilder(
          GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_groupModifiersBuilder
              b) =>
      b..G__typename = 'GroupModificator';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get maxAmount;
  int? get minAmount;
  String get modifierId;
  bool? get required;
  BuiltList<
          GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_groupModifiers_childModifiers>?
      get childModifiers;
  bool? get childModifiersHaveMinMaxRestrictions;
  static Serializer<
          GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_groupModifiers>
      get serializer =>
          _$gGetArchivedCartsQueryDataGetArchivedCartsDataItemsModifiersProductGroupModifiersSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_groupModifiers
          .serializer,
      this) as Map<String, dynamic>);
  static GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_groupModifiers?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_groupModifiers
              .serializer,
          json);
}

abstract class GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_groupModifiers_childModifiers
    implements
        Built<
            GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_groupModifiers_childModifiers,
            GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_groupModifiers_childModifiersBuilder>,
        _i2.GCartsPaginatorFragment_data_items_modifiers_product_groupModifiers_childModifiers,
        _i4.GCartFragment_items_modifiers_product_groupModifiers_childModifiers,
        _i8.GCartItemFragment_modifiers_product_groupModifiers_childModifiers,
        _i13.GCartItemModifierFragment_product_groupModifiers_childModifiers,
        _i9.GProductFragment_groupModifiers_childModifiers,
        _i12.GGroupModificatorFragment_childModifiers,
        _i11.GModificatorFragment {
  GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_groupModifiers_childModifiers._();

  factory GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_groupModifiers_childModifiers(
          [Function(
                  GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_groupModifiers_childModifiersBuilder
                      b)
              updates]) =
      _$GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_groupModifiers_childModifiers;

  static void _initializeBuilder(
          GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_groupModifiers_childModifiersBuilder
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
          GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_groupModifiers_childModifiers>
      get serializer =>
          _$gGetArchivedCartsQueryDataGetArchivedCartsDataItemsModifiersProductGroupModifiersChildModifiersSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_groupModifiers_childModifiers
          .serializer,
      this) as Map<String, dynamic>);
  static GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_groupModifiers_childModifiers?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_groupModifiers_childModifiers
              .serializer,
          json);
}

abstract class GGetArchivedCartsQueryData_getArchivedCarts_data_order_info
    implements
        Built<GGetArchivedCartsQueryData_getArchivedCarts_data_order_info,
            GGetArchivedCartsQueryData_getArchivedCarts_data_order_infoBuilder>,
        _i2.GCartsPaginatorFragment_data_order_info,
        _i4.GCartFragment_order_info,
        _i14.GOrderInfoFragment {
  GGetArchivedCartsQueryData_getArchivedCarts_data_order_info._();

  factory GGetArchivedCartsQueryData_getArchivedCarts_data_order_info(
      [Function(
              GGetArchivedCartsQueryData_getArchivedCarts_data_order_infoBuilder
                  b)
          updates]) = _$GGetArchivedCartsQueryData_getArchivedCarts_data_order_info;

  static void _initializeBuilder(
          GGetArchivedCartsQueryData_getArchivedCarts_data_order_infoBuilder
              b) =>
      b..G__typename = 'OrderInfo';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get order_id;
  String? get delivery_cancel_cause;
  String? get delivery_cancel_comment;
  _i5.GDateTime? get delivery_date;
  _i5.GDateTime? get actual_time;
  String? get bill_time;
  String? get cancel_time;
  String? get confirm_time;
  _i5.GDateTime? get created_time;
  _i5.GDateTime? get print_time;
  _i5.GDateTime? get send_time;
  int? get persons_count;
  static Serializer<GGetArchivedCartsQueryData_getArchivedCarts_data_order_info>
      get serializer =>
          _$gGetArchivedCartsQueryDataGetArchivedCartsDataOrderInfoSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetArchivedCartsQueryData_getArchivedCarts_data_order_info.serializer,
      this) as Map<String, dynamic>);
  static GGetArchivedCartsQueryData_getArchivedCarts_data_order_info? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GGetArchivedCartsQueryData_getArchivedCarts_data_order_info
              .serializer,
          json);
}

abstract class GGetArchivedCartsQueryData_getArchivedCarts_data_restaurant
    implements
        Built<GGetArchivedCartsQueryData_getArchivedCarts_data_restaurant,
            GGetArchivedCartsQueryData_getArchivedCarts_data_restaurantBuilder>,
        _i2.GCartsPaginatorFragment_data_restaurant,
        _i4.GCartFragment_restaurant,
        _i15.GRestaurantFragment {
  GGetArchivedCartsQueryData_getArchivedCarts_data_restaurant._();

  factory GGetArchivedCartsQueryData_getArchivedCarts_data_restaurant(
      [Function(
              GGetArchivedCartsQueryData_getArchivedCarts_data_restaurantBuilder
                  b)
          updates]) = _$GGetArchivedCartsQueryData_getArchivedCarts_data_restaurant;

  static void _initializeBuilder(
          GGetArchivedCartsQueryData_getArchivedCarts_data_restaurantBuilder
              b) =>
      b..G__typename = 'Restaurant';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  String? get address;
  GGetArchivedCartsQueryData_getArchivedCarts_data_restaurant_terminal_kitchen?
      get terminal_kitchen;
  GGetArchivedCartsQueryData_getArchivedCarts_data_restaurant_terminal_delivery?
      get terminal_delivery;
  String? get latitude;
  String? get longitude;
  String? get open_at;
  String? get close_at;
  bool? get is_open;
  String? get delivery_open_at;
  String? get delivery_close_at;
  bool? get is_delivery_open;
  GGetArchivedCartsQueryData_getArchivedCarts_data_restaurant_city? get city;
  static Serializer<GGetArchivedCartsQueryData_getArchivedCarts_data_restaurant>
      get serializer =>
          _$gGetArchivedCartsQueryDataGetArchivedCartsDataRestaurantSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetArchivedCartsQueryData_getArchivedCarts_data_restaurant.serializer,
      this) as Map<String, dynamic>);
  static GGetArchivedCartsQueryData_getArchivedCarts_data_restaurant? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GGetArchivedCartsQueryData_getArchivedCarts_data_restaurant
              .serializer,
          json);
}

abstract class GGetArchivedCartsQueryData_getArchivedCarts_data_restaurant_terminal_kitchen
    implements
        Built<
            GGetArchivedCartsQueryData_getArchivedCarts_data_restaurant_terminal_kitchen,
            GGetArchivedCartsQueryData_getArchivedCarts_data_restaurant_terminal_kitchenBuilder>,
        _i2.GCartsPaginatorFragment_data_restaurant_terminal_kitchen,
        _i4.GCartFragment_restaurant_terminal_kitchen,
        _i15.GRestaurantFragment_terminal_kitchen,
        _i16.GTerminalFragment {
  GGetArchivedCartsQueryData_getArchivedCarts_data_restaurant_terminal_kitchen._();

  factory GGetArchivedCartsQueryData_getArchivedCarts_data_restaurant_terminal_kitchen(
          [Function(
                  GGetArchivedCartsQueryData_getArchivedCarts_data_restaurant_terminal_kitchenBuilder
                      b)
              updates]) =
      _$GGetArchivedCartsQueryData_getArchivedCarts_data_restaurant_terminal_kitchen;

  static void _initializeBuilder(
          GGetArchivedCartsQueryData_getArchivedCarts_data_restaurant_terminal_kitchenBuilder
              b) =>
      b..G__typename = 'Terminal';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  static Serializer<
          GGetArchivedCartsQueryData_getArchivedCarts_data_restaurant_terminal_kitchen>
      get serializer =>
          _$gGetArchivedCartsQueryDataGetArchivedCartsDataRestaurantTerminalKitchenSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetArchivedCartsQueryData_getArchivedCarts_data_restaurant_terminal_kitchen
          .serializer,
      this) as Map<String, dynamic>);
  static GGetArchivedCartsQueryData_getArchivedCarts_data_restaurant_terminal_kitchen?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GGetArchivedCartsQueryData_getArchivedCarts_data_restaurant_terminal_kitchen
              .serializer,
          json);
}

abstract class GGetArchivedCartsQueryData_getArchivedCarts_data_restaurant_terminal_delivery
    implements
        Built<
            GGetArchivedCartsQueryData_getArchivedCarts_data_restaurant_terminal_delivery,
            GGetArchivedCartsQueryData_getArchivedCarts_data_restaurant_terminal_deliveryBuilder>,
        _i2.GCartsPaginatorFragment_data_restaurant_terminal_delivery,
        _i4.GCartFragment_restaurant_terminal_delivery,
        _i15.GRestaurantFragment_terminal_delivery,
        _i16.GTerminalFragment {
  GGetArchivedCartsQueryData_getArchivedCarts_data_restaurant_terminal_delivery._();

  factory GGetArchivedCartsQueryData_getArchivedCarts_data_restaurant_terminal_delivery(
          [Function(
                  GGetArchivedCartsQueryData_getArchivedCarts_data_restaurant_terminal_deliveryBuilder
                      b)
              updates]) =
      _$GGetArchivedCartsQueryData_getArchivedCarts_data_restaurant_terminal_delivery;

  static void _initializeBuilder(
          GGetArchivedCartsQueryData_getArchivedCarts_data_restaurant_terminal_deliveryBuilder
              b) =>
      b..G__typename = 'Terminal';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  static Serializer<
          GGetArchivedCartsQueryData_getArchivedCarts_data_restaurant_terminal_delivery>
      get serializer =>
          _$gGetArchivedCartsQueryDataGetArchivedCartsDataRestaurantTerminalDeliverySerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetArchivedCartsQueryData_getArchivedCarts_data_restaurant_terminal_delivery
          .serializer,
      this) as Map<String, dynamic>);
  static GGetArchivedCartsQueryData_getArchivedCarts_data_restaurant_terminal_delivery?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GGetArchivedCartsQueryData_getArchivedCarts_data_restaurant_terminal_delivery
              .serializer,
          json);
}

abstract class GGetArchivedCartsQueryData_getArchivedCarts_data_restaurant_city
    implements
        Built<GGetArchivedCartsQueryData_getArchivedCarts_data_restaurant_city,
            GGetArchivedCartsQueryData_getArchivedCarts_data_restaurant_cityBuilder>,
        _i2.GCartsPaginatorFragment_data_restaurant_city,
        _i4.GCartFragment_restaurant_city,
        _i15.GRestaurantFragment_city,
        _i7.GCityFragment {
  GGetArchivedCartsQueryData_getArchivedCarts_data_restaurant_city._();

  factory GGetArchivedCartsQueryData_getArchivedCarts_data_restaurant_city(
          [Function(
                  GGetArchivedCartsQueryData_getArchivedCarts_data_restaurant_cityBuilder
                      b)
              updates]) =
      _$GGetArchivedCartsQueryData_getArchivedCarts_data_restaurant_city;

  static void _initializeBuilder(
          GGetArchivedCartsQueryData_getArchivedCarts_data_restaurant_cityBuilder
              b) =>
      b..G__typename = 'City';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  String? get prefix;
  String? get postal_code;
  String? get city_type;
  bool? get available;
  static Serializer<
          GGetArchivedCartsQueryData_getArchivedCarts_data_restaurant_city>
      get serializer =>
          _$gGetArchivedCartsQueryDataGetArchivedCartsDataRestaurantCitySerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetArchivedCartsQueryData_getArchivedCarts_data_restaurant_city
          .serializer,
      this) as Map<String, dynamic>);
  static GGetArchivedCartsQueryData_getArchivedCarts_data_restaurant_city?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
          GGetArchivedCartsQueryData_getArchivedCarts_data_restaurant_city
              .serializer,
          json);
}
