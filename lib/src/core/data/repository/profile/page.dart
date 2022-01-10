import 'package:graphql/client.dart';
import 'package:injectable/injectable.dart';
import 'package:toto_mobile/src/core/data/adapters/page.dart';
import 'package:toto_mobile/src/core/data/models/network_result.dart';
import 'package:toto_mobile/src/core/data/network/service/get_page.dart';
import 'package:toto_mobile/src/core/domain/entities/page.dart';
import 'package:toto_mobile/src/utils/logger.dart';
import 'package:toto_mobile/src/utils/result.dart';

abstract class PageRepository {
  Future<Result<PageDto>> getPage(int cityId, String slug);
}

@Injectable(as: PageRepository)
class PageRepositoryImpl extends PageRepository {
  final PageApi _pageApi;

  PageRepositoryImpl(this._pageApi);

  @override
  Future<Result<PageDto>> getPage(int cityId, String slug) async {
    try {
      final _pageQueryData = await _pageApi.getPage(cityId, slug);
      if (_pageQueryData?.getPage != null) {
          return Result.success(_pageQueryData!.getPage!.toPageDto);
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
