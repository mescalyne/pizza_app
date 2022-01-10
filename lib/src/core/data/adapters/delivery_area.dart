import 'package:geojson/geojson.dart';
import 'package:toto_mobile/src/core/data/network/models/delivery_area_fragment.data.gql.dart';
import 'package:toto_mobile/src/core/domain/entities/delivery_area.dart';

typedef DeliveryArea = GDeliveryAreaFragment;

extension DeliveryAreaAdapter on DeliveryArea {
  DeliveryAreaDto get toDeliveryAreaDto {
    return DeliveryAreaDto(
      mainArea: main_area,
      area: area,
      companyName: company_name,
      deliveryTerminalId: delivery_terminal_id,
      id: int.parse(id),
      kitchenTerminalId: kitchen_terminal_id,
      deliveryProductId: delivery_product_id,
      freeDelivery: free_delivery,
    );
  }
}
