// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:gql/ast.dart' as _i1;
import 'package:toto_mobile/src/core/data/network/models/city_fragment.ast.gql.dart'
    as _i3;
import 'package:toto_mobile/src/core/data/network/models/restaurants_fragment.ast.gql.dart'
    as _i2;
import 'package:toto_mobile/src/core/data/network/models/terminal_fragment.ast.gql.dart'
    as _i4;

const GetRestaurantByLocationQuery = _i1.OperationDefinitionNode(
    type: _i1.OperationType.query,
    name: _i1.NameNode(value: 'GetRestaurantByLocationQuery'),
    variableDefinitions: [
      _i1.VariableDefinitionNode(
          variable: _i1.VariableNode(name: _i1.NameNode(value: 'latitude')),
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'Float'), isNonNull: true),
          defaultValue: _i1.DefaultValueNode(value: null),
          directives: []),
      _i1.VariableDefinitionNode(
          variable: _i1.VariableNode(name: _i1.NameNode(value: 'longitude')),
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'Float'), isNonNull: true),
          defaultValue: _i1.DefaultValueNode(value: null),
          directives: [])
    ],
    directives: [],
    selectionSet: _i1.SelectionSetNode(selections: [
      _i1.FieldNode(
          name: _i1.NameNode(value: 'getRestaurantByLocation'),
          alias: null,
          arguments: [
            _i1.ArgumentNode(
                name: _i1.NameNode(value: 'latitude'),
                value: _i1.VariableNode(name: _i1.NameNode(value: 'latitude'))),
            _i1.ArgumentNode(
                name: _i1.NameNode(value: 'longitude'),
                value: _i1.VariableNode(name: _i1.NameNode(value: 'longitude')))
          ],
          directives: [],
          selectionSet: _i1.SelectionSetNode(selections: [
            _i1.FragmentSpreadNode(
                name: _i1.NameNode(value: 'RestaurantFragment'), directives: [])
          ]))
    ]));
const document = _i1.DocumentNode(definitions: [
  GetRestaurantByLocationQuery,
  _i2.RestaurantFragment,
  _i3.CityFragment,
  _i4.TerminalFragment
]);
