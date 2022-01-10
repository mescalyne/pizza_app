import 'package:graphql/client.dart';
import 'package:injectable/injectable.dart';
import 'package:toto_mobile/src/core/data/network/models/get_feedback_options.data.gql.dart';
import 'package:toto_mobile/src/core/data/network/models/get_feedback_options.var.gql.dart';
import 'package:toto_mobile/src/core/data/network/models/get_feedback_options.req.gql.dart';
import 'package:toto_mobile/src/utils/logger.dart';

abstract class GetFeedbackOptionsApi {
  Future<GGetFeedbackOptionsData?> getFeedbackOptions();
}

@Injectable(as: GetFeedbackOptionsApi)
class GetFeedbackOptionsApiImpl extends GetFeedbackOptionsApi {
  final GraphQLClient _client;

  GetFeedbackOptionsApiImpl(this._client);

  @override
  Future<GGetFeedbackOptionsData?> getFeedbackOptions() async {
    final vars = GGetFeedbackOptionsVars();
    final req = GGetFeedbackOptionsReq(
          (reqVars) => reqVars.vars = vars.toBuilder(),
    );

    final result = await _client.query(QueryOptions(
      document: req.operation.document,
      variables: vars.toJson(),
      fetchPolicy: FetchPolicy.noCache,
    ));

    if (result.hasException) throw Exception(result.exception);

    Logger.logger('getFeedbackOptions', result.data.toString());
    return (result.data != null) ? GGetFeedbackOptionsData.fromJson(result.data!) : null;
  }
}