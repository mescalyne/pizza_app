import 'package:toto_mobile/src/core/domain/entities/restaurant.dart';
import 'package:toto_mobile/src/core/presentation/entities/city.dart';
import 'package:toto_mobile/src/core/presentation/entities/location.dart';
import 'package:toto_mobile/src/core/presentation/entities/restaurant.dart';
import 'package:toto_mobile/src/core/presentation/entities/time_activity.dart';

typedef RestaurantData = RestaurantDto;

//TODO deliveryAreas - координаты полигонов. Нужно добавить
extension RestaurantAdapter on RestaurantData {
  Restaurant get toRestaurant {
    return Restaurant(
      // deliveryAreas: deliveryAreas!,
      id: id,
      name: name,
      address: address,

      city: City(
        available: city.available,
        id: city.id,
        name: city.name,
      ),
      location: Location(
        latitude: latitude,
        longitude: longitude,
      ),
      timeActivity:
          TimeActivity(openAt: openAt, closeAt: closeAt, isOpen: isOpen),
      terminalDelivery: terminalDelivery ?? '',
      terminalKitchen: terminalKitchen ?? ''
    );
  }
}
