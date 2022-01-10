// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:toto_mobile/src/core/data/network/models/cartItem_fragment.data.gql.dart'
    as _i4;
import 'package:toto_mobile/src/core/data/network/models/cartItem_modifier_fragment.data.gql.dart'
    as _i9;
import 'package:toto_mobile/src/core/data/network/models/city_fragment.data.gql.dart'
    as _i3;
import 'package:toto_mobile/src/core/data/network/models/delivery_address_fragment.data.gql.dart'
    as _i2;
import 'package:toto_mobile/src/core/data/network/models/group_modificator_fragment.data.gql.dart'
    as _i8;
import 'package:toto_mobile/src/core/data/network/models/modificator_fragment.data.gql.dart'
    as _i7;
import 'package:toto_mobile/src/core/data/network/models/order_info_fragment.data.gql.dart'
    as _i10;
import 'package:toto_mobile/src/core/data/network/models/product_fragment.data.gql.dart'
    as _i5;
import 'package:toto_mobile/src/core/data/network/models/products_size_fragment.data.gql.dart'
    as _i6;
import 'package:toto_mobile/src/core/data/network/models/restaurants_fragment.data.gql.dart'
    as _i11;
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i13;
import 'package:toto_mobile/src/core/data/network/models/terminal_fragment.data.gql.dart'
    as _i12;
import 'package:toto_mobile/src/core/data/network/models/toto.schema.schema.gql.dart'
    as _i1;

part 'cart_fragment.data.gql.g.dart';

abstract class GCartFragment {
  String get G__typename;
  String get id;
  String get organization;
  String? get terminal_id;
  GCartFragment_delivery_address? get delivery_address;
  bool get is_self_service;
  _i1.GCartOrderStatus get cart_order_status;
  _i1.GCartPaymentStatus get cart_payment_status;
  BuiltList<GCartFragment_items>? get items;
  _i1.GCartPaymentType get payment_type;
  int? get change_from;
  String? get coupon;
  int? get bonus_sum;
  double? get discount_sum;
  String? get customer_name;
  String? get customer_phone;
  _i1.GDateTime? get date;
  int get persons_count;
  String get total;
  String get total_payment;
  String? get delivery_price;
  GCartFragment_order_info? get order_info;
  String? get comment;
  GCartFragment_restaurant? get restaurant;
  Map<String, dynamic> toJson();
}

abstract class GCartFragment_delivery_address
    implements _i2.GDeliveryAddressFragment {
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
  GCartFragment_delivery_address_city? get city;
  bool? get address_in_zone;
  Map<String, dynamic> toJson();
}

abstract class GCartFragment_delivery_address_city
    implements _i2.GDeliveryAddressFragment_city, _i3.GCityFragment {
  String get G__typename;
  String get id;
  String get name;
  String? get prefix;
  String? get postal_code;
  String? get city_type;
  bool? get available;
  Map<String, dynamic> toJson();
}

abstract class GCartFragment_items implements _i4.GCartItemFragment {
  String get G__typename;
  int get id;
  String get product_id;
  GCartFragment_items_product get product;
  String get name;
  int get amount;
  double? get total;
  double? get discount_sum;
  double? get sum;
  String? get code;
  BuiltList<GCartFragment_items_modifiers>? get modifiers;
  Map<String, dynamic> toJson();
}

abstract class GCartFragment_items_product
    implements _i4.GCartItemFragment_product, _i5.GProductFragment {
  String get G__typename;
  String get id;
  String? get parentGroupId;
  String? get groupId;
  GCartFragment_items_product_parentGroup? get parentGroup;
  GCartFragment_items_product_group? get group;
  String? get productCategoryId;
  GCartFragment_items_product_category? get category;
  BuiltList<GCartFragment_items_product_products_sizes>? get products_sizes;
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
  BuiltList<GCartFragment_items_product_images>? get images;
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
  BuiltList<GCartFragment_items_product_modifiers>? get modifiers;
  BuiltList<GCartFragment_items_product_groupModifiers>? get groupModifiers;
  Map<String, dynamic> toJson();
}

abstract class GCartFragment_items_product_parentGroup
    implements
        _i4.GCartItemFragment_product_parentGroup,
        _i5.GProductFragment_parentGroup {
  String get G__typename;
  String get id;
  String? get parentGroup;
  String? get additionalInfo;
  String get name;
  String? get description;
  Map<String, dynamic> toJson();
}

abstract class GCartFragment_items_product_group
    implements _i4.GCartItemFragment_product_group, _i5.GProductFragment_group {
  String get G__typename;
  String get id;
  String? get parentGroup;
  String? get additionalInfo;
  String get name;
  String? get description;
  Map<String, dynamic> toJson();
}

abstract class GCartFragment_items_product_category
    implements
        _i4.GCartItemFragment_product_category,
        _i5.GProductFragment_category {
  String get G__typename;
  String get id;
  String get name;
  Map<String, dynamic> toJson();
}

abstract class GCartFragment_items_product_products_sizes
    implements
        _i4.GCartItemFragment_product_products_sizes,
        _i5.GProductFragment_products_sizes,
        _i6.GProductsSizesFragment {
  String get G__typename;
  String get id;
  String get name;
  String? get additionalInfo;
  String? get description;
  GCartFragment_items_product_products_sizes_parentGroup? get parentGroup;
  BuiltList<GCartFragment_items_product_products_sizes_images>? get images;
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
  BuiltList<GCartFragment_items_product_products_sizes_modifiers>?
      get modifiers;
  BuiltList<GCartFragment_items_product_products_sizes_groupModifiers>?
      get groupModifiers;
  Map<String, dynamic> toJson();
}

abstract class GCartFragment_items_product_products_sizes_parentGroup
    implements
        _i4.GCartItemFragment_product_products_sizes_parentGroup,
        _i5.GProductFragment_products_sizes_parentGroup,
        _i6.GProductsSizesFragment_parentGroup {
  String get G__typename;
  String get id;
  String get name;
  Map<String, dynamic> toJson();
}

abstract class GCartFragment_items_product_products_sizes_images
    implements
        _i4.GCartItemFragment_product_products_sizes_images,
        _i5.GProductFragment_products_sizes_images,
        _i6.GProductsSizesFragment_images {
  String get G__typename;
  String? get imageId;
  String? get imageUrl;
  Map<String, dynamic> toJson();
}

abstract class GCartFragment_items_product_products_sizes_modifiers
    implements
        _i4.GCartItemFragment_product_products_sizes_modifiers,
        _i5.GProductFragment_products_sizes_modifiers,
        _i6.GProductsSizesFragment_modifiers,
        _i7.GModificatorFragment {
  String get G__typename;
  int? get maxAmount;
  int? get minAmount;
  String get modifierId;
  bool? get required;
  int? get defaultAmount;
  bool? get hideIfDefaultAmount;
  Map<String, dynamic> toJson();
}

abstract class GCartFragment_items_product_products_sizes_groupModifiers
    implements
        _i4.GCartItemFragment_product_products_sizes_groupModifiers,
        _i5.GProductFragment_products_sizes_groupModifiers,
        _i6.GProductsSizesFragment_groupModifiers,
        _i8.GGroupModificatorFragment {
  String get G__typename;
  int? get maxAmount;
  int? get minAmount;
  String get modifierId;
  bool? get required;
  BuiltList<
          GCartFragment_items_product_products_sizes_groupModifiers_childModifiers>?
      get childModifiers;
  bool? get childModifiersHaveMinMaxRestrictions;
  Map<String, dynamic> toJson();
}

abstract class GCartFragment_items_product_products_sizes_groupModifiers_childModifiers
    implements
        _i4.GCartItemFragment_product_products_sizes_groupModifiers_childModifiers,
        _i5.GProductFragment_products_sizes_groupModifiers_childModifiers,
        _i6.GProductsSizesFragment_groupModifiers_childModifiers,
        _i8.GGroupModificatorFragment_childModifiers,
        _i7.GModificatorFragment {
  String get G__typename;
  int? get maxAmount;
  int? get minAmount;
  String get modifierId;
  bool? get required;
  int? get defaultAmount;
  bool? get hideIfDefaultAmount;
  Map<String, dynamic> toJson();
}

abstract class GCartFragment_items_product_images
    implements
        _i4.GCartItemFragment_product_images,
        _i5.GProductFragment_images {
  String get G__typename;
  String? get imageId;
  String? get imageUrl;
  Map<String, dynamic> toJson();
}

abstract class GCartFragment_items_product_modifiers
    implements
        _i4.GCartItemFragment_product_modifiers,
        _i5.GProductFragment_modifiers,
        _i7.GModificatorFragment {
  String get G__typename;
  int? get maxAmount;
  int? get minAmount;
  String get modifierId;
  bool? get required;
  int? get defaultAmount;
  bool? get hideIfDefaultAmount;
  Map<String, dynamic> toJson();
}

abstract class GCartFragment_items_product_groupModifiers
    implements
        _i4.GCartItemFragment_product_groupModifiers,
        _i5.GProductFragment_groupModifiers,
        _i8.GGroupModificatorFragment {
  String get G__typename;
  int? get maxAmount;
  int? get minAmount;
  String get modifierId;
  bool? get required;
  BuiltList<GCartFragment_items_product_groupModifiers_childModifiers>?
      get childModifiers;
  bool? get childModifiersHaveMinMaxRestrictions;
  Map<String, dynamic> toJson();
}

abstract class GCartFragment_items_product_groupModifiers_childModifiers
    implements
        _i4.GCartItemFragment_product_groupModifiers_childModifiers,
        _i5.GProductFragment_groupModifiers_childModifiers,
        _i8.GGroupModificatorFragment_childModifiers,
        _i7.GModificatorFragment {
  String get G__typename;
  int? get maxAmount;
  int? get minAmount;
  String get modifierId;
  bool? get required;
  int? get defaultAmount;
  bool? get hideIfDefaultAmount;
  Map<String, dynamic> toJson();
}

abstract class GCartFragment_items_modifiers
    implements _i4.GCartItemFragment_modifiers, _i9.GCartItemModifierFragment {
  String get G__typename;
  String get id;
  String get type;
  String get product_id;
  GCartFragment_items_modifiers_product get product;
  String get name;
  int get amount;
  String? get group_id;
  String? get group_name;
  Map<String, dynamic> toJson();
}

