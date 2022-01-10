import 'package:injectable/injectable.dart';

import 'package:toto_mobile/src/core/data/repository/home_items.dart';
import 'package:toto_mobile/src/core/domain/entities/city.dart';
import 'package:toto_mobile/src/utils/result.dart';

abstract class GetCitiesUseCase {
  Future<Result<List<CityDto>>> call();
}

abstract class ChangeCityUseCase {
  void changeCity(CityDto cityId);
}

abstract class WatchCityIdUseCase {
  Stream<CityDto> city();
}

abstract class WatchCitiesUseCase {
  Stream<List<CityDto>> cities();
}

@Injectable(as: WatchCitiesUseCase)
class WatchCitiesUseCaseImpl extends WatchCitiesUseCase {
  final HomeWatchableRepository _homeWatchableRepository;
  WatchCitiesUseCaseImpl(
    this._homeWatchableRepository,
  );
  @override
  Stream<List<CityDto>> cities() {
    return _homeWatchableRepository.citiesController;
  }
}

@Injectable(as: WatchCityIdUseCase)
class WatchCityIdUseCaseImpl extends WatchCityIdUseCase {
  final HomeWatchableRepository _homeWatchableRepository;

  WatchCityIdUseCaseImpl(
    this._homeWatchableRepository,
  );

  @override
  Stream<CityDto> city() {
    return _homeWatchableRepository.city;
  }
}

@Injectable(as: ChangeCityUseCase)
class ChangeCityIdUseCaseImpl extends ChangeCityUseCase {
  final HomeWatchableRepository _homeWatchableRepository;

  ChangeCityIdUseCaseImpl(
    this._homeWatchableRepository,
  );

  @override
  void changeCity(CityDto city) {
    _homeWatchableRepository.changeCity(city);
  }
}

@Injectable(as: GetCitiesUseCase)
class GetCitiesUseCaseImpl implements GetCitiesUseCase {
  final HomeItemsRepository _repository;
  final HomeWatchableRepository _homeWatchableRepository;

  GetCitiesUseCaseImpl(this._repository, this._homeWatchableRepository);

  @override
  Future<Result<List<CityDto>>> call() async {
    final result = await _repository.getCities();

    if (result.isSuccess && result.value != null)
      _homeWatchableRepository.changeCities(result.value!);
    else
      _homeWatchableRepository.changeCities([]);

    return result;
  }
}
