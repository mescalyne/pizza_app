import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart' show StandardJsonPlugin;
import 'package:gql_code_builder/src/serializers/operation_serializer.dart'
    show OperationSerializer;
import 'package:toto_mobile/src/core/data/network/models/add_item_to_cart.data.gql.dart'
    show
        GAddItemToCartData,
        GAddItemToCartData_addItemToCart,
        GAddItemToCartData_addItemToCart_delivery_address,
        GAddItemToCartData_addItemToCart_delivery_address_city,
        GAddItemToCartData_addItemToCart_items,
        GAddItemToCartData_addItemToCart_items_modifiers,
        GAddItemToCartData_addItemToCart_items_modifiers_product,
        GAddItemToCartData_addItemToCart_items_modifiers_product_category,
        GAddItemToCartData_addItemToCart_items_modifiers_product_group,
        GAddItemToCartData_addItemToCart_items_modifiers_product_groupModifiers,
        GAddItemToCartData_addItemToCart_items_modifiers_product_groupModifiers_childModifiers,
        GAddItemToCartData_addItemToCart_items_modifiers_product_images,
        GAddItemToCartData_addItemToCart_items_modifiers_product_modifiers,
        GAddItemToCartData_addItemToCart_items_modifiers_product_parentGroup,
        GAddItemToCartData_addItemToCart_items_modifiers_product_products_sizes,
        GAddItemToCartData_addItemToCart_items_modifiers_product_products_sizes_groupModifiers,
        GAddItemToCartData_addItemToCart_items_modifiers_product_products_sizes_groupModifiers_childModifiers,
        GAddItemToCartData_addItemToCart_items_modifiers_product_products_sizes_images,
        GAddItemToCartData_addItemToCart_items_modifiers_product_products_sizes_modifiers,
        GAddItemToCartData_addItemToCart_items_modifiers_product_products_sizes_parentGroup,
        GAddItemToCartData_addItemToCart_items_product,
        GAddItemToCartData_addItemToCart_items_product_category,
        GAddItemToCartData_addItemToCart_items_product_group,
        GAddItemToCartData_addItemToCart_items_product_groupModifiers,
        GAddItemToCartData_addItemToCart_items_product_groupModifiers_childModifiers,
        GAddItemToCartData_addItemToCart_items_product_images,
        GAddItemToCartData_addItemToCart_items_product_modifiers,
        GAddItemToCartData_addItemToCart_items_product_parentGroup,
        GAddItemToCartData_addItemToCart_items_product_products_sizes,
        GAddItemToCartData_addItemToCart_items_product_products_sizes_groupModifiers,
        GAddItemToCartData_addItemToCart_items_product_products_sizes_groupModifiers_childModifiers,
        GAddItemToCartData_addItemToCart_items_product_products_sizes_images,
        GAddItemToCartData_addItemToCart_items_product_products_sizes_modifiers,
        GAddItemToCartData_addItemToCart_items_product_products_sizes_parentGroup,
        GAddItemToCartData_addItemToCart_order_info,
        GAddItemToCartData_addItemToCart_restaurant,
        GAddItemToCartData_addItemToCart_restaurant_city,
        GAddItemToCartData_addItemToCart_restaurant_terminal_delivery,
        GAddItemToCartData_addItemToCart_restaurant_terminal_kitchen;
import 'package:toto_mobile/src/core/data/network/models/add_item_to_cart.req.gql.dart'
    show GAddItemToCartReq;
import 'package:toto_mobile/src/core/data/network/models/add_item_to_cart.var.gql.dart'
    show GAddItemToCartVars;
import 'package:toto_mobile/src/core/data/network/models/add_items_to_cart.data.gql.dart'
    show
        GAddItemsToCartData,
        GAddItemsToCartData_addItemsToCart,
        GAddItemsToCartData_addItemsToCart_delivery_address,
        GAddItemsToCartData_addItemsToCart_delivery_address_city,
        GAddItemsToCartData_addItemsToCart_items,
        GAddItemsToCartData_addItemsToCart_items_modifiers,
        GAddItemsToCartData_addItemsToCart_items_modifiers_product,
        GAddItemsToCartData_addItemsToCart_items_modifiers_product_category,
        GAddItemsToCartData_addItemsToCart_items_modifiers_product_group,
        GAddItemsToCartData_addItemsToCart_items_modifiers_product_groupModifiers,
        GAddItemsToCartData_addItemsToCart_items_modifiers_product_groupModifiers_childModifiers,
        GAddItemsToCartData_addItemsToCart_items_modifiers_product_images,
        GAddItemsToCartData_addItemsToCart_items_modifiers_product_modifiers,
        GAddItemsToCartData_addItemsToCart_items_modifiers_product_parentGroup,
        GAddItemsToCartData_addItemsToCart_items_modifiers_product_products_sizes,
        GAddItemsToCartData_addItemsToCart_items_modifiers_product_products_sizes_groupModifiers,
        GAddItemsToCartData_addItemsToCart_items_modifiers_product_products_sizes_groupModifiers_childModifiers,
        GAddItemsToCartData_addItemsToCart_items_modifiers_product_products_sizes_images,
        GAddItemsToCartData_addItemsToCart_items_modifiers_product_products_sizes_modifiers,
        GAddItemsToCartData_addItemsToCart_items_modifiers_product_products_sizes_parentGroup,
        GAddItemsToCartData_addItemsToCart_items_product,
        GAddItemsToCartData_addItemsToCart_items_product_category,
        GAddItemsToCartData_addItemsToCart_items_product_group,
        GAddItemsToCartData_addItemsToCart_items_product_groupModifiers,
        GAddItemsToCartData_addItemsToCart_items_product_groupModifiers_childModifiers,
        GAddItemsToCartData_addItemsToCart_items_product_images,
        GAddItemsToCartData_addItemsToCart_items_product_modifiers,
        GAddItemsToCartData_addItemsToCart_items_product_parentGroup,
        GAddItemsToCartData_addItemsToCart_items_product_products_sizes,
        GAddItemsToCartData_addItemsToCart_items_product_products_sizes_groupModifiers,
        GAddItemsToCartData_addItemsToCart_items_product_products_sizes_groupModifiers_childModifiers,
        GAddItemsToCartData_addItemsToCart_items_product_products_sizes_images,
        GAddItemsToCartData_addItemsToCart_items_product_products_sizes_modifiers,
        GAddItemsToCartData_addItemsToCart_items_product_products_sizes_parentGroup,
        GAddItemsToCartData_addItemsToCart_order_info,
        GAddItemsToCartData_addItemsToCart_restaurant,
        GAddItemsToCartData_addItemsToCart_restaurant_city,
        GAddItemsToCartData_addItemsToCart_restaurant_terminal_delivery,
        GAddItemsToCartData_addItemsToCart_restaurant_terminal_kitchen;
import 'package:toto_mobile/src/core/data/network/models/add_items_to_cart.req.gql.dart'
    show GAddItemsToCartReq;
import 'package:toto_mobile/src/core/data/network/models/add_items_to_cart.var.gql.dart'
    show GAddItemsToCartVars;
import 'package:toto_mobile/src/core/data/network/models/auth_guest.data.gql.dart'
    show
        GauthGuestData,
        GauthGuestData_authGuest,
        GauthGuestData_authGuest_user;
import 'package:toto_mobile/src/core/data/network/models/auth_guest.req.gql.dart'
    show GauthGuestReq;
import 'package:toto_mobile/src/core/data/network/models/auth_guest.var.gql.dart'
    show GauthGuestVars;
import 'package:toto_mobile/src/core/data/network/models/cart_fragment.data.gql.dart'
    show
        GCartFragmentData,
        GCartFragmentData_delivery_address,
        GCartFragmentData_delivery_address_city,
        GCartFragmentData_items,
        GCartFragmentData_items_modifiers,
        GCartFragmentData_items_modifiers_product,
        GCartFragmentData_items_modifiers_product_category,
        GCartFragmentData_items_modifiers_product_group,
        GCartFragmentData_items_modifiers_product_groupModifiers,
        GCartFragmentData_items_modifiers_product_groupModifiers_childModifiers,
        GCartFragmentData_items_modifiers_product_images,
        GCartFragmentData_items_modifiers_product_modifiers,
        GCartFragmentData_items_modifiers_product_parentGroup,
        GCartFragmentData_items_modifiers_product_products_sizes,
        GCartFragmentData_items_modifiers_product_products_sizes_groupModifiers,
        GCartFragmentData_items_modifiers_product_products_sizes_groupModifiers_childModifiers,
        GCartFragmentData_items_modifiers_product_products_sizes_images,
        GCartFragmentData_items_modifiers_product_products_sizes_modifiers,
        GCartFragmentData_items_modifiers_product_products_sizes_parentGroup,
        GCartFragmentData_items_product,
        GCartFragmentData_items_product_category,
        GCartFragmentData_items_product_group,
        GCartFragmentData_items_product_groupModifiers,
        GCartFragmentData_items_product_groupModifiers_childModifiers,
        GCartFragmentData_items_product_images,
        GCartFragmentData_items_product_modifiers,
        GCartFragmentData_items_product_parentGroup,
        GCartFragmentData_items_product_products_sizes,
        GCartFragmentData_items_product_products_sizes_groupModifiers,
        GCartFragmentData_items_product_products_sizes_groupModifiers_childModifiers,
        GCartFragmentData_items_product_products_sizes_images,
        GCartFragmentData_items_product_products_sizes_modifiers,
        GCartFragmentData_items_product_products_sizes_parentGroup,
        GCartFragmentData_order_info,
        GCartFragmentData_restaurant,
        GCartFragmentData_restaurant_city,
        GCartFragmentData_restaurant_terminal_delivery,
        GCartFragmentData_restaurant_terminal_kitchen;
import 'package:toto_mobile/src/core/data/network/models/cart_fragment.req.gql.dart'
    show GCartFragmentReq;
import 'package:toto_mobile/src/core/data/network/models/cart_fragment.var.gql.dart'
    show GCartFragmentVars;
import 'package:toto_mobile/src/core/data/network/models/cartItem_fragment.data.gql.dart'
    show
        GCartItemFragmentData,
        GCartItemFragmentData_modifiers,
        GCartItemFragmentData_modifiers_product,
        GCartItemFragmentData_modifiers_product_category,
        GCartItemFragmentData_modifiers_product_group,
        GCartItemFragmentData_modifiers_product_groupModifiers,
        GCartItemFragmentData_modifiers_product_groupModifiers_childModifiers,
        GCartItemFragmentData_modifiers_product_images,
        GCartItemFragmentData_modifiers_product_modifiers,
        GCartItemFragmentData_modifiers_product_parentGroup,
        GCartItemFragmentData_modifiers_product_products_sizes,
        GCartItemFragmentData_modifiers_product_products_sizes_groupModifiers,
        GCartItemFragmentData_modifiers_product_products_sizes_groupModifiers_childModifiers,
        GCartItemFragmentData_modifiers_product_products_sizes_images,
        GCartItemFragmentData_modifiers_product_products_sizes_modifiers,
        GCartItemFragmentData_modifiers_product_products_sizes_parentGroup,
        GCartItemFragmentData_product,
        GCartItemFragmentData_product_category,
        GCartItemFragmentData_product_group,
        GCartItemFragmentData_product_groupModifiers,
        GCartItemFragmentData_product_groupModifiers_childModifiers,
        GCartItemFragmentData_product_images,
        GCartItemFragmentData_product_modifiers,
        GCartItemFragmentData_product_parentGroup,
        GCartItemFragmentData_product_products_sizes,
        GCartItemFragmentData_product_products_sizes_groupModifiers,
        GCartItemFragmentData_product_products_sizes_groupModifiers_childModifiers,
        GCartItemFragmentData_product_products_sizes_images,
        GCartItemFragmentData_product_products_sizes_modifiers,
        GCartItemFragmentData_product_products_sizes_parentGroup;
import 'package:toto_mobile/src/core/data/network/models/cartItem_fragment.req.gql.dart'
    show GCartItemFragmentReq;
import 'package:toto_mobile/src/core/data/network/models/cartItem_fragment.var.gql.dart'
    show GCartItemFragmentVars;
import 'package:toto_mobile/src/core/data/network/models/cartItem_modifier_fragment.data.gql.dart'
    show
        GCartItemModifierFragmentData,
        GCartItemModifierFragmentData_product,
        GCartItemModifierFragmentData_product_category,
        GCartItemModifierFragmentData_product_group,
        GCartItemModifierFragmentData_product_groupModifiers,
        GCartItemModifierFragmentData_product_groupModifiers_childModifiers,
        GCartItemModifierFragmentData_product_images,
        GCartItemModifierFragmentData_product_modifiers,
        GCartItemModifierFragmentData_product_parentGroup,
        GCartItemModifierFragmentData_product_products_sizes,
        GCartItemModifierFragmentData_product_products_sizes_groupModifiers,
        GCartItemModifierFragmentData_product_products_sizes_groupModifiers_childModifiers,
        GCartItemModifierFragmentData_product_products_sizes_images,
        GCartItemModifierFragmentData_product_products_sizes_modifiers,
        GCartItemModifierFragmentData_product_products_sizes_parentGroup;
import 'package:toto_mobile/src/core/data/network/models/cartItem_modifier_fragment.req.gql.dart'
    show GCartItemModifierFragmentReq;
import 'package:toto_mobile/src/core/data/network/models/cartItem_modifier_fragment.var.gql.dart'
    show GCartItemModifierFragmentVars;
import 'package:toto_mobile/src/core/data/network/models/carts_paginator.data.gql.dart'
    show
        GCartsPaginatorFragmentData,
        GCartsPaginatorFragmentData_data,
        GCartsPaginatorFragmentData_data_delivery_address,
        GCartsPaginatorFragmentData_data_delivery_address_city,
        GCartsPaginatorFragmentData_data_items,
        GCartsPaginatorFragmentData_data_items_modifiers,
        GCartsPaginatorFragmentData_data_items_modifiers_product,
        GCartsPaginatorFragmentData_data_items_modifiers_product_category,
        GCartsPaginatorFragmentData_data_items_modifiers_product_group,
        GCartsPaginatorFragmentData_data_items_modifiers_product_groupModifiers,
        GCartsPaginatorFragmentData_data_items_modifiers_product_groupModifiers_childModifiers,
        GCartsPaginatorFragmentData_data_items_modifiers_product_images,
        GCartsPaginatorFragmentData_data_items_modifiers_product_modifiers,
        GCartsPaginatorFragmentData_data_items_modifiers_product_parentGroup,
        GCartsPaginatorFragmentData_data_items_modifiers_product_products_sizes,
        GCartsPaginatorFragmentData_data_items_modifiers_product_products_sizes_groupModifiers,
        GCartsPaginatorFragmentData_data_items_modifiers_product_products_sizes_groupModifiers_childModifiers,
        GCartsPaginatorFragmentData_data_items_modifiers_product_products_sizes_images,
        GCartsPaginatorFragmentData_data_items_modifiers_product_products_sizes_modifiers,
        GCartsPaginatorFragmentData_data_items_modifiers_product_products_sizes_parentGroup,
        GCartsPaginatorFragmentData_data_items_product,
        GCartsPaginatorFragmentData_data_items_product_category,
        GCartsPaginatorFragmentData_data_items_product_group,
        GCartsPaginatorFragmentData_data_items_product_groupModifiers,
        GCartsPaginatorFragmentData_data_items_product_groupModifiers_childModifiers,
        GCartsPaginatorFragmentData_data_items_product_images,
        GCartsPaginatorFragmentData_data_items_product_modifiers,
        GCartsPaginatorFragmentData_data_items_product_parentGroup,
        GCartsPaginatorFragmentData_data_items_product_products_sizes,
        GCartsPaginatorFragmentData_data_items_product_products_sizes_groupModifiers,
        GCartsPaginatorFragmentData_data_items_product_products_sizes_groupModifiers_childModifiers,
        GCartsPaginatorFragmentData_data_items_product_products_sizes_images,
        GCartsPaginatorFragmentData_data_items_product_products_sizes_modifiers,
        GCartsPaginatorFragmentData_data_items_product_products_sizes_parentGroup,
        GCartsPaginatorFragmentData_data_order_info,
        GCartsPaginatorFragmentData_data_restaurant,
        GCartsPaginatorFragmentData_data_restaurant_city,
        GCartsPaginatorFragmentData_data_restaurant_terminal_delivery,
        GCartsPaginatorFragmentData_data_restaurant_terminal_kitchen,
        GCartsPaginatorFragmentData_paginatorInfo;