abstract class GCartFragment_items_modifiers_product
    implements
        _i4.GCartItemFragment_modifiers_product,
        _i9.GCartItemModifierFragment_product,
        _i5.GProductFragment {
  String get G__typename;
  String get id;
  String? get parentGroupId;
  String? get groupId;
  GCartFragment_items_modifiers_product_parentGroup? get parentGroup;
  GCartFragment_items_modifiers_product_group? get group;
  String? get productCategoryId;
  GCartFragment_items_modifiers_product_category? get category;
  BuiltList<GCartFragment_items_modifiers_product_products_sizes>?
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
  BuiltList<GCartFragment_items_modifiers_product_images>? get images;
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
  BuiltList<GCartFragment_items_modifiers_product_modifiers>? get modifiers;
  BuiltList<GCartFragment_items_modifiers_product_groupModifiers>?
      get groupModifiers;
  Map<String, dynamic> toJson();
}

abstract class GCartFragment_items_modifiers_product_parentGroup
    implements
        _i4.GCartItemFragment_modifiers_product_parentGroup,
        _i9.GCartItemModifierFragment_product_parentGroup,
        _i5.GProductFragment_parentGroup {
  String get G__typename;
  String get id;
  String? get parentGroup;
  String? get additionalInfo;
  String get name;
  String? get description;
  Map<String, dynamic> toJson();
}

abstract class GCartFragment_items_modifiers_product_group
    implements
        _i4.GCartItemFragment_modifiers_product_group,
        _i9.GCartItemModifierFragment_product_group,
        _i5.GProductFragment_group {
  String get G__typename;
  String get id;
  String? get parentGroup;
  String? get additionalInfo;
  String get name;
  String? get description;
  Map<String, dynamic> toJson();
}

abstract class GCartFragment_items_modifiers_product_category
    implements
        _i4.GCartItemFragment_modifiers_product_category,
        _i9.GCartItemModifierFragment_product_category,
        _i5.GProductFragment_category {
  String get G__typename;
  String get id;
  String get name;
  Map<String, dynamic> toJson();
}

abstract class GCartFragment_items_modifiers_product_products_sizes
    implements
        _i4.GCartItemFragment_modifiers_product_products_sizes,
        _i9.GCartItemModifierFragment_product_products_sizes,
        _i5.GProductFragment_products_sizes,
        _i6.GProductsSizesFragment {
  String get G__typename;
  String get id;
  String get name;
  String? get additionalInfo;
  String? get description;
  GCartFragment_items_modifiers_product_products_sizes_parentGroup?
      get parentGroup;
  BuiltList<GCartFragment_items_modifiers_product_products_sizes_images>?
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
  BuiltList<GCartFragment_items_modifiers_product_products_sizes_modifiers>?
      get modifiers;
  BuiltList<
          GCartFragment_items_modifiers_product_products_sizes_groupModifiers>?
      get groupModifiers;
  Map<String, dynamic> toJson();
}

abstract class GCartFragment_items_modifiers_product_products_sizes_parentGroup
    implements
        _i4.GCartItemFragment_modifiers_product_products_sizes_parentGroup,
        _i9.GCartItemModifierFragment_product_products_sizes_parentGroup,
        _i5.GProductFragment_products_sizes_parentGroup,
        _i6.GProductsSizesFragment_parentGroup {
  String get G__typename;
  String get id;
  String get name;
  Map<String, dynamic> toJson();
}

abstract class GCartFragment_items_modifiers_product_products_sizes_images
    implements
        _i4.GCartItemFragment_modifiers_product_products_sizes_images,
        _i9.GCartItemModifierFragment_product_products_sizes_images,
        _i5.GProductFragment_products_sizes_images,
        _i6.GProductsSizesFragment_images {
  String get G__typename;
  String? get imageId;
  String? get imageUrl;
  Map<String, dynamic> toJson();
}

abstract class GCartFragment_items_modifiers_product_products_sizes_modifiers
    implements
        _i4.GCartItemFragment_modifiers_product_products_sizes_modifiers,
        _i9.GCartItemModifierFragment_product_products_sizes_modifiers,
        _i5.GProductFragment_products_sizes_modifiers,
        _i6.GProductsSizesFragment_modifiers,
        _i7.GModificatorFragment {
  String get G__typename;
  int? get maxAmount;
  int? get minAmount;
  String get modifierId;
  bool? get required;
  int? get defaultAmount;
  bool? get hideIfDefaultAmount;
  Map<String, dynamic> toJson();
}

abstract class GCartFragment_items_modifiers_product_products_sizes_groupModifiers
    implements
        _i4.GCartItemFragment_modifiers_product_products_sizes_groupModifiers,
        _i9.GCartItemModifierFragment_product_products_sizes_groupModifiers,
        _i5.GProductFragment_products_sizes_groupModifiers,
        _i6.GProductsSizesFragment_groupModifiers,
        _i8.GGroupModificatorFragment {
  String get G__typename;
  int? get maxAmount;
  int? get minAmount;
  String get modifierId;
  bool? get required;
  BuiltList<
          GCartFragment_items_modifiers_product_products_sizes_groupModifiers_childModifiers>?
      get childModifiers;
  bool? get childModifiersHaveMinMaxRestrictions;
  Map<String, dynamic> toJson();
}

abstract class GCartFragment_items_modifiers_product_products_sizes_groupModifiers_childModifiers
    implements
        _i4.GCartItemFragment_modifiers_product_products_sizes_groupModifiers_childModifiers,
        _i9.GCartItemModifierFragment_product_products_sizes_groupModifiers_childModifiers,
        _i5.GProductFragment_products_sizes_groupModifiers_childModifiers,
        _i6.GProductsSizesFragment_groupModifiers_childModifiers,
        _i8.GGroupModificatorFragment_childModifiers,
        _i7.GModificatorFragment {
  String get G__typename;
  int? get maxAmount;
  int? get minAmount;
  String get modifierId;
  bool? get required;
  int? get defaultAmount;
  bool? get hideIfDefaultAmount;
  Map<String, dynamic> toJson();
}

abstract class GCartFragment_items_modifiers_product_images
    implements
        _i4.GCartItemFragment_modifiers_product_images,
        _i9.GCartItemModifierFragment_product_images,
        _i5.GProductFragment_images {
  String get G__typename;
  String? get imageId;
  String? get imageUrl;
  Map<String, dynamic> toJson();
}

abstract class GCartFragment_items_modifiers_product_modifiers
    implements
        _i4.GCartItemFragment_modifiers_product_modifiers,
        _i9.GCartItemModifierFragment_product_modifiers,
        _i5.GProductFragment_modifiers,
        _i7.GModificatorFragment {
  String get G__typename;
  int? get maxAmount;
  int? get minAmount;
  String get modifierId;
  bool? get required;
  int? get defaultAmount;
  bool? get hideIfDefaultAmount;
  Map<String, dynamic> toJson();
}

abstract class GCartFragment_items_modifiers_product_groupModifiers
    implements
        _i4.GCartItemFragment_modifiers_product_groupModifiers,
        _i9.GCartItemModifierFragment_product_groupModifiers,
        _i5.GProductFragment_groupModifiers,
        _i8.GGroupModificatorFragment {
  String get G__typename;
  int? get maxAmount;
  int? get minAmount;
  String get modifierId;
  bool? get required;
  BuiltList<
          GCartFragment_items_modifiers_product_groupModifiers_childModifiers>?
      get childModifiers;
  bool? get childModifiersHaveMinMaxRestrictions;
  Map<String, dynamic> toJson();
}

abstract class GCartFragment_items_modifiers_product_groupModifiers_childModifiers
    implements
        _i4.GCartItemFragment_modifiers_product_groupModifiers_childModifiers,
        _i9.GCartItemModifierFragment_product_groupModifiers_childModifiers,
        _i5.GProductFragment_groupModifiers_childModifiers,
        _i8.GGroupModificatorFragment_childModifiers,
        _i7.GModificatorFragment {
  String get G__typename;
  int? get maxAmount;
  int? get minAmount;
  String get modifierId;
  bool? get required;
  int? get defaultAmount;
  bool? get hideIfDefaultAmount;
  Map<String, dynamic> toJson();
}

abstract class GCartFragment_order_info implements _i10.GOrderInfoFragment {
  String get G__typename;
  String? get order_id;
  String? get delivery_cancel_cause;
  String? get delivery_cancel_comment;
  _i1.GDateTime? get delivery_date;
  _i1.GDateTime? get actual_time;
  String? get bill_time;
  String? get cancel_time;
  String? get confirm_time;
  _i1.GDateTime? get created_time;
  _i1.GDateTime? get print_time;
  _i1.GDateTime? get send_time;
  int? get persons_count;
  Map<String, dynamic> toJson();
}

abstract class GCartFragment_restaurant implements _i11.GRestaurantFragment {
  String get G__typename;
  String get id;
  String get name;
  String? get address;
  GCartFragment_restaurant_terminal_kitchen? get terminal_kitchen;
  GCartFragment_restaurant_terminal_delivery? get terminal_delivery;
  String? get latitude;
  String? get longitude;
  String? get open_at;
  String? get close_at;
  bool? get is_open;
  String? get delivery_open_at;
  String? get delivery_close_at;
  bool? get is_delivery_open;
  GCartFragment_restaurant_city? get city;
  Map<String, dynamic> toJson();
}

abstract class GCartFragment_restaurant_terminal_kitchen
    implements
        _i11.GRestaurantFragment_terminal_kitchen,
        _i12.GTerminalFragment {
  String get G__typename;
  String get id;
  Map<String, dynamic> toJson();
}

abstract class GCartFragment_restaurant_terminal_delivery
    implements
        _i11.GRestaurantFragment_terminal_delivery,
        _i12.GTerminalFragment {
  String get G__typename;
  String get id;
  Map<String, dynamic> toJson();
}

abstract class GCartFragment_restaurant_city
    implements _i11.GRestaurantFragment_city, _i3.GCityFragment {
  String get G__typename;
  String get id;
  String get name;
  String? get prefix;
  String? get postal_code;
  String? get city_type;
  bool? get available;
  Map<String, dynamic> toJson();
}

