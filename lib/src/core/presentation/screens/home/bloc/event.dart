import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:toto_mobile/src/core/domain/entities/city.dart';
import 'package:toto_mobile/src/core/presentation/screens/home/bloc/state.dart';

part 'event.freezed.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.bottomNavigationItemClickedEvent(
      MainScreen intendedScreen) = OnBottomNavigationItemClickedEvent;
  const factory HomeEvent.onCityPressed(CityDto city) = OnCityPressed;
  const factory HomeEvent.onSubmitCityPressed() = OnSubmitCityPressed;
  const factory HomeEvent.loadCities() = LoadCities;
  const factory HomeEvent.updateCountItemInCart(int count) =
      UpdateCountItemInCart;
}
