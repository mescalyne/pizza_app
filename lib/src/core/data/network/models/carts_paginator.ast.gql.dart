// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:gql/ast.dart' as _i1;
import 'package:toto_mobile/src/core/data/network/models/cart_fragment.ast.gql.dart'
    as _i3;
import 'package:toto_mobile/src/core/data/network/models/cartItem_fragment.ast.gql.dart'
    as _i6;
import 'package:toto_mobile/src/core/data/network/models/cartItem_modifier_fragment.ast.gql.dart'
    as _i11;
import 'package:toto_mobile/src/core/data/network/models/city_fragment.ast.gql.dart'
    as _i5;
import 'package:toto_mobile/src/core/data/network/models/delivery_address_fragment.ast.gql.dart'
    as _i4;
import 'package:toto_mobile/src/core/data/network/models/group_modificator_fragment.ast.gql.dart'
    as _i10;
import 'package:toto_mobile/src/core/data/network/models/modificator_fragment.ast.gql.dart'
    as _i9;
import 'package:toto_mobile/src/core/data/network/models/order_info_fragment.ast.gql.dart'
    as _i12;
import 'package:toto_mobile/src/core/data/network/models/paginator_info_fragment.ast.gql.dart'
    as _i2;
import 'package:toto_mobile/src/core/data/network/models/product_fragment.ast.gql.dart'
    as _i7;
import 'package:toto_mobile/src/core/data/network/models/products_size_fragment.ast.gql.dart'
    as _i8;
import 'package:toto_mobile/src/core/data/network/models/restaurants_fragment.ast.gql.dart'
    as _i13;
import 'package:toto_mobile/src/core/data/network/models/terminal_fragment.ast.gql.dart'
    as _i14;

const CartsPaginatorFragment = _i1.FragmentDefinitionNode(
    name: _i1.NameNode(value: 'CartsPaginatorFragment'),
    typeCondition: _i1.TypeConditionNode(
        on: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'CartsPaginator'), isNonNull: false)),
    directives: [],
    selectionSet: _i1.SelectionSetNode(selections: [
      _i1.FieldNode(
          name: _i1.NameNode(value: 'paginatorInfo'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: _i1.SelectionSetNode(selections: [
            _i1.FragmentSpreadNode(
                name: _i1.NameNode(value: 'PaginatorInfoFragment'),
                directives: [])
          ])),
      _i1.FieldNode(
          name: _i1.NameNode(value: 'data'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: _i1.SelectionSetNode(selections: [
            _i1.FragmentSpreadNode(
                name: _i1.NameNode(value: 'CartFragment'), directives: [])
          ]))
    ]));
const document = _i1.DocumentNode(definitions: [
  CartsPaginatorFragment,
  _i2.PaginatorInfoFragment,
  _i3.CartFragment,
  _i4.DeliveryAddressFragment,
  _i5.CityFragment,
  _i6.CartItemFragment,
  _i7.ProductFragment,
  _i8.ProductsSizesFragment,
  _i9.ModificatorFragment,
  _i10.GroupModificatorFragment,
  _i11.CartItemModifierFragment,
  _i12.OrderInfoFragment,
  _i13.RestaurantFragment,
  _i14.TerminalFragment
]);