abstract class GCartFragmentData
    implements
        Built<GCartFragmentData, GCartFragmentDataBuilder>,
        GCartFragment {
  GCartFragmentData._();

  factory GCartFragmentData([Function(GCartFragmentDataBuilder b) updates]) =
      _$GCartFragmentData;

  static void _initializeBuilder(GCartFragmentDataBuilder b) =>
      b..G__typename = 'Cart';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get organization;
  String? get terminal_id;
  GCartFragmentData_delivery_address? get delivery_address;
  bool get is_self_service;
  _i1.GCartOrderStatus get cart_order_status;
  _i1.GCartPaymentStatus get cart_payment_status;
  BuiltList<GCartFragmentData_items>? get items;
  _i1.GCartPaymentType get payment_type;
  int? get change_from;
  String? get coupon;
  int? get bonus_sum;
  double? get discount_sum;
  String? get customer_name;
  String? get customer_phone;
  _i1.GDateTime? get date;
  int get persons_count;
  String get total;
  String get total_payment;
  String? get delivery_price;
  GCartFragmentData_order_info? get order_info;
  String? get comment;
  GCartFragmentData_restaurant? get restaurant;
  static Serializer<GCartFragmentData> get serializer =>
      _$gCartFragmentDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i13.serializers.serializeWith(GCartFragmentData.serializer, this)
          as Map<String, dynamic>);
  static GCartFragmentData? fromJson(Map<String, dynamic> json) =>
      _i13.serializers.deserializeWith(GCartFragmentData.serializer, json);
}

abstract class GCartFragmentData_delivery_address
    implements
        Built<GCartFragmentData_delivery_address,
            GCartFragmentData_delivery_addressBuilder>,
        GCartFragment_delivery_address,
        _i2.GDeliveryAddressFragment {
  GCartFragmentData_delivery_address._();

  factory GCartFragmentData_delivery_address(
          [Function(GCartFragmentData_delivery_addressBuilder b) updates]) =
      _$GCartFragmentData_delivery_address;

  static void _initializeBuilder(GCartFragmentData_delivery_addressBuilder b) =>
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
  GCartFragmentData_delivery_address_city? get city;
  bool? get address_in_zone;
  static Serializer<GCartFragmentData_delivery_address> get serializer =>
      _$gCartFragmentDataDeliveryAddressSerializer;
  Map<String, dynamic> toJson() => (_i13.serializers
          .serializeWith(GCartFragmentData_delivery_address.serializer, this)
      as Map<String, dynamic>);
  static GCartFragmentData_delivery_address? fromJson(
          Map<String, dynamic> json) =>
      _i13.serializers
          .deserializeWith(GCartFragmentData_delivery_address.serializer, json);
}

abstract class GCartFragmentData_delivery_address_city
    implements
        Built<GCartFragmentData_delivery_address_city,
            GCartFragmentData_delivery_address_cityBuilder>,
        GCartFragment_delivery_address_city,
        _i2.GDeliveryAddressFragment_city,
        _i3.GCityFragment {
  GCartFragmentData_delivery_address_city._();

  factory GCartFragmentData_delivery_address_city(
      [Function(GCartFragmentData_delivery_address_cityBuilder b)
          updates]) = _$GCartFragmentData_delivery_address_city;

  static void _initializeBuilder(
          GCartFragmentData_delivery_address_cityBuilder b) =>
      b..G__typename = 'City';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  String? get prefix;
  String? get postal_code;
  String? get city_type;
  bool? get available;
  static Serializer<GCartFragmentData_delivery_address_city> get serializer =>
      _$gCartFragmentDataDeliveryAddressCitySerializer;
  Map<String, dynamic> toJson() => (_i13.serializers.serializeWith(
          GCartFragmentData_delivery_address_city.serializer, this)
      as Map<String, dynamic>);
  static GCartFragmentData_delivery_address_city? fromJson(
          Map<String, dynamic> json) =>
      _i13.serializers.deserializeWith(
          GCartFragmentData_delivery_address_city.serializer, json);
}

abstract class GCartFragmentData_items
    implements
        Built<GCartFragmentData_items, GCartFragmentData_itemsBuilder>,
        GCartFragment_items,
        _i4.GCartItemFragment {
  GCartFragmentData_items._();

  factory GCartFragmentData_items(
          [Function(GCartFragmentData_itemsBuilder b) updates]) =
      _$GCartFragmentData_items;

  static void _initializeBuilder(GCartFragmentData_itemsBuilder b) =>
      b..G__typename = 'CartItem';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  String get product_id;
  GCartFragmentData_items_product get product;
  String get name;
  int get amount;
  double? get total;
  double? get discount_sum;
  double? get sum;
  String? get code;
  BuiltList<GCartFragmentData_items_modifiers>? get modifiers;
  static Serializer<GCartFragmentData_items> get serializer =>
      _$gCartFragmentDataItemsSerializer;
  Map<String, dynamic> toJson() =>
      (_i13.serializers.serializeWith(GCartFragmentData_items.serializer, this)
          as Map<String, dynamic>);
  static GCartFragmentData_items? fromJson(Map<String, dynamic> json) =>
      _i13.serializers
          .deserializeWith(GCartFragmentData_items.serializer, json);
}

abstract class GCartFragmentData_items_product
    implements
        Built<GCartFragmentData_items_product,
            GCartFragmentData_items_productBuilder>,
        GCartFragment_items_product,
        _i4.GCartItemFragment_product,
        _i5.GProductFragment {
  GCartFragmentData_items_product._();

  factory GCartFragmentData_items_product(
          [Function(GCartFragmentData_items_productBuilder b) updates]) =
      _$GCartFragmentData_items_product;

  static void _initializeBuilder(GCartFragmentData_items_productBuilder b) =>
      b..G__typename = 'Product';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get parentGroupId;
  String? get groupId;
  GCartFragmentData_items_product_parentGroup? get parentGroup;
  GCartFragmentData_items_product_group? get group;
  String? get productCategoryId;
  GCartFragmentData_items_product_category? get category;
  BuiltList<GCartFragmentData_items_product_products_sizes>? get products_sizes;
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
  BuiltList<GCartFragmentData_items_product_images>? get images;
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
  BuiltList<GCartFragmentData_items_product_modifiers>? get modifiers;
  BuiltList<GCartFragmentData_items_product_groupModifiers>? get groupModifiers;
  static Serializer<GCartFragmentData_items_product> get serializer =>
      _$gCartFragmentDataItemsProductSerializer;
  Map<String, dynamic> toJson() => (_i13.serializers
          .serializeWith(GCartFragmentData_items_product.serializer, this)
      as Map<String, dynamic>);
  static GCartFragmentData_items_product? fromJson(Map<String, dynamic> json) =>
      _i13.serializers
          .deserializeWith(GCartFragmentData_items_product.serializer, json);
}

abstract class GCartFragmentData_items_product_parentGroup
    implements
        Built<GCartFragmentData_items_product_parentGroup,
            GCartFragmentData_items_product_parentGroupBuilder>,
        GCartFragment_items_product_parentGroup,
        _i4.GCartItemFragment_product_parentGroup,
        _i5.GProductFragment_parentGroup {
  GCartFragmentData_items_product_parentGroup._();

  factory GCartFragmentData_items_product_parentGroup(
      [Function(GCartFragmentData_items_product_parentGroupBuilder b)
          updates]) = _$GCartFragmentData_items_product_parentGroup;

  static void _initializeBuilder(
          GCartFragmentData_items_product_parentGroupBuilder b) =>
      b..G__typename = 'Group';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get parentGroup;
  String? get additionalInfo;
  String get name;
  String? get description;
  static Serializer<GCartFragmentData_items_product_parentGroup>
      get serializer => _$gCartFragmentDataItemsProductParentGroupSerializer;
  Map<String, dynamic> toJson() => (_i13.serializers.serializeWith(
          GCartFragmentData_items_product_parentGroup.serializer, this)
      as Map<String, dynamic>);
  static GCartFragmentData_items_product_parentGroup? fromJson(
          Map<String, dynamic> json) =>
      _i13.serializers.deserializeWith(
          GCartFragmentData_items_product_parentGroup.serializer, json);
}

abstract class GCartFragmentData_items_product_group
    implements
        Built<GCartFragmentData_items_product_group,
            GCartFragmentData_items_product_groupBuilder>,
        GCartFragment_items_product_group,
        _i4.GCartItemFragment_product_group,
        _i5.GProductFragment_group {
  GCartFragmentData_items_product_group._();

  factory GCartFragmentData_items_product_group(
          [Function(GCartFragmentData_items_product_groupBuilder b) updates]) =
      _$GCartFragmentData_items_product_group;

  static void _initializeBuilder(
          GCartFragmentData_items_product_groupBuilder b) =>
      b..G__typename = 'Group';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get parentGroup;
  String? get additionalInfo;
  String get name;
  String? get description;
  static Serializer<GCartFragmentData_items_product_group> get serializer =>
      _$gCartFragmentDataItemsProductGroupSerializer;
  Map<String, dynamic> toJson() => (_i13.serializers
          .serializeWith(GCartFragmentData_items_product_group.serializer, this)
      as Map<String, dynamic>);
  static GCartFragmentData_items_product_group? fromJson(
          Map<String, dynamic> json) =>
      _i13.serializers.deserializeWith(
          GCartFragmentData_items_product_group.serializer, json);
}

abstract class GCartFragmentData_items_product_category
    implements
        Built<GCartFragmentData_items_product_category,
            GCartFragmentData_items_product_categoryBuilder>,
        GCartFragment_items_product_category,
        _i4.GCartItemFragment_product_category,
        _i5.GProductFragment_category {
  GCartFragmentData_items_product_category._();

  factory GCartFragmentData_items_product_category(
      [Function(GCartFragmentData_items_product_categoryBuilder b)
          updates]) = _$GCartFragmentData_items_product_category;

  static void _initializeBuilder(
          GCartFragmentData_items_product_categoryBuilder b) =>
      b..G__typename = 'ProductCategory';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  static Serializer<GCartFragmentData_items_product_category> get serializer =>
      _$gCartFragmentDataItemsProductCategorySerializer;
  Map<String, dynamic> toJson() => (_i13.serializers.serializeWith(
          GCartFragmentData_items_product_category.serializer, this)
      as Map<String, dynamic>);
  static GCartFragmentData_items_product_category? fromJson(
          Map<String, dynamic> json) =>
      _i13.serializers.deserializeWith(
          GCartFragmentData_items_product_category.serializer, json);
}

