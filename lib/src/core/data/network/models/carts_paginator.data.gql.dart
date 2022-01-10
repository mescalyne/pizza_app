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
import 'package:toto_mobile/src/core/data/network/models/paginator_info_fragment.data.gql.dart'
    as _i1;
import 'package:toto_mobile/src/core/data/network/models/product_fragment.data.gql.dart'
    as _i7;
import 'package:toto_mobile/src/core/data/network/models/products_size_fragment.data.gql.dart'
    as _i8;
import 'package:toto_mobile/src/core/data/network/models/restaurants_fragment.data.gql.dart'
    as _i13;
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i15;
import 'package:toto_mobile/src/core/data/network/models/terminal_fragment.data.gql.dart'
    as _i14;
import 'package:toto_mobile/src/core/data/network/models/toto.schema.schema.gql.dart'
    as _i3;

part 'carts_paginator.data.gql.g.dart';

abstract class GCartsPaginatorFragment {
  String get G__typename;
  GCartsPaginatorFragment_paginatorInfo? get paginatorInfo;
  BuiltList<GCartsPaginatorFragment_data>? get data;
  Map<String, dynamic> toJson();
}

abstract class GCartsPaginatorFragment_paginatorInfo
    implements _i1.GPaginatorInfoFragment {
  String get G__typename;
  int get count;
  int get currentPage;
  int? get firstItem;
  bool get hasMorePages;
  int? get lastItem;
  int get lastPage;
  int get perPage;
  int get total;
  Map<String, dynamic> toJson();
}

abstract class GCartsPaginatorFragment_data implements _i2.GCartFragment {
  String get G__typename;
  String get id;
  String get organization;
  String? get terminal_id;
  GCartsPaginatorFragment_data_delivery_address? get delivery_address;
  bool get is_self_service;
  _i3.GCartOrderStatus get cart_order_status;
  _i3.GCartPaymentStatus get cart_payment_status;
  BuiltList<GCartsPaginatorFragment_data_items>? get items;
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
  GCartsPaginatorFragment_data_order_info? get order_info;
  String? get comment;
  GCartsPaginatorFragment_data_restaurant? get restaurant;
  Map<String, dynamic> toJson();
}

abstract class GCartsPaginatorFragment_data_delivery_address
    implements
        _i2.GCartFragment_delivery_address,
        _i4.GDeliveryAddressFragment {
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
  GCartsPaginatorFragment_data_delivery_address_city? get city;
  bool? get address_in_zone;
  Map<String, dynamic> toJson();
}

abstract class GCartsPaginatorFragment_data_delivery_address_city
    implements
        _i2.GCartFragment_delivery_address_city,
        _i4.GDeliveryAddressFragment_city,
        _i5.GCityFragment {
  String get G__typename;
  String get id;
  String get name;
  String? get prefix;
  String? get postal_code;
  String? get city_type;
  bool? get available;
  Map<String, dynamic> toJson();
}

abstract class GCartsPaginatorFragment_data_items
    implements _i2.GCartFragment_items, _i6.GCartItemFragment {
  String get G__typename;
  int get id;
  String get product_id;
  GCartsPaginatorFragment_data_items_product get product;
  String get name;
  int get amount;
  double? get total;
  double? get discount_sum;
  double? get sum;
  String? get code;
  BuiltList<GCartsPaginatorFragment_data_items_modifiers>? get modifiers;
  Map<String, dynamic> toJson();
}

abstract class GCartsPaginatorFragment_data_items_product
    implements
        _i2.GCartFragment_items_product,
        _i6.GCartItemFragment_product,
        _i7.GProductFragment {
  String get G__typename;
  String get id;
  String? get parentGroupId;
  String? get groupId;
  GCartsPaginatorFragment_data_items_product_parentGroup? get parentGroup;
  GCartsPaginatorFragment_data_items_product_group? get group;
  String? get productCategoryId;
  GCartsPaginatorFragment_data_items_product_category? get category;
  BuiltList<GCartsPaginatorFragment_data_items_product_products_sizes>?
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
  BuiltList<GCartsPaginatorFragment_data_items_product_images>? get images;
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
  BuiltList<GCartsPaginatorFragment_data_items_product_modifiers>?
      get modifiers;
  BuiltList<GCartsPaginatorFragment_data_items_product_groupModifiers>?
      get groupModifiers;
  Map<String, dynamic> toJson();
}

abstract class GCartsPaginatorFragment_data_items_product_parentGroup
    implements
        _i2.GCartFragment_items_product_parentGroup,
        _i6.GCartItemFragment_product_parentGroup,
        _i7.GProductFragment_parentGroup {
  String get G__typename;
  String get id;
  String? get parentGroup;
  String? get additionalInfo;
  String get name;
  String? get description;
  Map<String, dynamic> toJson();
}

abstract class GCartsPaginatorFragment_data_items_product_group
    implements
        _i2.GCartFragment_items_product_group,
        _i6.GCartItemFragment_product_group,
        _i7.GProductFragment_group {
  String get G__typename;
  String get id;
  String? get parentGroup;
  String? get additionalInfo;
  String get name;
  String? get description;
  Map<String, dynamic> toJson();
}

abstract class GCartsPaginatorFragment_data_items_product_category
    implements
        _i2.GCartFragment_items_product_category,
        _i6.GCartItemFragment_product_category,
        _i7.GProductFragment_category {
  String get G__typename;
  String get id;
  String get name;
  Map<String, dynamic> toJson();
}

abstract class GCartsPaginatorFragment_data_items_product_products_sizes
    implements
        _i2.GCartFragment_items_product_products_sizes,
        _i6.GCartItemFragment_product_products_sizes,
        _i7.GProductFragment_products_sizes,
        _i8.GProductsSizesFragment {
  String get G__typename;
  String get id;
  String get name;
  String? get additionalInfo;
  String? get description;
  GCartsPaginatorFragment_data_items_product_products_sizes_parentGroup?
      get parentGroup;
  BuiltList<GCartsPaginatorFragment_data_items_product_products_sizes_images>?
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
          GCartsPaginatorFragment_data_items_product_products_sizes_modifiers>?
      get modifiers;
  BuiltList<
          GCartsPaginatorFragment_data_items_product_products_sizes_groupModifiers>?
      get groupModifiers;
  Map<String, dynamic> toJson();
}

abstract class GCartsPaginatorFragment_data_items_product_products_sizes_parentGroup
    implements
        _i2.GCartFragment_items_product_products_sizes_parentGroup,
        _i6.GCartItemFragment_product_products_sizes_parentGroup,
        _i7.GProductFragment_products_sizes_parentGroup,
        _i8.GProductsSizesFragment_parentGroup {
  String get G__typename;
  String get id;
  String get name;
  Map<String, dynamic> toJson();
}

abstract class GCartsPaginatorFragment_data_items_product_products_sizes_images
    implements
        _i2.GCartFragment_items_product_products_sizes_images,
        _i6.GCartItemFragment_product_products_sizes_images,
        _i7.GProductFragment_products_sizes_images,
        _i8.GProductsSizesFragment_images {
  String get G__typename;
  String? get imageId;
  String? get imageUrl;
  Map<String, dynamic> toJson();
}

abstract class GCartsPaginatorFragment_data_items_product_products_sizes_modifiers
    implements
        _i2.GCartFragment_items_product_products_sizes_modifiers,
        _i6.GCartItemFragment_product_products_sizes_modifiers,
        _i7.GProductFragment_products_sizes_modifiers,
        _i8.GProductsSizesFragment_modifiers,
        _i9.GModificatorFragment {
  String get G__typename;
  int? get maxAmount;
  int? get minAmount;
  String get modifierId;
  bool? get required;
  int? get defaultAmount;
  bool? get hideIfDefaultAmount;
  Map<String, dynamic> toJson();
}

abstract class GCartsPaginatorFragment_data_items_product_products_sizes_groupModifiers
    implements
        _i2.GCartFragment_items_product_products_sizes_groupModifiers,
        _i6.GCartItemFragment_product_products_sizes_groupModifiers,
        _i7.GProductFragment_products_sizes_groupModifiers,
        _i8.GProductsSizesFragment_groupModifiers,
        _i10.GGroupModificatorFragment {
  String get G__typename;
  int? get maxAmount;
  int? get minAmount;
  String get modifierId;
  bool? get required;
  BuiltList<
          GCartsPaginatorFragment_data_items_product_products_sizes_groupModifiers_childModifiers>?
      get childModifiers;
  bool? get childModifiersHaveMinMaxRestrictions;
  Map<String, dynamic> toJson();
}

abstract class GCartsPaginatorFragment_data_items_product_products_sizes_groupModifiers_childModifiers
    implements
        _i2.GCartFragment_items_product_products_sizes_groupModifiers_childModifiers,
        _i6.GCartItemFragment_product_products_sizes_groupModifiers_childModifiers,
        _i7.GProductFragment_products_sizes_groupModifiers_childModifiers,
        _i8.GProductsSizesFragment_groupModifiers_childModifiers,
        _i10.GGroupModificatorFragment_childModifiers,
        _i9.GModificatorFragment {
  String get G__typename;
  int? get maxAmount;
  int? get minAmount;
  String get modifierId;
  bool? get required;
  int? get defaultAmount;
  bool? get hideIfDefaultAmount;
  Map<String, dynamic> toJson();
}

abstract class GCartsPaginatorFragment_data_items_product_images
    implements
        _i2.GCartFragment_items_product_images,
        _i6.GCartItemFragment_product_images,
        _i7.GProductFragment_images {
  String get G__typename;
  String? get imageId;
  String? get imageUrl;
  Map<String, dynamic> toJson();
}

abstract class GCartsPaginatorFragment_data_items_product_modifiers
    implements
        _i2.GCartFragment_items_product_modifiers,
        _i6.GCartItemFragment_product_modifiers,
        _i7.GProductFragment_modifiers,
        _i9.GModificatorFragment {
  String get G__typename;
  int? get maxAmount;
  int? get minAmount;
  String get modifierId;
  bool? get required;
  int? get defaultAmount;
  bool? get hideIfDefaultAmount;
  Map<String, dynamic> toJson();
}

abstract class GCartsPaginatorFragment_data_items_product_groupModifiers
    implements
        _i2.GCartFragment_items_product_groupModifiers,
        _i6.GCartItemFragment_product_groupModifiers,
        _i7.GProductFragment_groupModifiers,
        _i10.GGroupModificatorFragment {
  String get G__typename;
  int? get maxAmount;
  int? get minAmount;
  String get modifierId;
  bool? get required;
  BuiltList<
          GCartsPaginatorFragment_data_items_product_groupModifiers_childModifiers>?
      get childModifiers;
  bool? get childModifiersHaveMinMaxRestrictions;
  Map<String, dynamic> toJson();
}

abstract class GCartsPaginatorFragment_data_items_product_groupModifiers_childModifiers
    implements
        _i2.GCartFragment_items_product_groupModifiers_childModifiers,
        _i6.GCartItemFragment_product_groupModifiers_childModifiers,
        _i7.GProductFragment_groupModifiers_childModifiers,
        _i10.GGroupModificatorFragment_childModifiers,
        _i9.GModificatorFragment {
  String get G__typename;
  int? get maxAmount;
  int? get minAmount;
  String get modifierId;
  bool? get required;
  int? get defaultAmount;
  bool? get hideIfDefaultAmount;
  Map<String, dynamic> toJson();
}

abstract class GCartsPaginatorFragment_data_items_modifiers
    implements
        _i2.GCartFragment_items_modifiers,
        _i6.GCartItemFragment_modifiers,
        _i11.GCartItemModifierFragment {
  String get G__typename;
  String get id;
  String get type;
  String get product_id;
  GCartsPaginatorFragment_data_items_modifiers_product get product;
  String get name;
  int get amount;
  String? get group_id;
  String? get group_name;
  Map<String, dynamic> toJson();
}

abstract class GCartsPaginatorFragment_data_items_modifiers_product
    implements
        _i2.GCartFragment_items_modifiers_product,
        _i6.GCartItemFragment_modifiers_product,
        _i11.GCartItemModifierFragment_product,
        _i7.GProductFragment {
  String get G__typename;
  String get id;
  String? get parentGroupId;
  String? get groupId;
  GCartsPaginatorFragment_data_items_modifiers_product_parentGroup?
      get parentGroup;
  GCartsPaginatorFragment_data_items_modifiers_product_group? get group;
  String? get productCategoryId;
  GCartsPaginatorFragment_data_items_modifiers_product_category? get category;
  BuiltList<
          GCartsPaginatorFragment_data_items_modifiers_product_products_sizes>?
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
  BuiltList<GCartsPaginatorFragment_data_items_modifiers_product_images>?
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
  BuiltList<GCartsPaginatorFragment_data_items_modifiers_product_modifiers>?
      get modifiers;
  BuiltList<
          GCartsPaginatorFragment_data_items_modifiers_product_groupModifiers>?
      get groupModifiers;
  Map<String, dynamic> toJson();
}

