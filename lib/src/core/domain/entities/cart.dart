import 'package:toto_mobile/src/core/domain/entities/address.dart';
import 'package:toto_mobile/src/core/domain/entities/cart_item.dart';
import 'package:toto_mobile/src/core/domain/entities/order_info.dart';
import 'package:toto_mobile/src/core/domain/entities/restaurant.dart';

import 'cart_filters_input.dart';

enum CartPaymentType { cash, card, cardExternal }

enum CartPaymentStatus { payed, refunded, nullCart, newCart }

class CartDto {
  final int id;
  final String organization;
  final OrderStatusDto orderStatus;
  final String? terminalId;
  final AddressDto? deliveryAddress;
  final bool isSelfService;
  final CartPaymentStatus cartPaymentStatus;
  final List<CartItemDto>? items;
  final CartPaymentType paymentType;
  final int? changeFrom;
  final int? bonusSum;
  final int personsCount;
  final double? discountSum;
  final String? customerName;
  final String? customerPhone;
  final String? deliveryPrice;
  final DateTime? date;
  final String? coupon;
  final String total;
  final OrderInfoDto? orderInfo;
  final String totalPayment;
  final String? comment;
  final RestaurantDto? restaurant;

  CartDto({
    required this.id,
    required this.organization,
    required this.orderStatus,
    required this.terminalId,
    required this.deliveryAddress,
    required this.isSelfService,
    required this.cartPaymentStatus,
    required this.items,
    required this.paymentType,
    required this.changeFrom,
    required this.bonusSum,
    required this.deliveryPrice,
    required this.coupon,
    required this.discountSum,
    required this.customerName,
    required this.customerPhone,
    required this.date,
    required this.personsCount,
    required this.total,
    this.orderInfo,
    required this.totalPayment,
    this.comment,
    required this.restaurant,
  });
}