abstract class GCartFragmentData_items_product_products_sizes
    implements
        Built<GCartFragmentData_items_product_products_sizes,
            GCartFragmentData_items_product_products_sizesBuilder>,
        GCartFragment_items_product_products_sizes,
        _i4.GCartItemFragment_product_products_sizes,
        _i5.GProductFragment_products_sizes,
        _i6.GProductsSizesFragment {
  GCartFragmentData_items_product_products_sizes._();

  factory GCartFragmentData_items_product_products_sizes(
      [Function(GCartFragmentData_items_product_products_sizesBuilder b)
          updates]) = _$GCartFragmentData_items_product_products_sizes;

  static void _initializeBuilder(
          GCartFragmentData_items_product_products_sizesBuilder b) =>
      b..G__typename = 'Product';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  String? get additionalInfo;
  String? get description;
  GCartFragmentData_items_product_products_sizes_parentGroup? get parentGroup;
  BuiltList<GCartFragmentData_items_product_products_sizes_images>? get images;
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
  BuiltList<GCartFragmentData_items_product_products_sizes_modifiers>?
      get modifiers;
  BuiltList<GCartFragmentData_items_product_products_sizes_groupModifiers>?
      get groupModifiers;
  static Serializer<GCartFragmentData_items_product_products_sizes>
      get serializer => _$gCartFragmentDataItemsProductProductsSizesSerializer;
  Map<String, dynamic> toJson() => (_i13.serializers.serializeWith(
          GCartFragmentData_items_product_products_sizes.serializer, this)
      as Map<String, dynamic>);
  static GCartFragmentData_items_product_products_sizes? fromJson(
          Map<String, dynamic> json) =>
      _i13.serializers.deserializeWith(
          GCartFragmentData_items_product_products_sizes.serializer, json);
}

abstract class GCartFragmentData_items_product_products_sizes_parentGroup
    implements
        Built<GCartFragmentData_items_product_products_sizes_parentGroup,
            GCartFragmentData_items_product_products_sizes_parentGroupBuilder>,
        GCartFragment_items_product_products_sizes_parentGroup,
        _i4.GCartItemFragment_product_products_sizes_parentGroup,
        _i5.GProductFragment_products_sizes_parentGroup,
        _i6.GProductsSizesFragment_parentGroup {
  GCartFragmentData_items_product_products_sizes_parentGroup._();

  factory GCartFragmentData_items_product_products_sizes_parentGroup(
      [Function(
              GCartFragmentData_items_product_products_sizes_parentGroupBuilder
                  b)
          updates]) = _$GCartFragmentData_items_product_products_sizes_parentGroup;

  static void _initializeBuilder(
          GCartFragmentData_items_product_products_sizes_parentGroupBuilder
              b) =>
      b..G__typename = 'Group';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  static Serializer<GCartFragmentData_items_product_products_sizes_parentGroup>
      get serializer =>
          _$gCartFragmentDataItemsProductProductsSizesParentGroupSerializer;
  Map<String, dynamic> toJson() => (_i13.serializers.serializeWith(
      GCartFragmentData_items_product_products_sizes_parentGroup.serializer,
      this) as Map<String, dynamic>);
  static GCartFragmentData_items_product_products_sizes_parentGroup? fromJson(
          Map<String, dynamic> json) =>
      _i13.serializers.deserializeWith(
          GCartFragmentData_items_product_products_sizes_parentGroup.serializer,
          json);
}

abstract class GCartFragmentData_items_product_products_sizes_images
    implements
        Built<GCartFragmentData_items_product_products_sizes_images,
            GCartFragmentData_items_product_products_sizes_imagesBuilder>,
        GCartFragment_items_product_products_sizes_images,
        _i4.GCartItemFragment_product_products_sizes_images,
        _i5.GProductFragment_products_sizes_images,
        _i6.GProductsSizesFragment_images {
  GCartFragmentData_items_product_products_sizes_images._();

  factory GCartFragmentData_items_product_products_sizes_images(
      [Function(GCartFragmentData_items_product_products_sizes_imagesBuilder b)
          updates]) = _$GCartFragmentData_items_product_products_sizes_images;

  static void _initializeBuilder(
          GCartFragmentData_items_product_products_sizes_imagesBuilder b) =>
      b..G__typename = 'ProductImage';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get imageId;
  String? get imageUrl;
  static Serializer<GCartFragmentData_items_product_products_sizes_images>
      get serializer =>
          _$gCartFragmentDataItemsProductProductsSizesImagesSerializer;
  Map<String, dynamic> toJson() => (_i13.serializers.serializeWith(
      GCartFragmentData_items_product_products_sizes_images.serializer,
      this) as Map<String, dynamic>);
  static GCartFragmentData_items_product_products_sizes_images? fromJson(
          Map<String, dynamic> json) =>
      _i13.serializers.deserializeWith(
          GCartFragmentData_items_product_products_sizes_images.serializer,
          json);
}

abstract class GCartFragmentData_items_product_products_sizes_modifiers
    implements
        Built<GCartFragmentData_items_product_products_sizes_modifiers,
            GCartFragmentData_items_product_products_sizes_modifiersBuilder>,
        GCartFragment_items_product_products_sizes_modifiers,
        _i4.GCartItemFragment_product_products_sizes_modifiers,
        _i5.GProductFragment_products_sizes_modifiers,
        _i6.GProductsSizesFragment_modifiers,
        _i7.GModificatorFragment {
  GCartFragmentData_items_product_products_sizes_modifiers._();

  factory GCartFragmentData_items_product_products_sizes_modifiers(
      [Function(
              GCartFragmentData_items_product_products_sizes_modifiersBuilder b)
          updates]) = _$GCartFragmentData_items_product_products_sizes_modifiers;

  static void _initializeBuilder(
          GCartFragmentData_items_product_products_sizes_modifiersBuilder b) =>
      b..G__typename = 'Modificator';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get maxAmount;
  int? get minAmount;
  String get modifierId;
  bool? get required;
  int? get defaultAmount;
  bool? get hideIfDefaultAmount;
  static Serializer<GCartFragmentData_items_product_products_sizes_modifiers>
      get serializer =>
          _$gCartFragmentDataItemsProductProductsSizesModifiersSerializer;
  Map<String, dynamic> toJson() => (_i13.serializers.serializeWith(
      GCartFragmentData_items_product_products_sizes_modifiers.serializer,
      this) as Map<String, dynamic>);
  static GCartFragmentData_items_product_products_sizes_modifiers? fromJson(
          Map<String, dynamic> json) =>
      _i13.serializers.deserializeWith(
          GCartFragmentData_items_product_products_sizes_modifiers.serializer,
          json);
}

abstract class GCartFragmentData_items_product_products_sizes_groupModifiers
    implements
        Built<GCartFragmentData_items_product_products_sizes_groupModifiers,
            GCartFragmentData_items_product_products_sizes_groupModifiersBuilder>,
        GCartFragment_items_product_products_sizes_groupModifiers,
        _i4.GCartItemFragment_product_products_sizes_groupModifiers,
        _i5.GProductFragment_products_sizes_groupModifiers,
        _i6.GProductsSizesFragment_groupModifiers,
        _i8.GGroupModificatorFragment {
  GCartFragmentData_items_product_products_sizes_groupModifiers._();

  factory GCartFragmentData_items_product_products_sizes_groupModifiers(
          [Function(
                  GCartFragmentData_items_product_products_sizes_groupModifiersBuilder
                      b)
              updates]) =
      _$GCartFragmentData_items_product_products_sizes_groupModifiers;

  static void _initializeBuilder(
          GCartFragmentData_items_product_products_sizes_groupModifiersBuilder
              b) =>
      b..G__typename = 'GroupModificator';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get maxAmount;
  int? get minAmount;
  String get modifierId;
  bool? get required;
  BuiltList<
          GCartFragmentData_items_product_products_sizes_groupModifiers_childModifiers>?
      get childModifiers;
  bool? get childModifiersHaveMinMaxRestrictions;
  static Serializer<
          GCartFragmentData_items_product_products_sizes_groupModifiers>
      get serializer =>
          _$gCartFragmentDataItemsProductProductsSizesGroupModifiersSerializer;
  Map<String, dynamic> toJson() => (_i13.serializers.serializeWith(
      GCartFragmentData_items_product_products_sizes_groupModifiers.serializer,
      this) as Map<String, dynamic>);
  static GCartFragmentData_items_product_products_sizes_groupModifiers?
      fromJson(Map<String, dynamic> json) => _i13.serializers.deserializeWith(
          GCartFragmentData_items_product_products_sizes_groupModifiers
              .serializer,
          json);
}

