// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:gql/ast.dart' as _i1;
import 'package:toto_mobile/src/core/data/network/models/cart_fragment.ast.gql.dart'
    as _i4;
import 'package:toto_mobile/src/core/data/network/models/cartItem_fragment.ast.gql.dart'
    as _i7;
import 'package:toto_mobile/src/core/data/network/models/cartItem_modifier_fragment.ast.gql.dart'
    as _i12;
import 'package:toto_mobile/src/core/data/network/models/carts_paginator.ast.gql.dart'
    as _i2;
import 'package:toto_mobile/src/core/data/network/models/city_fragment.ast.gql.dart'
    as _i6;
import 'package:toto_mobile/src/core/data/network/models/delivery_address_fragment.ast.gql.dart'
    as _i5;
import 'package:toto_mobile/src/core/data/network/models/group_modificator_fragment.ast.gql.dart'
    as _i11;
import 'package:toto_mobile/src/core/data/network/models/modificator_fragment.ast.gql.dart'
    as _i10;
import 'package:toto_mobile/src/core/data/network/models/order_info_fragment.ast.gql.dart'
    as _i13;
import 'package:toto_mobile/src/core/data/network/models/paginator_info_fragment.ast.gql.dart'
    as _i3;
import 'package:toto_mobile/src/core/data/network/models/product_fragment.ast.gql.dart'
    as _i8;
import 'package:toto_mobile/src/core/data/network/models/products_size_fragment.ast.gql.dart'
    as _i9;
import 'package:toto_mobile/src/core/data/network/models/restaurants_fragment.ast.gql.dart'
    as _i14;
import 'package:toto_mobile/src/core/data/network/models/terminal_fragment.ast.gql.dart'
    as _i15;

const GetArchivedCartsQuery = _i1.OperationDefinitionNode(
    type: _i1.OperationType.query,
    name: _i1.NameNode(value: 'GetArchivedCartsQuery'),
    variableDefinitions: [
      _i1.VariableDefinitionNode(
          variable: _i1.VariableNode(name: _i1.NameNode(value: 'page')),
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'Int'), isNonNull: false),
          defaultValue: _i1.DefaultValueNode(value: null),
          directives: []),
      _i1.VariableDefinitionNode(
          variable: _i1.VariableNode(name: _i1.NameNode(value: 'perPage')),
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'Int'), isNonNull: false),
          defaultValue: _i1.DefaultValueNode(value: null),
          directives: []),
      _i1.VariableDefinitionNode(
          variable: _i1.VariableNode(name: _i1.NameNode(value: 'filters')),
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'CartFiltersInput'), isNonNull: false),
          defaultValue: _i1.DefaultValueNode(value: null),
          directives: [])
    ],
    directives: [],
    selectionSet: _i1.SelectionSetNode(selections: [
      _i1.FieldNode(
          name: _i1.NameNode(value: 'getArchivedCarts'),
          alias: null,
          arguments: [
            _i1.ArgumentNode(
                name: _i1.NameNode(value: 'page'),
                value: _i1.VariableNode(name: _i1.NameNode(value: 'page'))),
            _i1.ArgumentNode(
                name: _i1.NameNode(value: 'perPage'),
                value: _i1.VariableNode(name: _i1.NameNode(value: 'perPage'))),
            _i1.ArgumentNode(
                name: _i1.NameNode(value: 'filters'),
                value: _i1.VariableNode(name: _i1.NameNode(value: 'filters')))
          ],
          directives: [],
          selectionSet: _i1.SelectionSetNode(selections: [
            _i1.FragmentSpreadNode(
                name: _i1.NameNode(value: 'CartsPaginatorFragment'),
                directives: [])
          ]))
    ]));
const document = _i1.DocumentNode(definitions: [
  GetArchivedCartsQuery,
  _i2.CartsPaginatorFragment,
  _i3.PaginatorInfoFragment,
  _i4.CartFragment,
  _i5.DeliveryAddressFragment,
  _i6.CityFragment,
  _i7.CartItemFragment,
  _i8.ProductFragment,
  _i9.ProductsSizesFragment,
  _i10.ModificatorFragment,
  _i11.GroupModificatorFragment,
  _i12.CartItemModifierFragment,
  _i13.OrderInfoFragment,
  _i14.RestaurantFragment,
  _i15.TerminalFragment
]);
