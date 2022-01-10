import 'package:graphql/client.dart';
import 'package:injectable/injectable.dart';
import 'package:toto_mobile/src/core/data/network/models/send_order_feedback.data.gql.dart';
import 'package:toto_mobile/src/core/data/network/models/send_order_feedback.var.gql.dart';
import 'package:toto_mobile/src/core/data/network/models/send_order_feedback.req.gql.dart';
import 'package:toto_mobile/src/core/data/network/models/toto.schema.schema.gql.dart';
import 'package:toto_mobile/src/core/domain/entities/feedback.dart';
import 'package:toto_mobile/src/utils/logger.dart';
import 'package:built_collection/src/list.dart';

abstract class SendFeedbackApi {
  Future<GSendOrderFeedbackData?> sendOrderFeedback(FeedbackDto feedback);
}

@Injectable(as: SendFeedbackApi)
class SendFeedbackApiImpl extends SendFeedbackApi {
  final GraphQLClient _client;

  SendFeedbackApiImpl(this._client);

  @override
  Future<GSendOrderFeedbackData?> sendOrderFeedback(FeedbackDto feedback) async {
    final vars = GSendOrderFeedbackVars(
          (mVar) {
        mVar.cart_id = feedback.id;
        mVar.comment = feedback.comment;
        mVar.mark = feedback.mark;
        var options = ListBuilder<GOptionInput>();
        for (var item in feedback.marksOptions) {
          var option = GOptionInputBuilder();
          option.option_id = item.optionId;
          option.mark = item.mark;
          options.add(option.build());
        }
        mVar.options = options;
      },
    );

    final req = GSendOrderFeedbackReq(
          (b) => b.vars = vars.toBuilder(),
    );

    final result = await _client.mutate(MutationOptions(
      document: req.operation.document,
      variables: vars.toJson(),
      fetchPolicy: FetchPolicy.noCache,
    ));

    if (result.hasException) throw Exception(result.exception);

    Logger.logger('sendOrderFeedback', result.data.toString());
    return (result.data != null) ? GSendOrderFeedbackData.fromJson(result.data!) : null;
  }

}