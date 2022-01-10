// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:gql/ast.dart' as _i1;
import 'package:toto_mobile/src/core/data/network/models/feedback_options_fragment.ast.gql.dart'
    as _i2;

const GetFeedbackOptions = _i1.OperationDefinitionNode(
    type: _i1.OperationType.query,
    name: _i1.NameNode(value: 'GetFeedbackOptions'),
    variableDefinitions: [],
    directives: [],
    selectionSet: _i1.SelectionSetNode(selections: [
      _i1.FieldNode(
          name: _i1.NameNode(value: 'getFeedbackOptions'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: _i1.SelectionSetNode(selections: [
            _i1.FragmentSpreadNode(
                name: _i1.NameNode(value: 'FeedbackOptionFragment'),
                directives: [])
          ]))
    ]));
const document = _i1.DocumentNode(
    definitions: [GetFeedbackOptions, _i2.FeedbackOptionFragment]);
