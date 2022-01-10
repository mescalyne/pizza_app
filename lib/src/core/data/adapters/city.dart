import 'package:toto_mobile/src/core/data/network/models/city_fragment.data.gql.dart';
import 'package:toto_mobile/src/core/domain/entities/city.dart';

typedef City = GCityFragment;

extension CityAdapter on City {
  CityDto get toCityDto {
    return CityDto(
        id: id,
        name: name,
        prefix: prefix,
        postalCode: postal_code,
        cityType: city_type,
        available: (available != null) ? available! : false);
  }
}
