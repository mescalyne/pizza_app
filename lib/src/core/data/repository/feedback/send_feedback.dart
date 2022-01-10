
import 'package:graphql/client.dart';
import 'package:injectable/injectable.dart';
import 'package:toto_mobile/src/core/data/network/service/feedback/send_feedback.dart';
import 'package:toto_mobile/src/core/domain/entities/feedback.dart';
import 'package:toto_mobile/src/utils/logger.dart';

abstract class SendFeedbackRepository {
  Future<bool> sendFeedback(FeedbackDto feedback);
}

@Injectable(as: SendFeedbackRepository)
class SendFeedbackRepositoryImpl extends SendFeedbackRepository {
  final SendFeedbackApi _feedbackApi;

  SendFeedbackRepositoryImpl(this._feedbackApi);

  @override
  Future<bool> sendFeedback(FeedbackDto feedback) async {
    try {
      final _feedbackQueryData = await _feedbackApi.sendOrderFeedback(feedback);
      if (_feedbackQueryData?.sendOrderFeedback?.id != null) {
        return true;
      }
      return false;
    } on GraphQLError catch (e) {
      Logger.logger('GraphQLError', '$e');
      return false;
    } catch (e) {
      Logger.logger('NetworkError', '$e');
      return false;
    }
  }
}