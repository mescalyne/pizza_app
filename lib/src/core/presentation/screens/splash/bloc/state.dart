import 'package:geolocator/geolocator.dart';

class StartState {
  final LocationPermission locationPermission;
  final RequirePermission requirePermission;
  StartState({
    this.requirePermission = RequirePermission.hide,
    this.locationPermission = LocationPermission.denied,
  });

  StartState copyWith(
      {LocationPermission? locationPermission,
      RequirePermission? requirePermission}) {
    return StartState(
        requirePermission: requirePermission ?? this.requirePermission,
        locationPermission: locationPermission ?? this.locationPermission);
  }
}

enum RequirePermission { show, hide }
