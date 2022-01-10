import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:toto_mobile/src/core/domain/entities/product.dart';
import 'package:toto_mobile/src/core/presentation/screens/cities/bloc/state.dart';

part 'event.freezed.dart';

@freezed
class MenuEvent with _$MenuEvent {
  const factory MenuEvent.iconPressed(IconData icon) = OnIconPressed;
  const factory MenuEvent.changePlace(Place newPlace) = ChangePlace;
  const factory MenuEvent.menuCategoryTypePressed(int index) =
      OnMenuCategoryTypePressed;
  const factory MenuEvent.menuCategoryAnimateTo(int index) =
      OnMenuCategoryAnimateTo;
  const factory MenuEvent.loadData() = LoadData;
  
  const factory MenuEvent.changeDeliveryAddress() = ChangeDeliveryAddress;
  const factory MenuEvent.changePickUpAddress() = ChangePickUpAddress;
  const factory MenuEvent.onRouteToCardItem(ProductDto product) =
      OnRouteToCardItem;
  const factory MenuEvent.changeRestaurantMenu(int restaurantId) =
      ChangeRestaurantMenu;
  const factory MenuEvent.updateItemCountInCart(Map<String, int> list) =
      UpdateItemCountInCart;
}
