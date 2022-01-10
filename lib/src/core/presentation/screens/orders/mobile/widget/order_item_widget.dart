import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';
import 'package:toto_mobile/src/core/presentation/entities/delivery.dart';
import 'package:toto_mobile/src/core/presentation/screens/order_detail/widget/order_progress_status_widget.dart';
import 'package:toto_mobile/src/core/presentation/screens/orders/bloc/bloc.dart';
import 'package:toto_mobile/src/core/presentation/screens/orders/bloc/event.dart';
import 'package:toto_mobile/src/extensions/DateTime.dart';
import 'package:toto_mobile/src/extensions/String.dart';
import 'package:toto_mobile/src/extensions/TextStyle.dart';
import 'package:toto_mobile/src/resources/maps.dart';
import 'package:toto_mobile/src/resources/resources.dart';

class OrderItemWidget extends StatelessWidget {
  final DeliveryProgressData order;

  void onMore(int id) {}

  void onEstimate(int id) {}

  OrderItemWidget({Key? key, required this.order}) : super(key: key);

  static const _height = 165.0;
  static const _padding =
      EdgeInsets.only(top: 8, bottom: 8, left: 17, right: 13);
  static const _marginBottom = EdgeInsets.only(bottom: 8);
  static const _widthPadding = 16.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: TotoTheme.background.base,
      margin: _marginBottom,
      padding: _padding,
      height: _height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              OrderProgressStatusWidget(
                orderProgressStatus: mapOrderStatus[order.orderState] ??
                    OrderProgressStatus.inProgress,
                height: 19.0,
                width: 100,
                textSize: 13,
              ),
              Text(
                StringExtension.stringWithRussianRube(
                    order.orderPrice.toString()),
                style: RobotoTextStyle.s18w700(TotoTheme.text.base),
              ),
            ],
          ),
          if (_dateRow() != null) _dateRow()!,
          if (_addressText() != null) _addressText()!,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  context
                      .read<OrdersBloc>()
                      .add(OrdersEvent.onToOrderDetailPage(order.orderID));
                },
                child: Text(
                  TotoDictionary.userOrderMoreButton.toLowerCase(),
                  style: RobotoTextStyle.smallCapsFs18Fw500(
                      TotoTheme.darkGrayText),
                ),
              ),
              if (_textByOrderStatus(
                      mapOrderStatus[order.orderState] ??
                          OrderProgressStatus.inProgress,
                      context) !=
                  null)
                _textByOrderStatus(
                    mapOrderStatus[order.orderState] ??
                        OrderProgressStatus.inProgress,
                    context)!,
            ],
          ),
        ],
      ),
    );
  }

  Widget? _dateRow() {
    if (order.orderTime == null) return null;
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          DateTimeExtension.getStringByDate(order.orderTime!),
          style: RobotoTextStyle.s18w400(TotoTheme.text.base),
        ),
        SizedBox(width: _widthPadding),
        Text(
          DateTimeExtension.getTimeByDate(order.orderTime!),
          style: RobotoTextStyle.s18w400(TotoTheme.darkGrayText),
        ),
      ],
    );
  }

  Widget? _addressText() {
    if (order.address == null) return null;
    return Text(
      order.address!,
      style: RobotoTextStyle.s14w400(TotoTheme.greenGrayText),
      textAlign: TextAlign.start,
    );
  }

  Widget? _textByOrderStatus(OrderProgressStatus status, BuildContext context) {
    switch (status) {
      case OrderProgressStatus.delivered:
        return InkWell(
          onTap: () {
            context
                .read<OrdersBloc>()
                .add(OrdersEvent.onToEstimationOrderStart(order.orderID));
          },
          child: Text(
            TotoDictionary.userOrderEstimationButton.toLowerCase(),
            style: RobotoTextStyle.smallCapsFs18Fw500(
                TotoTheme.lightGreenGrayText),
          ),
        );
      default:
        return null;
    }
  }
}
