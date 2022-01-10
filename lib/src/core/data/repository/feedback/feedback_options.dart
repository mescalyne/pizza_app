

import 'package:graphql/client.dart';
import 'package:injectable/injectable.dart';
import 'package:toto_mobile/src/core/data/adapters/feedback_options.dart';
import 'package:toto_mobile/src/core/data/models/network_result.dart';
import 'package:toto_mobile/src/core/data/network/service/feedback/get_feedback_options.dart';
import 'package:toto_mobile/src/core/domain/entities/feedback_options.dart';
import 'package:toto_mobile/src/utils/logger.dart';
import 'package:toto_mobile/src/utils/result.dart';

abstract class FeedbackOptionsRepository {
  Future<Result<List<FeedbackOptionsDto>>> getFeedbackOptions();
}

@Injectable(as: FeedbackOptionsRepository)
class FeedbackOptionsRepositoryImpl extends FeedbackOptionsRepository {
  final GetFeedbackOptionsApi _feedbackApi;

  FeedbackOptionsRepositoryImpl(this._feedbackApi);

  @override
  Future<Result<List<FeedbackOptionsDto>>> getFeedbackOptions() async {
    try {
      final _feedbackQueryData = await _feedbackApi.getFeedbackOptions();
      if (_feedbackQueryData?.getFeedbackOptions != null) {
        var returnList = <FeedbackOptionsDto>[];
        for (var item in _feedbackQueryData!.getFeedbackOptions!) {
          returnList.add(item.toFeedbackDto);
          return Result.success(returnList);
        }
      }
      return Result.failure(Failure(NetworkResult.error));
    } on GraphQLError catch (e) {
      Logger.logger('GraphQLError', '$e');
      return Result.failure(Failure(NetworkResult.error));
    } catch (e) {
      Logger.logger('NetworkError', '$e');
      return Result.failure(Failure(NetworkResult.networkFailure));
    }
  }
}