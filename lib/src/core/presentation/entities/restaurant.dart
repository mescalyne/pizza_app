import 'package:toto_mobile/src/core/domain/entities/delivery_area.dart';
import 'package:toto_mobile/src/core/presentation/entities/city.dart';
import 'package:toto_mobile/src/core/presentation/entities/location.dart';
import 'package:toto_mobile/src/core/presentation/entities/time_activity.dart';

// TODO deliveryAreas - координаты полигонов. Нужно добавить
class Restaurant {
  final int id;
  final City city;
  final String name;
  final String address;
  // final List<DeliveryAreaDto> deliveryAreas;
  final Location location;
  final TimeActivity timeActivity;
  final String terminalKitchen;
  final String terminalDelivery;

  Restaurant({
    required this.id,
    required this.city,
    required this.name,
    required this.address,
    required this.location,
    required this.timeActivity,
    required this.terminalKitchen,
    required this.terminalDelivery,
  });
}
