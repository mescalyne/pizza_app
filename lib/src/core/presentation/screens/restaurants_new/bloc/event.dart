import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:toto_mobile/src/core/domain/entities/pick_up_address.dart';
import 'package:toto_mobile/src/core/presentation/entities/location.dart';
import 'package:toto_mobile/src/core/presentation/entities/restaurant.dart';

part 'event.freezed.dart';

@freezed
class RestaurantNewEvent with _$RestaurantNewEvent {
  const factory RestaurantNewEvent.loadData() = LoadData;
  const factory RestaurantNewEvent.openRestaurantsList() = OpenRestaurantsList;
  const factory RestaurantNewEvent.closeRestaurantsList() =
      CloseRestaurantsList;
  const factory RestaurantNewEvent.chooseRestaurant(Restaurant restaurant) =
      ChooseRestaurant;
  const factory RestaurantNewEvent.nearestRestaurantFound(
      PickUpAddressDto nearestRestaurant) = NearestRestaurantFound;
  const factory RestaurantNewEvent.changeCity() = ChangeCity;

  const factory RestaurantNewEvent.changeRestaurant(Restaurant restaurantId) =
      ChangeRestaurant;
}
