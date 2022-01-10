import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:toto_mobile/src/core/presentation/entities/restaurant.dart';

part 'event.freezed.dart';

@freezed
class PickUpEvent with _$PickUpEvent {
  const factory PickUpEvent.openFindRestaurantPanel() = OpenFindRestaurantPanel;
  const factory PickUpEvent.showNearestRestaurant() = ShowNearestRestaurant;
  const factory PickUpEvent.showUserLocation() = ShowUserLocation;
  const factory PickUpEvent.queryChanged(Set<int> places) =
      FindQueryChanged;
  const factory PickUpEvent.makeOrder() = MakeOrder;
  const factory PickUpEvent.changePickUpAddress(
      int restaurantId) = ChangePickUpAddress;
  const factory PickUpEvent.mapCreated() = MapCreated;
  const factory PickUpEvent.updateRestaurants() = UpdateRestaurants;
}
