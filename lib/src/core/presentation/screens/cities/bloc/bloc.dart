import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:geocode/geocode.dart';
import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';
import 'package:toto_mobile/src/core/data/models/network_result.dart';
import 'package:toto_mobile/src/core/domain/entities/city.dart';
import 'package:toto_mobile/src/core/domain/entities/delivery_address.dart';
import 'package:toto_mobile/src/core/domain/usecases/cities.dart';
import 'package:toto_mobile/src/core/domain/usecases/restaurant.dart';
import 'package:toto_mobile/src/core/presentation/entities/city.dart';

import 'package:toto_mobile/src/core/presentation/adapters/city.dart';
import 'package:toto_mobile/src/core/presentation/adapters/restaurant.dart';
import 'package:toto_mobile/src/core/presentation/entities/location.dart';
import 'package:toto_mobile/src/core/presentation/router/bloc/bloc.dart';
import 'package:toto_mobile/src/core/presentation/screens/cities/bloc/event.dart';
import 'package:toto_mobile/src/core/presentation/screens/cities/bloc/state.dart';
import 'package:toto_mobile/src/resources/key_manager.dart';
import 'package:toto_mobile/src/utils/geolocator_manager.dart';
import 'package:toto_mobile/src/utils/logger.dart';
import 'package:translator/translator.dart';
import 'package:yandex_geocoder/yandex_geocoder.dart';

typedef CitiesEventHandler = Stream<CitiesState>;

@Injectable()
class CitiesBloc extends Bloc<CitiesEvent, CitiesState> {
  final RouterEventSink _routerEventSink;

  final GetCitiesUseCase _getCitiesUseCase;
  final GetAllRestaurantsInCityUseCase _getRestaurantsInCityUseCase;
  final ChangeCityUseCase _changeCityUseCase;
  final WatchCityIdUseCase _watchCityIdUseCase;

  final FindNearestRestaurantUseCase _findNearestRestaurantUseCase;
  final ChangeDeliveryAddressUseCase _changeDeliveryAddressUseCase;
  final ChangeRestaurantPickUpAddressUseCase
      _changeRestaurantPickUpAddressUseCase;

  final YandexGeocoder geocoder =
      YandexGeocoder(apiKey: KeyManager.geocoderApiKey);

  CityDto? currentCity;

  CitiesBloc(
    this._findNearestRestaurantUseCase,
    this._changeRestaurantPickUpAddressUseCase,
    this._changeDeliveryAddressUseCase,
    this._getRestaurantsInCityUseCase,
    this._routerEventSink,
    this._getCitiesUseCase,
    this._watchCityIdUseCase,
    this._changeCityUseCase,
  ) : super(CitiesState(currentStatus: CitiesStatus.loading)) {
    _watchCityIdUseCase.city().listen((city) {
      currentCity = city;
    });
    add(OnLoaded());
  }

  @override
  CitiesEventHandler mapEventToState(CitiesEvent event) => event.when(
        onLoaded: _onLoaded,
        onChangeCity: _onChangeCity,
        onSendChangeCity: _onSendChangeCity,
        onChangePlace: _onChangePlace,
      );

  CitiesEventHandler _onLoaded() async* {
    log('onLoaded');
    final data = await _getCitiesUseCase();
    _getRestaurantsInCityUseCase();

    if ((data.isFailure) && (data.failureValue == NetworkResult.error) ||
        data.value == null) {
      yield state.copyWith(currentStatus: CitiesStatus.error);
      return;
    }

    if ((data.isFailure) &&
        (data.failureValue == NetworkResult.networkFailure)) {
      yield state.copyWith(currentStatus: CitiesStatus.connectionError);
      return;
    }

    final locationPermission = await GeolocatorManager.getLocationPermission();

    if (locationPermission.isEnabled()) {
      Logger.logger('Location status', '${locationPermission} - enabled');
      final userPoint = await Geolocator.getCurrentPosition();

      log('userPoint = $userPoint');

      // final userPoint = Location(latitude: 56.139873, longitude: 40.407111);

      final userLocation = await geocoder.getGeocode(
        GeocodeRequest(
          kind: KindRequest.house,
          geocode: PointGeocode(
            latitude: userPoint.latitude,
            longitude: userPoint.longitude,
          ),
          lang: Lang.ru,
        ),
      );
      Logger.logger(
          'User address', userLocation.firstAddress!.formatted.toString());
      final formattedAddress =
          userLocation.firstFullAddress.formattedAddress!.split(',');
      final cityName = formattedAddress[formattedAddress.length - 3];
      final streetName = formattedAddress[formattedAddress.length - 2];
      final homeNumber = formattedAddress[formattedAddress.length - 1];
      final nearestRestaurant =
          await _findNearestRestaurantUseCase.findNearestRestaurant(
        userPoint.latitude,
        userPoint.longitude,
      );

      _changeCityUseCase.changeCity(
        data.value!.firstWhere(
          (city) => city.name == cityName,
          orElse: () => data.value!.first,
        ),
      );

      _changeDeliveryAddressUseCase.changeDeliveryAddress(
        DeliveryDto(
          latitude: userPoint.latitude,
          longitude: userPoint.longitude,
          cityName: cityName,
          street: streetName,
          home: homeNumber,
        ),
      );
      if (nearestRestaurant != null) {
        _changeRestaurantPickUpAddressUseCase.changeRestaurantPickUpAddress(
          nearestRestaurant.toRestaurantDto,
        );
      }

      yield state.copyWith(
        currentStatus: CitiesStatus.viewPlace,
      );
    } else {
      yield state.copyWith(
        currentStatus: CitiesStatus.viewCities,
        cities: data.value,
        currentCity: data.value!.first,
      );
      return;
    }
  }

  CitiesEventHandler _onChangeCity(CityDto city) async* {
    yield state.copyWith(
      currentCity: city,
    );
  }

  CitiesEventHandler _onSendChangeCity(CityDto? choosedCity) async* {
    if (choosedCity == null) return;
    _changeCityUseCase.changeCity(choosedCity);
    yield state.copyWith(
      currentStatus: CitiesStatus.viewPlace,
    );
  }

  CitiesEventHandler _onChangePlace(Place changePlace) async* {
    //TODO: home page
  }
}
