// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:gql/ast.dart' as _i1;
import 'package:toto_mobile/src/core/data/network/models/city_fragment.ast.gql.dart'
    as _i3;
import 'package:toto_mobile/src/core/data/network/models/delivery_address_fragment.ast.gql.dart'
    as _i2;

const CreateDeliveryAddress = _i1.OperationDefinitionNode(
    type: _i1.OperationType.mutation,
    name: _i1.NameNode(value: 'CreateDeliveryAddress'),
    variableDefinitions: [
      _i1.VariableDefinitionNode(
          variable: _i1.VariableNode(name: _i1.NameNode(value: 'input')),
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'CreateDeliveryAddressInput'),
              isNonNull: false),
          defaultValue: _i1.DefaultValueNode(value: null),
          directives: [])
    ],
    directives: [],
    selectionSet: _i1.SelectionSetNode(selections: [
      _i1.FieldNode(
          name: _i1.NameNode(value: 'createDeliveryAddress'),
          alias: null,
          arguments: [
            _i1.ArgumentNode(
                name: _i1.NameNode(value: 'input'),
                value: _i1.VariableNode(name: _i1.NameNode(value: 'input')))
          ],
          directives: [],
          selectionSet: _i1.SelectionSetNode(selections: [
            _i1.FragmentSpreadNode(
                name: _i1.NameNode(value: 'DeliveryAddressFragment'),
                directives: [])
          ]))
    ]));
const document = _i1.DocumentNode(definitions: [
  CreateDeliveryAddress,
  _i2.DeliveryAddressFragment,
  _i3.CityFragment
]);
