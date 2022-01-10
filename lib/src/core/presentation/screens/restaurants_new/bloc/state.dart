import 'package:toto_mobile/src/core/domain/entities/city.dart';
import 'package:toto_mobile/src/core/presentation/entities/restaurant.dart';

class RestaurantNewState {
  final RestaurantNewStatus currentStatus;
  final List<CityDto> cities;
  final CityDto? currentCity;
  final Map<String, List<Restaurant>> segmentedRestaurants;
  final RestaurantNewDataStatus dataStatus;
  final RestaurantsNewListStatus restaurantsListStatus;
  final Restaurant? restaurant;

  RestaurantNewState({
    this.currentCity,
    this.restaurant,
    this.cities = const [],
    this.dataStatus = RestaurantNewDataStatus.findingRestaurants,
    this.segmentedRestaurants = const {},
    this.currentStatus = RestaurantNewStatus.loading,
    this.restaurantsListStatus = RestaurantsNewListStatus.close,
  });

  RestaurantNewState copyWith({
    RestaurantNewStatus? currentStatus,
    Restaurant? restaurant,
    List<CityDto>? cities,
    Map<String, List<Restaurant>>? segmentedRestaurants,
    RestaurantNewDataStatus? dataStatus,
    RestaurantsNewListStatus? restaurantsListStatus,
    CityDto? currentCity,
  }) =>
      RestaurantNewState(
        currentCity: currentCity ?? this.currentCity,
        restaurant: restaurant ?? this.restaurant,
        cities: cities ?? this.cities,
        dataStatus: dataStatus ?? this.dataStatus,
        segmentedRestaurants: segmentedRestaurants ?? this.segmentedRestaurants,
        currentStatus: currentStatus ?? this.currentStatus,
        restaurantsListStatus:
            restaurantsListStatus ?? this.restaurantsListStatus,
      );
}

enum RestaurantNewPageStatus { informative, chooseRestaurant }

enum RestaurantNewDataStatus {
  hasRestaurants,
  foundRestaurant,
  findingRestaurants,
  noRestaurants,
}

enum RestaurantNewStatus {
  initial,
  loading,
  changeCity,
  foundNearestRestaurant,
  createPlacemarks,
  showRestaurantInfo
}

enum RestaurantsNewListStatus {
  close,
  view,
}