import 'package:toto_mobile/src/core/data/network/models/carts_paginator.req.gql.dart'
    show GCartsPaginatorFragmentReq;
import 'package:toto_mobile/src/core/data/network/models/carts_paginator.var.gql.dart'
    show GCartsPaginatorFragmentVars;
import 'package:toto_mobile/src/core/data/network/models/check_create_order.data.gql.dart'
    show GCheckCreateOrderData, GCheckCreateOrderData_checkCreateOrder;
import 'package:toto_mobile/src/core/data/network/models/check_create_order.req.gql.dart'
    show GCheckCreateOrderReq;
import 'package:toto_mobile/src/core/data/network/models/check_create_order.var.gql.dart'
    show GCheckCreateOrderVars;
import 'package:toto_mobile/src/core/data/network/models/check_create_order_response.data.gql.dart'
    show GCheckCreateOrderResponseFragmentData;
import 'package:toto_mobile/src/core/data/network/models/check_create_order_response.req.gql.dart'
    show GCheckCreateOrderResponseFragmentReq;
import 'package:toto_mobile/src/core/data/network/models/check_create_order_response.var.gql.dart'
    show GCheckCreateOrderResponseFragmentVars;
import 'package:toto_mobile/src/core/data/network/models/checkout_cart.data.gql.dart'
    show GCheckoutCartData, GCheckoutCartData_checkoutCart;
import 'package:toto_mobile/src/core/data/network/models/checkout_cart.req.gql.dart'
    show GCheckoutCartReq;
import 'package:toto_mobile/src/core/data/network/models/checkout_cart.var.gql.dart'
    show GCheckoutCartVars;
import 'package:toto_mobile/src/core/data/network/models/checkout_cart_fragment.data.gql.dart'
    show GCheckoutResponseFragmentData;
import 'package:toto_mobile/src/core/data/network/models/checkout_cart_fragment.req.gql.dart'
    show GCheckoutResponseFragmentReq;
import 'package:toto_mobile/src/core/data/network/models/checkout_cart_fragment.var.gql.dart'
    show GCheckoutResponseFragmentVars;
import 'package:toto_mobile/src/core/data/network/models/city_fragment.data.gql.dart'
    show GCityFragmentData;
import 'package:toto_mobile/src/core/data/network/models/city_fragment.req.gql.dart'
    show GCityFragmentReq;
import 'package:toto_mobile/src/core/data/network/models/city_fragment.var.gql.dart'
    show GCityFragmentVars;
import 'package:toto_mobile/src/core/data/network/models/contact_page_fragment.data.gql.dart'
    show
        GContactPageFragmentData,
        GContactPageFragmentData_city,
        GContactPageFragmentData_contents,
        GContactPageFragmentData_contents_data,
        GContactPageFragmentData_contents_data_social_networks;
import 'package:toto_mobile/src/core/data/network/models/contact_page_fragment.req.gql.dart'
    show GContactPageFragmentReq;
import 'package:toto_mobile/src/core/data/network/models/contact_page_fragment.var.gql.dart'
    show GContactPageFragmentVars;
import 'package:toto_mobile/src/core/data/network/models/create_delivery_address.data.gql.dart'
    show
        GCreateDeliveryAddressData,
        GCreateDeliveryAddressData_createDeliveryAddress,
        GCreateDeliveryAddressData_createDeliveryAddress_city;
import 'package:toto_mobile/src/core/data/network/models/create_delivery_address.req.gql.dart'
    show GCreateDeliveryAddressReq;
import 'package:toto_mobile/src/core/data/network/models/create_delivery_address.var.gql.dart'
    show GCreateDeliveryAddressVars;
import 'package:toto_mobile/src/core/data/network/models/delete_delivery_address.data.gql.dart'
    show GDeleteDeliveryAddressData;
import 'package:toto_mobile/src/core/data/network/models/delete_delivery_address.req.gql.dart'
    show GDeleteDeliveryAddressReq;
import 'package:toto_mobile/src/core/data/network/models/delete_delivery_address.var.gql.dart'
    show GDeleteDeliveryAddressVars;
import 'package:toto_mobile/src/core/data/network/models/delivery_address_fragment.data.gql.dart'
    show GDeliveryAddressFragmentData, GDeliveryAddressFragmentData_city;
import 'package:toto_mobile/src/core/data/network/models/delivery_address_fragment.req.gql.dart'
    show GDeliveryAddressFragmentReq;
import 'package:toto_mobile/src/core/data/network/models/delivery_address_fragment.var.gql.dart'
    show GDeliveryAddressFragmentVars;
import 'package:toto_mobile/src/core/data/network/models/delivery_area_fragment.data.gql.dart'
    show GDeliveryAreaFragmentData;
import 'package:toto_mobile/src/core/data/network/models/delivery_area_fragment.req.gql.dart'
    show GDeliveryAreaFragmentReq;
import 'package:toto_mobile/src/core/data/network/models/delivery_area_fragment.var.gql.dart'
    show GDeliveryAreaFragmentVars;
import 'package:toto_mobile/src/core/data/network/models/edit_cart.data.gql.dart'
    show
        GEditCartData,
        GEditCartData_editCart,
        GEditCartData_editCart_delivery_address,
        GEditCartData_editCart_delivery_address_city,
        GEditCartData_editCart_items,
        GEditCartData_editCart_items_modifiers,
        GEditCartData_editCart_items_modifiers_product,
        GEditCartData_editCart_items_modifiers_product_category,
        GEditCartData_editCart_items_modifiers_product_group,
        GEditCartData_editCart_items_modifiers_product_groupModifiers,
        GEditCartData_editCart_items_modifiers_product_groupModifiers_childModifiers,
        GEditCartData_editCart_items_modifiers_product_images,
        GEditCartData_editCart_items_modifiers_product_modifiers,
        GEditCartData_editCart_items_modifiers_product_parentGroup,
        GEditCartData_editCart_items_modifiers_product_products_sizes,
        GEditCartData_editCart_items_modifiers_product_products_sizes_groupModifiers,
        GEditCartData_editCart_items_modifiers_product_products_sizes_groupModifiers_childModifiers,
        GEditCartData_editCart_items_modifiers_product_products_sizes_images,
        GEditCartData_editCart_items_modifiers_product_products_sizes_modifiers,
        GEditCartData_editCart_items_modifiers_product_products_sizes_parentGroup,
        GEditCartData_editCart_items_product,
        GEditCartData_editCart_items_product_category,
        GEditCartData_editCart_items_product_group,
        GEditCartData_editCart_items_product_groupModifiers,
        GEditCartData_editCart_items_product_groupModifiers_childModifiers,
        GEditCartData_editCart_items_product_images,
        GEditCartData_editCart_items_product_modifiers,
        GEditCartData_editCart_items_product_parentGroup,
        GEditCartData_editCart_items_product_products_sizes,
        GEditCartData_editCart_items_product_products_sizes_groupModifiers,
        GEditCartData_editCart_items_product_products_sizes_groupModifiers_childModifiers,
        GEditCartData_editCart_items_product_products_sizes_images,
        GEditCartData_editCart_items_product_products_sizes_modifiers,
        GEditCartData_editCart_items_product_products_sizes_parentGroup,
        GEditCartData_editCart_order_info,
        GEditCartData_editCart_restaurant,
        GEditCartData_editCart_restaurant_city,
        GEditCartData_editCart_restaurant_terminal_delivery,
        GEditCartData_editCart_restaurant_terminal_kitchen;
import 'package:toto_mobile/src/core/data/network/models/edit_cart.req.gql.dart'
    show GEditCartReq;
import 'package:toto_mobile/src/core/data/network/models/edit_cart.var.gql.dart'
    show GEditCartVars;
import 'package:toto_mobile/src/core/data/network/models/edit_cart_item.data.gql.dart'
    show
        GEditCartItemData,
        GEditCartItemData_editCartItem,
        GEditCartItemData_editCartItem_delivery_address,
        GEditCartItemData_editCartItem_delivery_address_city,
        GEditCartItemData_editCartItem_items,
        GEditCartItemData_editCartItem_items_modifiers,
        GEditCartItemData_editCartItem_items_modifiers_product,
        GEditCartItemData_editCartItem_items_modifiers_product_category,
        GEditCartItemData_editCartItem_items_modifiers_product_group,
        GEditCartItemData_editCartItem_items_modifiers_product_groupModifiers,
        GEditCartItemData_editCartItem_items_modifiers_product_groupModifiers_childModifiers,
        GEditCartItemData_editCartItem_items_modifiers_product_images,
        GEditCartItemData_editCartItem_items_modifiers_product_modifiers,
        GEditCartItemData_editCartItem_items_modifiers_product_parentGroup,
        GEditCartItemData_editCartItem_items_modifiers_product_products_sizes,
        GEditCartItemData_editCartItem_items_modifiers_product_products_sizes_groupModifiers,
        GEditCartItemData_editCartItem_items_modifiers_product_products_sizes_groupModifiers_childModifiers,
        GEditCartItemData_editCartItem_items_modifiers_product_products_sizes_images,
        GEditCartItemData_editCartItem_items_modifiers_product_products_sizes_modifiers,
        GEditCartItemData_editCartItem_items_modifiers_product_products_sizes_parentGroup,
        GEditCartItemData_editCartItem_items_product,
        GEditCartItemData_editCartItem_items_product_category,
        GEditCartItemData_editCartItem_items_product_group,
        GEditCartItemData_editCartItem_items_product_groupModifiers,
        GEditCartItemData_editCartItem_items_product_groupModifiers_childModifiers,
        GEditCartItemData_editCartItem_items_product_images,
        GEditCartItemData_editCartItem_items_product_modifiers,
        GEditCartItemData_editCartItem_items_product_parentGroup,
        GEditCartItemData_editCartItem_items_product_products_sizes,
        GEditCartItemData_editCartItem_items_product_products_sizes_groupModifiers,
        GEditCartItemData_editCartItem_items_product_products_sizes_groupModifiers_childModifiers,
        GEditCartItemData_editCartItem_items_product_products_sizes_images,
        GEditCartItemData_editCartItem_items_product_products_sizes_modifiers,
        GEditCartItemData_editCartItem_items_product_products_sizes_parentGroup,
        GEditCartItemData_editCartItem_order_info,
        GEditCartItemData_editCartItem_restaurant,
        GEditCartItemData_editCartItem_restaurant_city,
        GEditCartItemData_editCartItem_restaurant_terminal_delivery,
        GEditCartItemData_editCartItem_restaurant_terminal_kitchen;
import 'package:toto_mobile/src/core/data/network/models/edit_cart_item.req.gql.dart'
    show GEditCartItemReq;
import 'package:toto_mobile/src/core/data/network/models/edit_cart_item.var.gql.dart'
    show GEditCartItemVars;
import 'package:toto_mobile/src/core/data/network/models/feedback_options_fragment.data.gql.dart'
    show GFeedbackOptionFragmentData, GFeedbackOptionFragmentData_icon;
import 'package:toto_mobile/src/core/data/network/models/feedback_options_fragment.req.gql.dart'
    show GFeedbackOptionFragmentReq;
import 'package:toto_mobile/src/core/data/network/models/feedback_options_fragment.var.gql.dart'
    show GFeedbackOptionFragmentVars;
import 'package:toto_mobile/src/core/data/network/models/file_fragment.data.gql.dart'
    show GFileFragmentData;
import 'package:toto_mobile/src/core/data/network/models/file_fragment.req.gql.dart'
    show GFileFragmentReq;
import 'package:toto_mobile/src/core/data/network/models/file_fragment.var.gql.dart'
    show GFileFragmentVars;
import 'package:toto_mobile/src/core/data/network/models/get_all_delivery_address.data.gql.dart'
    show
        GGetAllDeliveryAddressesData,
        GGetAllDeliveryAddressesData_getAllDeliveryAddresses,
        GGetAllDeliveryAddressesData_getAllDeliveryAddresses_city;
import 'package:toto_mobile/src/core/data/network/models/get_all_delivery_address.req.gql.dart'
    show GGetAllDeliveryAddressesReq;
import 'package:toto_mobile/src/core/data/network/models/get_all_delivery_address.var.gql.dart'
    show GGetAllDeliveryAddressesVars;
import 'package:toto_mobile/src/core/data/network/models/get_archived_carts.data.gql.dart'
    show
        GGetArchivedCartsQueryData,
        GGetArchivedCartsQueryData_getArchivedCarts,
        GGetArchivedCartsQueryData_getArchivedCarts_data,
        GGetArchivedCartsQueryData_getArchivedCarts_data_delivery_address,
        GGetArchivedCartsQueryData_getArchivedCarts_data_delivery_address_city,
        GGetArchivedCartsQueryData_getArchivedCarts_data_items,
        GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers,
        GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product,
        GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_category,
        GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_group,
        GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_groupModifiers,
        GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_groupModifiers_childModifiers,
        GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_images,
        GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_modifiers,
        GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_parentGroup,
        GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_products_sizes,
        GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_products_sizes_groupModifiers,
        GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_products_sizes_groupModifiers_childModifiers,
        GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_products_sizes_images,
        GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_products_sizes_modifiers,
        GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_products_sizes_parentGroup,
        GGetArchivedCartsQueryData_getArchivedCarts_data_items_product,
        GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_category,
        GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_group,
        GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_groupModifiers,
        GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_groupModifiers_childModifiers,
        GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_images,
        GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_modifiers,
        GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_parentGroup,
        GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_products_sizes,
        GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_products_sizes_groupModifiers,
        GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_products_sizes_groupModifiers_childModifiers,
        GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_products_sizes_images,
        GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_products_sizes_modifiers,
        GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_products_sizes_parentGroup,
        GGetArchivedCartsQueryData_getArchivedCarts_data_order_info,
        GGetArchivedCartsQueryData_getArchivedCarts_data_restaurant,
        GGetArchivedCartsQueryData_getArchivedCarts_data_restaurant_city,
        GGetArchivedCartsQueryData_getArchivedCarts_data_restaurant_terminal_delivery,
        GGetArchivedCartsQueryData_getArchivedCarts_data_restaurant_terminal_kitchen,
        GGetArchivedCartsQueryData_getArchivedCarts_paginatorInfo;
