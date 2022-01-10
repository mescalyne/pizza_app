import 'package:injectable/injectable.dart';
import 'package:toto_mobile/src/core/data/repository/profile/page.dart';
import 'package:toto_mobile/src/core/domain/entities/city.dart';
import 'package:toto_mobile/src/core/domain/entities/page.dart';
import 'package:toto_mobile/src/utils/result.dart';

import '../cities.dart';

abstract class GetPageDetailUseCase {
  Future<Result<PageDto>> getPageData(String slug);
}

@Injectable(as: GetPageDetailUseCase)
class GetPageDetailUseCaseImpl extends GetPageDetailUseCase {
  final PageRepository _pageRepository;
  final WatchCityIdUseCase _cityIdUseCase;
  late CityDto _activeCity;

  GetPageDetailUseCaseImpl(this._pageRepository, this._cityIdUseCase);

  @override
  Future<Result<PageDto>> getPageData(String slug) async {
    _cityIdUseCase.city().listen((city) {
      _activeCity = city;
    });
    return await _pageRepository.getPage(int.parse(_activeCity.id), slug);
  }
}
