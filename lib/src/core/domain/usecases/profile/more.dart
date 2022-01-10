import 'package:injectable/injectable.dart';
import 'package:toto_mobile/src/core/data/repository/profile/unique_pages.dart';
import 'package:toto_mobile/src/core/domain/entities/unique_page.dart';
import 'package:toto_mobile/src/utils/result.dart';

abstract class MoreUseCase {
  Future<Result<List<UniquePageDto>>> getPageData();
}

@Injectable(as: MoreUseCase)
class MoreUseCaseImpl extends MoreUseCase {
  final UniquePagesRepository _pageRepository;

  MoreUseCaseImpl(this._pageRepository);

  @override
  Future<Result<List<UniquePageDto>>> getPageData() async {
    return await _pageRepository.getPages();
  }
}
