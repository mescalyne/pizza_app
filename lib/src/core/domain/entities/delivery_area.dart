
class DeliveryAreaDto {
  int id;
  String companyName;
  String deliveryTerminalId;
  String kitchenTerminalId;
  String? freeDelivery;
  String? deliveryProductId;
  Object? area;
  bool? mainArea;
  DeliveryAreaDto({
    required this.deliveryProductId,
    required this.freeDelivery,
    required this.mainArea,
    required this.id,
    required this.companyName,
    required this.deliveryTerminalId,
    required this.kitchenTerminalId,
    required this.area,
  });
  
}