import 'package:toto_mobile/src/core/data/network/models/get_archived_carts.req.gql.dart'
    show GGetArchivedCartsQueryReq;
import 'package:toto_mobile/src/core/data/network/models/get_archived_carts.var.gql.dart'
    show GGetArchivedCartsQueryVars;
import 'package:toto_mobile/src/core/data/network/models/get_cart.data.gql.dart'
    show
        GGetCartQueryData,
        GGetCartQueryData_getCart,
        GGetCartQueryData_getCart_delivery_address,
        GGetCartQueryData_getCart_delivery_address_city,
        GGetCartQueryData_getCart_items,
        GGetCartQueryData_getCart_items_modifiers,
        GGetCartQueryData_getCart_items_modifiers_product,
        GGetCartQueryData_getCart_items_modifiers_product_category,
        GGetCartQueryData_getCart_items_modifiers_product_group,
        GGetCartQueryData_getCart_items_modifiers_product_groupModifiers,
        GGetCartQueryData_getCart_items_modifiers_product_groupModifiers_childModifiers,
        GGetCartQueryData_getCart_items_modifiers_product_images,
        GGetCartQueryData_getCart_items_modifiers_product_modifiers,
        GGetCartQueryData_getCart_items_modifiers_product_parentGroup,
        GGetCartQueryData_getCart_items_modifiers_product_products_sizes,
        GGetCartQueryData_getCart_items_modifiers_product_products_sizes_groupModifiers,
        GGetCartQueryData_getCart_items_modifiers_product_products_sizes_groupModifiers_childModifiers,
        GGetCartQueryData_getCart_items_modifiers_product_products_sizes_images,
        GGetCartQueryData_getCart_items_modifiers_product_products_sizes_modifiers,
        GGetCartQueryData_getCart_items_modifiers_product_products_sizes_parentGroup,
        GGetCartQueryData_getCart_items_product,
        GGetCartQueryData_getCart_items_product_category,
        GGetCartQueryData_getCart_items_product_group,
        GGetCartQueryData_getCart_items_product_groupModifiers,
        GGetCartQueryData_getCart_items_product_groupModifiers_childModifiers,
        GGetCartQueryData_getCart_items_product_images,
        GGetCartQueryData_getCart_items_product_modifiers,
        GGetCartQueryData_getCart_items_product_parentGroup,
        GGetCartQueryData_getCart_items_product_products_sizes,
        GGetCartQueryData_getCart_items_product_products_sizes_groupModifiers,
        GGetCartQueryData_getCart_items_product_products_sizes_groupModifiers_childModifiers,
        GGetCartQueryData_getCart_items_product_products_sizes_images,
        GGetCartQueryData_getCart_items_product_products_sizes_modifiers,
        GGetCartQueryData_getCart_items_product_products_sizes_parentGroup,
        GGetCartQueryData_getCart_order_info,
        GGetCartQueryData_getCart_restaurant,
        GGetCartQueryData_getCart_restaurant_city,
        GGetCartQueryData_getCart_restaurant_terminal_delivery,
        GGetCartQueryData_getCart_restaurant_terminal_kitchen;
import 'package:toto_mobile/src/core/data/network/models/get_cart.req.gql.dart'
    show GGetCartQueryReq;
import 'package:toto_mobile/src/core/data/network/models/get_cart.var.gql.dart'
    show GGetCartQueryVars;
import 'package:toto_mobile/src/core/data/network/models/get_cart_order.data.gql.dart'
    show
        GGetCartOrderQueryData,
        GGetCartOrderQueryData_getCartOrderInfo,
        GGetCartOrderQueryData_getCartOrderInfo_delivery_address,
        GGetCartOrderQueryData_getCartOrderInfo_delivery_address_city,
        GGetCartOrderQueryData_getCartOrderInfo_items,
        GGetCartOrderQueryData_getCartOrderInfo_items_modifiers,
        GGetCartOrderQueryData_getCartOrderInfo_items_modifiers_product,
        GGetCartOrderQueryData_getCartOrderInfo_items_modifiers_product_category,
        GGetCartOrderQueryData_getCartOrderInfo_items_modifiers_product_group,
        GGetCartOrderQueryData_getCartOrderInfo_items_modifiers_product_groupModifiers,
        GGetCartOrderQueryData_getCartOrderInfo_items_modifiers_product_groupModifiers_childModifiers,
        GGetCartOrderQueryData_getCartOrderInfo_items_modifiers_product_images,
        GGetCartOrderQueryData_getCartOrderInfo_items_modifiers_product_modifiers,
        GGetCartOrderQueryData_getCartOrderInfo_items_modifiers_product_parentGroup,
        GGetCartOrderQueryData_getCartOrderInfo_items_modifiers_product_products_sizes,
        GGetCartOrderQueryData_getCartOrderInfo_items_modifiers_product_products_sizes_groupModifiers,
        GGetCartOrderQueryData_getCartOrderInfo_items_modifiers_product_products_sizes_groupModifiers_childModifiers,
        GGetCartOrderQueryData_getCartOrderInfo_items_modifiers_product_products_sizes_images,
        GGetCartOrderQueryData_getCartOrderInfo_items_modifiers_product_products_sizes_modifiers,
        GGetCartOrderQueryData_getCartOrderInfo_items_modifiers_product_products_sizes_parentGroup,
        GGetCartOrderQueryData_getCartOrderInfo_items_product,
        GGetCartOrderQueryData_getCartOrderInfo_items_product_category,
        GGetCartOrderQueryData_getCartOrderInfo_items_product_group,
        GGetCartOrderQueryData_getCartOrderInfo_items_product_groupModifiers,
        GGetCartOrderQueryData_getCartOrderInfo_items_product_groupModifiers_childModifiers,
        GGetCartOrderQueryData_getCartOrderInfo_items_product_images,
        GGetCartOrderQueryData_getCartOrderInfo_items_product_modifiers,
        GGetCartOrderQueryData_getCartOrderInfo_items_product_parentGroup,
        GGetCartOrderQueryData_getCartOrderInfo_items_product_products_sizes,
        GGetCartOrderQueryData_getCartOrderInfo_items_product_products_sizes_groupModifiers,
        GGetCartOrderQueryData_getCartOrderInfo_items_product_products_sizes_groupModifiers_childModifiers,
        GGetCartOrderQueryData_getCartOrderInfo_items_product_products_sizes_images,
        GGetCartOrderQueryData_getCartOrderInfo_items_product_products_sizes_modifiers,
        GGetCartOrderQueryData_getCartOrderInfo_items_product_products_sizes_parentGroup,
        GGetCartOrderQueryData_getCartOrderInfo_order_info,
        GGetCartOrderQueryData_getCartOrderInfo_restaurant,
        GGetCartOrderQueryData_getCartOrderInfo_restaurant_city,
        GGetCartOrderQueryData_getCartOrderInfo_restaurant_terminal_delivery,
        GGetCartOrderQueryData_getCartOrderInfo_restaurant_terminal_kitchen;
import 'package:toto_mobile/src/core/data/network/models/get_cart_order.req.gql.dart'
    show GGetCartOrderQueryReq;
import 'package:toto_mobile/src/core/data/network/models/get_cart_order.var.gql.dart'
    show GGetCartOrderQueryVars;
import 'package:toto_mobile/src/core/data/network/models/get_cities.data.gql.dart'
    show GGetCitiesQueryData, GGetCitiesQueryData_getCities;
import 'package:toto_mobile/src/core/data/network/models/get_cities.req.gql.dart'
    show GGetCitiesQueryReq;
import 'package:toto_mobile/src/core/data/network/models/get_cities.var.gql.dart'
    show GGetCitiesQueryVars;
import 'package:toto_mobile/src/core/data/network/models/get_compaigns.data.gql.dart'
    show
        GGetCompaignsData,
        GGetCompaignsData_getMarketingCampaigns,
        GGetCompaignsData_getMarketingCampaigns_image;
import 'package:toto_mobile/src/core/data/network/models/get_compaigns.req.gql.dart'
    show GGetCompaignsReq;
import 'package:toto_mobile/src/core/data/network/models/get_compaigns.var.gql.dart'
    show GGetCompaignsVars;
import 'package:toto_mobile/src/core/data/network/models/get_contacts.data.gql.dart'
    show
        GGetContactsQueryData,
        GGetContactsQueryData_getContacts,
        GGetContactsQueryData_getContacts_city,
        GGetContactsQueryData_getContacts_contents,
        GGetContactsQueryData_getContacts_contents_data,
        GGetContactsQueryData_getContacts_contents_data_social_networks;
import 'package:toto_mobile/src/core/data/network/models/get_contacts.req.gql.dart'
    show GGetContactsQueryReq;
import 'package:toto_mobile/src/core/data/network/models/get_contacts.var.gql.dart'
    show GGetContactsQueryVars;
import 'package:toto_mobile/src/core/data/network/models/get_feedback_options.data.gql.dart'
    show
        GGetFeedbackOptionsData,
        GGetFeedbackOptionsData_getFeedbackOptions,
        GGetFeedbackOptionsData_getFeedbackOptions_icon;
import 'package:toto_mobile/src/core/data/network/models/get_feedback_options.req.gql.dart'
    show GGetFeedbackOptionsReq;
import 'package:toto_mobile/src/core/data/network/models/get_feedback_options.var.gql.dart'
    show GGetFeedbackOptionsVars;
import 'package:toto_mobile/src/core/data/network/models/get_group.data.gql.dart'
    show
        GGetGroupQueryData,
        GGetGroupQueryData_getGroup,
        GGetGroupQueryData_getGroup_images;
import 'package:toto_mobile/src/core/data/network/models/get_group.req.gql.dart'
    show GGetGroupQueryReq;
import 'package:toto_mobile/src/core/data/network/models/get_group.var.gql.dart'
    show GGetGroupQueryVars;
import 'package:toto_mobile/src/core/data/network/models/get_groups.data.gql.dart'
    show
        GGetGroupsQueryData,
        GGetGroupsQueryData_getGroups,
        GGetGroupsQueryData_getGroups_images;
import 'package:toto_mobile/src/core/data/network/models/get_groups.req.gql.dart'
    show GGetGroupsQueryReq;
import 'package:toto_mobile/src/core/data/network/models/get_groups.var.gql.dart'
    show GGetGroupsQueryVars;
import 'package:toto_mobile/src/core/data/network/models/get_my_cart.data.gql.dart'
    show
        GGetMyCartData,
        GGetMyCartData_getMyCart,
        GGetMyCartData_getMyCart_delivery_address,
        GGetMyCartData_getMyCart_delivery_address_city,
        GGetMyCartData_getMyCart_items,
        GGetMyCartData_getMyCart_items_modifiers,
        GGetMyCartData_getMyCart_items_modifiers_product,
        GGetMyCartData_getMyCart_items_modifiers_product_category,
        GGetMyCartData_getMyCart_items_modifiers_product_group,
        GGetMyCartData_getMyCart_items_modifiers_product_groupModifiers,
        GGetMyCartData_getMyCart_items_modifiers_product_groupModifiers_childModifiers,
        GGetMyCartData_getMyCart_items_modifiers_product_images,
        GGetMyCartData_getMyCart_items_modifiers_product_modifiers,
        GGetMyCartData_getMyCart_items_modifiers_product_parentGroup,
        GGetMyCartData_getMyCart_items_modifiers_product_products_sizes,
        GGetMyCartData_getMyCart_items_modifiers_product_products_sizes_groupModifiers,
        GGetMyCartData_getMyCart_items_modifiers_product_products_sizes_groupModifiers_childModifiers,
        GGetMyCartData_getMyCart_items_modifiers_product_products_sizes_images,
        GGetMyCartData_getMyCart_items_modifiers_product_products_sizes_modifiers,
        GGetMyCartData_getMyCart_items_modifiers_product_products_sizes_parentGroup,
        GGetMyCartData_getMyCart_items_product,
        GGetMyCartData_getMyCart_items_product_category,
        GGetMyCartData_getMyCart_items_product_group,
        GGetMyCartData_getMyCart_items_product_groupModifiers,
        GGetMyCartData_getMyCart_items_product_groupModifiers_childModifiers,
        GGetMyCartData_getMyCart_items_product_images,
        GGetMyCartData_getMyCart_items_product_modifiers,
        GGetMyCartData_getMyCart_items_product_parentGroup,
        GGetMyCartData_getMyCart_items_product_products_sizes,
        GGetMyCartData_getMyCart_items_product_products_sizes_groupModifiers,
        GGetMyCartData_getMyCart_items_product_products_sizes_groupModifiers_childModifiers,
        GGetMyCartData_getMyCart_items_product_products_sizes_images,
        GGetMyCartData_getMyCart_items_product_products_sizes_modifiers,
        GGetMyCartData_getMyCart_items_product_products_sizes_parentGroup,
        GGetMyCartData_getMyCart_order_info,
        GGetMyCartData_getMyCart_restaurant,
        GGetMyCartData_getMyCart_restaurant_city,
        GGetMyCartData_getMyCart_restaurant_terminal_delivery,
        GGetMyCartData_getMyCart_restaurant_terminal_kitchen;
import 'package:toto_mobile/src/core/data/network/models/get_my_cart.req.gql.dart'
    show GGetMyCartReq;
import 'package:toto_mobile/src/core/data/network/models/get_my_cart.var.gql.dart'
    show GGetMyCartVars;
import 'package:toto_mobile/src/core/data/network/models/get_page.data.gql.dart'
    show
        GGetPageQueryData,
        GGetPageQueryData_getPage,
        GGetPageQueryData_getPage_contents;
import 'package:toto_mobile/src/core/data/network/models/get_page.req.gql.dart'
    show GGetPageQueryReq;
import 'package:toto_mobile/src/core/data/network/models/get_page.var.gql.dart'
    show GGetPageQueryVars;
import 'package:toto_mobile/src/core/data/network/models/get_product.data.gql.dart'
    show
        GGetProductData,
        GGetProductData_getProduct,
        GGetProductData_getProduct_category,
        GGetProductData_getProduct_group,
        GGetProductData_getProduct_groupModifiers,
        GGetProductData_getProduct_groupModifiers_childModifiers,
        GGetProductData_getProduct_images,
        GGetProductData_getProduct_modifiers,
        GGetProductData_getProduct_parentGroup,
        GGetProductData_getProduct_products_sizes,
        GGetProductData_getProduct_products_sizes_groupModifiers,
        GGetProductData_getProduct_products_sizes_groupModifiers_childModifiers,
        GGetProductData_getProduct_products_sizes_images,
        GGetProductData_getProduct_products_sizes_modifiers,
        GGetProductData_getProduct_products_sizes_parentGroup;
import 'package:toto_mobile/src/core/data/network/models/get_product.req.gql.dart'
    show GGetProductReq;
import 'package:toto_mobile/src/core/data/network/models/get_product.var.gql.dart'
    show GGetProductVars;
