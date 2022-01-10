// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:gql/ast.dart' as _i1;
import 'package:toto_mobile/src/core/data/network/models/group_modificator_fragment.ast.gql.dart'
    as _i5;
import 'package:toto_mobile/src/core/data/network/models/modificator_fragment.ast.gql.dart'
    as _i4;
import 'package:toto_mobile/src/core/data/network/models/product_fragment.ast.gql.dart'
    as _i2;
import 'package:toto_mobile/src/core/data/network/models/products_size_fragment.ast.gql.dart'
    as _i3;

const GetRecommendedProductsForCart = _i1.OperationDefinitionNode(
    type: _i1.OperationType.query,
    name: _i1.NameNode(value: 'GetRecommendedProductsForCart'),
    variableDefinitions: [
      _i1.VariableDefinitionNode(
          variable: _i1.VariableNode(name: _i1.NameNode(value: 'limit')),
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'Int'), isNonNull: true),
          defaultValue: _i1.DefaultValueNode(value: null),
          directives: [])
    ],
    directives: [],
    selectionSet: _i1.SelectionSetNode(selections: [
      _i1.FieldNode(
          name: _i1.NameNode(value: 'getRecommendedProductsForCart'),
          alias: null,
          arguments: [
            _i1.ArgumentNode(
                name: _i1.NameNode(value: 'limit'),
                value: _i1.VariableNode(name: _i1.NameNode(value: 'limit')))
          ],
          directives: [],
          selectionSet: _i1.SelectionSetNode(selections: [
            _i1.FragmentSpreadNode(
                name: _i1.NameNode(value: 'ProductFragment'), directives: [])
          ]))
    ]));
const document = _i1.DocumentNode(definitions: [
  GetRecommendedProductsForCart,
  _i2.ProductFragment,
  _i3.ProductsSizesFragment,
  _i4.ModificatorFragment,
  _i5.GroupModificatorFragment
]);
