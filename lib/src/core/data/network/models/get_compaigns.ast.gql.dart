// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:gql/ast.dart' as _i1;
import 'package:toto_mobile/src/core/data/network/models/file_fragment.ast.gql.dart'
    as _i3;
import 'package:toto_mobile/src/core/data/network/models/marketing_compain_fragment.ast.gql.dart'
    as _i2;

const GetCompaigns = _i1.OperationDefinitionNode(
    type: _i1.OperationType.query,
    name: _i1.NameNode(value: 'GetCompaigns'),
    variableDefinitions: [],
    directives: [],
    selectionSet: _i1.SelectionSetNode(selections: [
      _i1.FieldNode(
          name: _i1.NameNode(value: 'getMarketingCampaigns'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: _i1.SelectionSetNode(selections: [
            _i1.FragmentSpreadNode(
                name: _i1.NameNode(value: 'MarketingCompaignFragment'),
                directives: [])
          ]))
    ]));
const document = _i1.DocumentNode(definitions: [
  GetCompaigns,
  _i2.MarketingCompaignFragment,
  _i3.FileFragment
]);
