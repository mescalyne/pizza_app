import 'package:toto_mobile/src/core/domain/entities/restaurant.dart';
import 'package:toto_mobile/src/core/presentation/entities/restaurant.dart';
import 'package:toto_mobile/src/core/presentation/adapters/city.dart';

typedef RestaurantData = Restaurant;

//TODO deliveryAreas - координаты полигонов. Нужно добавить
extension RestaurantAdapter on RestaurantData {
  RestaurantDto get toRestaurantDto {
    return RestaurantDto(
      id: id,
      name: name,
      address: address,
      latitude: location.latitude,
      longitude: location.longitude,
      city: city.toCityDto,
      openAt: timeActivity.openAt,
      closeAt: timeActivity.closeAt,
      isOpen: timeActivity.isOpen,
    );
  }
}
