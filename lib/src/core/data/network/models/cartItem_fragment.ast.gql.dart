// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:gql/ast.dart' as _i1;
import 'package:toto_mobile/src/core/data/network/models/cartItem_modifier_fragment.ast.gql.dart'
    as _i6;
import 'package:toto_mobile/src/core/data/network/models/group_modificator_fragment.ast.gql.dart'
    as _i5;
import 'package:toto_mobile/src/core/data/network/models/modificator_fragment.ast.gql.dart'
    as _i4;
import 'package:toto_mobile/src/core/data/network/models/product_fragment.ast.gql.dart'
    as _i2;
import 'package:toto_mobile/src/core/data/network/models/products_size_fragment.ast.gql.dart'
    as _i3;

const CartItemFragment = _i1.FragmentDefinitionNode(
    name: _i1.NameNode(value: 'CartItemFragment'),
    typeCondition: _i1.TypeConditionNode(
        on: _i1.NamedTypeNode(
            name: _i1.NameNode(value: 'CartItem'), isNonNull: false)),
    directives: [],
    selectionSet: _i1.SelectionSetNode(selections: [
      _i1.FieldNode(
          name: _i1.NameNode(value: 'id'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null),
      _i1.FieldNode(
          name: _i1.NameNode(value: 'product_id'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null),
      _i1.FieldNode(
          name: _i1.NameNode(value: 'product'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: _i1.SelectionSetNode(selections: [
            _i1.FragmentSpreadNode(
                name: _i1.NameNode(value: 'ProductFragment'), directives: [])
          ])),
      _i1.FieldNode(
          name: _i1.NameNode(value: 'name'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null),
      _i1.FieldNode(
          name: _i1.NameNode(value: 'amount'),
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
          name: _i1.NameNode(value: 'discount_sum'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null),
      _i1.FieldNode(
          name: _i1.NameNode(value: 'sum'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null),
      _i1.FieldNode(
          name: _i1.NameNode(value: 'code'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null),
      _i1.FieldNode(
          name: _i1.NameNode(value: 'modifiers'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: _i1.SelectionSetNode(selections: [
            _i1.FragmentSpreadNode(
                name: _i1.NameNode(value: 'CartItemModifierFragment'),
                directives: [])
          ]))
    ]));
const document = _i1.DocumentNode(definitions: [
  CartItemFragment,
  _i2.ProductFragment,
  _i3.ProductsSizesFragment,
  _i4.ModificatorFragment,
  _i5.GroupModificatorFragment,
  _i6.CartItemModifierFragment
]);
