import 'dart:developer';

import 'package:graphql/client.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';
import 'package:toto_mobile/src/core/data/adapters/restaurant.dart';
import 'package:toto_mobile/src/core/data/models/network_result.dart';
import 'package:toto_mobile/src/core/data/network/service/get_restaurant.dart';
import 'package:toto_mobile/src/core/domain/entities/address.dart';
import 'package:toto_mobile/src/core/domain/entities/delivery_address.dart';
import 'package:toto_mobile/src/core/domain/entities/pick_up_address.dart';
import 'package:toto_mobile/src/core/domain/entities/restaurant.dart';
import 'package:toto_mobile/src/resources/dictionary.dart';
import 'package:toto_mobile/src/utils/logger.dart';
import 'package:toto_mobile/src/utils/result.dart';

abstract class RestaurantRepository {
  Future<Result<RestaurantDto>> getRestaurant(int id);
  Future<Result<RestaurantDto>> getRestaurantByLocation(
      double latitude, double longitude);
  Future<List<RestaurantDto>> getRestaurants(int? cityId);
}

@Singleton()
class RestarauntWatchableRepository {
  final _restorauntIdController = BehaviorSubject<int>.seeded(2);
  Stream<int> get restarauntId => _restorauntIdController.stream;

  final _restaurantPickUpAddress = BehaviorSubject<RestaurantDto>();
  Stream<RestaurantDto> get restaurantPickUpAddress =>
      _restaurantPickUpAddress.stream;

  final _deliveryAddress = BehaviorSubject<DeliveryDto>();
  Stream<DeliveryDto> get deliveryAddress => _deliveryAddress.stream;

  final _restaurants = BehaviorSubject<List<RestaurantDto>>();
  Stream<List<RestaurantDto>> get restaurants => _restaurants.stream;

  

  void setPickUpAddress(RestaurantDto address) {
    _restaurantPickUpAddress.add(address);
  }

  void setDeliveryAddress(DeliveryDto address) {
    _deliveryAddress.add(address);
  }

  void setRestaurants(List<RestaurantDto> restaurants) {
    _restaurants.add(restaurants);
  }

  void setRestaurantId(String restaurantId) {
    _restorauntIdController.add(
      int.parse(restaurantId),
    );
  }
}

@Injectable(as: RestaurantRepository)
class RestaurantRepositoryImpl extends RestaurantRepository {
  final GetRestaurantApi _getRestaurantApi;

  RestaurantRepositoryImpl(this._getRestaurantApi);

  @override
  Future<Result<RestaurantDto>> getRestaurant(int id) async {
    final restaurantData = await _getRestaurantApi.getRestaurant(id);
    try {
      if (restaurantData != null)
        return Result.success(restaurantData.getRestaurant!.toRestaurantDto);
      return Result.failure(Failure(NetworkResult.error));
    } on GraphQLError catch (e) {
      Logger.logger('GraphQLError', '$e');
      return Result.failure(Failure(NetworkResult.error));
    } catch (e) {
      Logger.logger('NetworkError', '$e');
      return Result.failure(Failure(NetworkResult.networkFailure));
    }
  }

  @override
  Future<Result<RestaurantDto>> getRestaurantByLocation(
      double latitude, double longitude) async {
    final restaurantByLocationQueryData =
        await _getRestaurantApi.getRestaurantByLocation(latitude, longitude);
        
    if (restaurantByLocationQueryData.getRestaurantByLocation == null) {
      return Result.failure(Failure(NetworkResult.error));
    }
    
    return Result.success (
      restaurantByLocationQueryData.getRestaurantByLocation!.toRestaurantDto,
    );
  }

  @override
  Future<List<RestaurantDto>> getRestaurants(int? cityId) async {
    final restaurantsQueryData = await _getRestaurantApi.getRestaurants(cityId);

    return restaurantsQueryData.getRestaurants!
        .map((restaurant) => restaurant.toRestaurantDto)
        .toList();
  }
}
