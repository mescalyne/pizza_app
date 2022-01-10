import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:toto_mobile/src/core/domain/entities/delivery_address.dart';
import 'package:toto_mobile/src/core/domain/usecases/delivery_address.dart';
import 'package:toto_mobile/src/core/domain/usecases/restaurant.dart';
import 'package:toto_mobile/src/core/presentation/adapters/restaurant.dart';
import 'package:toto_mobile/src/resources/key_manager.dart';
import 'package:yandex_geocoder/yandex_geocoder.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

import '../../../../../resources/key_manager.dart';
import '../../../../domain/entities/delivery_address.dart';
import '../../../../domain/usecases/delivery_address.dart';
import '../../../../domain/usecases/restaurant.dart';
import 'event.dart';
import 'state.dart';

typedef DeliveryEventHandler = Stream<DeliveryState>;

@Injectable()
class DeliveryBloc extends Bloc<DeliveryEvent, DeliveryState> {
  final ChangeDeliveryAddressUseCase _changeDeliveryAddressUseCase;
  final CreateDeliveryAddressUseCase _createDeliveryAddressUseCase;
  final GetAllDeliveryAddressesUseCase _getAllDeliveryAddressesUseCase;
  final ChangeRestaurantPickUpAddressUseCase
      _changeRestaurantPickUpAddressUseCase;
  final FindNearestRestaurantUseCase _findNearestRestaurantUseCase;

  final WatchDeliveryAddressUseCase _watchDeliveryAddressUseCase;

  final YandexGeocoder geocoder =
      YandexGeocoder(apiKey: KeyManager.geocoderApiKey);

  DeliveryBloc(
    this._findNearestRestaurantUseCase,
    this._changeRestaurantPickUpAddressUseCase,
    this._changeDeliveryAddressUseCase,
    this._createDeliveryAddressUseCase,
    this._getAllDeliveryAddressesUseCase,
    this._watchDeliveryAddressUseCase,
  ) : super(
          DeliveryState(
            deliveryAddressState: DeliveryAddressStatus.updated,
            status: SlidingPanelStatus.info,
          ),
        ) {
    _watchDeliveryAddressUseCase.deliveryAddress().listen((address) {
      add(
        DeliveryEvent.changeDeliveryAddress(address),
      );
    });

    add(
      DeliveryEvent.getUsedDeliveryAddresses(),
    );
  }

  @override
  Stream<DeliveryState> mapEventToState(DeliveryEvent event) => event.when(
        getAllRestaurants: _getAllRestaurants,
        selectUsedDeliveryAddress: _selectUsedDeliveryAddress,
        changeDeliveryAddress: _changeDeliveryAddress,
        onFoundByQueryAddressTapped: _onFoundByQueryAddressTapped,
        showAddressesByQuery: _showAddressesByQuery,
        changeSLidingPanelStatus: _changeSLidingPanelStatus,
        getPolygons: _getPolygons,
        getUsedDeliveryAddresses: _getUsedDeliveryAddresses,
        getUserDeliveryAddress: _getUserDeliveryAddress,
        onAddNewDeliveryAddressButtonPressed:
            _onAddNewDeliveryAddressButtonPressed,
        onGetUserLocationIconButtonPressed: _onGetUserLocationIconButtonPressed,
        onUsedDeliveryAddressChooseButtonPressed:
            _onUsedDeliveryAddressChooseButtonPressed,
      );

  DeliveryEventHandler _getAllRestaurants() async* {}

  DeliveryEventHandler _selectUsedDeliveryAddress(
      int usedDeliveryAddressIndex) async* {
    yield state.copyWith(
      usedDeliveryAddressIndex: usedDeliveryAddressIndex,
    );
  }

  DeliveryEventHandler _changeDeliveryAddress(DeliveryDto address) async* {
    yield state.copyWith(
      currentUserAddress: address,
      deliveryAddressState: DeliveryAddressStatus.updated,
    );
  }