abstract class GCartsPaginatorFragment_data_items_modifiers_product_parentGroup
    implements
        _i2.GCartFragment_items_modifiers_product_parentGroup,
        _i6.GCartItemFragment_modifiers_product_parentGroup,
        _i11.GCartItemModifierFragment_product_parentGroup,
        _i7.GProductFragment_parentGroup {
  String get G__typename;
  String get id;
  String? get parentGroup;
  String? get additionalInfo;
  String get name;
  String? get description;
  Map<String, dynamic> toJson();
}

abstract class GCartsPaginatorFragment_data_items_modifiers_product_group
    implements
        _i2.GCartFragment_items_modifiers_product_group,
        _i6.GCartItemFragment_modifiers_product_group,
        _i11.GCartItemModifierFragment_product_group,
        _i7.GProductFragment_group {
  String get G__typename;
  String get id;
  String? get parentGroup;
  String? get additionalInfo;
  String get name;
  String? get description;
  Map<String, dynamic> toJson();
}

abstract class GCartsPaginatorFragment_data_items_modifiers_product_category
    implements
        _i2.GCartFragment_items_modifiers_product_category,
        _i6.GCartItemFragment_modifiers_product_category,
        _i11.GCartItemModifierFragment_product_category,
        _i7.GProductFragment_category {
  String get G__typename;
  String get id;
  String get name;
  Map<String, dynamic> toJson();
}

abstract class GCartsPaginatorFragment_data_items_modifiers_product_products_sizes
    implements
        _i2.GCartFragment_items_modifiers_product_products_sizes,
        _i6.GCartItemFragment_modifiers_product_products_sizes,
        _i11.GCartItemModifierFragment_product_products_sizes,
        _i7.GProductFragment_products_sizes,
        _i8.GProductsSizesFragment {
  String get G__typename;
  String get id;
  String get name;
  String? get additionalInfo;
  String? get description;
  GCartsPaginatorFragment_data_items_modifiers_product_products_sizes_parentGroup?
      get parentGroup;
  BuiltList<
          GCartsPaginatorFragment_data_items_modifiers_product_products_sizes_images>?
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
          GCartsPaginatorFragment_data_items_modifiers_product_products_sizes_modifiers>?
      get modifiers;
  BuiltList<
          GCartsPaginatorFragment_data_items_modifiers_product_products_sizes_groupModifiers>?
      get groupModifiers;
  Map<String, dynamic> toJson();
}

abstract class GCartsPaginatorFragment_data_items_modifiers_product_products_sizes_parentGroup
    implements
        _i2.GCartFragment_items_modifiers_product_products_sizes_parentGroup,
        _i6.GCartItemFragment_modifiers_product_products_sizes_parentGroup,
        _i11.GCartItemModifierFragment_product_products_sizes_parentGroup,
        _i7.GProductFragment_products_sizes_parentGroup,
        _i8.GProductsSizesFragment_parentGroup {
  String get G__typename;
  String get id;
  String get name;
  Map<String, dynamic> toJson();
}

abstract class GCartsPaginatorFragment_data_items_modifiers_product_products_sizes_images
    implements
        _i2.GCartFragment_items_modifiers_product_products_sizes_images,
        _i6.GCartItemFragment_modifiers_product_products_sizes_images,
        _i11.GCartItemModifierFragment_product_products_sizes_images,
        _i7.GProductFragment_products_sizes_images,
        _i8.GProductsSizesFragment_images {
  String get G__typename;
  String? get imageId;
  String? get imageUrl;
  Map<String, dynamic> toJson();
}

abstract class GCartsPaginatorFragment_data_items_modifiers_product_products_sizes_modifiers
    implements
        _i2.GCartFragment_items_modifiers_product_products_sizes_modifiers,
        _i6.GCartItemFragment_modifiers_product_products_sizes_modifiers,
        _i11.GCartItemModifierFragment_product_products_sizes_modifiers,
        _i7.GProductFragment_products_sizes_modifiers,
        _i8.GProductsSizesFragment_modifiers,
        _i9.GModificatorFragment {
  String get G__typename;
  int? get maxAmount;
  int? get minAmount;
  String get modifierId;
  bool? get required;
  int? get defaultAmount;
  bool? get hideIfDefaultAmount;
  Map<String, dynamic> toJson();
}

abstract class GCartsPaginatorFragment_data_items_modifiers_product_products_sizes_groupModifiers
    implements
        _i2.GCartFragment_items_modifiers_product_products_sizes_groupModifiers,
        _i6.GCartItemFragment_modifiers_product_products_sizes_groupModifiers,
        _i11.GCartItemModifierFragment_product_products_sizes_groupModifiers,
        _i7.GProductFragment_products_sizes_groupModifiers,
        _i8.GProductsSizesFragment_groupModifiers,
        _i10.GGroupModificatorFragment {
  String get G__typename;
  int? get maxAmount;
  int? get minAmount;
  String get modifierId;
  bool? get required;
  BuiltList<
          GCartsPaginatorFragment_data_items_modifiers_product_products_sizes_groupModifiers_childModifiers>?
      get childModifiers;
  bool? get childModifiersHaveMinMaxRestrictions;
  Map<String, dynamic> toJson();
}

abstract class GCartsPaginatorFragment_data_items_modifiers_product_products_sizes_groupModifiers_childModifiers
    implements
        _i2.GCartFragment_items_modifiers_product_products_sizes_groupModifiers_childModifiers,
        _i6.GCartItemFragment_modifiers_product_products_sizes_groupModifiers_childModifiers,
        _i11.GCartItemModifierFragment_product_products_sizes_groupModifiers_childModifiers,
        _i7.GProductFragment_products_sizes_groupModifiers_childModifiers,
        _i8.GProductsSizesFragment_groupModifiers_childModifiers,
        _i10.GGroupModificatorFragment_childModifiers,
        _i9.GModificatorFragment {
  String get G__typename;
  int? get maxAmount;
  int? get minAmount;
  String get modifierId;
  bool? get required;
  int? get defaultAmount;
  bool? get hideIfDefaultAmount;
  Map<String, dynamic> toJson();
}

abstract class GCartsPaginatorFragment_data_items_modifiers_product_images
    implements
        _i2.GCartFragment_items_modifiers_product_images,
        _i6.GCartItemFragment_modifiers_product_images,
        _i11.GCartItemModifierFragment_product_images,
        _i7.GProductFragment_images {
  String get G__typename;
  String? get imageId;
  String? get imageUrl;
  Map<String, dynamic> toJson();
}

abstract class GCartsPaginatorFragment_data_items_modifiers_product_modifiers
    implements
        _i2.GCartFragment_items_modifiers_product_modifiers,
        _i6.GCartItemFragment_modifiers_product_modifiers,
        _i11.GCartItemModifierFragment_product_modifiers,
        _i7.GProductFragment_modifiers,
        _i9.GModificatorFragment {
  String get G__typename;
  int? get maxAmount;
  int? get minAmount;
  String get modifierId;
  bool? get required;
  int? get defaultAmount;
  bool? get hideIfDefaultAmount;
  Map<String, dynamic> toJson();
}

abstract class GCartsPaginatorFragment_data_items_modifiers_product_groupModifiers
    implements
        _i2.GCartFragment_items_modifiers_product_groupModifiers,
        _i6.GCartItemFragment_modifiers_product_groupModifiers,
        _i11.GCartItemModifierFragment_product_groupModifiers,
        _i7.GProductFragment_groupModifiers,
        _i10.GGroupModificatorFragment {
  String get G__typename;
  int? get maxAmount;
  int? get minAmount;
  String get modifierId;
  bool? get required;
  BuiltList<
          GCartsPaginatorFragment_data_items_modifiers_product_groupModifiers_childModifiers>?
      get childModifiers;
  bool? get childModifiersHaveMinMaxRestrictions;
  Map<String, dynamic> toJson();
}

abstract class GCartsPaginatorFragment_data_items_modifiers_product_groupModifiers_childModifiers
    implements
        _i2.GCartFragment_items_modifiers_product_groupModifiers_childModifiers,
        _i6.GCartItemFragment_modifiers_product_groupModifiers_childModifiers,
        _i11.GCartItemModifierFragment_product_groupModifiers_childModifiers,
        _i7.GProductFragment_groupModifiers_childModifiers,
        _i10.GGroupModificatorFragment_childModifiers,
        _i9.GModificatorFragment {
  String get G__typename;
  int? get maxAmount;
  int? get minAmount;
  String get modifierId;
  bool? get required;
  int? get defaultAmount;
  bool? get hideIfDefaultAmount;
  Map<String, dynamic> toJson();
}

abstract class GCartsPaginatorFragment_data_order_info
    implements _i2.GCartFragment_order_info, _i12.GOrderInfoFragment {
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
  Map<String, dynamic> toJson();
}

abstract class GCartsPaginatorFragment_data_restaurant
    implements _i2.GCartFragment_restaurant, _i13.GRestaurantFragment {
  String get G__typename;
  String get id;
  String get name;
  String? get address;
  GCartsPaginatorFragment_data_restaurant_terminal_kitchen?
      get terminal_kitchen;
  GCartsPaginatorFragment_data_restaurant_terminal_delivery?
      get terminal_delivery;
  String? get latitude;
  String? get longitude;
  String? get open_at;
  String? get close_at;
  bool? get is_open;
  String? get delivery_open_at;
  String? get delivery_close_at;
  bool? get is_delivery_open;
  GCartsPaginatorFragment_data_restaurant_city? get city;
  Map<String, dynamic> toJson();
}

abstract class GCartsPaginatorFragment_data_restaurant_terminal_kitchen
    implements
        _i2.GCartFragment_restaurant_terminal_kitchen,
        _i13.GRestaurantFragment_terminal_kitchen,
        _i14.GTerminalFragment {
  String get G__typename;
  String get id;
  Map<String, dynamic> toJson();
}

abstract class GCartsPaginatorFragment_data_restaurant_terminal_delivery
    implements
        _i2.GCartFragment_restaurant_terminal_delivery,
        _i13.GRestaurantFragment_terminal_delivery,
        _i14.GTerminalFragment {
  String get G__typename;
  String get id;
  Map<String, dynamic> toJson();
}

abstract class GCartsPaginatorFragment_data_restaurant_city
    implements
        _i2.GCartFragment_restaurant_city,
        _i13.GRestaurantFragment_city,
        _i5.GCityFragment {
  String get G__typename;
  String get id;
  String get name;
  String? get prefix;
  String? get postal_code;
  String? get city_type;
  bool? get available;
  Map<String, dynamic> toJson();
}

abstract class GCartsPaginatorFragmentData
    implements
        Built<GCartsPaginatorFragmentData, GCartsPaginatorFragmentDataBuilder>,
        GCartsPaginatorFragment {
  GCartsPaginatorFragmentData._();

  factory GCartsPaginatorFragmentData(
          [Function(GCartsPaginatorFragmentDataBuilder b) updates]) =
      _$GCartsPaginatorFragmentData;

  static void _initializeBuilder(GCartsPaginatorFragmentDataBuilder b) =>
      b..G__typename = 'CartsPaginator';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GCartsPaginatorFragmentData_paginatorInfo? get paginatorInfo;
  BuiltList<GCartsPaginatorFragmentData_data>? get data;
  static Serializer<GCartsPaginatorFragmentData> get serializer =>
      _$gCartsPaginatorFragmentDataSerializer;
  Map<String, dynamic> toJson() => (_i15.serializers.serializeWith(
      GCartsPaginatorFragmentData.serializer, this) as Map<String, dynamic>);
  static GCartsPaginatorFragmentData? fromJson(Map<String, dynamic> json) =>
      _i15.serializers
          .deserializeWith(GCartsPaginatorFragmentData.serializer, json);
}

