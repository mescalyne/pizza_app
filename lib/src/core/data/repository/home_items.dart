import 'dart:developer';

import 'package:graphql/client.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';
import 'package:toto_mobile/src/core/data/adapters/city.dart';
import 'package:toto_mobile/src/core/data/models/network_result.dart';
import 'package:toto_mobile/src/core/data/network/service/home_items.dart';
import 'package:toto_mobile/src/core/domain/entities/city.dart';
import 'package:toto_mobile/src/utils/logger.dart';
import 'package:toto_mobile/src/utils/result.dart';

abstract class HomeItemsRepository {
  Future<Result<List<CityDto>>> getCities();
}

@Singleton()
class HomeWatchableRepository {
  final _cityController = BehaviorSubject<CityDto>();
  Stream<CityDto> get city => _cityController.stream;

  final _citiesController = BehaviorSubject<List<CityDto>>();
  Stream<List<CityDto>> get citiesController => _citiesController.stream;

  void changeCity(CityDto city) {
    _cityController.add(city);
  }

  void changeCities(List<CityDto> cities) {
    _citiesController.add(cities);
  }
}

@Injectable(as: HomeItemsRepository)
class HomeItemsRepositoryImpl extends HomeItemsRepository {
  final HomeApi _homeApi;

  HomeItemsRepositoryImpl(this._homeApi);

  @override
  Future<Result<List<CityDto>>> getCities() async {
    try {
      final _citiesQueryData = await _homeApi.getCities();
      if (_citiesQueryData!.getCities != null) {
        return Result.success(
            _citiesQueryData.getCities!.map((city) => city.toCityDto).toList());
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
