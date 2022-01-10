import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';
import 'package:toto_mobile/src/core/domain/entities/city.dart';
import 'package:toto_mobile/src/core/domain/entities/pick_up_address.dart';
import 'package:toto_mobile/src/core/domain/usecases/cities.dart';
import 'package:toto_mobile/src/core/domain/usecases/restaurant.dart';
import 'package:toto_mobile/src/core/presentation/entities/restaurant.dart';
import 'package:toto_mobile/src/core/domain/adapters/restaurant.dart';
import 'package:toto_mobile/src/resources/key_manager.dart';
import 'package:toto_mobile/src/utils/logger.dart';
import 'package:toto_mobile/src/core/presentation/adapters/restaurant.dart';
import 'package:yandex_geocoder/yandex_geocoder.dart';

import 'event.dart';
import 'state.dart';

typedef RestaurantNewEventHandler = Stream<RestaurantNewState>;

@Injectable()
class RestaurantNewBloc extends Bloc<RestaurantNewEvent, RestaurantNewState> {
  final ChangeRestaurantIdUseCase _changeRestaurantIdUseCase;
  final WatchCityIdUseCase _watchCityIdUseCase;
  final ChangeRestaurantPickUpAddressUseCase
      _changeRestaurantPickUpAddressUseCase;
  final WatchPickUpAddressUseCase _watchPickUpAddressUseCase;
  final WatchCitiesUseCase _watchCitiesUseCase;

  List<Restaurant> allRestaurants = [];
  List<CityDto> cities = [];
  Restaurant? nearestRestaurant;

  final WatchAllRestaurantsUseCase _watchAllRestaurantsUseCase;
  CityDto? _currentCity;
  bool firstCreate = true;

  final YandexGeocoder geocoder =
      YandexGeocoder(apiKey: KeyManager.geocoderApiKey);

  Map<String, List<Restaurant>> _segmentedRestaurants = {};

  RestaurantNewBloc(
    this._watchCitiesUseCase,
    this._watchPickUpAddressUseCase,
    this._watchAllRestaurantsUseCase,
    this._changeRestaurantPickUpAddressUseCase,
    this._watchCityIdUseCase,
    this._changeRestaurantIdUseCase,
  ) : super(
          RestaurantNewState(),
        ) {
    _watchCitiesUseCase.cities().listen(
      (newCities) {
        cities = newCities;
      },
    );
    _watchAllRestaurantsUseCase.allRestaurants().listen(
      (newRestaurants) {
        allRestaurants = newRestaurants
            .map((restaurant) => restaurant.toRestaurant)
            .toList();
      },
    );
    _watchPickUpAddressUseCase.pickUpAddress().listen(
      (pickUpAddress) {
        nearestRestaurant = pickUpAddress.toRestaurant;
      },
    );
    _watchCityIdUseCase.city().listen(
      (city) {
        log('value' + firstCreate.toString());
        if (firstCreate) {
          _currentCity = city;
          firstCreate = false;
        } else {
          _currentCity = city;
          add(
            RestaurantNewEvent.changeCity(),
          );
        }
      },
    );
  }

  @override
  Stream<RestaurantNewState> mapEventToState(RestaurantNewEvent event) =>
      event.when(
        nearestRestaurantFound: _nearestRestaurantFound,
        loadData: _loadData,
        changeCity: _changeCity,
        chooseRestaurant: _chooseRestaurant,
        openRestaurantsList: _openRestaurantsList,
        closeRestaurantsList: _closeRestaurantsList,
        changeRestaurant: _changeRestaurant,
      );

  RestaurantNewEventHandler _nearestRestaurantFound(
      PickUpAddressDto nearestRestaurant) async* {}

  RestaurantNewEventHandler _changeCity() async* {
    yield state.copyWith(
      currentCity: _currentCity,
      currentStatus: RestaurantNewStatus.changeCity,
      restaurantsListStatus: RestaurantsNewListStatus.close,
      dataStatus: RestaurantNewDataStatus.hasRestaurants,
    );
  }

  RestaurantNewEventHandler _chooseRestaurant(Restaurant restaurant) async* {
    print('_chooseRestaurant');
    yield state.copyWith(
      restaurant: restaurant,
      currentStatus: RestaurantNewStatus.showRestaurantInfo,
      dataStatus: RestaurantNewDataStatus.hasRestaurants,
    );
  }

  RestaurantNewEventHandler _loadData() async* {
    print('_loadData');
    _segmentedRestaurants.clear();

    _sortRestaurantsByCities(cities, allRestaurants);

    Logger.logger('segmentedRestaurants: ', _segmentedRestaurants.toString());

    if (cities.isNotEmpty && allRestaurants.isNotEmpty) {
      yield state.copyWith(
        restaurant: nearestRestaurant,
        currentStatus: RestaurantNewStatus.createPlacemarks,
        cities: cities,
        segmentedRestaurants: _segmentedRestaurants,
        dataStatus: RestaurantNewDataStatus.noRestaurants,
        currentCity: _currentCity,
      );
    } else {
      yield state.copyWith(
        currentStatus: RestaurantNewStatus.loading,
      );
    }
  }

  RestaurantNewEventHandler _openRestaurantsList() async* {
    print('_openRestaurantsList');
    if (state.currentStatus != RestaurantNewStatus.loading) {
      yield state.copyWith(
        currentStatus: RestaurantNewStatus.initial,
        restaurantsListStatus: RestaurantsNewListStatus.view,
        segmentedRestaurants: _segmentedRestaurants,
        dataStatus: RestaurantNewDataStatus.hasRestaurants,
      );
    }
  }

  RestaurantNewEventHandler _closeRestaurantsList() async* {
    print('_closeRestaurantsList');
    yield state.copyWith(
      currentStatus: RestaurantNewStatus.initial,
      restaurantsListStatus: RestaurantsNewListStatus.close,
      dataStatus: RestaurantNewDataStatus.hasRestaurants,
    );
  }

  RestaurantNewEventHandler _changeRestaurant(Restaurant restaurant) async* {
    print('_changeRestaurant');
    _changeRestaurantPickUpAddressUseCase
        .changeRestaurantPickUpAddress(restaurant.toRestaurantDto);
    }

  void _sortRestaurantsByCities(
      List<CityDto> cities, List<Restaurant> allRestaurants) {
    for (var i = 0; i < cities.length; i++) {
      for (var j = 0; j < allRestaurants.length; j++) {
        if (_segmentedRestaurants[cities[i].name] == null) {
          _segmentedRestaurants[cities[i].name] = [];
        }

        if (allRestaurants[j].city.name == cities[i].name) {
          _segmentedRestaurants[cities[i].name]?.add(allRestaurants[j]);
        }
      }
    }
  }
}