abstract class GCartsPaginatorFragmentData_paginatorInfo
    implements
        Built<GCartsPaginatorFragmentData_paginatorInfo,
            GCartsPaginatorFragmentData_paginatorInfoBuilder>,
        GCartsPaginatorFragment_paginatorInfo,
        _i1.GPaginatorInfoFragment {
  GCartsPaginatorFragmentData_paginatorInfo._();

  factory GCartsPaginatorFragmentData_paginatorInfo(
      [Function(GCartsPaginatorFragmentData_paginatorInfoBuilder b)
          updates]) = _$GCartsPaginatorFragmentData_paginatorInfo;

  static void _initializeBuilder(
          GCartsPaginatorFragmentData_paginatorInfoBuilder b) =>
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
  static Serializer<GCartsPaginatorFragmentData_paginatorInfo> get serializer =>
      _$gCartsPaginatorFragmentDataPaginatorInfoSerializer;
  Map<String, dynamic> toJson() => (_i15.serializers.serializeWith(
          GCartsPaginatorFragmentData_paginatorInfo.serializer, this)
      as Map<String, dynamic>);
  static GCartsPaginatorFragmentData_paginatorInfo? fromJson(
          Map<String, dynamic> json) =>
      _i15.serializers.deserializeWith(
          GCartsPaginatorFragmentData_paginatorInfo.serializer, json);
}

abstract class GCartsPaginatorFragmentData_data
    implements
        Built<GCartsPaginatorFragmentData_data,
            GCartsPaginatorFragmentData_dataBuilder>,
        GCartsPaginatorFragment_data,
        _i2.GCartFragment {
  GCartsPaginatorFragmentData_data._();

  factory GCartsPaginatorFragmentData_data(
          [Function(GCartsPaginatorFragmentData_dataBuilder b) updates]) =
      _$GCartsPaginatorFragmentData_data;

  static void _initializeBuilder(GCartsPaginatorFragmentData_dataBuilder b) =>
      b..G__typename = 'Cart';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get organization;
  String? get terminal_id;
  GCartsPaginatorFragmentData_data_delivery_address? get delivery_address;
  bool get is_self_service;
  _i3.GCartOrderStatus get cart_order_status;
  _i3.GCartPaymentStatus get cart_payment_status;
  BuiltList<GCartsPaginatorFragmentData_data_items>? get items;
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
  GCartsPaginatorFragmentData_data_order_info? get order_info;
  String? get comment;
  GCartsPaginatorFragmentData_data_restaurant? get restaurant;
  static Serializer<GCartsPaginatorFragmentData_data> get serializer =>
      _$gCartsPaginatorFragmentDataDataSerializer;
  Map<String, dynamic> toJson() => (_i15.serializers
          .serializeWith(GCartsPaginatorFragmentData_data.serializer, this)
      as Map<String, dynamic>);
  static GCartsPaginatorFragmentData_data? fromJson(
          Map<String, dynamic> json) =>
      _i15.serializers
          .deserializeWith(GCartsPaginatorFragmentData_data.serializer, json);
}

abstract class GCartsPaginatorFragmentData_data_delivery_address
    implements
        Built<GCartsPaginatorFragmentData_data_delivery_address,
            GCartsPaginatorFragmentData_data_delivery_addressBuilder>,
        GCartsPaginatorFragment_data_delivery_address,
        _i2.GCartFragment_delivery_address,
        _i4.GDeliveryAddressFragment {
  GCartsPaginatorFragmentData_data_delivery_address._();

  factory GCartsPaginatorFragmentData_data_delivery_address(
      [Function(GCartsPaginatorFragmentData_data_delivery_addressBuilder b)
          updates]) = _$GCartsPaginatorFragmentData_data_delivery_address;

  static void _initializeBuilder(
          GCartsPaginatorFragmentData_data_delivery_addressBuilder b) =>
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
  GCartsPaginatorFragmentData_data_delivery_address_city? get city;
  bool? get address_in_zone;
  static Serializer<GCartsPaginatorFragmentData_data_delivery_address>
      get serializer =>
          _$gCartsPaginatorFragmentDataDataDeliveryAddressSerializer;
  Map<String, dynamic> toJson() => (_i15.serializers.serializeWith(
          GCartsPaginatorFragmentData_data_delivery_address.serializer, this)
      as Map<String, dynamic>);
  static GCartsPaginatorFragmentData_data_delivery_address? fromJson(
          Map<String, dynamic> json) =>
      _i15.serializers.deserializeWith(
          GCartsPaginatorFragmentData_data_delivery_address.serializer, json);
}

abstract class GCartsPaginatorFragmentData_data_delivery_address_city
    implements
        Built<GCartsPaginatorFragmentData_data_delivery_address_city,
            GCartsPaginatorFragmentData_data_delivery_address_cityBuilder>,
        GCartsPaginatorFragment_data_delivery_address_city,
        _i2.GCartFragment_delivery_address_city,
        _i4.GDeliveryAddressFragment_city,
        _i5.GCityFragment {
  GCartsPaginatorFragmentData_data_delivery_address_city._();

  factory GCartsPaginatorFragmentData_data_delivery_address_city(
      [Function(GCartsPaginatorFragmentData_data_delivery_address_cityBuilder b)
          updates]) = _$GCartsPaginatorFragmentData_data_delivery_address_city;

  static void _initializeBuilder(
          GCartsPaginatorFragmentData_data_delivery_address_cityBuilder b) =>
      b..G__typename = 'City';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  String? get prefix;
  String? get postal_code;
  String? get city_type;
  bool? get available;
  static Serializer<GCartsPaginatorFragmentData_data_delivery_address_city>
      get serializer =>
          _$gCartsPaginatorFragmentDataDataDeliveryAddressCitySerializer;
  Map<String, dynamic> toJson() => (_i15.serializers.serializeWith(
      GCartsPaginatorFragmentData_data_delivery_address_city.serializer,
      this) as Map<String, dynamic>);
  static GCartsPaginatorFragmentData_data_delivery_address_city? fromJson(
          Map<String, dynamic> json) =>
      _i15.serializers.deserializeWith(
          GCartsPaginatorFragmentData_data_delivery_address_city.serializer,
          json);
}

abstract class GCartsPaginatorFragmentData_data_items
    implements
        Built<GCartsPaginatorFragmentData_data_items,
            GCartsPaginatorFragmentData_data_itemsBuilder>,
        GCartsPaginatorFragment_data_items,
        _i2.GCartFragment_items,
        _i6.GCartItemFragment {
  GCartsPaginatorFragmentData_data_items._();

  factory GCartsPaginatorFragmentData_data_items(
          [Function(GCartsPaginatorFragmentData_data_itemsBuilder b) updates]) =
      _$GCartsPaginatorFragmentData_data_items;

  static void _initializeBuilder(
          GCartsPaginatorFragmentData_data_itemsBuilder b) =>
      b..G__typename = 'CartItem';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  String get product_id;
  GCartsPaginatorFragmentData_data_items_product get product;
  String get name;
  int get amount;
  double? get total;
  double? get discount_sum;
  double? get sum;
  String? get code;
  BuiltList<GCartsPaginatorFragmentData_data_items_modifiers>? get modifiers;
  static Serializer<GCartsPaginatorFragmentData_data_items> get serializer =>
      _$gCartsPaginatorFragmentDataDataItemsSerializer;
  Map<String, dynamic> toJson() => (_i15.serializers.serializeWith(
          GCartsPaginatorFragmentData_data_items.serializer, this)
      as Map<String, dynamic>);
  static GCartsPaginatorFragmentData_data_items? fromJson(
          Map<String, dynamic> json) =>
      _i15.serializers.deserializeWith(
          GCartsPaginatorFragmentData_data_items.serializer, json);
}

abstract class GCartsPaginatorFragmentData_data_items_product
    implements
        Built<GCartsPaginatorFragmentData_data_items_product,
            GCartsPaginatorFragmentData_data_items_productBuilder>,
        GCartsPaginatorFragment_data_items_product,
        _i2.GCartFragment_items_product,
        _i6.GCartItemFragment_product,
        _i7.GProductFragment {
  GCartsPaginatorFragmentData_data_items_product._();

  factory GCartsPaginatorFragmentData_data_items_product(
      [Function(GCartsPaginatorFragmentData_data_items_productBuilder b)
          updates]) = _$GCartsPaginatorFragmentData_data_items_product;

  static void _initializeBuilder(
          GCartsPaginatorFragmentData_data_items_productBuilder b) =>
      b..G__typename = 'Product';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get parentGroupId;
  String? get groupId;
  GCartsPaginatorFragmentData_data_items_product_parentGroup? get parentGroup;
  GCartsPaginatorFragmentData_data_items_product_group? get group;
  String? get productCategoryId;
  GCartsPaginatorFragmentData_data_items_product_category? get category;
  BuiltList<GCartsPaginatorFragmentData_data_items_product_products_sizes>?
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
  BuiltList<GCartsPaginatorFragmentData_data_items_product_images>? get images;
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
  BuiltList<GCartsPaginatorFragmentData_data_items_product_modifiers>?
      get modifiers;
  BuiltList<GCartsPaginatorFragmentData_data_items_product_groupModifiers>?
      get groupModifiers;
  static Serializer<GCartsPaginatorFragmentData_data_items_product>
      get serializer => _$gCartsPaginatorFragmentDataDataItemsProductSerializer;
  Map<String, dynamic> toJson() => (_i15.serializers.serializeWith(
          GCartsPaginatorFragmentData_data_items_product.serializer, this)
      as Map<String, dynamic>);
  static GCartsPaginatorFragmentData_data_items_product? fromJson(
          Map<String, dynamic> json) =>
      _i15.serializers.deserializeWith(
          GCartsPaginatorFragmentData_data_items_product.serializer, json);
}

abstract class GCartsPaginatorFragmentData_data_items_product_parentGroup
    implements
        Built<GCartsPaginatorFragmentData_data_items_product_parentGroup,
            GCartsPaginatorFragmentData_data_items_product_parentGroupBuilder>,
        GCartsPaginatorFragment_data_items_product_parentGroup,
        _i2.GCartFragment_items_product_parentGroup,
        _i6.GCartItemFragment_product_parentGroup,
        _i7.GProductFragment_parentGroup {
  GCartsPaginatorFragmentData_data_items_product_parentGroup._();

  factory GCartsPaginatorFragmentData_data_items_product_parentGroup(
      [Function(
              GCartsPaginatorFragmentData_data_items_product_parentGroupBuilder
                  b)
          updates]) = _$GCartsPaginatorFragmentData_data_items_product_parentGroup;

  static void _initializeBuilder(
          GCartsPaginatorFragmentData_data_items_product_parentGroupBuilder
              b) =>
      b..G__typename = 'Group';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get parentGroup;
  String? get additionalInfo;
  String get name;
  String? get description;
  static Serializer<GCartsPaginatorFragmentData_data_items_product_parentGroup>
      get serializer =>
          _$gCartsPaginatorFragmentDataDataItemsProductParentGroupSerializer;
  Map<String, dynamic> toJson() => (_i15.serializers.serializeWith(
      GCartsPaginatorFragmentData_data_items_product_parentGroup.serializer,
      this) as Map<String, dynamic>);
  static GCartsPaginatorFragmentData_data_items_product_parentGroup? fromJson(
          Map<String, dynamic> json) =>
      _i15.serializers.deserializeWith(
          GCartsPaginatorFragmentData_data_items_product_parentGroup.serializer,
          json);
}

abstract class GCartsPaginatorFragmentData_data_items_product_group
    implements
        Built<GCartsPaginatorFragmentData_data_items_product_group,
            GCartsPaginatorFragmentData_data_items_product_groupBuilder>,
        GCartsPaginatorFragment_data_items_product_group,
        _i2.GCartFragment_items_product_group,
        _i6.GCartItemFragment_product_group,
        _i7.GProductFragment_group {
  GCartsPaginatorFragmentData_data_items_product_group._();

  factory GCartsPaginatorFragmentData_data_items_product_group(
      [Function(GCartsPaginatorFragmentData_data_items_product_groupBuilder b)
          updates]) = _$GCartsPaginatorFragmentData_data_items_product_group;

  static void _initializeBuilder(
          GCartsPaginatorFragmentData_data_items_product_groupBuilder b) =>
      b..G__typename = 'Group';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get parentGroup;
  String? get additionalInfo;
  String get name;
  String? get description;
  static Serializer<GCartsPaginatorFragmentData_data_items_product_group>
      get serializer =>
          _$gCartsPaginatorFragmentDataDataItemsProductGroupSerializer;
  Map<String, dynamic> toJson() => (_i15.serializers.serializeWith(
          GCartsPaginatorFragmentData_data_items_product_group.serializer, this)
      as Map<String, dynamic>);
  static GCartsPaginatorFragmentData_data_items_product_group? fromJson(
          Map<String, dynamic> json) =>
      _i15.serializers.deserializeWith(
          GCartsPaginatorFragmentData_data_items_product_group.serializer,
          json);
}