  DeliveryEventHandler _onFoundByQueryAddressTapped(
      SuggestItem foundByQueryAddress) async* {
    final formatedAddress = foundByQueryAddress.searchText.split(', ');
    final point = await geocoder.getGeocode(
      GeocodeRequest(
        geocode: AddressGeocode(address: foundByQueryAddress.searchText),
      ),
    );

    DeliveryDto newSuggestDeliveryAddress = DeliveryDto(
      latitude: point.firstPoint!.latitude,
      longitude: point.firstPoint!.longitude,
      cityName: formatedAddress[formatedAddress.length - 3],
      street: formatedAddress[formatedAddress.length - 2],
      home: formatedAddress.last,
    );

    yield state.copyWith(
      status: SlidingPanelStatus.info,
      deliveryAddressState: DeliveryAddressStatus.suggestionUpdated,
      suggestDeliveryAddress: newSuggestDeliveryAddress,
    );
  }

  DeliveryEventHandler _changeSLidingPanelStatus(
    SlidingPanelStatus slidingPanelStatus,
  ) async* {
    yield state.copyWith(status: slidingPanelStatus);
  }

  DeliveryEventHandler _showAddressesByQuery(
    List<SuggestItem> suggestAddresses,
  ) async* {
    yield state.copyWith(
      deliveryAddressState: DeliveryAddressStatus.search,
      suggestAddresses: suggestAddresses,
    );
  }

  DeliveryEventHandler _onGetUserLocationIconButtonPressed() async* {}
  DeliveryEventHandler _getUserDeliveryAddress() async* {}
  DeliveryEventHandler _getPolygons() async* {}

  DeliveryEventHandler _getUsedDeliveryAddresses() async* {
    final deliveryAddresses = await _getAllDeliveryAddressesUseCase();
    if (deliveryAddresses.isSuccess && deliveryAddresses.value!.isNotEmpty) {
      log('used addresses:' + deliveryAddresses.value.toString());
      yield state.copyWith(
        usedDeliveryAddresses: deliveryAddresses.value,
        status: SlidingPanelStatus.usedAddresses,
      );
    }
  }

  DeliveryEventHandler _onAddNewDeliveryAddressButtonPressed(
      DeliveryDto newAddress, Function callback) async* {
    final createdDeliveryAddress =
        await _createDeliveryAddressUseCase.createDeliveryAddress(newAddress);
    log('createdDeliveryAddress ${newAddress.latitude}, ${newAddress.longitude}');
    if (createdDeliveryAddress.isSuccess &&
        createdDeliveryAddress.value != null) {
      _changeDeliveryAddressUseCase.changeDeliveryAddress(newAddress);
      final nearestRestaurant = await _findNearestRestaurantUseCase
          .findNearestRestaurant(newAddress.latitude, newAddress.longitude);

      if (nearestRestaurant != null) {
        _changeRestaurantPickUpAddressUseCase.changeRestaurantPickUpAddress(
          nearestRestaurant.toRestaurantDto,
        );
      }

      callback();
    } else {
      yield state.copyWith(
        status: SlidingPanelStatus.notFound,
      );
    }
  }

  DeliveryEventHandler _onUsedDeliveryAddressChooseButtonPressed(
      DeliveryDto newAddress, Function callback) async* {
    log('createdDeliveryAddress ${newAddress.latitude}, ${newAddress.longitude}');
    _changeDeliveryAddressUseCase.changeDeliveryAddress(newAddress);
    final nearestRestaurant = await _findNearestRestaurantUseCase
        .findNearestRestaurant(newAddress.latitude, newAddress.longitude);
    log('hasfvlfewfb' + nearestRestaurant.toString());
    if (nearestRestaurant != null) {
      _changeRestaurantPickUpAddressUseCase.changeRestaurantPickUpAddress(
        nearestRestaurant.toRestaurantDto,
      );
    }
    callback();
  }
}
