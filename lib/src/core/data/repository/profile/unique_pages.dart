import 'package:graphql/client.dart';
import 'package:injectable/injectable.dart';
import 'package:toto_mobile/src/core/data/adapters/unique_page.dart';
import 'package:toto_mobile/src/core/data/models/network_result.dart';
import 'package:toto_mobile/src/core/data/network/service/get_unique_pages.dart';
import 'package:toto_mobile/src/core/domain/entities/unique_page.dart';
import 'package:toto_mobile/src/resources/dictionary.dart';
import 'package:toto_mobile/src/utils/logger.dart';
import 'package:toto_mobile/src/utils/result.dart';

abstract class UniquePagesRepository {
  Future<Result<List<UniquePageDto>>> getPages();
}

@Injectable(as: UniquePagesRepository)
class UniquePagesRepositoryImpl extends UniquePagesRepository {
  final GetUniquePagesApi _pageApi;

  UniquePagesRepositoryImpl(this._pageApi);

  @override
  Future<Result<List<UniquePageDto>>> getPages() async {
    try {
      final _pageQueryData = await _pageApi.getPages();
      if (_pageQueryData?.getUniquePages != null) {
        var returnList = <UniquePageDto>[];
        for (var page in _pageQueryData!.getUniquePages!) {
          if (page.title != TotoDictionary.screenTitle) {
            returnList.add(page.toPageDto);
          }
        }
        return Result.success(returnList);
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