import 'package:toto_mobile/src/core/data/network/models/get_products.data.gql.dart'
    show
        GGetProductsQueryData,
        GGetProductsQueryData_getProducts,
        GGetProductsQueryData_getProducts_category,
        GGetProductsQueryData_getProducts_group,
        GGetProductsQueryData_getProducts_groupModifiers,
        GGetProductsQueryData_getProducts_groupModifiers_childModifiers,
        GGetProductsQueryData_getProducts_images,
        GGetProductsQueryData_getProducts_modifiers,
        GGetProductsQueryData_getProducts_parentGroup,
        GGetProductsQueryData_getProducts_products_sizes,
        GGetProductsQueryData_getProducts_products_sizes_groupModifiers,
        GGetProductsQueryData_getProducts_products_sizes_groupModifiers_childModifiers,
        GGetProductsQueryData_getProducts_products_sizes_images,
        GGetProductsQueryData_getProducts_products_sizes_modifiers,
        GGetProductsQueryData_getProducts_products_sizes_parentGroup;
import 'package:toto_mobile/src/core/data/network/models/get_products.req.gql.dart'
    show GGetProductsQueryReq;
import 'package:toto_mobile/src/core/data/network/models/get_products.var.gql.dart'
    show GGetProductsQueryVars;
import 'package:toto_mobile/src/core/data/network/models/get_recommended_products_for_cart.data.gql.dart'
    show
        GGetRecommendedProductsForCartData,
        GGetRecommendedProductsForCartData_getRecommendedProductsForCart,
        GGetRecommendedProductsForCartData_getRecommendedProductsForCart_category,
        GGetRecommendedProductsForCartData_getRecommendedProductsForCart_group,
        GGetRecommendedProductsForCartData_getRecommendedProductsForCart_groupModifiers,
        GGetRecommendedProductsForCartData_getRecommendedProductsForCart_groupModifiers_childModifiers,
        GGetRecommendedProductsForCartData_getRecommendedProductsForCart_images,
        GGetRecommendedProductsForCartData_getRecommendedProductsForCart_modifiers,
        GGetRecommendedProductsForCartData_getRecommendedProductsForCart_parentGroup,
        GGetRecommendedProductsForCartData_getRecommendedProductsForCart_products_sizes,
        GGetRecommendedProductsForCartData_getRecommendedProductsForCart_products_sizes_groupModifiers,
        GGetRecommendedProductsForCartData_getRecommendedProductsForCart_products_sizes_groupModifiers_childModifiers,
        GGetRecommendedProductsForCartData_getRecommendedProductsForCart_products_sizes_images,
        GGetRecommendedProductsForCartData_getRecommendedProductsForCart_products_sizes_modifiers,
        GGetRecommendedProductsForCartData_getRecommendedProductsForCart_products_sizes_parentGroup;
import 'package:toto_mobile/src/core/data/network/models/get_recommended_products_for_cart.req.gql.dart'
    show GGetRecommendedProductsForCartReq;
import 'package:toto_mobile/src/core/data/network/models/get_recommended_products_for_cart.var.gql.dart'
    show GGetRecommendedProductsForCartVars;
import 'package:toto_mobile/src/core/data/network/models/get_restaurant.data.gql.dart'
    show
        GGetRestaurantData,
        GGetRestaurantData_getRestaurant,
        GGetRestaurantData_getRestaurant_city,
        GGetRestaurantData_getRestaurant_terminal_delivery,
        GGetRestaurantData_getRestaurant_terminal_kitchen;
import 'package:toto_mobile/src/core/data/network/models/get_restaurant.req.gql.dart'
    show GGetRestaurantReq;
import 'package:toto_mobile/src/core/data/network/models/get_restaurant.var.gql.dart'
    show GGetRestaurantVars;
import 'package:toto_mobile/src/core/data/network/models/get_restaurant_by_location.data.gql.dart'
    show
        GGetRestaurantByLocationQueryData,
        GGetRestaurantByLocationQueryData_getRestaurantByLocation,
        GGetRestaurantByLocationQueryData_getRestaurantByLocation_city,
        GGetRestaurantByLocationQueryData_getRestaurantByLocation_terminal_delivery,
        GGetRestaurantByLocationQueryData_getRestaurantByLocation_terminal_kitchen;
import 'package:toto_mobile/src/core/data/network/models/get_restaurant_by_location.req.gql.dart'
    show GGetRestaurantByLocationQueryReq;
import 'package:toto_mobile/src/core/data/network/models/get_restaurant_by_location.var.gql.dart'
    show GGetRestaurantByLocationQueryVars;
import 'package:toto_mobile/src/core/data/network/models/get_restaurants.data.gql.dart'
    show
        GGetRestaurantsQueryData,
        GGetRestaurantsQueryData_getRestaurants,
        GGetRestaurantsQueryData_getRestaurants_city,
        GGetRestaurantsQueryData_getRestaurants_terminal_delivery,
        GGetRestaurantsQueryData_getRestaurants_terminal_kitchen;
import 'package:toto_mobile/src/core/data/network/models/get_restaurants.req.gql.dart'
    show GGetRestaurantsQueryReq;
import 'package:toto_mobile/src/core/data/network/models/get_restaurants.var.gql.dart'
    show GGetRestaurantsQueryVars;
import 'package:toto_mobile/src/core/data/network/models/get_unique_pages.data.gql.dart'
    show
        GGetUniquePagesData,
        GGetUniquePagesData_getUniquePages,
        GGetUniquePagesData_getUniquePages_icon;
import 'package:toto_mobile/src/core/data/network/models/get_unique_pages.req.gql.dart'
    show GGetUniquePagesReq;
import 'package:toto_mobile/src/core/data/network/models/get_unique_pages.var.gql.dart'
    show GGetUniquePagesVars;
import 'package:toto_mobile/src/core/data/network/models/get_user.data.gql.dart'
    show GGetUserData, GGetUserData_user;
import 'package:toto_mobile/src/core/data/network/models/get_user.req.gql.dart'
    show GGetUserReq;
import 'package:toto_mobile/src/core/data/network/models/get_user.var.gql.dart'
    show GGetUserVars;
import 'package:toto_mobile/src/core/data/network/models/group_fragment.data.gql.dart'
    show GGroupFragmentData, GGroupFragmentData_images;
import 'package:toto_mobile/src/core/data/network/models/group_fragment.req.gql.dart'
    show GGroupFragmentReq;
import 'package:toto_mobile/src/core/data/network/models/group_fragment.var.gql.dart'
    show GGroupFragmentVars;
import 'package:toto_mobile/src/core/data/network/models/group_modificator_fragment.data.gql.dart'
    show
        GGroupModificatorFragmentData,
        GGroupModificatorFragmentData_childModifiers;
import 'package:toto_mobile/src/core/data/network/models/group_modificator_fragment.req.gql.dart'
    show GGroupModificatorFragmentReq;
import 'package:toto_mobile/src/core/data/network/models/group_modificator_fragment.var.gql.dart'
    show GGroupModificatorFragmentVars;
import 'package:toto_mobile/src/core/data/network/models/marketing_compain_fragment.data.gql.dart'
    show GMarketingCompaignFragmentData, GMarketingCompaignFragmentData_image;
import 'package:toto_mobile/src/core/data/network/models/marketing_compain_fragment.req.gql.dart'
    show GMarketingCompaignFragmentReq;
import 'package:toto_mobile/src/core/data/network/models/marketing_compain_fragment.var.gql.dart'
    show GMarketingCompaignFragmentVars;
import 'package:toto_mobile/src/core/data/network/models/me.data.gql.dart'
    show GGetCurrentUserData, GGetCurrentUserData_me;
import 'package:toto_mobile/src/core/data/network/models/me.req.gql.dart'
    show GGetCurrentUserReq;
import 'package:toto_mobile/src/core/data/network/models/me.var.gql.dart'
    show GGetCurrentUserVars;
import 'package:toto_mobile/src/core/data/network/models/modificator_fragment.data.gql.dart'
    show GModificatorFragmentData;
import 'package:toto_mobile/src/core/data/network/models/modificator_fragment.req.gql.dart'
    show GModificatorFragmentReq;
import 'package:toto_mobile/src/core/data/network/models/modificator_fragment.var.gql.dart'
    show GModificatorFragmentVars;
import 'package:toto_mobile/src/core/data/network/models/order_info_fragment.data.gql.dart'
    show GOrderInfoFragmentData;
import 'package:toto_mobile/src/core/data/network/models/order_info_fragment.req.gql.dart'
    show GOrderInfoFragmentReq;
import 'package:toto_mobile/src/core/data/network/models/order_info_fragment.var.gql.dart'
    show GOrderInfoFragmentVars;
import 'package:toto_mobile/src/core/data/network/models/page_fragment.data.gql.dart'
    show GPageFragmentData, GPageFragmentData_contents;
import 'package:toto_mobile/src/core/data/network/models/page_fragment.req.gql.dart'
    show GPageFragmentReq;
import 'package:toto_mobile/src/core/data/network/models/page_fragment.var.gql.dart'
    show GPageFragmentVars;
import 'package:toto_mobile/src/core/data/network/models/paginator_info_fragment.data.gql.dart'
    show GPaginatorInfoFragmentData;
import 'package:toto_mobile/src/core/data/network/models/paginator_info_fragment.req.gql.dart'
    show GPaginatorInfoFragmentReq;
import 'package:toto_mobile/src/core/data/network/models/paginator_info_fragment.var.gql.dart'
    show GPaginatorInfoFragmentVars;
import 'package:toto_mobile/src/core/data/network/models/phone_auth.data.gql.dart'
    show
        GphoneAuthData,
        GphoneAuthData_phoneAuth,
        GphoneAuthData_phoneAuth_user;
import 'package:toto_mobile/src/core/data/network/models/phone_auth.req.gql.dart'
    show GphoneAuthReq;
import 'package:toto_mobile/src/core/data/network/models/phone_auth.var.gql.dart'
    show GphoneAuthVars;
import 'package:toto_mobile/src/core/data/network/models/product_fragment.data.gql.dart'
    show
        GProductFragmentData,
        GProductFragmentData_category,
        GProductFragmentData_group,
        GProductFragmentData_groupModifiers,
        GProductFragmentData_groupModifiers_childModifiers,
        GProductFragmentData_images,
        GProductFragmentData_modifiers,
        GProductFragmentData_parentGroup,
        GProductFragmentData_products_sizes,
        GProductFragmentData_products_sizes_groupModifiers,
        GProductFragmentData_products_sizes_groupModifiers_childModifiers,
        GProductFragmentData_products_sizes_images,
        GProductFragmentData_products_sizes_modifiers,
        GProductFragmentData_products_sizes_parentGroup;
import 'package:toto_mobile/src/core/data/network/models/product_fragment.req.gql.dart'
    show GProductFragmentReq;
import 'package:toto_mobile/src/core/data/network/models/product_fragment.var.gql.dart'
    show GProductFragmentVars;
import 'package:toto_mobile/src/core/data/network/models/products_size_fragment.data.gql.dart'
    show
        GProductsSizesFragmentData,
        GProductsSizesFragmentData_groupModifiers,
        GProductsSizesFragmentData_groupModifiers_childModifiers,
        GProductsSizesFragmentData_images,
        GProductsSizesFragmentData_modifiers,
        GProductsSizesFragmentData_parentGroup;
import 'package:toto_mobile/src/core/data/network/models/products_size_fragment.req.gql.dart'
    show GProductsSizesFragmentReq;
import 'package:toto_mobile/src/core/data/network/models/products_size_fragment.var.gql.dart'
    show GProductsSizesFragmentVars;
import 'package:toto_mobile/src/core/data/network/models/refresh_token.data.gql.dart'
    show GrefreshTokenData, GrefreshTokenData_refreshToken;
import 'package:toto_mobile/src/core/data/network/models/refresh_token.req.gql.dart'
    show GrefreshTokenReq;
import 'package:toto_mobile/src/core/data/network/models/refresh_token.var.gql.dart'
    show GrefreshTokenVars;
import 'package:toto_mobile/src/core/data/network/models/remove_cart.data.gql.dart'
    show
        GRemoveCartData,
        GRemoveCartData_removeCart,
        GRemoveCartData_removeCart_delivery_address,
        GRemoveCartData_removeCart_delivery_address_city,
        GRemoveCartData_removeCart_items,
        GRemoveCartData_removeCart_items_modifiers,
        GRemoveCartData_removeCart_items_modifiers_product,
        GRemoveCartData_removeCart_items_modifiers_product_category,
        GRemoveCartData_removeCart_items_modifiers_product_group,
        GRemoveCartData_removeCart_items_modifiers_product_groupModifiers,
        GRemoveCartData_removeCart_items_modifiers_product_groupModifiers_childModifiers,
        GRemoveCartData_removeCart_items_modifiers_product_images,
        GRemoveCartData_removeCart_items_modifiers_product_modifiers,
        GRemoveCartData_removeCart_items_modifiers_product_parentGroup,
        GRemoveCartData_removeCart_items_modifiers_product_products_sizes,
        GRemoveCartData_removeCart_items_modifiers_product_products_sizes_groupModifiers,
        GRemoveCartData_removeCart_items_modifiers_product_products_sizes_groupModifiers_childModifiers,
        GRemoveCartData_removeCart_items_modifiers_product_products_sizes_images,
        GRemoveCartData_removeCart_items_modifiers_product_products_sizes_modifiers,
        GRemoveCartData_removeCart_items_modifiers_product_products_sizes_parentGroup,
        GRemoveCartData_removeCart_items_product,
        GRemoveCartData_removeCart_items_product_category,
        GRemoveCartData_removeCart_items_product_group,
        GRemoveCartData_removeCart_items_product_groupModifiers,
        GRemoveCartData_removeCart_items_product_groupModifiers_childModifiers,
        GRemoveCartData_removeCart_items_product_images,
        GRemoveCartData_removeCart_items_product_modifiers,
        GRemoveCartData_removeCart_items_product_parentGroup,
        GRemoveCartData_removeCart_items_product_products_sizes,
        GRemoveCartData_removeCart_items_product_products_sizes_groupModifiers,
        GRemoveCartData_removeCart_items_product_products_sizes_groupModifiers_childModifiers,
        GRemoveCartData_removeCart_items_product_products_sizes_images,
        GRemoveCartData_removeCart_items_product_products_sizes_modifiers,
        GRemoveCartData_removeCart_items_product_products_sizes_parentGroup,
        GRemoveCartData_removeCart_order_info,
        GRemoveCartData_removeCart_restaurant,
        GRemoveCartData_removeCart_restaurant_city,
        GRemoveCartData_removeCart_restaurant_terminal_delivery,
        GRemoveCartData_removeCart_restaurant_terminal_kitchen;
import 'package:toto_mobile/src/core/data/network/models/remove_cart.req.gql.dart'
    show GRemoveCartReq;
import 'package:toto_mobile/src/core/data/network/models/remove_cart.var.gql.dart'
    show GRemoveCartVars;
