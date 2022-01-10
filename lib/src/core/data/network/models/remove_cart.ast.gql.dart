// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:gql/ast.dart' as _i1;
import 'package:toto_mobile/src/core/data/network/models/cart_fragment.ast.gql.dart'
    as _i2;
import 'package:toto_mobile/src/core/data/network/models/cartItem_fragment.ast.gql.dart'
    as _i5;
import 'package:toto_mobile/src/core/data/network/models/cartItem_modifier_fragment.ast.gql.dart'
    as _i10;
import 'package:toto_mobile/src/core/data/network/models/city_fragment.ast.gql.dart'
    as _i4;
import 'package:toto_mobile/src/core/data/network/models/delivery_address_fragment.ast.gql.dart'
    as _i3;
import 'package:toto_mobile/src/core/data/network/models/group_modificator_fragment.ast.gql.dart'
    as _i9;
import 'package:toto_mobile/src/core/data/network/models/modificator_fragment.ast.gql.dart'
    as _i8;
import 'package:toto_mobile/src/core/data/network/models/order_info_fragment.ast.gql.dart'
    as _i11;
import 'package:toto_mobile/src/core/data/network/models/product_fragment.ast.gql.dart'
    as _i6;
import 'package:toto_mobile/src/core/data/network/models/products_size_fragment.ast.gql.dart'
    as _i7;
import 'package:toto_mobile/src/core/data/network/models/restaurants_fragment.ast.gql.dart'
    as _i12;
import 'package:toto_mobile/src/core/data/network/models/terminal_fragment.ast.gql.dart'
    as _i13;

const RemoveCart = _i1.OperationDefinitionNode(
    type: _i1.OperationType.mutation,
    name: _i1.NameNode(value: 'RemoveCart'),
    variableDefinitions: [],
    directives: [],
    selectionSet: _i1.SelectionSetNode(selections: [
      _i1.FieldNode(
          name: _i1.NameNode(value: 'removeCart'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: _i1.SelectionSetNode(selections: [
            _i1.FragmentSpreadNode(
                name: _i1.NameNode(value: 'CartFragment'), directives: [])
          ]))
    ]));
const document = _i1.DocumentNode(definitions: [
  RemoveCart,
  _i2.CartFragment,
  _i3.DeliveryAddressFragment,
  _i4.CityFragment,
  _i5.CartItemFragment,
  _i6.ProductFragment,
  _i7.ProductsSizesFragment,
  _i8.ModificatorFragment,
  _i9.GroupModificatorFragment,
  _i10.CartItemModifierFragment,
  _i11.OrderInfoFragment,
  _i12.RestaurantFragment,
  _i13.TerminalFragment
]);