abstract class GCartFragmentData_items_product_products_sizes_groupModifiers_childModifiers
    implements
        Built<
            GCartFragmentData_items_product_products_sizes_groupModifiers_childModifiers,
            GCartFragmentData_items_product_products_sizes_groupModifiers_childModifiersBuilder>,
        GCartFragment_items_product_products_sizes_groupModifiers_childModifiers,
        _i4.GCartItemFragment_product_products_sizes_groupModifiers_childModifiers,
        _i5.GProductFragment_products_sizes_groupModifiers_childModifiers,
        _i6.GProductsSizesFragment_groupModifiers_childModifiers,
        _i8.GGroupModificatorFragment_childModifiers,
        _i7.GModificatorFragment {
  GCartFragmentData_items_product_products_sizes_groupModifiers_childModifiers._();

  factory GCartFragmentData_items_product_products_sizes_groupModifiers_childModifiers(
          [Function(
                  GCartFragmentData_items_product_products_sizes_groupModifiers_childModifiersBuilder
                      b)
              updates]) =
      _$GCartFragmentData_items_product_products_sizes_groupModifiers_childModifiers;

  static void _initializeBuilder(
          GCartFragmentData_items_product_products_sizes_groupModifiers_childModifiersBuilder
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
          GCartFragmentData_items_product_products_sizes_groupModifiers_childModifiers>
      get serializer =>
          _$gCartFragmentDataItemsProductProductsSizesGroupModifiersChildModifiersSerializer;
  Map<String, dynamic> toJson() => (_i13.serializers.serializeWith(
      GCartFragmentData_items_product_products_sizes_groupModifiers_childModifiers
          .serializer,
      this) as Map<String, dynamic>);
  static GCartFragmentData_items_product_products_sizes_groupModifiers_childModifiers?
      fromJson(Map<String, dynamic> json) => _i13.serializers.deserializeWith(
          GCartFragmentData_items_product_products_sizes_groupModifiers_childModifiers
              .serializer,
          json);
}

abstract class GCartFragmentData_items_product_images
    implements
        Built<GCartFragmentData_items_product_images,
            GCartFragmentData_items_product_imagesBuilder>,
        GCartFragment_items_product_images,
        _i4.GCartItemFragment_product_images,
        _i5.GProductFragment_images {
  GCartFragmentData_items_product_images._();

  factory GCartFragmentData_items_product_images(
          [Function(GCartFragmentData_items_product_imagesBuilder b) updates]) =
      _$GCartFragmentData_items_product_images;

  static void _initializeBuilder(
          GCartFragmentData_items_product_imagesBuilder b) =>
      b..G__typename = 'ProductImage';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get imageId;
  String? get imageUrl;
  static Serializer<GCartFragmentData_items_product_images> get serializer =>
      _$gCartFragmentDataItemsProductImagesSerializer;
  Map<String, dynamic> toJson() => (_i13.serializers.serializeWith(
          GCartFragmentData_items_product_images.serializer, this)
      as Map<String, dynamic>);
  static GCartFragmentData_items_product_images? fromJson(
          Map<String, dynamic> json) =>
      _i13.serializers.deserializeWith(
          GCartFragmentData_items_product_images.serializer, json);
}

abstract class GCartFragmentData_items_product_modifiers
    implements
        Built<GCartFragmentData_items_product_modifiers,
            GCartFragmentData_items_product_modifiersBuilder>,
        GCartFragment_items_product_modifiers,
        _i4.GCartItemFragment_product_modifiers,
        _i5.GProductFragment_modifiers,
        _i7.GModificatorFragment {
  GCartFragmentData_items_product_modifiers._();

  factory GCartFragmentData_items_product_modifiers(
      [Function(GCartFragmentData_items_product_modifiersBuilder b)
          updates]) = _$GCartFragmentData_items_product_modifiers;

  static void _initializeBuilder(
          GCartFragmentData_items_product_modifiersBuilder b) =>
      b..G__typename = 'Modificator';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get maxAmount;
  int? get minAmount;
  String get modifierId;
  bool? get required;
  int? get defaultAmount;
  bool? get hideIfDefaultAmount;
  static Serializer<GCartFragmentData_items_product_modifiers> get serializer =>
      _$gCartFragmentDataItemsProductModifiersSerializer;
  Map<String, dynamic> toJson() => (_i13.serializers.serializeWith(
          GCartFragmentData_items_product_modifiers.serializer, this)
      as Map<String, dynamic>);
  static GCartFragmentData_items_product_modifiers? fromJson(
          Map<String, dynamic> json) =>
      _i13.serializers.deserializeWith(
          GCartFragmentData_items_product_modifiers.serializer, json);
}

abstract class GCartFragmentData_items_product_groupModifiers
    implements
        Built<GCartFragmentData_items_product_groupModifiers,
            GCartFragmentData_items_product_groupModifiersBuilder>,
        GCartFragment_items_product_groupModifiers,
        _i4.GCartItemFragment_product_groupModifiers,
        _i5.GProductFragment_groupModifiers,
        _i8.GGroupModificatorFragment {
  GCartFragmentData_items_product_groupModifiers._();

  factory GCartFragmentData_items_product_groupModifiers(
      [Function(GCartFragmentData_items_product_groupModifiersBuilder b)
          updates]) = _$GCartFragmentData_items_product_groupModifiers;

  static void _initializeBuilder(
          GCartFragmentData_items_product_groupModifiersBuilder b) =>
      b..G__typename = 'GroupModificator';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get maxAmount;
  int? get minAmount;
  String get modifierId;
  bool? get required;
  BuiltList<GCartFragmentData_items_product_groupModifiers_childModifiers>?
      get childModifiers;
  bool? get childModifiersHaveMinMaxRestrictions;
  static Serializer<GCartFragmentData_items_product_groupModifiers>
      get serializer => _$gCartFragmentDataItemsProductGroupModifiersSerializer;
  Map<String, dynamic> toJson() => (_i13.serializers.serializeWith(
          GCartFragmentData_items_product_groupModifiers.serializer, this)
      as Map<String, dynamic>);
  static GCartFragmentData_items_product_groupModifiers? fromJson(
          Map<String, dynamic> json) =>
      _i13.serializers.deserializeWith(
          GCartFragmentData_items_product_groupModifiers.serializer, json);
}

abstract class GCartFragmentData_items_product_groupModifiers_childModifiers
    implements
        Built<GCartFragmentData_items_product_groupModifiers_childModifiers,
            GCartFragmentData_items_product_groupModifiers_childModifiersBuilder>,
        GCartFragment_items_product_groupModifiers_childModifiers,
        _i4.GCartItemFragment_product_groupModifiers_childModifiers,
        _i5.GProductFragment_groupModifiers_childModifiers,
        _i8.GGroupModificatorFragment_childModifiers,
        _i7.GModificatorFragment {
  GCartFragmentData_items_product_groupModifiers_childModifiers._();

  factory GCartFragmentData_items_product_groupModifiers_childModifiers(
          [Function(
                  GCartFragmentData_items_product_groupModifiers_childModifiersBuilder
                      b)
              updates]) =
      _$GCartFragmentData_items_product_groupModifiers_childModifiers;

  static void _initializeBuilder(
          GCartFragmentData_items_product_groupModifiers_childModifiersBuilder
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
          GCartFragmentData_items_product_groupModifiers_childModifiers>
      get serializer =>
          _$gCartFragmentDataItemsProductGroupModifiersChildModifiersSerializer;
  Map<String, dynamic> toJson() => (_i13.serializers.serializeWith(
      GCartFragmentData_items_product_groupModifiers_childModifiers.serializer,
      this) as Map<String, dynamic>);
  static GCartFragmentData_items_product_groupModifiers_childModifiers?
      fromJson(Map<String, dynamic> json) => _i13.serializers.deserializeWith(
          GCartFragmentData_items_product_groupModifiers_childModifiers
              .serializer,
          json);
}

abstract class GCartFragmentData_items_modifiers
    implements
        Built<GCartFragmentData_items_modifiers,
            GCartFragmentData_items_modifiersBuilder>,
        GCartFragment_items_modifiers,
        _i4.GCartItemFragment_modifiers,
        _i9.GCartItemModifierFragment {
  GCartFragmentData_items_modifiers._();

  factory GCartFragmentData_items_modifiers(
          [Function(GCartFragmentData_items_modifiersBuilder b) updates]) =
      _$GCartFragmentData_items_modifiers;

  static void _initializeBuilder(GCartFragmentData_items_modifiersBuilder b) =>
      b..G__typename = 'CartItemModifier';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get type;
  String get product_id;
  GCartFragmentData_items_modifiers_product get product;
  String get name;
  int get amount;
  String? get group_id;
  String? get group_name;
  static Serializer<GCartFragmentData_items_modifiers> get serializer =>
      _$gCartFragmentDataItemsModifiersSerializer;
  Map<String, dynamic> toJson() => (_i13.serializers
          .serializeWith(GCartFragmentData_items_modifiers.serializer, this)
      as Map<String, dynamic>);
  static GCartFragmentData_items_modifiers? fromJson(
          Map<String, dynamic> json) =>
      _i13.serializers
          .deserializeWith(GCartFragmentData_items_modifiers.serializer, json);
}

abstract class GCartFragmentData_items_modifiers_product
    implements
        Built<GCartFragmentData_items_modifiers_product,
            GCartFragmentData_items_modifiers_productBuilder>,
        GCartFragment_items_modifiers_product,
        _i4.GCartItemFragment_modifiers_product,
        _i9.GCartItemModifierFragment_product,
        _i5.GProductFragment {
  GCartFragmentData_items_modifiers_product._();

  factory GCartFragmentData_items_modifiers_product(
      [Function(GCartFragmentData_items_modifiers_productBuilder b)
          updates]) = _$GCartFragmentData_items_modifiers_product;

  static void _initializeBuilder(
          GCartFragmentData_items_modifiers_productBuilder b) =>
      b..G__typename = 'Product';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get parentGroupId;
  String? get groupId;
  GCartFragmentData_items_modifiers_product_parentGroup? get parentGroup;
  GCartFragmentData_items_modifiers_product_group? get group;
  String? get productCategoryId;
  GCartFragmentData_items_modifiers_product_category? get category;
  BuiltList<GCartFragmentData_items_modifiers_product_products_sizes>?
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
  BuiltList<GCartFragmentData_items_modifiers_product_images>? get images;
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
  BuiltList<GCartFragmentData_items_modifiers_product_modifiers>? get modifiers;
  BuiltList<GCartFragmentData_items_modifiers_product_groupModifiers>?
      get groupModifiers;
  static Serializer<GCartFragmentData_items_modifiers_product> get serializer =>
      _$gCartFragmentDataItemsModifiersProductSerializer;
  Map<String, dynamic> toJson() => (_i13.serializers.serializeWith(
          GCartFragmentData_items_modifiers_product.serializer, this)
      as Map<String, dynamic>);
  static GCartFragmentData_items_modifiers_product? fromJson(
          Map<String, dynamic> json) =>
      _i13.serializers.deserializeWith(
          GCartFragmentData_items_modifiers_product.serializer, json);
}

abstract class GCartFragmentData_items_modifiers_product_parentGroup
    implements
        Built<GCartFragmentData_items_modifiers_product_parentGroup,
            GCartFragmentData_items_modifiers_product_parentGroupBuilder>,
        GCartFragment_items_modifiers_product_parentGroup,
        _i4.GCartItemFragment_modifiers_product_parentGroup,
        _i9.GCartItemModifierFragment_product_parentGroup,
        _i5.GProductFragment_parentGroup {
  GCartFragmentData_items_modifiers_product_parentGroup._();

  factory GCartFragmentData_items_modifiers_product_parentGroup(
      [Function(GCartFragmentData_items_modifiers_product_parentGroupBuilder b)
          updates]) = _$GCartFragmentData_items_modifiers_product_parentGroup;

  static void _initializeBuilder(
          GCartFragmentData_items_modifiers_product_parentGroupBuilder b) =>
      b..G__typename = 'Group';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get parentGroup;
  String? get additionalInfo;
  String get name;
  String? get description;
  static Serializer<GCartFragmentData_items_modifiers_product_parentGroup>
      get serializer =>
          _$gCartFragmentDataItemsModifiersProductParentGroupSerializer;
  Map<String, dynamic> toJson() => (_i13.serializers.serializeWith(
      GCartFragmentData_items_modifiers_product_parentGroup.serializer,
      this) as Map<String, dynamic>);
  static GCartFragmentData_items_modifiers_product_parentGroup? fromJson(
          Map<String, dynamic> json) =>
      _i13.serializers.deserializeWith(
          GCartFragmentData_items_modifiers_product_parentGroup.serializer,
          json);
}

abstract class GCartFragmentData_items_modifiers_product_group
    implements
        Built<GCartFragmentData_items_modifiers_product_group,
            GCartFragmentData_items_modifiers_product_groupBuilder>,
        GCartFragment_items_modifiers_product_group,
        _i4.GCartItemFragment_modifiers_product_group,
        _i9.GCartItemModifierFragment_product_group,
        _i5.GProductFragment_group {
  GCartFragmentData_items_modifiers_product_group._();

  factory GCartFragmentData_items_modifiers_product_group(
      [Function(GCartFragmentData_items_modifiers_product_groupBuilder b)
          updates]) = _$GCartFragmentData_items_modifiers_product_group;

  static void _initializeBuilder(
          GCartFragmentData_items_modifiers_product_groupBuilder b) =>
      b..G__typename = 'Group';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String? get parentGroup;
  String? get additionalInfo;
  String get name;
  String? get description;
  static Serializer<GCartFragmentData_items_modifiers_product_group>
      get serializer => _$gCartFragmentDataItemsModifiersProductGroupSerializer;
  Map<String, dynamic> toJson() => (_i13.serializers.serializeWith(
          GCartFragmentData_items_modifiers_product_group.serializer, this)
      as Map<String, dynamic>);
  static GCartFragmentData_items_modifiers_product_group? fromJson(
          Map<String, dynamic> json) =>
      _i13.serializers.deserializeWith(
          GCartFragmentData_items_modifiers_product_group.serializer, json);
}

abstract class GCartFragmentData_items_modifiers_product_category
    implements
        Built<GCartFragmentData_items_modifiers_product_category,
            GCartFragmentData_items_modifiers_product_categoryBuilder>,
        GCartFragment_items_modifiers_product_category,
        _i4.GCartItemFragment_modifiers_product_category,
        _i9.GCartItemModifierFragment_product_category,
        _i5.GProductFragment_category {
  GCartFragmentData_items_modifiers_product_category._();

  factory GCartFragmentData_items_modifiers_product_category(
      [Function(GCartFragmentData_items_modifiers_product_categoryBuilder b)
          updates]) = _$GCartFragmentData_items_modifiers_product_category;

  static void _initializeBuilder(
          GCartFragmentData_items_modifiers_product_categoryBuilder b) =>
      b..G__typename = 'ProductCategory';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  static Serializer<GCartFragmentData_items_modifiers_product_category>
      get serializer =>
          _$gCartFragmentDataItemsModifiersProductCategorySerializer;
  Map<String, dynamic> toJson() => (_i13.serializers.serializeWith(
          GCartFragmentData_items_modifiers_product_category.serializer, this)
      as Map<String, dynamic>);
  static GCartFragmentData_items_modifiers_product_category? fromJson(
          Map<String, dynamic> json) =>
      _i13.serializers.deserializeWith(
          GCartFragmentData_items_modifiers_product_category.serializer, json);
}

abstract class GCartFragmentData_items_modifiers_product_products_sizes
    implements
        Built<GCartFragmentData_items_modifiers_product_products_sizes,
            GCartFragmentData_items_modifiers_product_products_sizesBuilder>,
        GCartFragment_items_modifiers_product_products_sizes,
        _i4.GCartItemFragment_modifiers_product_products_sizes,
        _i9.GCartItemModifierFragment_product_products_sizes,
        _i5.GProductFragment_products_sizes,
        _i6.GProductsSizesFragment {
  GCartFragmentData_items_modifiers_product_products_sizes._();

  factory GCartFragmentData_items_modifiers_product_products_sizes(
      [Function(
              GCartFragmentData_items_modifiers_product_products_sizesBuilder b)
          updates]) = _$GCartFragmentData_items_modifiers_product_products_sizes;

  static void _initializeBuilder(
          GCartFragmentData_items_modifiers_product_products_sizesBuilder b) =>
      b..G__typename = 'Product';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  String? get additionalInfo;
  String? get description;
  GCartFragmentData_items_modifiers_product_products_sizes_parentGroup?
      get parentGroup;
  BuiltList<GCartFragmentData_items_modifiers_product_products_sizes_images>?
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
  BuiltList<GCartFragmentData_items_modifiers_product_products_sizes_modifiers>?
      get modifiers;
  BuiltList<
          GCartFragmentData_items_modifiers_product_products_sizes_groupModifiers>?
      get groupModifiers;
  static Serializer<GCartFragmentData_items_modifiers_product_products_sizes>
      get serializer =>
          _$gCartFragmentDataItemsModifiersProductProductsSizesSerializer;
  Map<String, dynamic> toJson() => (_i13.serializers.serializeWith(
      GCartFragmentData_items_modifiers_product_products_sizes.serializer,
      this) as Map<String, dynamic>);
  static GCartFragmentData_items_modifiers_product_products_sizes? fromJson(
          Map<String, dynamic> json) =>
      _i13.serializers.deserializeWith(
          GCartFragmentData_items_modifiers_product_products_sizes.serializer,
          json);
}

abstract class GCartFragmentData_items_modifiers_product_products_sizes_parentGroup
    implements
        Built<
            GCartFragmentData_items_modifiers_product_products_sizes_parentGroup,
            GCartFragmentData_items_modifiers_product_products_sizes_parentGroupBuilder>,
        GCartFragment_items_modifiers_product_products_sizes_parentGroup,
        _i4.GCartItemFragment_modifiers_product_products_sizes_parentGroup,
        _i9.GCartItemModifierFragment_product_products_sizes_parentGroup,
        _i5.GProductFragment_products_sizes_parentGroup,
        _i6.GProductsSizesFragment_parentGroup {
  GCartFragmentData_items_modifiers_product_products_sizes_parentGroup._();

  factory GCartFragmentData_items_modifiers_product_products_sizes_parentGroup(
          [Function(
                  GCartFragmentData_items_modifiers_product_products_sizes_parentGroupBuilder
                      b)
              updates]) =
      _$GCartFragmentData_items_modifiers_product_products_sizes_parentGroup;

  static void _initializeBuilder(
          GCartFragmentData_items_modifiers_product_products_sizes_parentGroupBuilder
              b) =>
      b..G__typename = 'Group';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  static Serializer<
          GCartFragmentData_items_modifiers_product_products_sizes_parentGroup>
      get serializer =>
          _$gCartFragmentDataItemsModifiersProductProductsSizesParentGroupSerializer;
  Map<String, dynamic> toJson() => (_i13.serializers.serializeWith(
      GCartFragmentData_items_modifiers_product_products_sizes_parentGroup
          .serializer,
      this) as Map<String, dynamic>);
  static GCartFragmentData_items_modifiers_product_products_sizes_parentGroup?
      fromJson(Map<String, dynamic> json) => _i13.serializers.deserializeWith(
          GCartFragmentData_items_modifiers_product_products_sizes_parentGroup
              .serializer,
          json);
}

abstract class GCartFragmentData_items_modifiers_product_products_sizes_images
    implements
        Built<GCartFragmentData_items_modifiers_product_products_sizes_images,
            GCartFragmentData_items_modifiers_product_products_sizes_imagesBuilder>,
        GCartFragment_items_modifiers_product_products_sizes_images,
        _i4.GCartItemFragment_modifiers_product_products_sizes_images,
        _i9.GCartItemModifierFragment_product_products_sizes_images,
        _i5.GProductFragment_products_sizes_images,
        _i6.GProductsSizesFragment_images {
  GCartFragmentData_items_modifiers_product_products_sizes_images._();

  factory GCartFragmentData_items_modifiers_product_products_sizes_images(
          [Function(
                  GCartFragmentData_items_modifiers_product_products_sizes_imagesBuilder
                      b)
              updates]) =
      _$GCartFragmentData_items_modifiers_product_products_sizes_images;

  static void _initializeBuilder(
          GCartFragmentData_items_modifiers_product_products_sizes_imagesBuilder
              b) =>
      b..G__typename = 'ProductImage';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get imageId;
  String? get imageUrl;
  static Serializer<
          GCartFragmentData_items_modifiers_product_products_sizes_images>
      get serializer =>
          _$gCartFragmentDataItemsModifiersProductProductsSizesImagesSerializer;
  Map<String, dynamic> toJson() => (_i13.serializers.serializeWith(
      GCartFragmentData_items_modifiers_product_products_sizes_images
          .serializer,
      this) as Map<String, dynamic>);
  static GCartFragmentData_items_modifiers_product_products_sizes_images?
      fromJson(Map<String, dynamic> json) => _i13.serializers.deserializeWith(
          GCartFragmentData_items_modifiers_product_products_sizes_images
              .serializer,
          json);
}

abstract class GCartFragmentData_items_modifiers_product_products_sizes_modifiers
    implements
        Built<
            GCartFragmentData_items_modifiers_product_products_sizes_modifiers,
            GCartFragmentData_items_modifiers_product_products_sizes_modifiersBuilder>,
        GCartFragment_items_modifiers_product_products_sizes_modifiers,
        _i4.GCartItemFragment_modifiers_product_products_sizes_modifiers,
        _i9.GCartItemModifierFragment_product_products_sizes_modifiers,
        _i5.GProductFragment_products_sizes_modifiers,
        _i6.GProductsSizesFragment_modifiers,
        _i7.GModificatorFragment {
  GCartFragmentData_items_modifiers_product_products_sizes_modifiers._();

  factory GCartFragmentData_items_modifiers_product_products_sizes_modifiers(
          [Function(
                  GCartFragmentData_items_modifiers_product_products_sizes_modifiersBuilder
                      b)
              updates]) =
      _$GCartFragmentData_items_modifiers_product_products_sizes_modifiers;

  static void _initializeBuilder(
          GCartFragmentData_items_modifiers_product_products_sizes_modifiersBuilder
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
          GCartFragmentData_items_modifiers_product_products_sizes_modifiers>
      get serializer =>
          _$gCartFragmentDataItemsModifiersProductProductsSizesModifiersSerializer;
  Map<String, dynamic> toJson() => (_i13.serializers.serializeWith(
      GCartFragmentData_items_modifiers_product_products_sizes_modifiers
          .serializer,
      this) as Map<String, dynamic>);
  static GCartFragmentData_items_modifiers_product_products_sizes_modifiers?
      fromJson(Map<String, dynamic> json) => _i13.serializers.deserializeWith(
          GCartFragmentData_items_modifiers_product_products_sizes_modifiers
              .serializer,
          json);
}

abstract class GCartFragmentData_items_modifiers_product_products_sizes_groupModifiers
    implements
        Built<
            GCartFragmentData_items_modifiers_product_products_sizes_groupModifiers,
            GCartFragmentData_items_modifiers_product_products_sizes_groupModifiersBuilder>,
        GCartFragment_items_modifiers_product_products_sizes_groupModifiers,
        _i4.GCartItemFragment_modifiers_product_products_sizes_groupModifiers,
        _i9.GCartItemModifierFragment_product_products_sizes_groupModifiers,
        _i5.GProductFragment_products_sizes_groupModifiers,
        _i6.GProductsSizesFragment_groupModifiers,
        _i8.GGroupModificatorFragment {
  GCartFragmentData_items_modifiers_product_products_sizes_groupModifiers._();

  factory GCartFragmentData_items_modifiers_product_products_sizes_groupModifiers(
          [Function(
                  GCartFragmentData_items_modifiers_product_products_sizes_groupModifiersBuilder
                      b)
              updates]) =
      _$GCartFragmentData_items_modifiers_product_products_sizes_groupModifiers;

  static void _initializeBuilder(
          GCartFragmentData_items_modifiers_product_products_sizes_groupModifiersBuilder
              b) =>
      b..G__typename = 'GroupModificator';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get maxAmount;
  int? get minAmount;
  String get modifierId;
  bool? get required;
  BuiltList<
          GCartFragmentData_items_modifiers_product_products_sizes_groupModifiers_childModifiers>?
      get childModifiers;
  bool? get childModifiersHaveMinMaxRestrictions;
  static Serializer<
          GCartFragmentData_items_modifiers_product_products_sizes_groupModifiers>
      get serializer =>
          _$gCartFragmentDataItemsModifiersProductProductsSizesGroupModifiersSerializer;
  Map<String, dynamic> toJson() => (_i13.serializers.serializeWith(
      GCartFragmentData_items_modifiers_product_products_sizes_groupModifiers
          .serializer,
      this) as Map<String, dynamic>);
  static GCartFragmentData_items_modifiers_product_products_sizes_groupModifiers?
      fromJson(Map<String, dynamic> json) => _i13.serializers.deserializeWith(
          GCartFragmentData_items_modifiers_product_products_sizes_groupModifiers
              .serializer,
          json);
}

abstract class GCartFragmentData_items_modifiers_product_products_sizes_groupModifiers_childModifiers
    implements
        Built<
            GCartFragmentData_items_modifiers_product_products_sizes_groupModifiers_childModifiers,
            GCartFragmentData_items_modifiers_product_products_sizes_groupModifiers_childModifiersBuilder>,
        GCartFragment_items_modifiers_product_products_sizes_groupModifiers_childModifiers,
        _i4.GCartItemFragment_modifiers_product_products_sizes_groupModifiers_childModifiers,
        _i9.GCartItemModifierFragment_product_products_sizes_groupModifiers_childModifiers,
        _i5.GProductFragment_products_sizes_groupModifiers_childModifiers,
        _i6.GProductsSizesFragment_groupModifiers_childModifiers,
        _i8.GGroupModificatorFragment_childModifiers,
        _i7.GModificatorFragment {
  GCartFragmentData_items_modifiers_product_products_sizes_groupModifiers_childModifiers._();

  factory GCartFragmentData_items_modifiers_product_products_sizes_groupModifiers_childModifiers(
          [Function(
                  GCartFragmentData_items_modifiers_product_products_sizes_groupModifiers_childModifiersBuilder
                      b)
              updates]) =
      _$GCartFragmentData_items_modifiers_product_products_sizes_groupModifiers_childModifiers;

  static void _initializeBuilder(
          GCartFragmentData_items_modifiers_product_products_sizes_groupModifiers_childModifiersBuilder
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
          GCartFragmentData_items_modifiers_product_products_sizes_groupModifiers_childModifiers>
      get serializer =>
          _$gCartFragmentDataItemsModifiersProductProductsSizesGroupModifiersChildModifiersSerializer;
  Map<String, dynamic> toJson() => (_i13.serializers.serializeWith(
      GCartFragmentData_items_modifiers_product_products_sizes_groupModifiers_childModifiers
          .serializer,
      this) as Map<String, dynamic>);
  static GCartFragmentData_items_modifiers_product_products_sizes_groupModifiers_childModifiers?
      fromJson(Map<String, dynamic> json) => _i13.serializers.deserializeWith(
          GCartFragmentData_items_modifiers_product_products_sizes_groupModifiers_childModifiers
              .serializer,
          json);
}

abstract class GCartFragmentData_items_modifiers_product_images
    implements
        Built<GCartFragmentData_items_modifiers_product_images,
            GCartFragmentData_items_modifiers_product_imagesBuilder>,
        GCartFragment_items_modifiers_product_images,
        _i4.GCartItemFragment_modifiers_product_images,
        _i9.GCartItemModifierFragment_product_images,
        _i5.GProductFragment_images {
  GCartFragmentData_items_modifiers_product_images._();

  factory GCartFragmentData_items_modifiers_product_images(
      [Function(GCartFragmentData_items_modifiers_product_imagesBuilder b)
          updates]) = _$GCartFragmentData_items_modifiers_product_images;

  static void _initializeBuilder(
          GCartFragmentData_items_modifiers_product_imagesBuilder b) =>
      b..G__typename = 'ProductImage';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get imageId;
  String? get imageUrl;
  static Serializer<GCartFragmentData_items_modifiers_product_images>
      get serializer =>
          _$gCartFragmentDataItemsModifiersProductImagesSerializer;
  Map<String, dynamic> toJson() => (_i13.serializers.serializeWith(
          GCartFragmentData_items_modifiers_product_images.serializer, this)
      as Map<String, dynamic>);
  static GCartFragmentData_items_modifiers_product_images? fromJson(
          Map<String, dynamic> json) =>
      _i13.serializers.deserializeWith(
          GCartFragmentData_items_modifiers_product_images.serializer, json);
}

abstract class GCartFragmentData_items_modifiers_product_modifiers
    implements
        Built<GCartFragmentData_items_modifiers_product_modifiers,
            GCartFragmentData_items_modifiers_product_modifiersBuilder>,
        GCartFragment_items_modifiers_product_modifiers,
        _i4.GCartItemFragment_modifiers_product_modifiers,
        _i9.GCartItemModifierFragment_product_modifiers,
        _i5.GProductFragment_modifiers,
        _i7.GModificatorFragment {
  GCartFragmentData_items_modifiers_product_modifiers._();

  factory GCartFragmentData_items_modifiers_product_modifiers(
      [Function(GCartFragmentData_items_modifiers_product_modifiersBuilder b)
          updates]) = _$GCartFragmentData_items_modifiers_product_modifiers;

  static void _initializeBuilder(
          GCartFragmentData_items_modifiers_product_modifiersBuilder b) =>
      b..G__typename = 'Modificator';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get maxAmount;
  int? get minAmount;
  String get modifierId;
  bool? get required;
  int? get defaultAmount;
  bool? get hideIfDefaultAmount;
  static Serializer<GCartFragmentData_items_modifiers_product_modifiers>
      get serializer =>
          _$gCartFragmentDataItemsModifiersProductModifiersSerializer;
  Map<String, dynamic> toJson() => (_i13.serializers.serializeWith(
          GCartFragmentData_items_modifiers_product_modifiers.serializer, this)
      as Map<String, dynamic>);
  static GCartFragmentData_items_modifiers_product_modifiers? fromJson(
          Map<String, dynamic> json) =>
      _i13.serializers.deserializeWith(
          GCartFragmentData_items_modifiers_product_modifiers.serializer, json);
}

abstract class GCartFragmentData_items_modifiers_product_groupModifiers
    implements
        Built<GCartFragmentData_items_modifiers_product_groupModifiers,
            GCartFragmentData_items_modifiers_product_groupModifiersBuilder>,
        GCartFragment_items_modifiers_product_groupModifiers,
        _i4.GCartItemFragment_modifiers_product_groupModifiers,
        _i9.GCartItemModifierFragment_product_groupModifiers,
        _i5.GProductFragment_groupModifiers,
        _i8.GGroupModificatorFragment {
  GCartFragmentData_items_modifiers_product_groupModifiers._();

  factory GCartFragmentData_items_modifiers_product_groupModifiers(
      [Function(
              GCartFragmentData_items_modifiers_product_groupModifiersBuilder b)
          updates]) = _$GCartFragmentData_items_modifiers_product_groupModifiers;

  static void _initializeBuilder(
          GCartFragmentData_items_modifiers_product_groupModifiersBuilder b) =>
      b..G__typename = 'GroupModificator';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int? get maxAmount;
  int? get minAmount;
  String get modifierId;
  bool? get required;
  BuiltList<
          GCartFragmentData_items_modifiers_product_groupModifiers_childModifiers>?
      get childModifiers;
  bool? get childModifiersHaveMinMaxRestrictions;
  static Serializer<GCartFragmentData_items_modifiers_product_groupModifiers>
      get serializer =>
          _$gCartFragmentDataItemsModifiersProductGroupModifiersSerializer;
  Map<String, dynamic> toJson() => (_i13.serializers.serializeWith(
      GCartFragmentData_items_modifiers_product_groupModifiers.serializer,
      this) as Map<String, dynamic>);
  static GCartFragmentData_items_modifiers_product_groupModifiers? fromJson(
          Map<String, dynamic> json) =>
      _i13.serializers.deserializeWith(
          GCartFragmentData_items_modifiers_product_groupModifiers.serializer,
          json);
}

abstract class GCartFragmentData_items_modifiers_product_groupModifiers_childModifiers
    implements
        Built<
            GCartFragmentData_items_modifiers_product_groupModifiers_childModifiers,
            GCartFragmentData_items_modifiers_product_groupModifiers_childModifiersBuilder>,
        GCartFragment_items_modifiers_product_groupModifiers_childModifiers,
        _i4.GCartItemFragment_modifiers_product_groupModifiers_childModifiers,
        _i9.GCartItemModifierFragment_product_groupModifiers_childModifiers,
        _i5.GProductFragment_groupModifiers_childModifiers,
        _i8.GGroupModificatorFragment_childModifiers,
        _i7.GModificatorFragment {
  GCartFragmentData_items_modifiers_product_groupModifiers_childModifiers._();

  factory GCartFragmentData_items_modifiers_product_groupModifiers_childModifiers(
          [Function(
                  GCartFragmentData_items_modifiers_product_groupModifiers_childModifiersBuilder
                      b)
              updates]) =
      _$GCartFragmentData_items_modifiers_product_groupModifiers_childModifiers;

  static void _initializeBuilder(
          GCartFragmentData_items_modifiers_product_groupModifiers_childModifiersBuilder
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
          GCartFragmentData_items_modifiers_product_groupModifiers_childModifiers>
      get serializer =>
          _$gCartFragmentDataItemsModifiersProductGroupModifiersChildModifiersSerializer;
  Map<String, dynamic> toJson() => (_i13.serializers.serializeWith(
      GCartFragmentData_items_modifiers_product_groupModifiers_childModifiers
          .serializer,
      this) as Map<String, dynamic>);
  static GCartFragmentData_items_modifiers_product_groupModifiers_childModifiers?
      fromJson(Map<String, dynamic> json) => _i13.serializers.deserializeWith(
          GCartFragmentData_items_modifiers_product_groupModifiers_childModifiers
              .serializer,
          json);
}

abstract class GCartFragmentData_order_info
    implements
        Built<GCartFragmentData_order_info,
            GCartFragmentData_order_infoBuilder>,
        GCartFragment_order_info,
        _i10.GOrderInfoFragment {
  GCartFragmentData_order_info._();

  factory GCartFragmentData_order_info(
          [Function(GCartFragmentData_order_infoBuilder b) updates]) =
      _$GCartFragmentData_order_info;

  static void _initializeBuilder(GCartFragmentData_order_infoBuilder b) =>
      b..G__typename = 'OrderInfo';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get order_id;
  String? get delivery_cancel_cause;
  String? get delivery_cancel_comment;
  _i1.GDateTime? get delivery_date;
  _i1.GDateTime? get actual_time;
  String? get bill_time;
  String? get cancel_time;
  String? get confirm_time;
  _i1.GDateTime? get created_time;
  _i1.GDateTime? get print_time;
  _i1.GDateTime? get send_time;
  int? get persons_count;
  static Serializer<GCartFragmentData_order_info> get serializer =>
      _$gCartFragmentDataOrderInfoSerializer;
  Map<String, dynamic> toJson() => (_i13.serializers.serializeWith(
      GCartFragmentData_order_info.serializer, this) as Map<String, dynamic>);
  static GCartFragmentData_order_info? fromJson(Map<String, dynamic> json) =>
      _i13.serializers
          .deserializeWith(GCartFragmentData_order_info.serializer, json);
}

abstract class GCartFragmentData_restaurant
    implements
        Built<GCartFragmentData_restaurant,
            GCartFragmentData_restaurantBuilder>,
        GCartFragment_restaurant,
        _i11.GRestaurantFragment {
  GCartFragmentData_restaurant._();

  factory GCartFragmentData_restaurant(
          [Function(GCartFragmentData_restaurantBuilder b) updates]) =
      _$GCartFragmentData_restaurant;

  static void _initializeBuilder(GCartFragmentData_restaurantBuilder b) =>
      b..G__typename = 'Restaurant';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  String? get address;
  GCartFragmentData_restaurant_terminal_kitchen? get terminal_kitchen;
  GCartFragmentData_restaurant_terminal_delivery? get terminal_delivery;
  String? get latitude;
  String? get longitude;
  String? get open_at;
  String? get close_at;
  bool? get is_open;
  String? get delivery_open_at;
  String? get delivery_close_at;
  bool? get is_delivery_open;
  GCartFragmentData_restaurant_city? get city;
  static Serializer<GCartFragmentData_restaurant> get serializer =>
      _$gCartFragmentDataRestaurantSerializer;
  Map<String, dynamic> toJson() => (_i13.serializers.serializeWith(
      GCartFragmentData_restaurant.serializer, this) as Map<String, dynamic>);
  static GCartFragmentData_restaurant? fromJson(Map<String, dynamic> json) =>
      _i13.serializers
          .deserializeWith(GCartFragmentData_restaurant.serializer, json);
}

abstract class GCartFragmentData_restaurant_terminal_kitchen
    implements
        Built<GCartFragmentData_restaurant_terminal_kitchen,
            GCartFragmentData_restaurant_terminal_kitchenBuilder>,
        GCartFragment_restaurant_terminal_kitchen,
        _i11.GRestaurantFragment_terminal_kitchen,
        _i12.GTerminalFragment {
  GCartFragmentData_restaurant_terminal_kitchen._();

  factory GCartFragmentData_restaurant_terminal_kitchen(
      [Function(GCartFragmentData_restaurant_terminal_kitchenBuilder b)
          updates]) = _$GCartFragmentData_restaurant_terminal_kitchen;

  static void _initializeBuilder(
          GCartFragmentData_restaurant_terminal_kitchenBuilder b) =>
      b..G__typename = 'Terminal';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  static Serializer<GCartFragmentData_restaurant_terminal_kitchen>
      get serializer => _$gCartFragmentDataRestaurantTerminalKitchenSerializer;
  Map<String, dynamic> toJson() => (_i13.serializers.serializeWith(
          GCartFragmentData_restaurant_terminal_kitchen.serializer, this)
      as Map<String, dynamic>);
  static GCartFragmentData_restaurant_terminal_kitchen? fromJson(
          Map<String, dynamic> json) =>
      _i13.serializers.deserializeWith(
          GCartFragmentData_restaurant_terminal_kitchen.serializer, json);
}

abstract class GCartFragmentData_restaurant_terminal_delivery
    implements
        Built<GCartFragmentData_restaurant_terminal_delivery,
            GCartFragmentData_restaurant_terminal_deliveryBuilder>,
        GCartFragment_restaurant_terminal_delivery,
        _i11.GRestaurantFragment_terminal_delivery,
        _i12.GTerminalFragment {
  GCartFragmentData_restaurant_terminal_delivery._();

  factory GCartFragmentData_restaurant_terminal_delivery(
      [Function(GCartFragmentData_restaurant_terminal_deliveryBuilder b)
          updates]) = _$GCartFragmentData_restaurant_terminal_delivery;

  static void _initializeBuilder(
          GCartFragmentData_restaurant_terminal_deliveryBuilder b) =>
      b..G__typename = 'Terminal';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  static Serializer<GCartFragmentData_restaurant_terminal_delivery>
      get serializer => _$gCartFragmentDataRestaurantTerminalDeliverySerializer;
  Map<String, dynamic> toJson() => (_i13.serializers.serializeWith(
          GCartFragmentData_restaurant_terminal_delivery.serializer, this)
      as Map<String, dynamic>);
  static GCartFragmentData_restaurant_terminal_delivery? fromJson(
          Map<String, dynamic> json) =>
      _i13.serializers.deserializeWith(
          GCartFragmentData_restaurant_terminal_delivery.serializer, json);
}

abstract class GCartFragmentData_restaurant_city
    implements
        Built<GCartFragmentData_restaurant_city,
            GCartFragmentData_restaurant_cityBuilder>,
        GCartFragment_restaurant_city,
        _i11.GRestaurantFragment_city,
        _i3.GCityFragment {
  GCartFragmentData_restaurant_city._();

  factory GCartFragmentData_restaurant_city(
          [Function(GCartFragmentData_restaurant_cityBuilder b) updates]) =
      _$GCartFragmentData_restaurant_city;

  static void _initializeBuilder(GCartFragmentData_restaurant_cityBuilder b) =>
      b..G__typename = 'City';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  String? get prefix;
  String? get postal_code;
  String? get city_type;
  bool? get available;
  static Serializer<GCartFragmentData_restaurant_city> get serializer =>
      _$gCartFragmentDataRestaurantCitySerializer;
  Map<String, dynamic> toJson() => (_i13.serializers
          .serializeWith(GCartFragmentData_restaurant_city.serializer, this)
      as Map<String, dynamic>);
  static GCartFragmentData_restaurant_city? fromJson(
          Map<String, dynamic> json) =>
      _i13.serializers
          .deserializeWith(GCartFragmentData_restaurant_city.serializer, json);
}