import 'package:toto_mobile/src/core/data/network/models/remove_item_from_cart.data.gql.dart'
    show
        GRemoveItemFromCartData,
        GRemoveItemFromCartData_removeItemFromCart,
        GRemoveItemFromCartData_removeItemFromCart_delivery_address,
        GRemoveItemFromCartData_removeItemFromCart_delivery_address_city,
        GRemoveItemFromCartData_removeItemFromCart_items,
        GRemoveItemFromCartData_removeItemFromCart_items_modifiers,
        GRemoveItemFromCartData_removeItemFromCart_items_modifiers_product,
        GRemoveItemFromCartData_removeItemFromCart_items_modifiers_product_category,
        GRemoveItemFromCartData_removeItemFromCart_items_modifiers_product_group,
        GRemoveItemFromCartData_removeItemFromCart_items_modifiers_product_groupModifiers,
        GRemoveItemFromCartData_removeItemFromCart_items_modifiers_product_groupModifiers_childModifiers,
        GRemoveItemFromCartData_removeItemFromCart_items_modifiers_product_images,
        GRemoveItemFromCartData_removeItemFromCart_items_modifiers_product_modifiers,
        GRemoveItemFromCartData_removeItemFromCart_items_modifiers_product_parentGroup,
        GRemoveItemFromCartData_removeItemFromCart_items_modifiers_product_products_sizes,
        GRemoveItemFromCartData_removeItemFromCart_items_modifiers_product_products_sizes_groupModifiers,
        GRemoveItemFromCartData_removeItemFromCart_items_modifiers_product_products_sizes_groupModifiers_childModifiers,
        GRemoveItemFromCartData_removeItemFromCart_items_modifiers_product_products_sizes_images,
        GRemoveItemFromCartData_removeItemFromCart_items_modifiers_product_products_sizes_modifiers,
        GRemoveItemFromCartData_removeItemFromCart_items_modifiers_product_products_sizes_parentGroup,
        GRemoveItemFromCartData_removeItemFromCart_items_product,
        GRemoveItemFromCartData_removeItemFromCart_items_product_category,
        GRemoveItemFromCartData_removeItemFromCart_items_product_group,
        GRemoveItemFromCartData_removeItemFromCart_items_product_groupModifiers,
        GRemoveItemFromCartData_removeItemFromCart_items_product_groupModifiers_childModifiers,
        GRemoveItemFromCartData_removeItemFromCart_items_product_images,
        GRemoveItemFromCartData_removeItemFromCart_items_product_modifiers,
        GRemoveItemFromCartData_removeItemFromCart_items_product_parentGroup,
        GRemoveItemFromCartData_removeItemFromCart_items_product_products_sizes,
        GRemoveItemFromCartData_removeItemFromCart_items_product_products_sizes_groupModifiers,
        GRemoveItemFromCartData_removeItemFromCart_items_product_products_sizes_groupModifiers_childModifiers,
        GRemoveItemFromCartData_removeItemFromCart_items_product_products_sizes_images,
        GRemoveItemFromCartData_removeItemFromCart_items_product_products_sizes_modifiers,
        GRemoveItemFromCartData_removeItemFromCart_items_product_products_sizes_parentGroup,
        GRemoveItemFromCartData_removeItemFromCart_order_info,
        GRemoveItemFromCartData_removeItemFromCart_restaurant,
        GRemoveItemFromCartData_removeItemFromCart_restaurant_city,
        GRemoveItemFromCartData_removeItemFromCart_restaurant_terminal_delivery,
        GRemoveItemFromCartData_removeItemFromCart_restaurant_terminal_kitchen;
import 'package:toto_mobile/src/core/data/network/models/remove_item_from_cart.req.gql.dart'
    show GRemoveItemFromCartReq;
import 'package:toto_mobile/src/core/data/network/models/remove_item_from_cart.var.gql.dart'
    show GRemoveItemFromCartVars;
import 'package:toto_mobile/src/core/data/network/models/request_phone_code_auth.data.gql.dart'
    show GrequestPhoneCodeAuthData;
import 'package:toto_mobile/src/core/data/network/models/request_phone_code_auth.req.gql.dart'
    show GrequestPhoneCodeAuthReq;
import 'package:toto_mobile/src/core/data/network/models/request_phone_code_auth.var.gql.dart'
    show GrequestPhoneCodeAuthVars;
import 'package:toto_mobile/src/core/data/network/models/request_phone_code_register.data.gql.dart'
    show GrequestPhoneCodeRegisterData;
import 'package:toto_mobile/src/core/data/network/models/request_phone_code_register.req.gql.dart'
    show GrequestPhoneCodeRegisterReq;
import 'package:toto_mobile/src/core/data/network/models/request_phone_code_register.var.gql.dart'
    show GrequestPhoneCodeRegisterVars;
import 'package:toto_mobile/src/core/data/network/models/restaurants_fragment.data.gql.dart'
    show
        GRestaurantFragmentData,
        GRestaurantFragmentData_city,
        GRestaurantFragmentData_terminal_delivery,
        GRestaurantFragmentData_terminal_kitchen;
import 'package:toto_mobile/src/core/data/network/models/restaurants_fragment.req.gql.dart'
    show GRestaurantFragmentReq;
import 'package:toto_mobile/src/core/data/network/models/restaurants_fragment.var.gql.dart'
    show GRestaurantFragmentVars;
import 'package:toto_mobile/src/core/data/network/models/send_order_feedback.data.gql.dart'
    show GSendOrderFeedbackData, GSendOrderFeedbackData_sendOrderFeedback;
import 'package:toto_mobile/src/core/data/network/models/send_order_feedback.req.gql.dart'
    show GSendOrderFeedbackReq;
import 'package:toto_mobile/src/core/data/network/models/send_order_feedback.var.gql.dart'
    show GSendOrderFeedbackVars;
import 'package:toto_mobile/src/core/data/network/models/terminal_fragment.data.gql.dart'
    show GTerminalFragmentData;
import 'package:toto_mobile/src/core/data/network/models/terminal_fragment.req.gql.dart'
    show GTerminalFragmentReq;
import 'package:toto_mobile/src/core/data/network/models/terminal_fragment.var.gql.dart'
    show GTerminalFragmentVars;
import 'package:toto_mobile/src/core/data/network/models/toto.schema.schema.gql.dart'
    show
        GAdminCreateFeedbackOptionInput,
        GAdminCreateMarketingCampaignInput,
        GAdminCreatePageContentInput,
        GAdminCreatePageInput,
        GAdminCreatePageSeoInput,
        GAdminLogFiltersInput,
        GAdminScheduleInput,
        GAdminUpdateFeedbackOptionInput,
        GAdminUpdateGroupInput,
        GAdminUpdateMarketingCampaignInput,
        GAdminUpdatePageContentInput,
        GAdminUpdatePageInput,
        GAdminUpdatePageSeoInput,
        GAdminUpdateProductInput,
        GCartFiltersInput,
        GCartOrderStatus,
        GCartPaymentStatus,
        GCartPaymentType,
        GCreateDeliveryAddressInput,
        GCreateOrderFeedbackInput,
        GDateTime,
        GEmailLoginInput,
        GEmailRegisterInput,
        GForgotPasswordInput,
        GGroupFiltersInput,
        GJson,
        GJsonData,
        GLogGroup,
        GMixed,
        GNewPasswordWithCodeInput,
        GOptionInput,
        GOrderByClause,
        GPaginateInput,
        GPhoneLoginInput,
        GPhoneRegisterInput,
        GProductFiltersInput,
        GProductType,
        GRefreshTokenInput,
        GRegisterInput,
        GRegisterStatuses,
        GSQLOperator,
        GScheduleRestaurantInput,
        GSocialLoginInput,
        GSocialNetworkIcon,
        GSortInput,
        GSortOrder,
        GSortType,
        GTrashed,
        GTypeFile,
        GUpdateDeliveryAddressInput,
        GUpdatePassword,
        GUpdateUserInput,
        GUpload,
        GUploadFileInput,
        GVerifyEmailInput,
        GWeekdays,
        GWhereConditions,
        GaddItemToCartInput,
        GaddItemsToCartInput,
        GaddModifiersToCartItemInput,
        GadminCreateCityInput,
        GadminCreateCompanyEntityInput,
        GadminCreateRestaurantInput,
        GadminCreateTerminalInput,
        GadminUpdateCityInput,
        GadminUpdateCompanyEntityInput,
        GadminUpdateRestaurantInput,
        GadminUpdateTerminalInput,
        GcartItemModifierInput,
        GcartItemModifierUpdateInput,
        GeditCartInput,
        GeditCartItemInput,
        GeditModifierCartItemInput;
import 'package:toto_mobile/src/core/data/network/models/unique_page_fragment.data.gql.dart'
    show GUniquePageFragmentData, GUniquePageFragmentData_icon;
import 'package:toto_mobile/src/core/data/network/models/unique_page_fragment.req.gql.dart'
    show GUniquePageFragmentReq;
import 'package:toto_mobile/src/core/data/network/models/unique_page_fragment.var.gql.dart'
    show GUniquePageFragmentVars;
import 'package:toto_mobile/src/core/data/network/models/update_my_profile.data.gql.dart'
    show GupdateCurrentUserData, GupdateCurrentUserData_updateMyProfile;
import 'package:toto_mobile/src/core/data/network/models/update_my_profile.req.gql.dart'
    show GupdateCurrentUserReq;
import 'package:toto_mobile/src/core/data/network/models/update_my_profile.var.gql.dart'
    show GupdateCurrentUserVars;
import 'package:toto_mobile/src/core/data/network/models/user_fragment.data.gql.dart'
    show GUserFragmentData;
import 'package:toto_mobile/src/core/data/network/models/user_fragment.req.gql.dart'
    show GUserFragmentReq;
import 'package:toto_mobile/src/core/data/network/models/user_fragment.var.gql.dart'
    show GUserFragmentVars;

part 'serializers.gql.g.dart';

final SerializersBuilder _serializersBuilder = _$serializers.toBuilder()
  ..add(OperationSerializer())
  ..addPlugin(StandardJsonPlugin());
