// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:gql/ast.dart' as _i1;
import 'package:toto_mobile/src/core/data/network/models/user_fragment.ast.gql.dart'
    as _i2;

const GetCurrentUser = _i1.OperationDefinitionNode(
    type: _i1.OperationType.query,
    name: _i1.NameNode(value: 'GetCurrentUser'),
    variableDefinitions: [],
    directives: [],
    selectionSet: _i1.SelectionSetNode(selections: [
      _i1.FieldNode(
          name: _i1.NameNode(value: 'me'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: _i1.SelectionSetNode(selections: [
            _i1.FragmentSpreadNode(
                name: _i1.NameNode(value: 'UserFragment'), directives: [])
          ]))
    ]));
const document =
    _i1.DocumentNode(definitions: [GetCurrentUser, _i2.UserFragment]);
