// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:gql/ast.dart' as _i1;
import 'package:toto_mobile/src/core/data/network/models/cartItem_fragment.ast.gql.dart'
    as _i4;
import 'package:toto_mobile/src/core/data/network/models/cartItem_modifier_fragment.ast.gql.dart'
    as _i9;
import 'package:toto_mobile/src/core/data/network/models/city_fragment.ast.gql.dart'
    as _i3;
import 'package:toto_mobile/src/core/data/network/models/delivery_address_fragment.ast.gql.dart'
    as _i2;
import 'package:toto_mobile/src/core/data/network/models/group_modificator_fragment.ast.gql.dart'
    as _i8;
import 'package:toto_mobile/src/core/data/network/models/modificator_fragment.ast.gql.dart'
    as _i7;
import 'package:toto_mobile/src/core/data/network/models/order_info_fragment.ast.gql.dart'
    as _i10;
import 'package:toto_mobile/src/core/data/network/models/product_fragment.ast.gql.dart'
    as _i5;
import 'package:toto_mobile/src/core/data/network/models/products_size_fragment.ast.gql.dart'
    as _i6;
import 'package:toto_mobile/src/core/data/network/models/restaurants_fragment.ast.gql.dart'
    as _i11;
import 'package:toto_mobile/src/core/data/network/models/terminal_fragment.ast.gql.dart'
    as _i12;

const CartFragment = _i1.FragmentDefinitionNode(
    name: _i1.NameNode(value: 'CartFragment'),
    typeCondition: _i1.TypeConditionNode(
        on: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'Cart'), isNonNull: false)),
    directives: [],
    selectionSet: _i1.SelectionSetNode(selections: [
      _i1.FieldNode(
          name: _i1.NameNode(value: 'id'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null),
      _i1.FieldNode(
          name: _i1.NameNode(value: 'organization'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null),
      _i1.FieldNode(
          name: _i1.NameNode(value: 'terminal_id'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null),
      _i1.FieldNode(
          name: _i1.NameNode(value: 'delivery_address'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: _i1.SelectionSetNode(selections: [
            _i1.FragmentSpreadNode(
                name: _i1.NameNode(value: 'DeliveryAddressFragment'),
                directives: [])
          ])),
      _i1.FieldNode(
          name: _i1.NameNode(value: 'is_self_service'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null),
      _i1.FieldNode(
          name: _i1.NameNode(value: 'cart_order_status'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null),
      _i1.FieldNode(
          name: _i1.NameNode(value: 'cart_payment_status'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null),
      _i1.FieldNode(
          name: _i1.NameNode(value: 'items'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: _i1.SelectionSetNode(selections: [
            _i1.FragmentSpreadNode(
                name: _i1.NameNode(value: 'CartItemFragment'), directives: [])
          ])),
      _i1.FieldNode(
          name: _i1.NameNode(value: 'payment_type'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null),
      _i1.FieldNode(
          name: _i1.NameNode(value: 'change_from'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null),
      _i1.FieldNode(
          name: _i1.NameNode(value: 'coupon'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null),
      _i1.FieldNode(
          name: _i1.NameNode(value: 'bonus_sum'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null),
      _i1.FieldNode(
          name: _i1.NameNode(value: 'discount_sum'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null),
      _i1.FieldNode(
          name: _i1.NameNode(value: 'customer_name'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null),
      _i1.FieldNode(
          name: _i1.NameNode(value: 'customer_phone'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null),
      _i1.FieldNode(
          name: _i1.NameNode(value: 'date'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null),
      _i1.FieldNode(
          name: _i1.NameNode(value: 'persons_count'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null),
      _i1.FieldNode(
          name: _i1.NameNode(value: 'total'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null),
      _i1.FieldNode(
          name: _i1.NameNode(value: 'total_payment'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null),
      _i1.FieldNode(
          name: _i1.NameNode(value: 'delivery_price'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null),
      _i1.FieldNode(
          name: _i1.NameNode(value: 'order_info'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: _i1.SelectionSetNode(selections: [
            _i1.FragmentSpreadNode(
                name: _i1.NameNode(value: 'OrderInfoFragment'), directives: [])
          ])),
      _i1.FieldNode(
          name: _i1.NameNode(value: 'comment'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null),
      _i1.FieldNode(
          name: _i1.NameNode(value: 'restaurant'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: _i1.SelectionSetNode(selections: [
            _i1.FragmentSpreadNode(
                name: _i1.NameNode(value: 'RestaurantFragment'), directives: [])
          ]))
    ]));
const document = _i1.DocumentNode(definitions: [
  CartFragment,
  _i2.DeliveryAddressFragment,
  _i3.CityFragment,
  _i4.CartItemFragment,
  _i5.ProductFragment,
  _i6.ProductsSizesFragment,
  _i7.ModificatorFragment,
  _i8.GroupModificatorFragment,
  _i9.CartItemModifierFragment,
  _i10.OrderInfoFragment,
  _i11.RestaurantFragment,
  _i12.TerminalFragment
]);