@SerializersFor([
  GAddItemToCartData,
  GAddItemToCartData_addItemToCart,
  GAddItemToCartData_addItemToCart_delivery_address,
  GAddItemToCartData_addItemToCart_delivery_address_city,
  GAddItemToCartData_addItemToCart_items,
  GAddItemToCartData_addItemToCart_items_modifiers,
  GAddItemToCartData_addItemToCart_items_modifiers_product,
  GAddItemToCartData_addItemToCart_items_modifiers_product_category,
  GAddItemToCartData_addItemToCart_items_modifiers_product_group,
  GAddItemToCartData_addItemToCart_items_modifiers_product_groupModifiers,
  GAddItemToCartData_addItemToCart_items_modifiers_product_groupModifiers_childModifiers,
  GAddItemToCartData_addItemToCart_items_modifiers_product_images,
  GAddItemToCartData_addItemToCart_items_modifiers_product_modifiers,
  GAddItemToCartData_addItemToCart_items_modifiers_product_parentGroup,
  GAddItemToCartData_addItemToCart_items_modifiers_product_products_sizes,
  GAddItemToCartData_addItemToCart_items_modifiers_product_products_sizes_groupModifiers,
  GAddItemToCartData_addItemToCart_items_modifiers_product_products_sizes_groupModifiers_childModifiers,
  GAddItemToCartData_addItemToCart_items_modifiers_product_products_sizes_images,
  GAddItemToCartData_addItemToCart_items_modifiers_product_products_sizes_modifiers,
  GAddItemToCartData_addItemToCart_items_modifiers_product_products_sizes_parentGroup,
  GAddItemToCartData_addItemToCart_items_product,
  GAddItemToCartData_addItemToCart_items_product_category,
  GAddItemToCartData_addItemToCart_items_product_group,
  GAddItemToCartData_addItemToCart_items_product_groupModifiers,
  GAddItemToCartData_addItemToCart_items_product_groupModifiers_childModifiers,
  GAddItemToCartData_addItemToCart_items_product_images,
  GAddItemToCartData_addItemToCart_items_product_modifiers,
  GAddItemToCartData_addItemToCart_items_product_parentGroup,
  GAddItemToCartData_addItemToCart_items_product_products_sizes,
  GAddItemToCartData_addItemToCart_items_product_products_sizes_groupModifiers,
  GAddItemToCartData_addItemToCart_items_product_products_sizes_groupModifiers_childModifiers,
  GAddItemToCartData_addItemToCart_items_product_products_sizes_images,
  GAddItemToCartData_addItemToCart_items_product_products_sizes_modifiers,
  GAddItemToCartData_addItemToCart_items_product_products_sizes_parentGroup,
  GAddItemToCartData_addItemToCart_order_info,
  GAddItemToCartData_addItemToCart_restaurant,
  GAddItemToCartData_addItemToCart_restaurant_city,
  GAddItemToCartData_addItemToCart_restaurant_terminal_delivery,
  GAddItemToCartData_addItemToCart_restaurant_terminal_kitchen,
  GAddItemToCartReq,
  GAddItemToCartVars,
  GAddItemsToCartData,
  GAddItemsToCartData_addItemsToCart,
  GAddItemsToCartData_addItemsToCart_delivery_address,
  GAddItemsToCartData_addItemsToCart_delivery_address_city,
  GAddItemsToCartData_addItemsToCart_items,
  GAddItemsToCartData_addItemsToCart_items_modifiers,
  GAddItemsToCartData_addItemsToCart_items_modifiers_product,
  GAddItemsToCartData_addItemsToCart_items_modifiers_product_category,
  GAddItemsToCartData_addItemsToCart_items_modifiers_product_group,
  GAddItemsToCartData_addItemsToCart_items_modifiers_product_groupModifiers,
  GAddItemsToCartData_addItemsToCart_items_modifiers_product_groupModifiers_childModifiers,
  GAddItemsToCartData_addItemsToCart_items_modifiers_product_images,
  GAddItemsToCartData_addItemsToCart_items_modifiers_product_modifiers,
  GAddItemsToCartData_addItemsToCart_items_modifiers_product_parentGroup,
  GAddItemsToCartData_addItemsToCart_items_modifiers_product_products_sizes,
  GAddItemsToCartData_addItemsToCart_items_modifiers_product_products_sizes_groupModifiers,
  GAddItemsToCartData_addItemsToCart_items_modifiers_product_products_sizes_groupModifiers_childModifiers,
  GAddItemsToCartData_addItemsToCart_items_modifiers_product_products_sizes_images,
  GAddItemsToCartData_addItemsToCart_items_modifiers_product_products_sizes_modifiers,
  GAddItemsToCartData_addItemsToCart_items_modifiers_product_products_sizes_parentGroup,
  GAddItemsToCartData_addItemsToCart_items_product,
  GAddItemsToCartData_addItemsToCart_items_product_category,
  GAddItemsToCartData_addItemsToCart_items_product_group,
  GAddItemsToCartData_addItemsToCart_items_product_groupModifiers,
  GAddItemsToCartData_addItemsToCart_items_product_groupModifiers_childModifiers,
  GAddItemsToCartData_addItemsToCart_items_product_images,
  GAddItemsToCartData_addItemsToCart_items_product_modifiers,
  GAddItemsToCartData_addItemsToCart_items_product_parentGroup,
  GAddItemsToCartData_addItemsToCart_items_product_products_sizes,
  GAddItemsToCartData_addItemsToCart_items_product_products_sizes_groupModifiers,
  GAddItemsToCartData_addItemsToCart_items_product_products_sizes_groupModifiers_childModifiers,
  GAddItemsToCartData_addItemsToCart_items_product_products_sizes_images,
  GAddItemsToCartData_addItemsToCart_items_product_products_sizes_modifiers,
  GAddItemsToCartData_addItemsToCart_items_product_products_sizes_parentGroup,
  GAddItemsToCartData_addItemsToCart_order_info,
  GAddItemsToCartData_addItemsToCart_restaurant,
  GAddItemsToCartData_addItemsToCart_restaurant_city,
  GAddItemsToCartData_addItemsToCart_restaurant_terminal_delivery,
  GAddItemsToCartData_addItemsToCart_restaurant_terminal_kitchen,
  GAddItemsToCartReq,
  GAddItemsToCartVars,
  GAdminCreateFeedbackOptionInput,
  GAdminCreateMarketingCampaignInput,
  GAdminCreatePageContentInput,
  GAdminCreatePageInput,
  GAdminCreatePageSeoInput,
  GAdminLogFiltersInput,
  GAdminScheduleInput,
  GAdminUpdateFeedbackOptionInput,
  GAdminUpdateGroupInput,
  GAdminUpdateMarketingCampaignInput,
  GAdminUpdatePageContentInput,
  GAdminUpdatePageInput,
  GAdminUpdatePageSeoInput,
  GAdminUpdateProductInput,
  GCartFiltersInput,
  GCartFragmentData,
  GCartFragmentData_delivery_address,
  GCartFragmentData_delivery_address_city,
  GCartFragmentData_items,
  GCartFragmentData_items_modifiers,
  GCartFragmentData_items_modifiers_product,
  GCartFragmentData_items_modifiers_product_category,
  GCartFragmentData_items_modifiers_product_group,
  GCartFragmentData_items_modifiers_product_groupModifiers,
  GCartFragmentData_items_modifiers_product_groupModifiers_childModifiers,
  GCartFragmentData_items_modifiers_product_images,
  GCartFragmentData_items_modifiers_product_modifiers,
  GCartFragmentData_items_modifiers_product_parentGroup,
  GCartFragmentData_items_modifiers_product_products_sizes,
  GCartFragmentData_items_modifiers_product_products_sizes_groupModifiers,
  GCartFragmentData_items_modifiers_product_products_sizes_groupModifiers_childModifiers,
  GCartFragmentData_items_modifiers_product_products_sizes_images,
  GCartFragmentData_items_modifiers_product_products_sizes_modifiers,
  GCartFragmentData_items_modifiers_product_products_sizes_parentGroup,
  GCartFragmentData_items_product,
  GCartFragmentData_items_product_category,
  GCartFragmentData_items_product_group,
  GCartFragmentData_items_product_groupModifiers,
  GCartFragmentData_items_product_groupModifiers_childModifiers,
  GCartFragmentData_items_product_images,
  GCartFragmentData_items_product_modifiers,
  GCartFragmentData_items_product_parentGroup,
  GCartFragmentData_items_product_products_sizes,
  GCartFragmentData_items_product_products_sizes_groupModifiers,
  GCartFragmentData_items_product_products_sizes_groupModifiers_childModifiers,
  GCartFragmentData_items_product_products_sizes_images,
  GCartFragmentData_items_product_products_sizes_modifiers,
  GCartFragmentData_items_product_products_sizes_parentGroup,
  GCartFragmentData_order_info,
  GCartFragmentData_restaurant,
  GCartFragmentData_restaurant_city,
  GCartFragmentData_restaurant_terminal_delivery,
  GCartFragmentData_restaurant_terminal_kitchen,
  GCartFragmentReq,
  GCartFragmentVars,
  GCartItemFragmentData,
  GCartItemFragmentData_modifiers,
  GCartItemFragmentData_modifiers_product,
  GCartItemFragmentData_modifiers_product_category,
  GCartItemFragmentData_modifiers_product_group,
  GCartItemFragmentData_modifiers_product_groupModifiers,
  GCartItemFragmentData_modifiers_product_groupModifiers_childModifiers,
  GCartItemFragmentData_modifiers_product_images,
  GCartItemFragmentData_modifiers_product_modifiers,
  GCartItemFragmentData_modifiers_product_parentGroup,
  GCartItemFragmentData_modifiers_product_products_sizes,
  GCartItemFragmentData_modifiers_product_products_sizes_groupModifiers,
  GCartItemFragmentData_modifiers_product_products_sizes_groupModifiers_childModifiers,
  GCartItemFragmentData_modifiers_product_products_sizes_images,
  GCartItemFragmentData_modifiers_product_products_sizes_modifiers,
  GCartItemFragmentData_modifiers_product_products_sizes_parentGroup,
  GCartItemFragmentData_product,
  GCartItemFragmentData_product_category,
  GCartItemFragmentData_product_group,
  GCartItemFragmentData_product_groupModifiers,
  GCartItemFragmentData_product_groupModifiers_childModifiers,
  GCartItemFragmentData_product_images,
  GCartItemFragmentData_product_modifiers,
  GCartItemFragmentData_product_parentGroup,
  GCartItemFragmentData_product_products_sizes,
  GCartItemFragmentData_product_products_sizes_groupModifiers,
  GCartItemFragmentData_product_products_sizes_groupModifiers_childModifiers,
  GCartItemFragmentData_product_products_sizes_images,
  GCartItemFragmentData_product_products_sizes_modifiers,
  GCartItemFragmentData_product_products_sizes_parentGroup,
  GCartItemFragmentReq,
  GCartItemFragmentVars,
  GCartItemModifierFragmentData,
  GCartItemModifierFragmentData_product,
  GCartItemModifierFragmentData_product_category,
  GCartItemModifierFragmentData_product_group,
  GCartItemModifierFragmentData_product_groupModifiers,
  GCartItemModifierFragmentData_product_groupModifiers_childModifiers,
  GCartItemModifierFragmentData_product_images,
  GCartItemModifierFragmentData_product_modifiers,
  GCartItemModifierFragmentData_product_parentGroup,
  GCartItemModifierFragmentData_product_products_sizes,
  GCartItemModifierFragmentData_product_products_sizes_groupModifiers,
  GCartItemModifierFragmentData_product_products_sizes_groupModifiers_childModifiers,
  GCartItemModifierFragmentData_product_products_sizes_images,
  GCartItemModifierFragmentData_product_products_sizes_modifiers,
  GCartItemModifierFragmentData_product_products_sizes_parentGroup,
  GCartItemModifierFragmentReq,
  GCartItemModifierFragmentVars,
  GCartOrderStatus,
  GCartPaymentStatus,
  GCartPaymentType,
  GCartsPaginatorFragmentData,
  GCartsPaginatorFragmentData_data,
  GCartsPaginatorFragmentData_data_delivery_address,
  GCartsPaginatorFragmentData_data_delivery_address_city,
  GCartsPaginatorFragmentData_data_items,
  GCartsPaginatorFragmentData_data_items_modifiers,
  GCartsPaginatorFragmentData_data_items_modifiers_product,
  GCartsPaginatorFragmentData_data_items_modifiers_product_category,
  GCartsPaginatorFragmentData_data_items_modifiers_product_group,
  GCartsPaginatorFragmentData_data_items_modifiers_product_groupModifiers,
  GCartsPaginatorFragmentData_data_items_modifiers_product_groupModifiers_childModifiers,
  GCartsPaginatorFragmentData_data_items_modifiers_product_images,
  GCartsPaginatorFragmentData_data_items_modifiers_product_modifiers,
  GCartsPaginatorFragmentData_data_items_modifiers_product_parentGroup,
  GCartsPaginatorFragmentData_data_items_modifiers_product_products_sizes,
  GCartsPaginatorFragmentData_data_items_modifiers_product_products_sizes_groupModifiers,
  GCartsPaginatorFragmentData_data_items_modifiers_product_products_sizes_groupModifiers_childModifiers,
  GCartsPaginatorFragmentData_data_items_modifiers_product_products_sizes_images,
  GCartsPaginatorFragmentData_data_items_modifiers_product_products_sizes_modifiers,
  GCartsPaginatorFragmentData_data_items_modifiers_product_products_sizes_parentGroup,
  GCartsPaginatorFragmentData_data_items_product,
  GCartsPaginatorFragmentData_data_items_product_category,
  GCartsPaginatorFragmentData_data_items_product_group,
  GCartsPaginatorFragmentData_data_items_product_groupModifiers,
  GCartsPaginatorFragmentData_data_items_product_groupModifiers_childModifiers,
  GCartsPaginatorFragmentData_data_items_product_images,
  GCartsPaginatorFragmentData_data_items_product_modifiers,
  GCartsPaginatorFragmentData_data_items_product_parentGroup,
  GCartsPaginatorFragmentData_data_items_product_products_sizes,
  GCartsPaginatorFragmentData_data_items_product_products_sizes_groupModifiers,
  GCartsPaginatorFragmentData_data_items_product_products_sizes_groupModifiers_childModifiers,
  GCartsPaginatorFragmentData_data_items_product_products_sizes_images,
  GCartsPaginatorFragmentData_data_items_product_products_sizes_modifiers,
  GCartsPaginatorFragmentData_data_items_product_products_sizes_parentGroup,
  GCartsPaginatorFragmentData_data_order_info,
  GCartsPaginatorFragmentData_data_restaurant,
  GCartsPaginatorFragmentData_data_restaurant_city,
  GCartsPaginatorFragmentData_data_restaurant_terminal_delivery,
  GCartsPaginatorFragmentData_data_restaurant_terminal_kitchen,
  GCartsPaginatorFragmentData_paginatorInfo,
  GCartsPaginatorFragmentReq,
  GCartsPaginatorFragmentVars,
  GCheckCreateOrderData,
  GCheckCreateOrderData_checkCreateOrder,
  GCheckCreateOrderReq,
  GCheckCreateOrderResponseFragmentData,
  GCheckCreateOrderResponseFragmentReq,
  GCheckCreateOrderResponseFragmentVars,
  GCheckCreateOrderVars,
  GCheckoutCartData,
  GCheckoutCartData_checkoutCart,
  GCheckoutCartReq,
  GCheckoutCartVars,
  GCheckoutResponseFragmentData,
  GCheckoutResponseFragmentReq,
  GCheckoutResponseFragmentVars,
  GCityFragmentData,
  GCityFragmentReq,
  GCityFragmentVars,
  GContactPageFragmentData,
  GContactPageFragmentData_city,
  GContactPageFragmentData_contents,
  GContactPageFragmentData_contents_data,
  GContactPageFragmentData_contents_data_social_networks,
  GContactPageFragmentReq,
  GContactPageFragmentVars,
  GCreateDeliveryAddressData,
  GCreateDeliveryAddressData_createDeliveryAddress,
  GCreateDeliveryAddressData_createDeliveryAddress_city,
  GCreateDeliveryAddressInput,
  GCreateDeliveryAddressReq,
  GCreateDeliveryAddressVars,
  GCreateOrderFeedbackInput,
  GDateTime,
  GDeleteDeliveryAddressData,
  GDeleteDeliveryAddressReq,
  GDeleteDeliveryAddressVars,
  GDeliveryAddressFragmentData,
  GDeliveryAddressFragmentData_city,
  GDeliveryAddressFragmentReq,
  GDeliveryAddressFragmentVars,
  GDeliveryAreaFragmentData,
  GDeliveryAreaFragmentReq,
  GDeliveryAreaFragmentVars,
  GEditCartData,
  GEditCartData_editCart,
  GEditCartData_editCart_delivery_address,
  GEditCartData_editCart_delivery_address_city,
  GEditCartData_editCart_items,
  GEditCartData_editCart_items_modifiers,
  GEditCartData_editCart_items_modifiers_product,
  GEditCartData_editCart_items_modifiers_product_category,
  GEditCartData_editCart_items_modifiers_product_group,
  GEditCartData_editCart_items_modifiers_product_groupModifiers,
  GEditCartData_editCart_items_modifiers_product_groupModifiers_childModifiers,
  GEditCartData_editCart_items_modifiers_product_images,
  GEditCartData_editCart_items_modifiers_product_modifiers,
  GEditCartData_editCart_items_modifiers_product_parentGroup,
  GEditCartData_editCart_items_modifiers_product_products_sizes,
  GEditCartData_editCart_items_modifiers_product_products_sizes_groupModifiers,
  GEditCartData_editCart_items_modifiers_product_products_sizes_groupModifiers_childModifiers,
  GEditCartData_editCart_items_modifiers_product_products_sizes_images,
  GEditCartData_editCart_items_modifiers_product_products_sizes_modifiers,
  GEditCartData_editCart_items_modifiers_product_products_sizes_parentGroup,
  GEditCartData_editCart_items_product,
  GEditCartData_editCart_items_product_category,
  GEditCartData_editCart_items_product_group,
  GEditCartData_editCart_items_product_groupModifiers,
  GEditCartData_editCart_items_product_groupModifiers_childModifiers,
  GEditCartData_editCart_items_product_images,
  GEditCartData_editCart_items_product_modifiers,
  GEditCartData_editCart_items_product_parentGroup,
  GEditCartData_editCart_items_product_products_sizes,
  GEditCartData_editCart_items_product_products_sizes_groupModifiers,
  GEditCartData_editCart_items_product_products_sizes_groupModifiers_childModifiers,
  GEditCartData_editCart_items_product_products_sizes_images,
  GEditCartData_editCart_items_product_products_sizes_modifiers,
  GEditCartData_editCart_items_product_products_sizes_parentGroup,
  GEditCartData_editCart_order_info,
  GEditCartData_editCart_restaurant,
  GEditCartData_editCart_restaurant_city,
  GEditCartData_editCart_restaurant_terminal_delivery,
  GEditCartData_editCart_restaurant_terminal_kitchen,
  GEditCartItemData,
  GEditCartItemData_editCartItem,
  GEditCartItemData_editCartItem_delivery_address,
  GEditCartItemData_editCartItem_delivery_address_city,
  GEditCartItemData_editCartItem_items,
  GEditCartItemData_editCartItem_items_modifiers,
  GEditCartItemData_editCartItem_items_modifiers_product,
  GEditCartItemData_editCartItem_items_modifiers_product_category,
  GEditCartItemData_editCartItem_items_modifiers_product_group,
  GEditCartItemData_editCartItem_items_modifiers_product_groupModifiers,
  GEditCartItemData_editCartItem_items_modifiers_product_groupModifiers_childModifiers,
  GEditCartItemData_editCartItem_items_modifiers_product_images,
  GEditCartItemData_editCartItem_items_modifiers_product_modifiers,
  GEditCartItemData_editCartItem_items_modifiers_product_parentGroup,
  GEditCartItemData_editCartItem_items_modifiers_product_products_sizes,
  GEditCartItemData_editCartItem_items_modifiers_product_products_sizes_groupModifiers,
  GEditCartItemData_editCartItem_items_modifiers_product_products_sizes_groupModifiers_childModifiers,
  GEditCartItemData_editCartItem_items_modifiers_product_products_sizes_images,
  GEditCartItemData_editCartItem_items_modifiers_product_products_sizes_modifiers,
  GEditCartItemData_editCartItem_items_modifiers_product_products_sizes_parentGroup,
  GEditCartItemData_editCartItem_items_product,
  GEditCartItemData_editCartItem_items_product_category,
  GEditCartItemData_editCartItem_items_product_group,
  GEditCartItemData_editCartItem_items_product_groupModifiers,
  GEditCartItemData_editCartItem_items_product_groupModifiers_childModifiers,
  GEditCartItemData_editCartItem_items_product_images,
  GEditCartItemData_editCartItem_items_product_modifiers,
  GEditCartItemData_editCartItem_items_product_parentGroup,
  GEditCartItemData_editCartItem_items_product_products_sizes,
  GEditCartItemData_editCartItem_items_product_products_sizes_groupModifiers,
  GEditCartItemData_editCartItem_items_product_products_sizes_groupModifiers_childModifiers,
  GEditCartItemData_editCartItem_items_product_products_sizes_images,
  GEditCartItemData_editCartItem_items_product_products_sizes_modifiers,
  GEditCartItemData_editCartItem_items_product_products_sizes_parentGroup,
  GEditCartItemData_editCartItem_order_info,
  GEditCartItemData_editCartItem_restaurant,
  GEditCartItemData_editCartItem_restaurant_city,
  GEditCartItemData_editCartItem_restaurant_terminal_delivery,
  GEditCartItemData_editCartItem_restaurant_terminal_kitchen,
  GEditCartItemReq,
  GEditCartItemVars,
  GEditCartReq,
  GEditCartVars,
  GEmailLoginInput,
  GEmailRegisterInput,
  GFeedbackOptionFragmentData,
  GFeedbackOptionFragmentData_icon,
  GFeedbackOptionFragmentReq,
  GFeedbackOptionFragmentVars,
  GFileFragmentData,
  GFileFragmentReq,
  GFileFragmentVars,
  GForgotPasswordInput,
  GGetAllDeliveryAddressesData,
  GGetAllDeliveryAddressesData_getAllDeliveryAddresses,
  GGetAllDeliveryAddressesData_getAllDeliveryAddresses_city,
  GGetAllDeliveryAddressesReq,
  GGetAllDeliveryAddressesVars,
  GGetArchivedCartsQueryData,
  GGetArchivedCartsQueryData_getArchivedCarts,
  GGetArchivedCartsQueryData_getArchivedCarts_data,
  GGetArchivedCartsQueryData_getArchivedCarts_data_delivery_address,
  GGetArchivedCartsQueryData_getArchivedCarts_data_delivery_address_city,
  GGetArchivedCartsQueryData_getArchivedCarts_data_items,
  GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers,
  GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product,
  GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_category,
  GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_group,
  GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_groupModifiers,
  GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_groupModifiers_childModifiers,
  GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_images,
  GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_modifiers,
  GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_parentGroup,
  GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_products_sizes,
  GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_products_sizes_groupModifiers,
  GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_products_sizes_groupModifiers_childModifiers,
  GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_products_sizes_images,
  GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_products_sizes_modifiers,
  GGetArchivedCartsQueryData_getArchivedCarts_data_items_modifiers_product_products_sizes_parentGroup,
  GGetArchivedCartsQueryData_getArchivedCarts_data_items_product,
  GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_category,
  GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_group,
  GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_groupModifiers,
  GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_groupModifiers_childModifiers,
  GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_images,
  GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_modifiers,
  GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_parentGroup,
  GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_products_sizes,
  GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_products_sizes_groupModifiers,
  GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_products_sizes_groupModifiers_childModifiers,
  GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_products_sizes_images,
  GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_products_sizes_modifiers,
  GGetArchivedCartsQueryData_getArchivedCarts_data_items_product_products_sizes_parentGroup,
  GGetArchivedCartsQueryData_getArchivedCarts_data_order_info,
  GGetArchivedCartsQueryData_getArchivedCarts_data_restaurant,
  GGetArchivedCartsQueryData_getArchivedCarts_data_restaurant_city,
  GGetArchivedCartsQueryData_getArchivedCarts_data_restaurant_terminal_delivery,
  GGetArchivedCartsQueryData_getArchivedCarts_data_restaurant_terminal_kitchen,
  GGetArchivedCartsQueryData_getArchivedCarts_paginatorInfo,
  GGetArchivedCartsQueryReq,
  GGetArchivedCartsQueryVars,
  GGetCartOrderQueryData,
  GGetCartOrderQueryData_getCartOrderInfo,
  GGetCartOrderQueryData_getCartOrderInfo_delivery_address,
  GGetCartOrderQueryData_getCartOrderInfo_delivery_address_city,
  GGetCartOrderQueryData_getCartOrderInfo_items,
  GGetCartOrderQueryData_getCartOrderInfo_items_modifiers,
  GGetCartOrderQueryData_getCartOrderInfo_items_modifiers_product,
  GGetCartOrderQueryData_getCartOrderInfo_items_modifiers_product_category,
  GGetCartOrderQueryData_getCartOrderInfo_items_modifiers_product_group,
  GGetCartOrderQueryData_getCartOrderInfo_items_modifiers_product_groupModifiers,
  GGetCartOrderQueryData_getCartOrderInfo_items_modifiers_product_groupModifiers_childModifiers,
  GGetCartOrderQueryData_getCartOrderInfo_items_modifiers_product_images,
  GGetCartOrderQueryData_getCartOrderInfo_items_modifiers_product_modifiers,
  GGetCartOrderQueryData_getCartOrderInfo_items_modifiers_product_parentGroup,
  GGetCartOrderQueryData_getCartOrderInfo_items_modifiers_product_products_sizes,
  GGetCartOrderQueryData_getCartOrderInfo_items_modifiers_product_products_sizes_groupModifiers,
  GGetCartOrderQueryData_getCartOrderInfo_items_modifiers_product_products_sizes_groupModifiers_childModifiers,
  GGetCartOrderQueryData_getCartOrderInfo_items_modifiers_product_products_sizes_images,
  GGetCartOrderQueryData_getCartOrderInfo_items_modifiers_product_products_sizes_modifiers,
  GGetCartOrderQueryData_getCartOrderInfo_items_modifiers_product_products_sizes_parentGroup,
  GGetCartOrderQueryData_getCartOrderInfo_items_product,
  GGetCartOrderQueryData_getCartOrderInfo_items_product_category,
  GGetCartOrderQueryData_getCartOrderInfo_items_product_group,
  GGetCartOrderQueryData_getCartOrderInfo_items_product_groupModifiers,
  GGetCartOrderQueryData_getCartOrderInfo_items_product_groupModifiers_childModifiers,
  GGetCartOrderQueryData_getCartOrderInfo_items_product_images,
  GGetCartOrderQueryData_getCartOrderInfo_items_product_modifiers,
  GGetCartOrderQueryData_getCartOrderInfo_items_product_parentGroup,
  GGetCartOrderQueryData_getCartOrderInfo_items_product_products_sizes,
  GGetCartOrderQueryData_getCartOrderInfo_items_product_products_sizes_groupModifiers,
  GGetCartOrderQueryData_getCartOrderInfo_items_product_products_sizes_groupModifiers_childModifiers,
  GGetCartOrderQueryData_getCartOrderInfo_items_product_products_sizes_images,
  GGetCartOrderQueryData_getCartOrderInfo_items_product_products_sizes_modifiers,
  GGetCartOrderQueryData_getCartOrderInfo_items_product_products_sizes_parentGroup,
  GGetCartOrderQueryData_getCartOrderInfo_order_info,
  GGetCartOrderQueryData_getCartOrderInfo_restaurant,
  GGetCartOrderQueryData_getCartOrderInfo_restaurant_city,
  GGetCartOrderQueryData_getCartOrderInfo_restaurant_terminal_delivery,
  GGetCartOrderQueryData_getCartOrderInfo_restaurant_terminal_kitchen,
  GGetCartOrderQueryReq,
  GGetCartOrderQueryVars,
  GGetCartQueryData,
  GGetCartQueryData_getCart,
  GGetCartQueryData_getCart_delivery_address,
  GGetCartQueryData_getCart_delivery_address_city,
  GGetCartQueryData_getCart_items,
  GGetCartQueryData_getCart_items_modifiers,
  GGetCartQueryData_getCart_items_modifiers_product,
  GGetCartQueryData_getCart_items_modifiers_product_category,
  GGetCartQueryData_getCart_items_modifiers_product_group,
  GGetCartQueryData_getCart_items_modifiers_product_groupModifiers,
  GGetCartQueryData_getCart_items_modifiers_product_groupModifiers_childModifiers,
  GGetCartQueryData_getCart_items_modifiers_product_images,
  GGetCartQueryData_getCart_items_modifiers_product_modifiers,
  GGetCartQueryData_getCart_items_modifiers_product_parentGroup,
  GGetCartQueryData_getCart_items_modifiers_product_products_sizes,
  GGetCartQueryData_getCart_items_modifiers_product_products_sizes_groupModifiers,
  GGetCartQueryData_getCart_items_modifiers_product_products_sizes_groupModifiers_childModifiers,
  GGetCartQueryData_getCart_items_modifiers_product_products_sizes_images,
  GGetCartQueryData_getCart_items_modifiers_product_products_sizes_modifiers,
  GGetCartQueryData_getCart_items_modifiers_product_products_sizes_parentGroup,
  GGetCartQueryData_getCart_items_product,
  GGetCartQueryData_getCart_items_product_category,
  GGetCartQueryData_getCart_items_product_group,
  GGetCartQueryData_getCart_items_product_groupModifiers,
  GGetCartQueryData_getCart_items_product_groupModifiers_childModifiers,
  GGetCartQueryData_getCart_items_product_images,
  GGetCartQueryData_getCart_items_product_modifiers,
  GGetCartQueryData_getCart_items_product_parentGroup,
  GGetCartQueryData_getCart_items_product_products_sizes,
  GGetCartQueryData_getCart_items_product_products_sizes_groupModifiers,
  GGetCartQueryData_getCart_items_product_products_sizes_groupModifiers_childModifiers,
  GGetCartQueryData_getCart_items_product_products_sizes_images,
  GGetCartQueryData_getCart_items_product_products_sizes_modifiers,
  GGetCartQueryData_getCart_items_product_products_sizes_parentGroup,
  GGetCartQueryData_getCart_order_info,
  GGetCartQueryData_getCart_restaurant,
  GGetCartQueryData_getCart_restaurant_city,
  GGetCartQueryData_getCart_restaurant_terminal_delivery,
  GGetCartQueryData_getCart_restaurant_terminal_kitchen,
  GGetCartQueryReq,
  GGetCartQueryVars,
  GGetCitiesQueryData,
  GGetCitiesQueryData_getCities,
  GGetCitiesQueryReq,
  GGetCitiesQueryVars,
  GGetCompaignsData,
  GGetCompaignsData_getMarketingCampaigns,
  GGetCompaignsData_getMarketingCampaigns_image,
  GGetCompaignsReq,
  GGetCompaignsVars,
  GGetContactsQueryData,
  GGetContactsQueryData_getContacts,
  GGetContactsQueryData_getContacts_city,
  GGetContactsQueryData_getContacts_contents,
  GGetContactsQueryData_getContacts_contents_data,
  GGetContactsQueryData_getContacts_contents_data_social_networks,
  GGetContactsQueryReq,
  GGetContactsQueryVars,
  GGetCurrentUserData,
  GGetCurrentUserData_me,
  GGetCurrentUserReq,
  GGetCurrentUserVars,
  GGetFeedbackOptionsData,
  GGetFeedbackOptionsData_getFeedbackOptions,
  GGetFeedbackOptionsData_getFeedbackOptions_icon,
  GGetFeedbackOptionsReq,
  GGetFeedbackOptionsVars,
  GGetGroupQueryData,
  GGetGroupQueryData_getGroup,
  GGetGroupQueryData_getGroup_images,
  GGetGroupQueryReq,
  GGetGroupQueryVars,
  GGetGroupsQueryData,
  GGetGroupsQueryData_getGroups,
  GGetGroupsQueryData_getGroups_images,
  GGetGroupsQueryReq,
  GGetGroupsQueryVars,
  GGetMyCartData,
  GGetMyCartData_getMyCart,
  GGetMyCartData_getMyCart_delivery_address,
  GGetMyCartData_getMyCart_delivery_address_city,
  GGetMyCartData_getMyCart_items,
  GGetMyCartData_getMyCart_items_modifiers,
  GGetMyCartData_getMyCart_items_modifiers_product,
  GGetMyCartData_getMyCart_items_modifiers_product_category,
  GGetMyCartData_getMyCart_items_modifiers_product_group,
  GGetMyCartData_getMyCart_items_modifiers_product_groupModifiers,
  GGetMyCartData_getMyCart_items_modifiers_product_groupModifiers_childModifiers,
  GGetMyCartData_getMyCart_items_modifiers_product_images,
  GGetMyCartData_getMyCart_items_modifiers_product_modifiers,
  GGetMyCartData_getMyCart_items_modifiers_product_parentGroup,
  GGetMyCartData_getMyCart_items_modifiers_product_products_sizes,
  GGetMyCartData_getMyCart_items_modifiers_product_products_sizes_groupModifiers,
  GGetMyCartData_getMyCart_items_modifiers_product_products_sizes_groupModifiers_childModifiers,
  GGetMyCartData_getMyCart_items_modifiers_product_products_sizes_images,
  GGetMyCartData_getMyCart_items_modifiers_product_products_sizes_modifiers,
  GGetMyCartData_getMyCart_items_modifiers_product_products_sizes_parentGroup,
  GGetMyCartData_getMyCart_items_product,
  GGetMyCartData_getMyCart_items_product_category,
  GGetMyCartData_getMyCart_items_product_group,
  GGetMyCartData_getMyCart_items_product_groupModifiers,
  GGetMyCartData_getMyCart_items_product_groupModifiers_childModifiers,
  GGetMyCartData_getMyCart_items_product_images,
  GGetMyCartData_getMyCart_items_product_modifiers,
  GGetMyCartData_getMyCart_items_product_parentGroup,
  GGetMyCartData_getMyCart_items_product_products_sizes,
  GGetMyCartData_getMyCart_items_product_products_sizes_groupModifiers,
  GGetMyCartData_getMyCart_items_product_products_sizes_groupModifiers_childModifiers,
  GGetMyCartData_getMyCart_items_product_products_sizes_images,
  GGetMyCartData_getMyCart_items_product_products_sizes_modifiers,
  GGetMyCartData_getMyCart_items_product_products_sizes_parentGroup,
  GGetMyCartData_getMyCart_order_info,
  GGetMyCartData_getMyCart_restaurant,
  GGetMyCartData_getMyCart_restaurant_city,
  GGetMyCartData_getMyCart_restaurant_terminal_delivery,
  GGetMyCartData_getMyCart_restaurant_terminal_kitchen,
  GGetMyCartReq,
  GGetMyCartVars,
  GGetPageQueryData,
  GGetPageQueryData_getPage,
  GGetPageQueryData_getPage_contents,
  GGetPageQueryReq,
  GGetPageQueryVars,
  GGetProductData,
  GGetProductData_getProduct,
  GGetProductData_getProduct_category,
  GGetProductData_getProduct_group,
  GGetProductData_getProduct_groupModifiers,
  GGetProductData_getProduct_groupModifiers_childModifiers,
  GGetProductData_getProduct_images,
  GGetProductData_getProduct_modifiers,
  GGetProductData_getProduct_parentGroup,
  GGetProductData_getProduct_products_sizes,
  GGetProductData_getProduct_products_sizes_groupModifiers,
  GGetProductData_getProduct_products_sizes_groupModifiers_childModifiers,
  GGetProductData_getProduct_products_sizes_images,
  GGetProductData_getProduct_products_sizes_modifiers,
  GGetProductData_getProduct_products_sizes_parentGroup,
  GGetProductReq,
  GGetProductVars,
  GGetProductsQueryData,
  GGetProductsQueryData_getProducts,
  GGetProductsQueryData_getProducts_category,
  GGetProductsQueryData_getProducts_group,
  GGetProductsQueryData_getProducts_groupModifiers,
  GGetProductsQueryData_getProducts_groupModifiers_childModifiers,
  GGetProductsQueryData_getProducts_images,
  GGetProductsQueryData_getProducts_modifiers,
  GGetProductsQueryData_getProducts_parentGroup,
  GGetProductsQueryData_getProducts_products_sizes,
  GGetProductsQueryData_getProducts_products_sizes_groupModifiers,
  GGetProductsQueryData_getProducts_products_sizes_groupModifiers_childModifiers,
  GGetProductsQueryData_getProducts_products_sizes_images,
  GGetProductsQueryData_getProducts_products_sizes_modifiers,
  GGetProductsQueryData_getProducts_products_sizes_parentGroup,
  GGetProductsQueryReq,
  GGetProductsQueryVars,
  GGetRecommendedProductsForCartData,
  GGetRecommendedProductsForCartData_getRecommendedProductsForCart,
  GGetRecommendedProductsForCartData_getRecommendedProductsForCart_category,
  GGetRecommendedProductsForCartData_getRecommendedProductsForCart_group,
  GGetRecommendedProductsForCartData_getRecommendedProductsForCart_groupModifiers,
  GGetRecommendedProductsForCartData_getRecommendedProductsForCart_groupModifiers_childModifiers,
  GGetRecommendedProductsForCartData_getRecommendedProductsForCart_images,
  GGetRecommendedProductsForCartData_getRecommendedProductsForCart_modifiers,
  GGetRecommendedProductsForCartData_getRecommendedProductsForCart_parentGroup,
  GGetRecommendedProductsForCartData_getRecommendedProductsForCart_products_sizes,
  GGetRecommendedProductsForCartData_getRecommendedProductsForCart_products_sizes_groupModifiers,
  GGetRecommendedProductsForCartData_getRecommendedProductsForCart_products_sizes_groupModifiers_childModifiers,
  GGetRecommendedProductsForCartData_getRecommendedProductsForCart_products_sizes_images,
  GGetRecommendedProductsForCartData_getRecommendedProductsForCart_products_sizes_modifiers,
  GGetRecommendedProductsForCartData_getRecommendedProductsForCart_products_sizes_parentGroup,
  GGetRecommendedProductsForCartReq,
  GGetRecommendedProductsForCartVars,
  GGetRestaurantByLocationQueryData,
  GGetRestaurantByLocationQueryData_getRestaurantByLocation,
  GGetRestaurantByLocationQueryData_getRestaurantByLocation_city,
  GGetRestaurantByLocationQueryData_getRestaurantByLocation_terminal_delivery,
  GGetRestaurantByLocationQueryData_getRestaurantByLocation_terminal_kitchen,
  GGetRestaurantByLocationQueryReq,
  GGetRestaurantByLocationQueryVars,
  GGetRestaurantData,
  GGetRestaurantData_getRestaurant,
  GGetRestaurantData_getRestaurant_city,
  GGetRestaurantData_getRestaurant_terminal_delivery,
  GGetRestaurantData_getRestaurant_terminal_kitchen,
  GGetRestaurantReq,
  GGetRestaurantVars,
  GGetRestaurantsQueryData,
  GGetRestaurantsQueryData_getRestaurants,
  GGetRestaurantsQueryData_getRestaurants_city,
  GGetRestaurantsQueryData_getRestaurants_terminal_delivery,
  GGetRestaurantsQueryData_getRestaurants_terminal_kitchen,
  GGetRestaurantsQueryReq,
  GGetRestaurantsQueryVars,
  GGetUniquePagesData,
  GGetUniquePagesData_getUniquePages,
  GGetUniquePagesData_getUniquePages_icon,
  GGetUniquePagesReq,
  GGetUniquePagesVars,
  GGetUserData,
  GGetUserData_user,
  GGetUserReq,
  GGetUserVars,
  GGroupFiltersInput,
  GGroupFragmentData,
  GGroupFragmentData_images,
  GGroupFragmentReq,
  GGroupFragmentVars,
  GGroupModificatorFragmentData,
  GGroupModificatorFragmentData_childModifiers,
  GGroupModificatorFragmentReq,
  GGroupModificatorFragmentVars,
  GJson,
  GJsonData,
  GLogGroup,
  GMarketingCompaignFragmentData,
  GMarketingCompaignFragmentData_image,
  GMarketingCompaignFragmentReq,
  GMarketingCompaignFragmentVars,
  GMixed,
  GModificatorFragmentData,
  GModificatorFragmentReq,
  GModificatorFragmentVars,
  GNewPasswordWithCodeInput,
  GOptionInput,
  GOrderByClause,
  GOrderInfoFragmentData,
  GOrderInfoFragmentReq,
  GOrderInfoFragmentVars,
  GPageFragmentData,
  GPageFragmentData_contents,
  GPageFragmentReq,
  GPageFragmentVars,
  GPaginateInput,
  GPaginatorInfoFragmentData,
  GPaginatorInfoFragmentReq,
  GPaginatorInfoFragmentVars,
  GPhoneLoginInput,
  GPhoneRegisterInput,
  GProductFiltersInput,
  GProductFragmentData,
  GProductFragmentData_category,
  GProductFragmentData_group,
  GProductFragmentData_groupModifiers,
  GProductFragmentData_groupModifiers_childModifiers,
  GProductFragmentData_images,
  GProductFragmentData_modifiers,
  GProductFragmentData_parentGroup,
  GProductFragmentData_products_sizes,
  GProductFragmentData_products_sizes_groupModifiers,
  GProductFragmentData_products_sizes_groupModifiers_childModifiers,
  GProductFragmentData_products_sizes_images,
  GProductFragmentData_products_sizes_modifiers,
  GProductFragmentData_products_sizes_parentGroup,
  GProductFragmentReq,
  GProductFragmentVars,
  GProductType,
  GProductsSizesFragmentData,
  GProductsSizesFragmentData_groupModifiers,
  GProductsSizesFragmentData_groupModifiers_childModifiers,
  GProductsSizesFragmentData_images,
  GProductsSizesFragmentData_modifiers,
  GProductsSizesFragmentData_parentGroup,
  GProductsSizesFragmentReq,
  GProductsSizesFragmentVars,
  GRefreshTokenInput,
  GRegisterInput,
  GRegisterStatuses,
  GRemoveCartData,
  GRemoveCartData_removeCart,
  GRemoveCartData_removeCart_delivery_address,
  GRemoveCartData_removeCart_delivery_address_city,
  GRemoveCartData_removeCart_items,
  GRemoveCartData_removeCart_items_modifiers,
  GRemoveCartData_removeCart_items_modifiers_product,
  GRemoveCartData_removeCart_items_modifiers_product_category,
  GRemoveCartData_removeCart_items_modifiers_product_group,
  GRemoveCartData_removeCart_items_modifiers_product_groupModifiers,
  GRemoveCartData_removeCart_items_modifiers_product_groupModifiers_childModifiers,
  GRemoveCartData_removeCart_items_modifiers_product_images,
  GRemoveCartData_removeCart_items_modifiers_product_modifiers,
  GRemoveCartData_removeCart_items_modifiers_product_parentGroup,
  GRemoveCartData_removeCart_items_modifiers_product_products_sizes,
  GRemoveCartData_removeCart_items_modifiers_product_products_sizes_groupModifiers,
  GRemoveCartData_removeCart_items_modifiers_product_products_sizes_groupModifiers_childModifiers,
  GRemoveCartData_removeCart_items_modifiers_product_products_sizes_images,
  GRemoveCartData_removeCart_items_modifiers_product_products_sizes_modifiers,
  GRemoveCartData_removeCart_items_modifiers_product_products_sizes_parentGroup,
  GRemoveCartData_removeCart_items_product,
  GRemoveCartData_removeCart_items_product_category,
  GRemoveCartData_removeCart_items_product_group,
  GRemoveCartData_removeCart_items_product_groupModifiers,
  GRemoveCartData_removeCart_items_product_groupModifiers_childModifiers,
  GRemoveCartData_removeCart_items_product_images,
  GRemoveCartData_removeCart_items_product_modifiers,
  GRemoveCartData_removeCart_items_product_parentGroup,
  GRemoveCartData_removeCart_items_product_products_sizes,
  GRemoveCartData_removeCart_items_product_products_sizes_groupModifiers,
  GRemoveCartData_removeCart_items_product_products_sizes_groupModifiers_childModifiers,
  GRemoveCartData_removeCart_items_product_products_sizes_images,
  GRemoveCartData_removeCart_items_product_products_sizes_modifiers,
  GRemoveCartData_removeCart_items_product_products_sizes_parentGroup,
  GRemoveCartData_removeCart_order_info,
  GRemoveCartData_removeCart_restaurant,
  GRemoveCartData_removeCart_restaurant_city,
  GRemoveCartData_removeCart_restaurant_terminal_delivery,
  GRemoveCartData_removeCart_restaurant_terminal_kitchen,
  GRemoveCartReq,
  GRemoveCartVars,
  GRemoveItemFromCartData,
  GRemoveItemFromCartData_removeItemFromCart,
  GRemoveItemFromCartData_removeItemFromCart_delivery_address,
  GRemoveItemFromCartData_removeItemFromCart_delivery_address_city,
  GRemoveItemFromCartData_removeItemFromCart_items,
  GRemoveItemFromCartData_removeItemFromCart_items_modifiers,
  GRemoveItemFromCartData_removeItemFromCart_items_modifiers_product,
  GRemoveItemFromCartData_removeItemFromCart_items_modifiers_product_category,
  GRemoveItemFromCartData_removeItemFromCart_items_modifiers_product_group,
  GRemoveItemFromCartData_removeItemFromCart_items_modifiers_product_groupModifiers,
  GRemoveItemFromCartData_removeItemFromCart_items_modifiers_product_groupModifiers_childModifiers,
  GRemoveItemFromCartData_removeItemFromCart_items_modifiers_product_images,
  GRemoveItemFromCartData_removeItemFromCart_items_modifiers_product_modifiers,
  GRemoveItemFromCartData_removeItemFromCart_items_modifiers_product_parentGroup,
  GRemoveItemFromCartData_removeItemFromCart_items_modifiers_product_products_sizes,
  GRemoveItemFromCartData_removeItemFromCart_items_modifiers_product_products_sizes_groupModifiers,
  GRemoveItemFromCartData_removeItemFromCart_items_modifiers_product_products_sizes_groupModifiers_childModifiers,
  GRemoveItemFromCartData_removeItemFromCart_items_modifiers_product_products_sizes_images,
  GRemoveItemFromCartData_removeItemFromCart_items_modifiers_product_products_sizes_modifiers,
  GRemoveItemFromCartData_removeItemFromCart_items_modifiers_product_products_sizes_parentGroup,
  GRemoveItemFromCartData_removeItemFromCart_items_product,
  GRemoveItemFromCartData_removeItemFromCart_items_product_category,
  GRemoveItemFromCartData_removeItemFromCart_items_product_group,
  GRemoveItemFromCartData_removeItemFromCart_items_product_groupModifiers,
  GRemoveItemFromCartData_removeItemFromCart_items_product_groupModifiers_childModifiers,
  GRemoveItemFromCartData_removeItemFromCart_items_product_images,
  GRemoveItemFromCartData_removeItemFromCart_items_product_modifiers,
  GRemoveItemFromCartData_removeItemFromCart_items_product_parentGroup,
  GRemoveItemFromCartData_removeItemFromCart_items_product_products_sizes,
  GRemoveItemFromCartData_removeItemFromCart_items_product_products_sizes_groupModifiers,
  GRemoveItemFromCartData_removeItemFromCart_items_product_products_sizes_groupModifiers_childModifiers,
  GRemoveItemFromCartData_removeItemFromCart_items_product_products_sizes_images,
  GRemoveItemFromCartData_removeItemFromCart_items_product_products_sizes_modifiers,
  GRemoveItemFromCartData_removeItemFromCart_items_product_products_sizes_parentGroup,
  GRemoveItemFromCartData_removeItemFromCart_order_info,
  GRemoveItemFromCartData_removeItemFromCart_restaurant,
  GRemoveItemFromCartData_removeItemFromCart_restaurant_city,
  GRemoveItemFromCartData_removeItemFromCart_restaurant_terminal_delivery,
  GRemoveItemFromCartData_removeItemFromCart_restaurant_terminal_kitchen,
  GRemoveItemFromCartReq,
  GRemoveItemFromCartVars,
  GRestaurantFragmentData,
  GRestaurantFragmentData_city,
  GRestaurantFragmentData_terminal_delivery,
  GRestaurantFragmentData_terminal_kitchen,
  GRestaurantFragmentReq,
  GRestaurantFragmentVars,
  GSQLOperator,
  GScheduleRestaurantInput,
  GSendOrderFeedbackData,
  GSendOrderFeedbackData_sendOrderFeedback,
  GSendOrderFeedbackReq,
  GSendOrderFeedbackVars,
  GSocialLoginInput,
  GSocialNetworkIcon,
  GSortInput,
  GSortOrder,
  GSortType,
  GTerminalFragmentData,
  GTerminalFragmentReq,
  GTerminalFragmentVars,
  GTrashed,
  GTypeFile,
  GUniquePageFragmentData,
  GUniquePageFragmentData_icon,
  GUniquePageFragmentReq,
  GUniquePageFragmentVars,
  GUpdateDeliveryAddressInput,
  GUpdatePassword,
  GUpdateUserInput,
  GUpload,
  GUploadFileInput,
  GUserFragmentData,
  GUserFragmentReq,
  GUserFragmentVars,
  GVerifyEmailInput,
  GWeekdays,
  GWhereConditions,
  GaddItemToCartInput,
  GaddItemsToCartInput,
  GaddModifiersToCartItemInput,
  GadminCreateCityInput,
  GadminCreateCompanyEntityInput,
  GadminCreateRestaurantInput,
  GadminCreateTerminalInput,
  GadminUpdateCityInput,
  GadminUpdateCompanyEntityInput,
  GadminUpdateRestaurantInput,
  GadminUpdateTerminalInput,
  GauthGuestData,
  GauthGuestData_authGuest,
  GauthGuestData_authGuest_user,
  GauthGuestReq,
  GauthGuestVars,
  GcartItemModifierInput,
  GcartItemModifierUpdateInput,
  GeditCartInput,
  GeditCartItemInput,
  GeditModifierCartItemInput,
  GphoneAuthData,
  GphoneAuthData_phoneAuth,
  GphoneAuthData_phoneAuth_user,
  GphoneAuthReq,
  GphoneAuthVars,
  GrefreshTokenData,
  GrefreshTokenData_refreshToken,
  GrefreshTokenReq,
  GrefreshTokenVars,
  GrequestPhoneCodeAuthData,
  GrequestPhoneCodeAuthReq,
  GrequestPhoneCodeAuthVars,
  GrequestPhoneCodeRegisterData,
  GrequestPhoneCodeRegisterReq,
  GrequestPhoneCodeRegisterVars,
  GupdateCurrentUserData,
  GupdateCurrentUserData_updateMyProfile,
  GupdateCurrentUserReq,
  GupdateCurrentUserVars
])
final Serializers serializers = _serializersBuilder.build();
