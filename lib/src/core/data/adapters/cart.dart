import 'package:toto_mobile/src/core/data/adapters/address.dart';
import 'package:toto_mobile/src/core/data/adapters/cartitem.dart';
import 'package:toto_mobile/src/core/data/adapters/order_info.dart';
import 'package:toto_mobile/src/core/data/adapters/restaurant.dart';
import 'package:toto_mobile/src/core/data/network/models/cart_fragment.data.gql.dart';
import 'package:toto_mobile/src/core/data/network/models/toto.schema.schema.gql.dart';
import 'package:toto_mobile/src/core/domain/entities/cart.dart';
import 'package:toto_mobile/src/core/domain/entities/cart_filters_input.dart';
import 'package:toto_mobile/src/core/domain/usecases/cart.dart';
import 'package:toto_mobile/src/extensions/Map.dart';
import 'package:toto_mobile/src/resources/maps.dart';
import 'package:toto_mobile/src/utils/converter.dart';

typedef Cart = GCartFragment;

extension CartAdapter on Cart {
  CartDto get toCartDto {
    return CartDto(
      id: int.parse(id),
      organization: organization,
      orderStatus: orderStatusDtoMapping.inverse[cart_order_status] ??
          OrderStatusDto.nullCart,
      items: items?.map((e) => e.toCartItemDto).toList() ?? [],
      orderInfo: order_info?.toOrderInfoDto,
      terminalId: terminal_id,
      deliveryAddress: delivery_address?.toAddressDto,
      isSelfService: is_self_service,
      cartPaymentStatus: cart_payment_status.toCartPaymentStatus,
      paymentType: payment_type.toCartPaymentType,
      changeFrom: change_from,
      bonusSum: bonus_sum,
      deliveryPrice: delivery_price,
      discountSum: discount_sum,
      customerName: customer_name,
      customerPhone: customer_phone,
      date: date.toDateTimeOrNull,
      coupon: coupon,
      personsCount: persons_count,
      total: total,
      totalPayment: total_payment,
      comment: comment,
      restaurant: restaurant?.toRestaurantDto,
    );
  }
}

extension on GCartPaymentType? {
  CartPaymentType get toCartPaymentType {
    switch (this) {
      case GCartPaymentType.CARD_EXTERNAL_PAYMENT_TYPE:
        return CartPaymentType.cardExternal;
      case GCartPaymentType.CARD_PAYMENT_TYPE:
        return CartPaymentType.card;
      case GCartPaymentType.CASH_PAYMENT_TYPE:
      default:
        return CartPaymentType.cash;
    }
  }
}

extension on GCartPaymentStatus? {
  CartPaymentStatus get toCartPaymentStatus {
    switch (this) {
      case GCartPaymentStatus.NEW:
        return CartPaymentStatus.newCart;
      case GCartPaymentStatus.PAYED:
        return CartPaymentStatus.payed;
      case GCartPaymentStatus.REFUNDED:
        return CartPaymentStatus.refunded;
      case GCartPaymentStatus.NULL:
      default:
        return CartPaymentStatus.nullCart;
    }
  }
}
