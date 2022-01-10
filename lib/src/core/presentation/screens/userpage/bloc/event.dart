import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'event.freezed.dart';

@freezed
class UserpageEvent with _$UserpageEvent {
  const factory UserpageEvent.onLoaded() = OnLoaded;
  const factory UserpageEvent.onSaveNewInfo(name, email, dateOfBirth) =
      OnSaveNewInfo;
  const factory UserpageEvent.onRouteToDeliveryAddress() =
      OnRouteToDeliveryAddress;
  const factory UserpageEvent.logOut() =
  OnRouteLogOut;
  const factory UserpageEvent.onRouteToOrders() = OnRouteToOrders;
  const factory UserpageEvent.show() = Show;
}
