// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:gql/ast.dart' as _i1;
import 'package:toto_mobile/src/core/data/network/models/check_create_order_response.ast.gql.dart'
    as _i2;

const CheckCreateOrder = _i1.OperationDefinitionNode(
    type: _i1.OperationType.mutation,
    name: _i1.NameNode(value: 'CheckCreateOrder'),
    variableDefinitions: [],
    directives: [],
    selectionSet: _i1.SelectionSetNode(selections: [
      _i1.FieldNode(
          name: _i1.NameNode(value: 'checkCreateOrder'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: _i1.SelectionSetNode(selections: [
            _i1.FragmentSpreadNode(
                name: _i1.NameNode(value: 'CheckCreateOrderResponseFragment'),
                directives: [])
          ]))
    ]));
const document = _i1.DocumentNode(
    definitions: [CheckCreateOrder, _i2.CheckCreateOrderResponseFragment]);
