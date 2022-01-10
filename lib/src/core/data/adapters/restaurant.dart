import 'dart:developer';

import 'package:toto_mobile/src/core/data/network/models/restaurants_fragment.data.gql.dart';
import 'package:toto_mobile/src/core/data/network/models/terminal_fragment.data.gql.dart';
import 'package:toto_mobile/src/core/domain/entities/city.dart';
import 'package:toto_mobile/src/core/domain/entities/restaurant.dart';
import 'package:toto_mobile/src/core/data/adapters/delivery_area.dart';

typedef Restaurant = GRestaurantFragment;
typedef Terminal = GTerminalFragment;

extension RestaurantAdapter on Restaurant {
  RestaurantDto get toRestaurantDto {
    return RestaurantDto(
      id: int.parse(id),
      name: name,
      address: address!,
      terminalKitchen: terminal_kitchen != null ? terminal_kitchen!.id : '',
      terminalDelivery: terminal_delivery != null ? terminal_delivery!.id : '',
      latitude: double.parse(latitude!),
      longitude: double.parse(longitude!),
      openAt: open_at,
      closeAt: close_at,
      isOpen: is_open,
      deliveryOpenAt: delivery_open_at,
      deliveryCloseAt: delivery_close_at,
      isDeliveryOpen: is_delivery_open,
      city: CityDto(
        available: city?.available,
        cityType: city?.city_type,
        id: city != null ? city!.id : '',
        name: city != null ? city!.name : '',
        postalCode: city?.postal_code,
        prefix: city?.prefix,
      ),
    );
  }
}
