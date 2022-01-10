import 'package:toto_mobile/src/core/data/models/page_content.dart';
import 'package:toto_mobile/src/core/domain/entities/cart.dart';
import 'package:toto_mobile/src/core/domain/entities/cart_filters_input.dart';
import 'package:toto_mobile/src/core/data/network/models/toto.schema.schema.gql.dart';
import 'package:toto_mobile/src/core/domain/entities/unique_page.dart';
import 'package:toto_mobile/src/core/presentation/entities/delivery.dart';
import 'package:toto_mobile/src/core/presentation/screens/more/bloc/list_item.dart';

Map<DataType, CellType> dataTypeToCellType = {
  DataType.image: CellType.imageView,
  DataType.roundImage: CellType.roundImageView,
  DataType.attachment: CellType.expanded,
  DataType.text: CellType.formatText,
  DataType.link: CellType.urlWithName,
  DataType.linkButton: CellType.button,
  DataType.images: CellType.pageView,
  DataType.email: CellType.email,
};

Map<OrderStatusDto, GCartOrderStatus> orderStatusDtoMapping = {
  OrderStatusDto.nullCart: GCartOrderStatus.NULL_CART_STATUS,
  OrderStatusDto.newCart: GCartOrderStatus.NEW_CART_STATUS,
  OrderStatusDto.awaiting: GCartOrderStatus.AWAITING_DELIVERY_CART_STATUS,
  OrderStatusDto.onTheWay: GCartOrderStatus.ON_THE_WAY_CART_STATUS,
  OrderStatusDto.closed: GCartOrderStatus.CLOSED_CART_STATUS,
  OrderStatusDto.canceled: GCartOrderStatus.CANCELLED_CART_STATUS,
  OrderStatusDto.delivered: GCartOrderStatus.DELIVERED_CART_STATUS,
  OrderStatusDto.notConfirmed: GCartOrderStatus.NOT_CONFIRMED_CART_STATUS,
  OrderStatusDto.inProgress: GCartOrderStatus.IN_PROGRESS_CART_STATUS,
  OrderStatusDto.done: GCartOrderStatus.DONE,
};

Map<PaymentStatusDto, GCartPaymentStatus> paymentStatusDtoMapping = {
  PaymentStatusDto.nullValue: GCartPaymentStatus.NULL,
  PaymentStatusDto.newValue: GCartPaymentStatus.NEW,
  PaymentStatusDto.payed: GCartPaymentStatus.PAYED,
  PaymentStatusDto.refunded: GCartPaymentStatus.REFUNDED,
};

Map<GTypeFile, MediaFileType> mapMediaFileTypeDto = {
  GTypeFile.IMAGE: MediaFileType.image,
  GTypeFile.VIDEO: MediaFileType.video,
  GTypeFile.TEXT: MediaFileType.text,
  GTypeFile.AUDIO: MediaFileType.audio,
};

Map<DeliveryOrderState, OrderProgressStatus> mapOrderStatus = {
  DeliveryOrderState.delivered: OrderProgressStatus.delivered,
  DeliveryOrderState.canceled: OrderProgressStatus.cancelled,
  DeliveryOrderState.adopted: OrderProgressStatus.inProgress,
  DeliveryOrderState.given: OrderProgressStatus.inProgress,
  DeliveryOrderState.prepare: OrderProgressStatus.inProgress,
};

Map<CartPaymentType, GCartPaymentType> mapPaymentType = {
  CartPaymentType.cash: GCartPaymentType.CASH_PAYMENT_TYPE,
  CartPaymentType.card: GCartPaymentType.CARD_PAYMENT_TYPE,
  CartPaymentType.cardExternal: GCartPaymentType.CARD_EXTERNAL_PAYMENT_TYPE,
};