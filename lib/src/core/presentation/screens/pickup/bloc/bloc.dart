import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:toto_mobile/src/core/domain/entities/delivery_address.dart';
import 'package:toto_mobile/src/core/domain/entities/pick_up_address.dart';
import 'package:toto_mobile/src/core/domain/usecases/restaurant.dart';
import 'package:toto_mobile/src/core/presentation/entities/restaurant.dart';
import 'package:toto_mobile/src/core/domain/adapters/restaurant.dart';
import 'package:toto_mobile/src/core/presentation/adapters/restaurant.dart';
import 'package:toto_mobile/src/utils/logger.dart';

import 'event.dart';
import 'state.dart';

typedef PickUpEventHandler = Stream<PickUpState>;

@Injectable()
class PickUpBloc extends Bloc<PickUpEvent, PickUpState> {
  final GetAllRestaurantsInCityUseCase _getRestaurantUseCase;

  final WatchPickUpAddressUseCase _watchPickUpAddressUseCase;
  final WatchDeliveryAddressUseCase _watchDeliveryAddressUseCase;
  final WatchAllRestaurantsUseCase _watchAllRestaurantsUseCase;
  final ChangeRestaurantPickUpAddressUseCase
      _changeRestaurantPickUpAddressUseCase;

  Restaurant? _nearestRestaurant;
  DeliveryDto? _userLocation;
  List<Restaurant> allRestaurants = [];

  PickUpBloc(
    this._watchDeliveryAddressUseCase,
    this._watchAllRestaurantsUseCase,
    this._getRestaurantUseCase,
    this._watchPickUpAddressUseCase,
    this._changeRestaurantPickUpAddressUseCase,
  ) : super(
          PickUpState(),
        ) {
    _watchAllRestaurantsUseCase.allRestaurants().listen(
      (newRestaurants) {
        allRestaurants = newRestaurants
            .map((restaurant) => restaurant.toRestaurant)
            .toList();
        add(
          PickUpEvent.updateRestaurants(),
        );
        Logger.logger('allRestaurants', 'update');
      },
    );
    _watchDeliveryAddressUseCase.deliveryAddress().listen(
      (deliveryAddress) {
        _userLocation = deliveryAddress;
      },
    );
    _watchPickUpAddressUseCase.pickUpAddress().listen(
      (address) {
        _nearestRestaurant = address.toRestaurant;
        add(PickUpEvent.showNearestRestaurant());
      },
    );
  }

  @override
  Stream<PickUpState> mapEventToState(PickUpEvent event) => event.when(
        showUserLocation: _showUserLocation,
        updateRestaurants: _updateRestaurants,
        makeOrder: _makeOrder,
        mapCreated: _mapCreated,
        changePickUpAddress: _changePickUpAddress,
        queryChanged: _queryChanged,
        showNearestRestaurant: _showNearestRestaurant,
        openFindRestaurantPanel: _openFindRestaurantPanel,
      );

  PickUpEventHandler _showUserLocation() async* {
    yield state.copyWith(
      pickUpDataStatus: PickUpDataStatus.showUserLocaiton,
    );
  }

  PickUpEventHandler _updateRestaurants() async* {
    yield state.copyWith(
      allRestaurants: allRestaurants,
      pickUpDataStatus: PickUpDataStatus.updateRestaurants,
    );
  }

  PickUpEventHandler _changePickUpAddress(
    int restaurantId,
  ) async* {
    _nearestRestaurant = allRestaurants[restaurantId];
    yield state.copyWith(
      nearestRestaurant: _nearestRestaurant,
      pickUpDataStatus: PickUpDataStatus.noRestaurants,
      pickUpStatus: PickUpStatus.showNearestRestaurant,
    );
  }

  PickUpEventHandler _makeOrder() async* {
    if (_nearestRestaurant != null) {
      _changeRestaurantPickUpAddressUseCase.changeRestaurantPickUpAddress(
        _nearestRestaurant!.toRestaurantDto,
      );
    }
  }

  PickUpEventHandler _mapCreated() async* {}

  PickUpEventHandler _queryChanged(Set<int> places) async* {
    yield state.copyWith(
      suggestions: places,
      panelStatus: PanelStatus.panelOpened,
      pickUpDataStatus: PickUpDataStatus.hasRestaurants,
      pickUpStatus: PickUpStatus.searchRestaurant,
    );
  }

  PickUpEventHandler _showNearestRestaurant() async* {
    if (_nearestRestaurant != null) {
      yield state.copyWith(
        allRestaurants: allRestaurants,
        nearestRestaurant: _nearestRestaurant,
        panelStatus: PanelStatus.panelClosed,
        pickUpDataStatus: PickUpDataStatus.noRestaurants,
        pickUpStatus: PickUpStatus.showNearestRestaurant,
      );
    }
  }

  PickUpEventHandler _openFindRestaurantPanel() async* {
    yield state.copyWith(
      pickUpStatus: PickUpStatus.openFindingPanel,
      pickUpDataStatus: PickUpDataStatus.noRestaurants,
      panelStatus: PanelStatus.panelOpened,
    );
  }
}
