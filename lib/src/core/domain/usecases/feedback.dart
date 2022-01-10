
import 'package:injectable/injectable.dart';
import 'package:toto_mobile/src/core/data/repository/feedback/feedback_options.dart';
import 'package:toto_mobile/src/core/data/repository/feedback/send_feedback.dart';
import 'package:toto_mobile/src/core/domain/entities/feedback.dart';
import 'package:toto_mobile/src/core/domain/entities/feedback_options.dart';
import 'package:toto_mobile/src/utils/result.dart';

abstract class FeedbackUseCase {
  Future<Result<List<FeedbackOptionsDto>>> getFeedbackOptions();
  Future<bool> sendFeedback(String? comment, Set<int> ids, int estimate, int cartId);
}

@Injectable(as: FeedbackUseCase)
class FeedbackUseCaseImpl extends FeedbackUseCase {

  final SendFeedbackRepository _sendFeedbackRepository;
  final FeedbackOptionsRepository _feedbackOptionsRepository;

  FeedbackUseCaseImpl(this._sendFeedbackRepository, this._feedbackOptionsRepository);

  @override
  Future<Result<List<FeedbackOptionsDto>>> getFeedbackOptions() async {
    return await _feedbackOptionsRepository.getFeedbackOptions();
  }

  @override
  Future<bool> sendFeedback(String? comment, Set<int> ids, int estimate, int cartId) async {
    final marks = ids.map((id) => FeedbackMarkDto(optionId: id, mark: true)).toList();
    var feedback = FeedbackDto(id: cartId, mark: estimate, marksOptions: marks, comment: comment);
    var result = await _sendFeedbackRepository.sendFeedback(feedback);
    return result;
  }

}