abstract class GCartsPaginatorFragmentData_data_items_product_category
    implements
        Built<GCartsPaginatorFragmentData_data_items_product_category,
            GCartsPaginatorFragmentData_data_items_product_categoryBuilder>,
        GCartsPaginatorFragment_data_items_product_category,
        _i2.GCartFragment_items_product_category,
        _i6.GCartItemFragment_product_category,
        _i7.GProductFragment_category {
  GCartsPaginatorFragmentData_data_items_product_category._();

  factory GCartsPaginatorFragmentData_data_items_product_category(
      [Function(
              GCartsPaginatorFragmentData_data_items_product_categoryBuilder b)
          updates]) = _$GCartsPaginatorFragmentData_data_items_product_category;

  static void _initializeBuilder(
          GCartsPaginatorFragmentData_data_items_product_categoryBuilder b) =>
      b..G__typename = 'ProductCategory';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  static Serializer<GCartsPaginatorFragmentData_data_items_product_category>
      get serializer =>
          _$gCartsPaginatorFragmentDataDataItemsProductCategorySerializer;
  Map<String, dynamic> toJson() => (_i15.serializers.serializeWith(
      GCartsPaginatorFragmentData_data_items_product_category.serializer,
      this) as Map<String, dynamic>);
  static GCartsPaginatorFragmentData_data_items_product_category? fromJson(
          Map<String, dynamic> json) =>
      _i15.serializers.deserializeWith(
          GCartsPaginatorFragmentData_data_items_product_category.serializer,
          json);
}

abstract class GCartsPaginatorFragmentData_data_items_product_products_sizes
    implements
        Built<GCartsPaginatorFragmentData_data_items_product_products_sizes,
            GCartsPaginatorFragmentData_data_items_product_products_sizesBuilder>,
        GCartsPaginatorFragment_data_items_product_products_sizes,
        _i2.GCartFragment_items_product_products_sizes,
        _i6.GCartItemFragment_product_products_sizes,
        _i7.GProductFragment_products_sizes,
        _i8.GProductsSizesFragment {
  GCartsPaginatorFragmentData_data_items_product_products_sizes._();

  factory GCartsPaginatorFragmentData_data_items_product_products_sizes(
          [Function(
                  GCartsPaginatorFragmentData_data_items_product_products_sizesBuilder
                      b)
              updates]) =
      _$GCartsPaginatorFragmentData_data_items_product_products_sizes;

  static void _initializeBuilder(
          GCartsPaginatorFragmentData_data_items_product_products_sizesBuilder
              b) =>
      b..G__typename = 'Product';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  String? get additionalInfo;
  String? get description;
  GCartsPaginatorFragmentData_data_items_product_products_sizes_parentGroup?
      get parentGroup;
  BuiltList<
          GCartsPaginatorFragmentData_data_items_product_products_sizes_images>?
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
          GCartsPaginatorFragmentData_data_items_product_products_sizes_modifiers>?
      get modifiers;
  BuiltList<
          GCartsPaginatorFragmentData_data_items_product_products_sizes_groupModifiers>?
      get groupModifiers;
  static Serializer<
          GCartsPaginatorFragmentData_data_items_product_products_sizes>
      get serializer =>
          _$gCartsPaginatorFragmentDataDataItemsProductProductsSizesSerializer;
  Map<String, dynamic> toJson() => (_i15.serializers.serializeWith(
      GCartsPaginatorFragmentData_data_items_product_products_sizes.serializer,
      this) as Map<String, dynamic>);
  static GCartsPaginatorFragmentData_data_items_product_products_sizes?
      fromJson(Map<String, dynamic> json) => _i15.serializers.deserializeWith(
          GCartsPaginatorFragmentData_data_items_product_products_sizes
              .serializer,
          json);
}

abstract class GCartsPaginatorFragmentData_data_items_product_products_sizes_parentGroup
    implements
        Built<
            GCartsPaginatorFragmentData_data_items_product_products_sizes_parentGroup,
            GCartsPaginatorFragmentData_data_items_product_products_sizes_parentGroupBuilder>,
        GCartsPaginatorFragment_data_items_product_products_sizes_parentGroup,
        _i2.GCartFragment_items_product_products_sizes_parentGroup,
        _i6.GCartItemFragment_product_products_sizes_parentGroup,
        _i7.GProductFragment_products_sizes_parentGroup,
        _i8.GProductsSizesFragment_parentGroup {
  GCartsPaginatorFragmentData_data_items_product_products_sizes_parentGroup._();

  factory GCartsPaginatorFragmentData_data_items_product_products_sizes_parentGroup(
          [Function(
                  GCartsPaginatorFragmentData_data_items_product_products_sizes_parentGroupBuilder
                      b)
              updates]) =
      _$GCartsPaginatorFragmentData_data_items_product_products_sizes_parentGroup;

  static void _initializeBuilder(
          GCartsPaginatorFragmentData_data_items_product_products_sizes_parentGroupBuilder
              b) =>
      b..G__typename = 'Group';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  static Serializer<
          GCartsPaginatorFragmentData_data_items_product_products_sizes_parentGroup>
      get serializer =>
          _$gCartsPaginatorFragmentDataDataItemsProductProductsSizesParentGroupSerializer;
  Map<String, dynamic> toJson() => (_i15.serializers.serializeWith(
      GCartsPaginatorFragmentData_data_items_product_products_sizes_parentGroup
          .serializer,
      this) as Map<String, dynamic>);
  static GCartsPaginatorFragmentData_data_items_product_products_sizes_parentGroup?
      fromJson(Map<String, dynamic> json) => _i15.serializers.deserializeWith(
          GCartsPaginatorFragmentData_data_items_product_products_sizes_parentGroup
              .serializer,
          json);
}

abstract class GCartsPaginatorFragmentData_data_items_product_products_sizes_images
    implements
        Built<
            GCartsPaginatorFragmentData_data_items_product_products_sizes_images,
            GCartsPaginatorFragmentData_data_items_product_products_sizes_imagesBuilder>,
        GCartsPaginatorFragment_data_items_product_products_sizes_images,
        _i2.GCartFragment_items_product_products_sizes_images,
        _i6.GCartItemFragment_product_products_sizes_images,
        _i7.GProductFragment_products_sizes_images,
        _i8.GProductsSizesFragment_images {
  GCartsPaginatorFragmentData_data_items_product_products_sizes_images._();

  factory GCartsPaginatorFragmentData_data_items_product_products_sizes_images(
          [Function(
                  GCartsPaginatorFragmentData_data_items_product_products_sizes_imagesBuilder
                      b)
              updates]) =
      _$GCartsPaginatorFragmentData_data_items_product_products_sizes_images;

  static void _initializeBuilder(
          GCartsPaginatorFragmentData_data_items_product_products_sizes_imagesBuilder
              b) =>
      b..G__typename = 'ProductImage';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get imageId;
  String? get imageUrl;
  static Serializer<
          GCartsPaginatorFragmentData_data_items_product_products_sizes_images>
      get serializer =>
          _$gCartsPaginatorFragmentDataDataItemsProductProductsSizesImagesSerializer;
  Map<String, dynamic> toJson() => (_i15.serializers.serializeWith(
      GCartsPaginatorFragmentData_data_items_product_products_sizes_images
          .serializer,
      this) as Map<String, dynamic>);
  static GCartsPaginatorFragmentData_data_items_product_products_sizes_images?
      fromJson(Map<String, dynamic> json) => _i15.serializers.deserializeWith(
          GCartsPaginatorFragmentData_data_items_product_products_sizes_images
              .serializer,
          json);
}

