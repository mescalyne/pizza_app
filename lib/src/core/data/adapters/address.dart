import 'package:toto_mobile/src/core/data/network/models/delivery_address_fragment.data.gql.dart';
import 'package:toto_mobile/src/core/domain/entities/address.dart';

typedef Address = GDeliveryAddressFragment;

extension DeliveryAddressAdapter on Address {
  AddressDto get toAddressDto {
    return AddressDto(
        id: id,
        cityName: city_name,
        street: street,
        home: home,
        housing: housing,
        apartment: apartment,
        comment: comment,
        addressInZone: address_in_zone,
        latitude: latitude,
        longitude: longitude);
  }
}
