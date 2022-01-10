import 'package:toto_mobile/src/core/domain/entities/city.dart';

class RestaurantDto {
  int id;
  String name;
  String address;
  String? terminalKitchen;
  String? terminalDelivery;
  double latitude;
  double longitude;
  String? openAt;
  String? closeAt;
  bool? isOpen;
  String? deliveryOpenAt;
  String? deliveryCloseAt;
  bool? isDeliveryOpen;
  CityDto city;

  RestaurantDto({
    required this.id,
    required this.name,
    required this.address,
    this.terminalKitchen,
    this.terminalDelivery,
    required this.latitude,
    required this.longitude,
    this.openAt,
    this.closeAt,
    this.isOpen,
    this.deliveryOpenAt,
    this.deliveryCloseAt,
    this.isDeliveryOpen,
    required this.city,
  });
}
