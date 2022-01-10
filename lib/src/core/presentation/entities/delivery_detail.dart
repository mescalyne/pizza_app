import 'package:toto_mobile/src/core/domain/entities/product.dart';

import 'delivery.dart';

class DeliveryDetailData {
  int orderID;
  String? address;
  DateTime? createdTime;
  DateTime? deliveryDate;
  DateTime? actualTime;
  DeliveryOrderState orderState;
  int orderPrice;
  String? name;
  String? phone;
  String? cancelCause;
  String? cancelComment;
  List<DeliveryDetailItem> items;

  DeliveryDetailData({
    required this.orderID,
    this.address,
    this.createdTime,
    this.deliveryDate,
    this.actualTime,
    required this.orderState,
    required this.orderPrice,
    this.name,
    this.phone,
    this.cancelCause,
    this.cancelComment,
    required this.items,
  });

  DeliveryDetailData copyWith({
    int? orderID,
    String? address,
    DateTime? createdTime,
    DateTime? deliveryDate,
    DateTime? actualTime,
    DeliveryOrderState? orderState,
    int? orderPrice,
    String? name,
    String? phone,
    String? cancelCause,
    String? cancelComment,
    List<DeliveryDetailItem>? items,
  }) {
    return DeliveryDetailData(
      orderID: orderID ?? this.orderID,
      address: address ?? this.address,
      createdTime: createdTime ?? this.createdTime,
      deliveryDate: deliveryDate ?? this.deliveryDate,
      actualTime: actualTime ?? this.actualTime,
      orderState: this.orderState,
      orderPrice: orderPrice ?? this.orderPrice,
      name: name ?? this.name,
      phone: phone ?? this.phone,
      cancelCause: cancelCause ?? this.cancelCause,
      cancelComment: cancelComment ?? this.cancelComment,
      items: items ?? this.items,
    );
  }
}

class DeliveryDetailItem {
  String productId;
  String name;
  double? sum;
  String? code;
  ProductDto productDto;
  int amount;
  String weight;
  String imageUrl;

  DeliveryDetailItem({
    required this.productId,
    required this.name,
    this.sum,
    this.code,
    required this.productDto,
    required this.amount,
    required this.weight,
    required this.imageUrl,
  });
}
