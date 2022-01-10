import 'package:geolocator/geolocator.dart';

class GeolocatorManager {
  static Future<LocationPermission> requestLocationPermission(
      [Function? callback]) async {
    final locationPermission = await Geolocator.requestPermission();

    return locationPermission;
  }

  static Future<LocationPermission> tryToEnableGeolocation() async {
    var locationPermission = await Geolocator.checkPermission();

    if (locationPermission == LocationPermission.denied ||
        locationPermission == LocationPermission.deniedForever) {
      locationPermission = await Geolocator.requestPermission();
    }

    return locationPermission;
  }

  static Future<LocationPermission> getLocationPermission() async {
    final geoStatus = await Geolocator.checkPermission();
    return geoStatus;
  }

  static Future<bool> isGeolocationEnabled([Function? callback]) async {
    final geoStatus = await Geolocator.checkPermission();

    return geoStatus == LocationPermission.always ||
        geoStatus == LocationPermission.whileInUse;
  }
}

extension LocationChecker on LocationPermission {
  bool isEnabled() {
    return this != LocationPermission.denied &&
        this != LocationPermission.deniedForever;
  }
}
