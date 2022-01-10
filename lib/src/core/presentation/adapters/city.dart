import 'package:toto_mobile/src/core/domain/entities/city.dart';
import 'package:toto_mobile/src/core/domain/entities/restaurant.dart';
import 'package:toto_mobile/src/core/presentation/entities/city.dart';
import 'package:toto_mobile/src/core/presentation/entities/location.dart';
import 'package:toto_mobile/src/core/presentation/entities/restaurant.dart';
import 'package:toto_mobile/src/core/presentation/entities/time_activity.dart';

typedef CityData = City;

//TODO deliveryAreas - координаты полигонов. Нужно добавить
extension CityAdapter on CityData {
  CityDto get toCityDto {
    return CityDto(
      id: id,
      name: name,
      available: available,
      cityType: cityType,
      postalCode: postalCode,
      prefix: prefix,
    );
  }
}
