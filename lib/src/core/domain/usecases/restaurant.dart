import 'package:injectable/injectable.dart';
import 'package:toto_mobile/src/core/data/repository/restaurant.dart';
import 'package:toto_mobile/src/core/domain/adapters/restaurant.dart';
import 'package:toto_mobile/src/core/domain/entities/delivery_address.dart';
import 'package:toto_mobile/src/core/domain/entities/pick_up_address.dart';
import 'package:toto_mobile/src/core/domain/entities/restaurant.dart';
import 'package:toto_mobile/src/core/presentation/entities/restaurant.dart';
import 'package:toto_mobile/src/utils/result.dart';

abstract class FindNearestRestaurantUseCase {
  Future<Restaurant?> findNearestRestaurant(double latitude, double longitude);
}

abstract class GetAllRestaurantsInCityUseCase {
  Future<List<Restaurant>> call([int? cityId]);
}

abstract class ChangeRestaurantPickUpAddressUseCase {
  void changeRestaurantPickUpAddress(RestaurantDto address);
}

abstract class ChangeDeliveryAddressUseCase {
  void changeDeliveryAddress(DeliveryDto address);
}

abstract class ChangeRestaurantIdUseCase {
  void changeRestaurantIdUseCase(String id);
}

abstract class WatchDeliveryAddressUseCase {
  Stream<DeliveryDto> deliveryAddress();
}

abstract class WatchPickUpAddressUseCase {
  Stream<RestaurantDto> pickUpAddress();
}

abstract class WatchRestaurantIdUseCase {
  Stream<int> restaurantId();
}

abstract class WatchAllRestaurantsUseCase {
  Stream<List<RestaurantDto>> allRestaurants();
}

@Injectable(as: WatchAllRestaurantsUseCase)
class WatchAllRestaurantsUseCaseImpl extends WatchAllRestaurantsUseCase {
  final RestarauntWatchableRepository _restarauntWatchableRepository;
  WatchAllRestaurantsUseCaseImpl(this._restarauntWatchableRepository);
  @override
  Stream<List<RestaurantDto>> allRestaurants() {
    return _restarauntWatchableRepository.restaurants;
  }
}

@Injectable(as: WatchRestaurantIdUseCase)
class WatchRestaurantIdUseCaseImpl extends WatchRestaurantIdUseCase {
  final RestarauntWatchableRepository _restarauntWatchableRepository;

  WatchRestaurantIdUseCaseImpl(this._restarauntWatchableRepository);
  @override
  Stream<int> restaurantId() {
    return _restarauntWatchableRepository.restarauntId;
  }
}

@Injectable(as: WatchPickUpAddressUseCase)
class PickUpAddressWatchableUseCaseImpl extends WatchPickUpAddressUseCase {
  final RestarauntWatchableRepository _restarauntWatchableRepository;

  PickUpAddressWatchableUseCaseImpl(this._restarauntWatchableRepository);
  @override
  Stream<RestaurantDto> pickUpAddress() {
    return _restarauntWatchableRepository.restaurantPickUpAddress;
  }
}

@Injectable(as: WatchDeliveryAddressUseCase)
class DeliveryAddressWatchableUseCaseImpl extends WatchDeliveryAddressUseCase {
  final RestarauntWatchableRepository _restarauntWatchableRepository;

  DeliveryAddressWatchableUseCaseImpl(this._restarauntWatchableRepository);
  @override
  Stream<DeliveryDto> deliveryAddress() {
    return _restarauntWatchableRepository.deliveryAddress;
  }
}

@Injectable(as: ChangeDeliveryAddressUseCase)
class ChangeDeliveryAddressUseCaseImpl extends ChangeDeliveryAddressUseCase {
  final RestarauntWatchableRepository _restarauntWatchableRepository;

  ChangeDeliveryAddressUseCaseImpl(this._restarauntWatchableRepository);

  @override
  void changeDeliveryAddress(DeliveryDto address) {
    _restarauntWatchableRepository.setDeliveryAddress(address);
  }
}

@Injectable(as: ChangeRestaurantIdUseCase)
class ChangeRestaurantIdUseCaseImpl extends ChangeRestaurantIdUseCase {
  final RestarauntWatchableRepository _restarauntWatchableRepository;

  ChangeRestaurantIdUseCaseImpl(this._restarauntWatchableRepository);

  @override
  void changeRestaurantIdUseCase(String id) {
    _restarauntWatchableRepository.setRestaurantId(id);
  }
}

@Injectable(as: ChangeRestaurantPickUpAddressUseCase)
class ChangeRestaurantPickUpUseCaseImpl
    extends ChangeRestaurantPickUpAddressUseCase {
  final RestarauntWatchableRepository _restarauntWatchableRepository;

  ChangeRestaurantPickUpUseCaseImpl(this._restarauntWatchableRepository);

  @override
  void changeRestaurantPickUpAddress(RestaurantDto address) {
    _restarauntWatchableRepository.setPickUpAddress(address);
  }
}

@Injectable(as: FindNearestRestaurantUseCase)
class FindNearestRestaurantUseCaseImpl extends FindNearestRestaurantUseCase {
  final RestaurantRepository _restaurantRepository;

  FindNearestRestaurantUseCaseImpl(this._restaurantRepository);

  @override
  Future<Restaurant?> findNearestRestaurant(
      double latitude, double longitude) async {
    final restaurant = await _restaurantRepository.getRestaurantByLocation(
        latitude, longitude);
    if (restaurant.isSuccess) {
      return restaurant.value!.toRestaurant;
    }
    return null;
  }
}

@Injectable(as: GetAllRestaurantsInCityUseCase)
class GetAllRestaurantsInCityUseCaseImpl
    extends GetAllRestaurantsInCityUseCase {
  final RestaurantRepository _restaurantRepository;
  final RestarauntWatchableRepository _restarauntWatchableRepository;

  GetAllRestaurantsInCityUseCaseImpl(
      this._restaurantRepository, this._restarauntWatchableRepository);

  @override
  Future<List<Restaurant>> call([int? cityId]) async {
    final result = await _restaurantRepository.getRestaurants(cityId);
    _restarauntWatchableRepository.setRestaurants(result);
    return result.map((restaurant) => restaurant.toRestaurant).toList();
  }
}

abstract class GetRestaurantUseCase {
  Future<Result<RestaurantDto>> call(int id);
}

@Injectable(as: GetRestaurantUseCase)
class GetRestaurantUseCaseImpl extends GetRestaurantUseCase {
  final RestaurantRepository _restaurantRepository;

  GetRestaurantUseCaseImpl(this._restaurantRepository);
  @override
  Future<Result<RestaurantDto>> call(int id) {
    return _restaurantRepository.getRestaurant(id);
  }
}
