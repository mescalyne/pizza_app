// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:gql/ast.dart' as _i1;
import 'package:toto_mobile/src/core/data/network/models/checkout_cart_fragment.ast.gql.dart'
    as _i2;

const CheckoutCart = _i1.OperationDefinitionNode(
    type: _i1.OperationType.mutation,
    name: _i1.NameNode(value: 'CheckoutCart'),
    variableDefinitions: [],
    directives: [],
    selectionSet: _i1.SelectionSetNode(selections: [
      _i1.FieldNode(
          name: _i1.NameNode(value: 'checkoutCart'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: _i1.SelectionSetNode(selections: [
            _i1.FragmentSpreadNode(
                name: _i1.NameNode(value: 'CheckoutResponseFragment'),
                directives: [])
          ]))
    ]));
const document =
    _i1.DocumentNode(definitions: [CheckoutCart, _i2.CheckoutResponseFragment]);