abstract class GCartsPaginatorFragmentData_data_items_product_products_sizes_modifiers
    implements
        Built<
            GCartsPaginatorFragmentData_data_items_product_products_sizes_modifiers,
            GCartsPaginatorFragmentData_data_items_product_products_sizes_modifiersBuilder>,
        GCartsPaginatorFragment_data_items_product_products_sizes_modifiers,
        _i2.GCartFragment_items_product_products_sizes_modifiers,
        _i6.GCartItemFragment_product_products_sizes_modifiers,
        _i7.GProductFragment_products_sizes_modifiers,
        _i8.GProductsSizesFragment_modifiers,
        _i9.GModificatorFragment {
  GCartsPaginatorFragmentData_data_items_product_products_sizes_modifiers._();

  factory GCartsPaginatorFragmentData_data_items_product_products_sizes_modifiers(
          [Function(
                  GCartsPaginatorFragmentData_data_items_product_products_sizes_modifiersBuilder
                      b)
              updates]) =
      _$GCartsPaginatorFragmentData_data_items_product_products_sizes_modifiers;

  static void _initializeBuilder(
          GCartsPaginatorFragmentData_data_items_product_products_sizes_modifiersBuilder
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
          GCartsPaginatorFragmentData_data_items_product_products_sizes_modifiers>
      get serializer =>
          _$gCartsPaginatorFragmentDataDataItemsProductProductsSizesModifiersSerializer;
  Map<String, dynamic> toJson() => (_i15.serializers.serializeWith(
      GCartsPaginatorFragmentData_data_items_product_products_sizes_modifiers
          .serializer,
      this) as Map<String, dynamic>);
  static GCartsPaginatorFragmentData_data_items_product_products_sizes_modifiers?
      fromJson(Map<String, dynamic> json) => _i15.serializers.deserializeWith(
          GCartsPaginatorFragmentData_data_items_product_products_sizes_modifiers
              .serializer,
          json);
}

abstract class GCartsPaginatorFragmentData_data_items_product_products_sizes_groupModifiers
    implements
        Built<
            GCartsPaginatorFragmentData_data_items_product_products_sizes_groupModifiers,
            GCartsPaginatorFragmentData_data_items_product_products_sizes_groupModifiersBuilder>,
        GCartsPaginatorFragment_data_items_product_products_sizes_groupModifiers,
        _i2.GCartFragment_items_product_products_sizes_groupModifiers,
        _i6.GCartItemFragment_product_products_sizes_groupModifiers,
        _i7.GProductFragment_products_sizes_groupModifiers,
        _i8.GProductsSizesFragment_groupModifiers,
        _i10.GGroupModificatorFragment {
  GCartsPaginatorFragmentData_data_items_product_products_sizes_groupModifiers._();

  factory GCartsPaginatorFragmentData_data_items_product_products_sizes_groupModifiers(
          [Function(
                  GCartsPaginatorFragmentData_data_items_product_products_sizes_groupModifiersBuilder
                      b)
              updates]) =
      _$GCartsPaginatorFragmentData_data_items_product_products_sizes_groupModifiers;

  static void _initializeBuilder(
          GCartsPaginatorFragmentData_data_items_product_products_sizes_groupModifiersBuilder
              b) =>
      b..G__typename = 'GroupModificator';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get maxAmount;
  int? get minAmount;
  String get modifierId;
  bool? get required;
  BuiltList<
          GCartsPaginatorFragmentData_data_items_product_products_sizes_groupModifiers_childModifiers>?
      get childModifiers;
  bool? get childModifiersHaveMinMaxRestrictions;
  static Serializer<
          GCartsPaginatorFragmentData_data_items_product_products_sizes_groupModifiers>
      get serializer =>
          _$gCartsPaginatorFragmentDataDataItemsProductProductsSizesGroupModifiersSerializer;
  Map<String, dynamic> toJson() => (_i15.serializers.serializeWith(
      GCartsPaginatorFragmentData_data_items_product_products_sizes_groupModifiers
          .serializer,
      this) as Map<String, dynamic>);
  static GCartsPaginatorFragmentData_data_items_product_products_sizes_groupModifiers?
      fromJson(Map<String, dynamic> json) => _i15.serializers.deserializeWith(
          GCartsPaginatorFragmentData_data_items_product_products_sizes_groupModifiers
              .serializer,
          json);
}

abstract class GCartsPaginatorFragmentData_data_items_product_products_sizes_groupModifiers_childModifiers
    implements
        Built<
            GCartsPaginatorFragmentData_data_items_product_products_sizes_groupModifiers_childModifiers,
            GCartsPaginatorFragmentData_data_items_product_products_sizes_groupModifiers_childModifiersBuilder>,
        GCartsPaginatorFragment_data_items_product_products_sizes_groupModifiers_childModifiers,
        _i2.GCartFragment_items_product_products_sizes_groupModifiers_childModifiers,
        _i6.GCartItemFragment_product_products_sizes_groupModifiers_childModifiers,
        _i7.GProductFragment_products_sizes_groupModifiers_childModifiers,
        _i8.GProductsSizesFragment_groupModifiers_childModifiers,
        _i10.GGroupModificatorFragment_childModifiers,
        _i9.GModificatorFragment {
  GCartsPaginatorFragmentData_data_items_product_products_sizes_groupModifiers_childModifiers._();

  factory GCartsPaginatorFragmentData_data_items_product_products_sizes_groupModifiers_childModifiers(
          [Function(
                  GCartsPaginatorFragmentData_data_items_product_products_sizes_groupModifiers_childModifiersBuilder
                      b)
              updates]) =
      _$GCartsPaginatorFragmentData_data_items_product_products_sizes_groupModifiers_childModifiers;

  static void _initializeBuilder(
          GCartsPaginatorFragmentData_data_items_product_products_sizes_groupModifiers_childModifiersBuilder
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
          GCartsPaginatorFragmentData_data_items_product_products_sizes_groupModifiers_childModifiers>
      get serializer =>
          _$gCartsPaginatorFragmentDataDataItemsProductProductsSizesGroupModifiersChildModifiersSerializer;
  Map<String, dynamic> toJson() => (_i15.serializers.serializeWith(
      GCartsPaginatorFragmentData_data_items_product_products_sizes_groupModifiers_childModifiers
          .serializer,
      this) as Map<String, dynamic>);
  static GCartsPaginatorFragmentData_data_items_product_products_sizes_groupModifiers_childModifiers?
      fromJson(Map<String, dynamic> json) => _i15.serializers.deserializeWith(
          GCartsPaginatorFragmentData_data_items_product_products_sizes_groupModifiers_childModifiers
              .serializer,
          json);
}

abstract class GCartsPaginatorFragmentData_data_items_product_images
    implements
        Built<GCartsPaginatorFragmentData_data_items_product_images,
            GCartsPaginatorFragmentData_data_items_product_imagesBuilder>,
        GCartsPaginatorFragment_data_items_product_images,
        _i2.GCartFragment_items_product_images,
        _i6.GCartItemFragment_product_images,
        _i7.GProductFragment_images {
  GCartsPaginatorFragmentData_data_items_product_images._();

  factory GCartsPaginatorFragmentData_data_items_product_images(
      [Function(GCartsPaginatorFragmentData_data_items_product_imagesBuilder b)
          updates]) = _$GCartsPaginatorFragmentData_data_items_product_images;

  static void _initializeBuilder(
          GCartsPaginatorFragmentData_data_items_product_imagesBuilder b) =>
      b..G__typename = 'ProductImage';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get imageId;
  String? get imageUrl;
  static Serializer<GCartsPaginatorFragmentData_data_items_product_images>
      get serializer =>
          _$gCartsPaginatorFragmentDataDataItemsProductImagesSerializer;
  Map<String, dynamic> toJson() => (_i15.serializers.serializeWith(
      GCartsPaginatorFragmentData_data_items_product_images.serializer,
      this) as Map<String, dynamic>);
  static GCartsPaginatorFragmentData_data_items_product_images? fromJson(
          Map<String, dynamic> json) =>
      _i15.serializers.deserializeWith(
          GCartsPaginatorFragmentData_data_items_product_images.serializer,
          json);
}

abstract class GCartsPaginatorFragmentData_data_items_product_modifiers
    implements
        Built<GCartsPaginatorFragmentData_data_items_product_modifiers,
            GCartsPaginatorFragmentData_data_items_product_modifiersBuilder>,
        GCartsPaginatorFragment_data_items_product_modifiers,
        _i2.GCartFragment_items_product_modifiers,
        _i6.GCartItemFragment_product_modifiers,
        _i7.GProductFragment_modifiers,
        _i9.GModificatorFragment {
  GCartsPaginatorFragmentData_data_items_product_modifiers._();

  factory GCartsPaginatorFragmentData_data_items_product_modifiers(
      [Function(
              GCartsPaginatorFragmentData_data_items_product_modifiersBuilder b)
          updates]) = _$GCartsPaginatorFragmentData_data_items_product_modifiers;

  static void _initializeBuilder(
          GCartsPaginatorFragmentData_data_items_product_modifiersBuilder b) =>
      b..G__typename = 'Modificator';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get maxAmount;
  int? get minAmount;
  String get modifierId;
  bool? get required;
  int? get defaultAmount;
  bool? get hideIfDefaultAmount;
  static Serializer<GCartsPaginatorFragmentData_data_items_product_modifiers>
      get serializer =>
          _$gCartsPaginatorFragmentDataDataItemsProductModifiersSerializer;
  Map<String, dynamic> toJson() => (_i15.serializers.serializeWith(
      GCartsPaginatorFragmentData_data_items_product_modifiers.serializer,
      this) as Map<String, dynamic>);
  static GCartsPaginatorFragmentData_data_items_product_modifiers? fromJson(
          Map<String, dynamic> json) =>
      _i15.serializers.deserializeWith(
          GCartsPaginatorFragmentData_data_items_product_modifiers.serializer,
          json);
}

abstract class GCartsPaginatorFragmentData_data_items_product_groupModifiers
    implements
        Built<GCartsPaginatorFragmentData_data_items_product_groupModifiers,
            GCartsPaginatorFragmentData_data_items_product_groupModifiersBuilder>,
        GCartsPaginatorFragment_data_items_product_groupModifiers,
        _i2.GCartFragment_items_product_groupModifiers,
        _i6.GCartItemFragment_product_groupModifiers,
        _i7.GProductFragment_groupModifiers,
        _i10.GGroupModificatorFragment {
  GCartsPaginatorFragmentData_data_items_product_groupModifiers._();

  factory GCartsPaginatorFragmentData_data_items_product_groupModifiers(
          [Function(
                  GCartsPaginatorFragmentData_data_items_product_groupModifiersBuilder
                      b)
              updates]) =
      _$GCartsPaginatorFragmentData_data_items_product_groupModifiers;

  static void _initializeBuilder(
          GCartsPaginatorFragmentData_data_items_product_groupModifiersBuilder
              b) =>
      b..G__typename = 'GroupModificator';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get maxAmount;
  int? get minAmount;
  String get modifierId;
  bool? get required;
  BuiltList<
          GCartsPaginatorFragmentData_data_items_product_groupModifiers_childModifiers>?
      get childModifiers;
  bool? get childModifiersHaveMinMaxRestrictions;
  static Serializer<
          GCartsPaginatorFragmentData_data_items_product_groupModifiers>
      get serializer =>
          _$gCartsPaginatorFragmentDataDataItemsProductGroupModifiersSerializer;
  Map<String, dynamic> toJson() => (_i15.serializers.serializeWith(
      GCartsPaginatorFragmentData_data_items_product_groupModifiers.serializer,
      this) as Map<String, dynamic>);
  static GCartsPaginatorFragmentData_data_items_product_groupModifiers?
      fromJson(Map<String, dynamic> json) => _i15.serializers.deserializeWith(
          GCartsPaginatorFragmentData_data_items_product_groupModifiers
              .serializer,
          json);
}

abstract class GCartsPaginatorFragmentData_data_items_product_groupModifiers_childModifiers
    implements
        Built<
            GCartsPaginatorFragmentData_data_items_product_groupModifiers_childModifiers,
            GCartsPaginatorFragmentData_data_items_product_groupModifiers_childModifiersBuilder>,
        GCartsPaginatorFragment_data_items_product_groupModifiers_childModifiers,
        _i2.GCartFragment_items_product_groupModifiers_childModifiers,
        _i6.GCartItemFragment_product_groupModifiers_childModifiers,
        _i7.GProductFragment_groupModifiers_childModifiers,
        _i10.GGroupModificatorFragment_childModifiers,
        _i9.GModificatorFragment {
  GCartsPaginatorFragmentData_data_items_product_groupModifiers_childModifiers._();

  factory GCartsPaginatorFragmentData_data_items_product_groupModifiers_childModifiers(
          [Function(
                  GCartsPaginatorFragmentData_data_items_product_groupModifiers_childModifiersBuilder
                      b)
              updates]) =
      _$GCartsPaginatorFragmentData_data_items_product_groupModifiers_childModifiers;

  static void _initializeBuilder(
          GCartsPaginatorFragmentData_data_items_product_groupModifiers_childModifiersBuilder
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
          GCartsPaginatorFragmentData_data_items_product_groupModifiers_childModifiers>
      get serializer =>
          _$gCartsPaginatorFragmentDataDataItemsProductGroupModifiersChildModifiersSerializer;
  Map<String, dynamic> toJson() => (_i15.serializers.serializeWith(
      GCartsPaginatorFragmentData_data_items_product_groupModifiers_childModifiers
          .serializer,
      this) as Map<String, dynamic>);
  static GCartsPaginatorFragmentData_data_items_product_groupModifiers_childModifiers?
      fromJson(Map<String, dynamic> json) => _i15.serializers.deserializeWith(
          GCartsPaginatorFragmentData_data_items_product_groupModifiers_childModifiers
              .serializer,
          json);
}

abstract class GCartsPaginatorFragmentData_data_items_modifiers
    implements
        Built<GCartsPaginatorFragmentData_data_items_modifiers,
            GCartsPaginatorFragmentData_data_items_modifiersBuilder>,
        GCartsPaginatorFragment_data_items_modifiers,
        _i2.GCartFragment_items_modifiers,
        _i6.GCartItemFragment_modifiers,
        _i11.GCartItemModifierFragment {
  GCartsPaginatorFragmentData_data_items_modifiers._();

  factory GCartsPaginatorFragmentData_data_items_modifiers(
      [Function(GCartsPaginatorFragmentData_data_items_modifiersBuilder b)
          updates]) = _$GCartsPaginatorFragmentData_data_items_modifiers;

  static void _initializeBuilder(
          GCartsPaginatorFragmentData_data_items_modifiersBuilder b) =>
      b..G__typename = 'CartItemModifier';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get type;
  String get product_id;
  GCartsPaginatorFragmentData_data_items_modifiers_product get product;
  String get name;
  int get amount;
  String? get group_id;
  String? get group_name;
  static Serializer<GCartsPaginatorFragmentData_data_items_modifiers>
      get serializer =>
          _$gCartsPaginatorFragmentDataDataItemsModifiersSerializer;
  Map<String, dynamic> toJson() => (_i15.serializers.serializeWith(
          GCartsPaginatorFragmentData_data_items_modifiers.serializer, this)
      as Map<String, dynamic>);
  static GCartsPaginatorFragmentData_data_items_modifiers? fromJson(
          Map<String, dynamic> json) =>
      _i15.serializers.deserializeWith(
          GCartsPaginatorFragmentData_data_items_modifiers.serializer, json);
}

abstract class GCartsPaginatorFragmentData_data_items_modifiers_product
    implements
        Built<GCartsPaginatorFragmentData_data_items_modifiers_product,
            GCartsPaginatorFragmentData_data_items_modifiers_productBuilder>,
        GCartsPaginatorFragment_data_items_modifiers_product,
        _i2.GCartFragment_items_modifiers_product,
        _i6.GCartItemFragment_modifiers_product,
        _i11.GCartItemModifierFragment_product,
        _i7.GProductFragment {
  GCartsPaginatorFragmentData_data_items_modifiers_product._();

  factory GCartsPaginatorFragmentData_data_items_modifiers_product(
      [Function(
              GCartsPaginatorFragmentData_data_items_modifiers_productBuilder b)
          updates]) = _$GCartsPaginatorFragmentData_data_items_modifiers_product;

  static void _initializeBuilder(
          GCartsPaginatorFragmentData_data_items_modifiers_productBuilder b) =>
      b..G__typename = 'Product';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get parentGroupId;
  String? get groupId;
  GCartsPaginatorFragmentData_data_items_modifiers_product_parentGroup?
      get parentGroup;
  GCartsPaginatorFragmentData_data_items_modifiers_product_group? get group;
  String? get productCategoryId;
  GCartsPaginatorFragmentData_data_items_modifiers_product_category?
      get category;
  BuiltList<
          GCartsPaginatorFragmentData_data_items_modifiers_product_products_sizes>?
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
  BuiltList<GCartsPaginatorFragmentData_data_items_modifiers_product_images>?
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
  BuiltList<GCartsPaginatorFragmentData_data_items_modifiers_product_modifiers>?
      get modifiers;
  BuiltList<
          GCartsPaginatorFragmentData_data_items_modifiers_product_groupModifiers>?
      get groupModifiers;
  static Serializer<GCartsPaginatorFragmentData_data_items_modifiers_product>
      get serializer =>
          _$gCartsPaginatorFragmentDataDataItemsModifiersProductSerializer;
  Map<String, dynamic> toJson() => (_i15.serializers.serializeWith(
      GCartsPaginatorFragmentData_data_items_modifiers_product.serializer,
      this) as Map<String, dynamic>);
  static GCartsPaginatorFragmentData_data_items_modifiers_product? fromJson(
          Map<String, dynamic> json) =>
      _i15.serializers.deserializeWith(
          GCartsPaginatorFragmentData_data_items_modifiers_product.serializer,
          json);
}

abstract class GCartsPaginatorFragmentData_data_items_modifiers_product_parentGroup
    implements
        Built<
            GCartsPaginatorFragmentData_data_items_modifiers_product_parentGroup,
            GCartsPaginatorFragmentData_data_items_modifiers_product_parentGroupBuilder>,
        GCartsPaginatorFragment_data_items_modifiers_product_parentGroup,
        _i2.GCartFragment_items_modifiers_product_parentGroup,
        _i6.GCartItemFragment_modifiers_product_parentGroup,
        _i11.GCartItemModifierFragment_product_parentGroup,
        _i7.GProductFragment_parentGroup {
  GCartsPaginatorFragmentData_data_items_modifiers_product_parentGroup._();

  factory GCartsPaginatorFragmentData_data_items_modifiers_product_parentGroup(
          [Function(
                  GCartsPaginatorFragmentData_data_items_modifiers_product_parentGroupBuilder
                      b)
              updates]) =
      _$GCartsPaginatorFragmentData_data_items_modifiers_product_parentGroup;

  static void _initializeBuilder(
          GCartsPaginatorFragmentData_data_items_modifiers_product_parentGroupBuilder
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
          GCartsPaginatorFragmentData_data_items_modifiers_product_parentGroup>
      get serializer =>
          _$gCartsPaginatorFragmentDataDataItemsModifiersProductParentGroupSerializer;
  Map<String, dynamic> toJson() => (_i15.serializers.serializeWith(
      GCartsPaginatorFragmentData_data_items_modifiers_product_parentGroup
          .serializer,
      this) as Map<String, dynamic>);
  static GCartsPaginatorFragmentData_data_items_modifiers_product_parentGroup?
      fromJson(Map<String, dynamic> json) => _i15.serializers.deserializeWith(
          GCartsPaginatorFragmentData_data_items_modifiers_product_parentGroup
              .serializer,
          json);
}

abstract class GCartsPaginatorFragmentData_data_items_modifiers_product_group
    implements
        Built<GCartsPaginatorFragmentData_data_items_modifiers_product_group,
            GCartsPaginatorFragmentData_data_items_modifiers_product_groupBuilder>,
        GCartsPaginatorFragment_data_items_modifiers_product_group,
        _i2.GCartFragment_items_modifiers_product_group,
        _i6.GCartItemFragment_modifiers_product_group,
        _i11.GCartItemModifierFragment_product_group,
        _i7.GProductFragment_group {
  GCartsPaginatorFragmentData_data_items_modifiers_product_group._();

  factory GCartsPaginatorFragmentData_data_items_modifiers_product_group(
          [Function(
                  GCartsPaginatorFragmentData_data_items_modifiers_product_groupBuilder
                      b)
              updates]) =
      _$GCartsPaginatorFragmentData_data_items_modifiers_product_group;

  static void _initializeBuilder(
          GCartsPaginatorFragmentData_data_items_modifiers_product_groupBuilder
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
          GCartsPaginatorFragmentData_data_items_modifiers_product_group>
      get serializer =>
          _$gCartsPaginatorFragmentDataDataItemsModifiersProductGroupSerializer;
  Map<String, dynamic> toJson() => (_i15.serializers.serializeWith(
      GCartsPaginatorFragmentData_data_items_modifiers_product_group.serializer,
      this) as Map<String, dynamic>);
  static GCartsPaginatorFragmentData_data_items_modifiers_product_group?
      fromJson(Map<String, dynamic> json) => _i15.serializers.deserializeWith(
          GCartsPaginatorFragmentData_data_items_modifiers_product_group
              .serializer,
          json);
}

abstract class GCartsPaginatorFragmentData_data_items_modifiers_product_category
    implements
        Built<GCartsPaginatorFragmentData_data_items_modifiers_product_category,
            GCartsPaginatorFragmentData_data_items_modifiers_product_categoryBuilder>,
        GCartsPaginatorFragment_data_items_modifiers_product_category,
        _i2.GCartFragment_items_modifiers_product_category,
        _i6.GCartItemFragment_modifiers_product_category,
        _i11.GCartItemModifierFragment_product_category,
        _i7.GProductFragment_category {
  GCartsPaginatorFragmentData_data_items_modifiers_product_category._();

  factory GCartsPaginatorFragmentData_data_items_modifiers_product_category(
          [Function(
                  GCartsPaginatorFragmentData_data_items_modifiers_product_categoryBuilder
                      b)
              updates]) =
      _$GCartsPaginatorFragmentData_data_items_modifiers_product_category;

  static void _initializeBuilder(
          GCartsPaginatorFragmentData_data_items_modifiers_product_categoryBuilder
              b) =>
      b..G__typename = 'ProductCategory';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  static Serializer<
          GCartsPaginatorFragmentData_data_items_modifiers_product_category>
      get serializer =>
          _$gCartsPaginatorFragmentDataDataItemsModifiersProductCategorySerializer;
  Map<String, dynamic> toJson() => (_i15.serializers.serializeWith(
      GCartsPaginatorFragmentData_data_items_modifiers_product_category
          .serializer,
      this) as Map<String, dynamic>);
  static GCartsPaginatorFragmentData_data_items_modifiers_product_category?
      fromJson(Map<String, dynamic> json) => _i15.serializers.deserializeWith(
          GCartsPaginatorFragmentData_data_items_modifiers_product_category
              .serializer,
          json);
}

abstract class GCartsPaginatorFragmentData_data_items_modifiers_product_products_sizes
    implements
        Built<
            GCartsPaginatorFragmentData_data_items_modifiers_product_products_sizes,
            GCartsPaginatorFragmentData_data_items_modifiers_product_products_sizesBuilder>,
        GCartsPaginatorFragment_data_items_modifiers_product_products_sizes,
        _i2.GCartFragment_items_modifiers_product_products_sizes,
        _i6.GCartItemFragment_modifiers_product_products_sizes,
        _i11.GCartItemModifierFragment_product_products_sizes,
        _i7.GProductFragment_products_sizes,
        _i8.GProductsSizesFragment {
  GCartsPaginatorFragmentData_data_items_modifiers_product_products_sizes._();

  factory GCartsPaginatorFragmentData_data_items_modifiers_product_products_sizes(
          [Function(
                  GCartsPaginatorFragmentData_data_items_modifiers_product_products_sizesBuilder
                      b)
              updates]) =
      _$GCartsPaginatorFragmentData_data_items_modifiers_product_products_sizes;

  static void _initializeBuilder(
          GCartsPaginatorFragmentData_data_items_modifiers_product_products_sizesBuilder
              b) =>
      b..G__typename = 'Product';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  String? get additionalInfo;
  String? get description;
  GCartsPaginatorFragmentData_data_items_modifiers_product_products_sizes_parentGroup?
      get parentGroup;
  BuiltList<
          GCartsPaginatorFragmentData_data_items_modifiers_product_products_sizes_images>?
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
          GCartsPaginatorFragmentData_data_items_modifiers_product_products_sizes_modifiers>?
      get modifiers;
  BuiltList<
          GCartsPaginatorFragmentData_data_items_modifiers_product_products_sizes_groupModifiers>?
      get groupModifiers;
  static Serializer<
          GCartsPaginatorFragmentData_data_items_modifiers_product_products_sizes>
      get serializer =>
          _$gCartsPaginatorFragmentDataDataItemsModifiersProductProductsSizesSerializer;
  Map<String, dynamic> toJson() => (_i15.serializers.serializeWith(
      GCartsPaginatorFragmentData_data_items_modifiers_product_products_sizes
          .serializer,
      this) as Map<String, dynamic>);
  static GCartsPaginatorFragmentData_data_items_modifiers_product_products_sizes?
      fromJson(Map<String, dynamic> json) => _i15.serializers.deserializeWith(
          GCartsPaginatorFragmentData_data_items_modifiers_product_products_sizes
              .serializer,
          json);
}

abstract class GCartsPaginatorFragmentData_data_items_modifiers_product_products_sizes_parentGroup
    implements
        Built<
            GCartsPaginatorFragmentData_data_items_modifiers_product_products_sizes_parentGroup,
            GCartsPaginatorFragmentData_data_items_modifiers_product_products_sizes_parentGroupBuilder>,
        GCartsPaginatorFragment_data_items_modifiers_product_products_sizes_parentGroup,
        _i2.GCartFragment_items_modifiers_product_products_sizes_parentGroup,
        _i6.GCartItemFragment_modifiers_product_products_sizes_parentGroup,
        _i11.GCartItemModifierFragment_product_products_sizes_parentGroup,
        _i7.GProductFragment_products_sizes_parentGroup,
        _i8.GProductsSizesFragment_parentGroup {
  GCartsPaginatorFragmentData_data_items_modifiers_product_products_sizes_parentGroup._();

  factory GCartsPaginatorFragmentData_data_items_modifiers_product_products_sizes_parentGroup(
          [Function(
                  GCartsPaginatorFragmentData_data_items_modifiers_product_products_sizes_parentGroupBuilder
                      b)
              updates]) =
      _$GCartsPaginatorFragmentData_data_items_modifiers_product_products_sizes_parentGroup;

  static void _initializeBuilder(
          GCartsPaginatorFragmentData_data_items_modifiers_product_products_sizes_parentGroupBuilder
              b) =>
      b..G__typename = 'Group';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  static Serializer<
          GCartsPaginatorFragmentData_data_items_modifiers_product_products_sizes_parentGroup>
      get serializer =>
          _$gCartsPaginatorFragmentDataDataItemsModifiersProductProductsSizesParentGroupSerializer;
  Map<String, dynamic> toJson() => (_i15.serializers.serializeWith(
      GCartsPaginatorFragmentData_data_items_modifiers_product_products_sizes_parentGroup
          .serializer,
      this) as Map<String, dynamic>);
  static GCartsPaginatorFragmentData_data_items_modifiers_product_products_sizes_parentGroup?
      fromJson(Map<String, dynamic> json) => _i15.serializers.deserializeWith(
          GCartsPaginatorFragmentData_data_items_modifiers_product_products_sizes_parentGroup
              .serializer,
          json);
}

abstract class GCartsPaginatorFragmentData_data_items_modifiers_product_products_sizes_images
    implements
        Built<
            GCartsPaginatorFragmentData_data_items_modifiers_product_products_sizes_images,
            GCartsPaginatorFragmentData_data_items_modifiers_product_products_sizes_imagesBuilder>,
        GCartsPaginatorFragment_data_items_modifiers_product_products_sizes_images,
        _i2.GCartFragment_items_modifiers_product_products_sizes_images,
        _i6.GCartItemFragment_modifiers_product_products_sizes_images,
        _i11.GCartItemModifierFragment_product_products_sizes_images,
        _i7.GProductFragment_products_sizes_images,
        _i8.GProductsSizesFragment_images {
  GCartsPaginatorFragmentData_data_items_modifiers_product_products_sizes_images._();

  factory GCartsPaginatorFragmentData_data_items_modifiers_product_products_sizes_images(
          [Function(
                  GCartsPaginatorFragmentData_data_items_modifiers_product_products_sizes_imagesBuilder
                      b)
              updates]) =
      _$GCartsPaginatorFragmentData_data_items_modifiers_product_products_sizes_images;

  static void _initializeBuilder(
          GCartsPaginatorFragmentData_data_items_modifiers_product_products_sizes_imagesBuilder
              b) =>
      b..G__typename = 'ProductImage';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get imageId;
  String? get imageUrl;
  static Serializer<
          GCartsPaginatorFragmentData_data_items_modifiers_product_products_sizes_images>
      get serializer =>
          _$gCartsPaginatorFragmentDataDataItemsModifiersProductProductsSizesImagesSerializer;
  Map<String, dynamic> toJson() => (_i15.serializers.serializeWith(
      GCartsPaginatorFragmentData_data_items_modifiers_product_products_sizes_images
          .serializer,
      this) as Map<String, dynamic>);
  static GCartsPaginatorFragmentData_data_items_modifiers_product_products_sizes_images?
      fromJson(Map<String, dynamic> json) => _i15.serializers.deserializeWith(
          GCartsPaginatorFragmentData_data_items_modifiers_product_products_sizes_images
              .serializer,
          json);
}

abstract class GCartsPaginatorFragmentData_data_items_modifiers_product_products_sizes_modifiers
    implements
        Built<
            GCartsPaginatorFragmentData_data_items_modifiers_product_products_sizes_modifiers,
            GCartsPaginatorFragmentData_data_items_modifiers_product_products_sizes_modifiersBuilder>,
        GCartsPaginatorFragment_data_items_modifiers_product_products_sizes_modifiers,
        _i2.GCartFragment_items_modifiers_product_products_sizes_modifiers,
        _i6.GCartItemFragment_modifiers_product_products_sizes_modifiers,
        _i11.GCartItemModifierFragment_product_products_sizes_modifiers,
        _i7.GProductFragment_products_sizes_modifiers,
        _i8.GProductsSizesFragment_modifiers,
        _i9.GModificatorFragment {
  GCartsPaginatorFragmentData_data_items_modifiers_product_products_sizes_modifiers._();

  factory GCartsPaginatorFragmentData_data_items_modifiers_product_products_sizes_modifiers(
          [Function(
                  GCartsPaginatorFragmentData_data_items_modifiers_product_products_sizes_modifiersBuilder
                      b)
              updates]) =
      _$GCartsPaginatorFragmentData_data_items_modifiers_product_products_sizes_modifiers;

  static void _initializeBuilder(
          GCartsPaginatorFragmentData_data_items_modifiers_product_products_sizes_modifiersBuilder
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
          GCartsPaginatorFragmentData_data_items_modifiers_product_products_sizes_modifiers>
      get serializer =>
          _$gCartsPaginatorFragmentDataDataItemsModifiersProductProductsSizesModifiersSerializer;
  Map<String, dynamic> toJson() => (_i15.serializers.serializeWith(
      GCartsPaginatorFragmentData_data_items_modifiers_product_products_sizes_modifiers
          .serializer,
      this) as Map<String, dynamic>);
  static GCartsPaginatorFragmentData_data_items_modifiers_product_products_sizes_modifiers?
      fromJson(Map<String, dynamic> json) => _i15.serializers.deserializeWith(
          GCartsPaginatorFragmentData_data_items_modifiers_product_products_sizes_modifiers
              .serializer,
          json);
}

abstract class GCartsPaginatorFragmentData_data_items_modifiers_product_products_sizes_groupModifiers
    implements
        Built<
            GCartsPaginatorFragmentData_data_items_modifiers_product_products_sizes_groupModifiers,
            GCartsPaginatorFragmentData_data_items_modifiers_product_products_sizes_groupModifiersBuilder>,
        GCartsPaginatorFragment_data_items_modifiers_product_products_sizes_groupModifiers,
        _i2.GCartFragment_items_modifiers_product_products_sizes_groupModifiers,
        _i6.GCartItemFragment_modifiers_product_products_sizes_groupModifiers,
        _i11.GCartItemModifierFragment_product_products_sizes_groupModifiers,
        _i7.GProductFragment_products_sizes_groupModifiers,
        _i8.GProductsSizesFragment_groupModifiers,
        _i10.GGroupModificatorFragment {
  GCartsPaginatorFragmentData_data_items_modifiers_product_products_sizes_groupModifiers._();

  factory GCartsPaginatorFragmentData_data_items_modifiers_product_products_sizes_groupModifiers(
          [Function(
                  GCartsPaginatorFragmentData_data_items_modifiers_product_products_sizes_groupModifiersBuilder
                      b)
              updates]) =
      _$GCartsPaginatorFragmentData_data_items_modifiers_product_products_sizes_groupModifiers;

  static void _initializeBuilder(
          GCartsPaginatorFragmentData_data_items_modifiers_product_products_sizes_groupModifiersBuilder
              b) =>
      b..G__typename = 'GroupModificator';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get maxAmount;
  int? get minAmount;
  String get modifierId;
  bool? get required;
  BuiltList<
          GCartsPaginatorFragmentData_data_items_modifiers_product_products_sizes_groupModifiers_childModifiers>?
      get childModifiers;
  bool? get childModifiersHaveMinMaxRestrictions;
  static Serializer<
          GCartsPaginatorFragmentData_data_items_modifiers_product_products_sizes_groupModifiers>
      get serializer =>
          _$gCartsPaginatorFragmentDataDataItemsModifiersProductProductsSizesGroupModifiersSerializer;
  Map<String, dynamic> toJson() => (_i15.serializers.serializeWith(
      GCartsPaginatorFragmentData_data_items_modifiers_product_products_sizes_groupModifiers
          .serializer,
      this) as Map<String, dynamic>);
  static GCartsPaginatorFragmentData_data_items_modifiers_product_products_sizes_groupModifiers?
      fromJson(Map<String, dynamic> json) => _i15.serializers.deserializeWith(
          GCartsPaginatorFragmentData_data_items_modifiers_product_products_sizes_groupModifiers
              .serializer,
          json);
}

abstract class GCartsPaginatorFragmentData_data_items_modifiers_product_products_sizes_groupModifiers_childModifiers
    implements
        Built<
            GCartsPaginatorFragmentData_data_items_modifiers_product_products_sizes_groupModifiers_childModifiers,
            GCartsPaginatorFragmentData_data_items_modifiers_product_products_sizes_groupModifiers_childModifiersBuilder>,
        GCartsPaginatorFragment_data_items_modifiers_product_products_sizes_groupModifiers_childModifiers,
        _i2.GCartFragment_items_modifiers_product_products_sizes_groupModifiers_childModifiers,
        _i6.GCartItemFragment_modifiers_product_products_sizes_groupModifiers_childModifiers,
        _i11.GCartItemModifierFragment_product_products_sizes_groupModifiers_childModifiers,
        _i7.GProductFragment_products_sizes_groupModifiers_childModifiers,
        _i8.GProductsSizesFragment_groupModifiers_childModifiers,
        _i10.GGroupModificatorFragment_childModifiers,
        _i9.GModificatorFragment {
  GCartsPaginatorFragmentData_data_items_modifiers_product_products_sizes_groupModifiers_childModifiers._();

  factory GCartsPaginatorFragmentData_data_items_modifiers_product_products_sizes_groupModifiers_childModifiers(
          [Function(
                  GCartsPaginatorFragmentData_data_items_modifiers_product_products_sizes_groupModifiers_childModifiersBuilder
                      b)
              updates]) =
      _$GCartsPaginatorFragmentData_data_items_modifiers_product_products_sizes_groupModifiers_childModifiers;

  static void _initializeBuilder(
          GCartsPaginatorFragmentData_data_items_modifiers_product_products_sizes_groupModifiers_childModifiersBuilder
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
          GCartsPaginatorFragmentData_data_items_modifiers_product_products_sizes_groupModifiers_childModifiers>
      get serializer =>
          _$gCartsPaginatorFragmentDataDataItemsModifiersProductProductsSizesGroupModifiersChildModifiersSerializer;
  Map<String, dynamic> toJson() => (_i15.serializers.serializeWith(
      GCartsPaginatorFragmentData_data_items_modifiers_product_products_sizes_groupModifiers_childModifiers
          .serializer,
      this) as Map<String, dynamic>);
  static GCartsPaginatorFragmentData_data_items_modifiers_product_products_sizes_groupModifiers_childModifiers?
      fromJson(Map<String, dynamic> json) => _i15.serializers.deserializeWith(
          GCartsPaginatorFragmentData_data_items_modifiers_product_products_sizes_groupModifiers_childModifiers
              .serializer,
          json);
}

abstract class GCartsPaginatorFragmentData_data_items_modifiers_product_images
    implements
        Built<GCartsPaginatorFragmentData_data_items_modifiers_product_images,
            GCartsPaginatorFragmentData_data_items_modifiers_product_imagesBuilder>,
        GCartsPaginatorFragment_data_items_modifiers_product_images,
        _i2.GCartFragment_items_modifiers_product_images,
        _i6.GCartItemFragment_modifiers_product_images,
        _i11.GCartItemModifierFragment_product_images,
        _i7.GProductFragment_images {
  GCartsPaginatorFragmentData_data_items_modifiers_product_images._();

  factory GCartsPaginatorFragmentData_data_items_modifiers_product_images(
          [Function(
                  GCartsPaginatorFragmentData_data_items_modifiers_product_imagesBuilder
                      b)
              updates]) =
      _$GCartsPaginatorFragmentData_data_items_modifiers_product_images;

  static void _initializeBuilder(
          GCartsPaginatorFragmentData_data_items_modifiers_product_imagesBuilder
              b) =>
      b..G__typename = 'ProductImage';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get imageId;
  String? get imageUrl;
  static Serializer<
          GCartsPaginatorFragmentData_data_items_modifiers_product_images>
      get serializer =>
          _$gCartsPaginatorFragmentDataDataItemsModifiersProductImagesSerializer;
  Map<String, dynamic> toJson() => (_i15.serializers.serializeWith(
      GCartsPaginatorFragmentData_data_items_modifiers_product_images
          .serializer,
      this) as Map<String, dynamic>);
  static GCartsPaginatorFragmentData_data_items_modifiers_product_images?
      fromJson(Map<String, dynamic> json) => _i15.serializers.deserializeWith(
          GCartsPaginatorFragmentData_data_items_modifiers_product_images
              .serializer,
          json);
}

abstract class GCartsPaginatorFragmentData_data_items_modifiers_product_modifiers
    implements
        Built<
            GCartsPaginatorFragmentData_data_items_modifiers_product_modifiers,
            GCartsPaginatorFragmentData_data_items_modifiers_product_modifiersBuilder>,
        GCartsPaginatorFragment_data_items_modifiers_product_modifiers,
        _i2.GCartFragment_items_modifiers_product_modifiers,
        _i6.GCartItemFragment_modifiers_product_modifiers,
        _i11.GCartItemModifierFragment_product_modifiers,
        _i7.GProductFragment_modifiers,
        _i9.GModificatorFragment {
  GCartsPaginatorFragmentData_data_items_modifiers_product_modifiers._();

  factory GCartsPaginatorFragmentData_data_items_modifiers_product_modifiers(
          [Function(
                  GCartsPaginatorFragmentData_data_items_modifiers_product_modifiersBuilder
                      b)
              updates]) =
      _$GCartsPaginatorFragmentData_data_items_modifiers_product_modifiers;

  static void _initializeBuilder(
          GCartsPaginatorFragmentData_data_items_modifiers_product_modifiersBuilder
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
          GCartsPaginatorFragmentData_data_items_modifiers_product_modifiers>
      get serializer =>
          _$gCartsPaginatorFragmentDataDataItemsModifiersProductModifiersSerializer;
  Map<String, dynamic> toJson() => (_i15.serializers.serializeWith(
      GCartsPaginatorFragmentData_data_items_modifiers_product_modifiers
          .serializer,
      this) as Map<String, dynamic>);
  static GCartsPaginatorFragmentData_data_items_modifiers_product_modifiers?
      fromJson(Map<String, dynamic> json) => _i15.serializers.deserializeWith(
          GCartsPaginatorFragmentData_data_items_modifiers_product_modifiers
              .serializer,
          json);
}

abstract class GCartsPaginatorFragmentData_data_items_modifiers_product_groupModifiers
    implements
        Built<
            GCartsPaginatorFragmentData_data_items_modifiers_product_groupModifiers,
            GCartsPaginatorFragmentData_data_items_modifiers_product_groupModifiersBuilder>,
        GCartsPaginatorFragment_data_items_modifiers_product_groupModifiers,
        _i2.GCartFragment_items_modifiers_product_groupModifiers,
        _i6.GCartItemFragment_modifiers_product_groupModifiers,
        _i11.GCartItemModifierFragment_product_groupModifiers,
        _i7.GProductFragment_groupModifiers,
        _i10.GGroupModificatorFragment {
  GCartsPaginatorFragmentData_data_items_modifiers_product_groupModifiers._();

  factory GCartsPaginatorFragmentData_data_items_modifiers_product_groupModifiers(
          [Function(
                  GCartsPaginatorFragmentData_data_items_modifiers_product_groupModifiersBuilder
                      b)
              updates]) =
      _$GCartsPaginatorFragmentData_data_items_modifiers_product_groupModifiers;

  static void _initializeBuilder(
          GCartsPaginatorFragmentData_data_items_modifiers_product_groupModifiersBuilder
              b) =>
      b..G__typename = 'GroupModificator';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get maxAmount;
  int? get minAmount;
  String get modifierId;
  bool? get required;
  BuiltList<
          GCartsPaginatorFragmentData_data_items_modifiers_product_groupModifiers_childModifiers>?
      get childModifiers;
  bool? get childModifiersHaveMinMaxRestrictions;
  static Serializer<
          GCartsPaginatorFragmentData_data_items_modifiers_product_groupModifiers>
      get serializer =>
          _$gCartsPaginatorFragmentDataDataItemsModifiersProductGroupModifiersSerializer;
  Map<String, dynamic> toJson() => (_i15.serializers.serializeWith(
      GCartsPaginatorFragmentData_data_items_modifiers_product_groupModifiers
          .serializer,
      this) as Map<String, dynamic>);
  static GCartsPaginatorFragmentData_data_items_modifiers_product_groupModifiers?
      fromJson(Map<String, dynamic> json) => _i15.serializers.deserializeWith(
          GCartsPaginatorFragmentData_data_items_modifiers_product_groupModifiers
              .serializer,
          json);
}

abstract class GCartsPaginatorFragmentData_data_items_modifiers_product_groupModifiers_childModifiers
    implements
        Built<
            GCartsPaginatorFragmentData_data_items_modifiers_product_groupModifiers_childModifiers,
            GCartsPaginatorFragmentData_data_items_modifiers_product_groupModifiers_childModifiersBuilder>,
        GCartsPaginatorFragment_data_items_modifiers_product_groupModifiers_childModifiers,
        _i2.GCartFragment_items_modifiers_product_groupModifiers_childModifiers,
        _i6.GCartItemFragment_modifiers_product_groupModifiers_childModifiers,
        _i11.GCartItemModifierFragment_product_groupModifiers_childModifiers,
        _i7.GProductFragment_groupModifiers_childModifiers,
        _i10.GGroupModificatorFragment_childModifiers,
        _i9.GModificatorFragment {
  GCartsPaginatorFragmentData_data_items_modifiers_product_groupModifiers_childModifiers._();

  factory GCartsPaginatorFragmentData_data_items_modifiers_product_groupModifiers_childModifiers(
          [Function(
                  GCartsPaginatorFragmentData_data_items_modifiers_product_groupModifiers_childModifiersBuilder
                      b)
              updates]) =
      _$GCartsPaginatorFragmentData_data_items_modifiers_product_groupModifiers_childModifiers;

  static void _initializeBuilder(
          GCartsPaginatorFragmentData_data_items_modifiers_product_groupModifiers_childModifiersBuilder
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
          GCartsPaginatorFragmentData_data_items_modifiers_product_groupModifiers_childModifiers>
      get serializer =>
          _$gCartsPaginatorFragmentDataDataItemsModifiersProductGroupModifiersChildModifiersSerializer;
  Map<String, dynamic> toJson() => (_i15.serializers.serializeWith(
      GCartsPaginatorFragmentData_data_items_modifiers_product_groupModifiers_childModifiers
          .serializer,
      this) as Map<String, dynamic>);
  static GCartsPaginatorFragmentData_data_items_modifiers_product_groupModifiers_childModifiers?
      fromJson(Map<String, dynamic> json) => _i15.serializers.deserializeWith(
          GCartsPaginatorFragmentData_data_items_modifiers_product_groupModifiers_childModifiers
              .serializer,
          json);
}

abstract class GCartsPaginatorFragmentData_data_order_info
    implements
        Built<GCartsPaginatorFragmentData_data_order_info,
            GCartsPaginatorFragmentData_data_order_infoBuilder>,
        GCartsPaginatorFragment_data_order_info,
        _i2.GCartFragment_order_info,
        _i12.GOrderInfoFragment {
  GCartsPaginatorFragmentData_data_order_info._();

  factory GCartsPaginatorFragmentData_data_order_info(
      [Function(GCartsPaginatorFragmentData_data_order_infoBuilder b)
          updates]) = _$GCartsPaginatorFragmentData_data_order_info;

  static void _initializeBuilder(
          GCartsPaginatorFragmentData_data_order_infoBuilder b) =>
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
  static Serializer<GCartsPaginatorFragmentData_data_order_info>
      get serializer => _$gCartsPaginatorFragmentDataDataOrderInfoSerializer;
  Map<String, dynamic> toJson() => (_i15.serializers.serializeWith(
          GCartsPaginatorFragmentData_data_order_info.serializer, this)
      as Map<String, dynamic>);
  static GCartsPaginatorFragmentData_data_order_info? fromJson(
          Map<String, dynamic> json) =>
      _i15.serializers.deserializeWith(
          GCartsPaginatorFragmentData_data_order_info.serializer, json);
}

abstract class GCartsPaginatorFragmentData_data_restaurant
    implements
        Built<GCartsPaginatorFragmentData_data_restaurant,
            GCartsPaginatorFragmentData_data_restaurantBuilder>,
        GCartsPaginatorFragment_data_restaurant,
        _i2.GCartFragment_restaurant,
        _i13.GRestaurantFragment {
  GCartsPaginatorFragmentData_data_restaurant._();

  factory GCartsPaginatorFragmentData_data_restaurant(
      [Function(GCartsPaginatorFragmentData_data_restaurantBuilder b)
          updates]) = _$GCartsPaginatorFragmentData_data_restaurant;

  static void _initializeBuilder(
          GCartsPaginatorFragmentData_data_restaurantBuilder b) =>
      b..G__typename = 'Restaurant';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  String? get address;
  GCartsPaginatorFragmentData_data_restaurant_terminal_kitchen?
      get terminal_kitchen;
  GCartsPaginatorFragmentData_data_restaurant_terminal_delivery?
      get terminal_delivery;
  String? get latitude;
  String? get longitude;
  String? get open_at;
  String? get close_at;
  bool? get is_open;
  String? get delivery_open_at;
  String? get delivery_close_at;
  bool? get is_delivery_open;
  GCartsPaginatorFragmentData_data_restaurant_city? get city;
  static Serializer<GCartsPaginatorFragmentData_data_restaurant>
      get serializer => _$gCartsPaginatorFragmentDataDataRestaurantSerializer;
  Map<String, dynamic> toJson() => (_i15.serializers.serializeWith(
          GCartsPaginatorFragmentData_data_restaurant.serializer, this)
      as Map<String, dynamic>);
  static GCartsPaginatorFragmentData_data_restaurant? fromJson(
          Map<String, dynamic> json) =>
      _i15.serializers.deserializeWith(
          GCartsPaginatorFragmentData_data_restaurant.serializer, json);
}

abstract class GCartsPaginatorFragmentData_data_restaurant_terminal_kitchen
    implements
        Built<GCartsPaginatorFragmentData_data_restaurant_terminal_kitchen,
            GCartsPaginatorFragmentData_data_restaurant_terminal_kitchenBuilder>,
        GCartsPaginatorFragment_data_restaurant_terminal_kitchen,
        _i2.GCartFragment_restaurant_terminal_kitchen,
        _i13.GRestaurantFragment_terminal_kitchen,
        _i14.GTerminalFragment {
  GCartsPaginatorFragmentData_data_restaurant_terminal_kitchen._();

  factory GCartsPaginatorFragmentData_data_restaurant_terminal_kitchen(
          [Function(
                  GCartsPaginatorFragmentData_data_restaurant_terminal_kitchenBuilder
                      b)
              updates]) =
      _$GCartsPaginatorFragmentData_data_restaurant_terminal_kitchen;

  static void _initializeBuilder(
          GCartsPaginatorFragmentData_data_restaurant_terminal_kitchenBuilder
              b) =>
      b..G__typename = 'Terminal';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  static Serializer<
          GCartsPaginatorFragmentData_data_restaurant_terminal_kitchen>
      get serializer =>
          _$gCartsPaginatorFragmentDataDataRestaurantTerminalKitchenSerializer;
  Map<String, dynamic> toJson() => (_i15.serializers.serializeWith(
      GCartsPaginatorFragmentData_data_restaurant_terminal_kitchen.serializer,
      this) as Map<String, dynamic>);
  static GCartsPaginatorFragmentData_data_restaurant_terminal_kitchen? fromJson(
          Map<String, dynamic> json) =>
      _i15.serializers.deserializeWith(
          GCartsPaginatorFragmentData_data_restaurant_terminal_kitchen
              .serializer,
          json);
}

abstract class GCartsPaginatorFragmentData_data_restaurant_terminal_delivery
    implements
        Built<GCartsPaginatorFragmentData_data_restaurant_terminal_delivery,
            GCartsPaginatorFragmentData_data_restaurant_terminal_deliveryBuilder>,
        GCartsPaginatorFragment_data_restaurant_terminal_delivery,
        _i2.GCartFragment_restaurant_terminal_delivery,
        _i13.GRestaurantFragment_terminal_delivery,
        _i14.GTerminalFragment {
  GCartsPaginatorFragmentData_data_restaurant_terminal_delivery._();

  factory GCartsPaginatorFragmentData_data_restaurant_terminal_delivery(
          [Function(
                  GCartsPaginatorFragmentData_data_restaurant_terminal_deliveryBuilder
                      b)
              updates]) =
      _$GCartsPaginatorFragmentData_data_restaurant_terminal_delivery;

  static void _initializeBuilder(
          GCartsPaginatorFragmentData_data_restaurant_terminal_deliveryBuilder
              b) =>
      b..G__typename = 'Terminal';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  static Serializer<
          GCartsPaginatorFragmentData_data_restaurant_terminal_delivery>
      get serializer =>
          _$gCartsPaginatorFragmentDataDataRestaurantTerminalDeliverySerializer;
  Map<String, dynamic> toJson() => (_i15.serializers.serializeWith(
      GCartsPaginatorFragmentData_data_restaurant_terminal_delivery.serializer,
      this) as Map<String, dynamic>);
  static GCartsPaginatorFragmentData_data_restaurant_terminal_delivery?
      fromJson(Map<String, dynamic> json) => _i15.serializers.deserializeWith(
          GCartsPaginatorFragmentData_data_restaurant_terminal_delivery
              .serializer,
          json);
}

abstract class GCartsPaginatorFragmentData_data_restaurant_city
    implements
        Built<GCartsPaginatorFragmentData_data_restaurant_city,
            GCartsPaginatorFragmentData_data_restaurant_cityBuilder>,
        GCartsPaginatorFragment_data_restaurant_city,
        _i2.GCartFragment_restaurant_city,
        _i13.GRestaurantFragment_city,
        _i5.GCityFragment {
  GCartsPaginatorFragmentData_data_restaurant_city._();

  factory GCartsPaginatorFragmentData_data_restaurant_city(
      [Function(GCartsPaginatorFragmentData_data_restaurant_cityBuilder b)
          updates]) = _$GCartsPaginatorFragmentData_data_restaurant_city;

  static void _initializeBuilder(
          GCartsPaginatorFragmentData_data_restaurant_cityBuilder b) =>
      b..G__typename = 'City';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  String? get prefix;
  String? get postal_code;
  String? get city_type;
  bool? get available;
  static Serializer<GCartsPaginatorFragmentData_data_restaurant_city>
      get serializer =>
          _$gCartsPaginatorFragmentDataDataRestaurantCitySerializer;
  Map<String, dynamic> toJson() => (_i15.serializers.serializeWith(
          GCartsPaginatorFragmentData_data_restaurant_city.serializer, this)
      as Map<String, dynamic>);
  static GCartsPaginatorFragmentData_data_restaurant_city? fromJson(
          Map<String, dynamic> json) =>
      _i15.serializers.deserializeWith(
          GCartsPaginatorFragmentData_data_restaurant_city.serializer, json);
}
