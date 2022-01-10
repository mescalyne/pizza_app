import 'package:toto_mobile/src/core/presentation/entities/city.dart';
import 'package:toto_mobile/src/core/presentation/entities/location.dart';
import 'package:toto_mobile/src/core/presentation/entities/time_activity.dart';

class PickUpAddressDto {
  String address;
  double latitude;
  double longitude;
  final City city;
  final String id;
  final String name;

  // final List<DeliveryAreaDto> deliveryAreas;
  final Location location;
  final TimeActivity timeActivity;
  PickUpAddressDto({
    required this.address,
    required this.latitude,
    required this.longitude,
    required this.city,
    required this.id,
    required this.name,
    required this.location,
    required this.timeActivity,
  });
}
