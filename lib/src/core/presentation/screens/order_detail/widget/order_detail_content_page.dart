import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toto_mobile/src/core/presentation/entities/delivery.dart';
import 'package:toto_mobile/src/core/presentation/entities/delivery_detail.dart';
import 'package:toto_mobile/src/core/presentation/screens/order_detail/widget/delivery_progress.dart';
import 'package:toto_mobile/src/core/presentation/screens/order_detail/widget/order_composition_item_widget.dart';
import 'package:toto_mobile/src/core/presentation/screens/order_detail/widget/order_progress_status_widget.dart';
import 'package:toto_mobile/src/extensions/DateTime.dart';
import 'package:toto_mobile/src/extensions/TextStyle.dart';
import 'package:toto_mobile/src/resources/maps.dart';
import 'package:toto_mobile/src/resources/resources.dart';

class OrderDetailContentPage extends StatelessWidget {
  final DeliveryDetailData orderDetail;

  OrderDetailContentPage({required this.orderDetail});

  static const _padding =
      EdgeInsets.only(left: 16, top: 10, right: 16, bottom: 21);
  static const _heightProgressStatus = 25.0;
  static const _widthProgressStatus = 120.0;
  static const _fontSizeProgressStatus = 18.0;
  static const _heightSep = 1.0;

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      padding: _padding,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            OrderProgressStatusWidget(
              orderProgressStatus: mapOrderStatus[orderDetail.orderState] ??
                  OrderProgressStatus.inProgress,
              height: _heightProgressStatus,
              width: _widthProgressStatus,
              textSize: _fontSizeProgressStatus,
            ),
            Text(
              TotoDictionary.toRubles(orderDetail.orderPrice.toString()),
              style: RobotoTextStyle.s20w700(TotoTheme.black),
            ),
          ],
        ),
        if (canceledCause(orderDetail.orderState) != null)
          canceledCause(orderDetail.orderState)!,
        userInfo(),
        Text(
          orderDetail.address ?? TotoDictionary.orderDetailDeliveredNonAddress,
          style: RobotoTextStyle.s14w400(TotoTheme.text.base),
        ),
        dateTimeInfo(),
        (orderDetail.orderState == DeliveryOrderState.canceled)
            ? cancelComment()
            : orderDeliveryProgress(),
        compositionTitle(),
        Column(children: [
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return OrderCompositionItemWidget(
                  orderItem: orderDetail.items[index]);
            },
            itemCount: orderDetail.items.length,
          ),
        ]),
      ],
    );
  }

  Widget userInfo() {
    const _height = 40.0;
    const _margin = EdgeInsets.symmetric(vertical: 16.0);

    return Container(
      alignment: Alignment.centerLeft,
      height: _height,
      margin: _margin,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            orderDetail.name ?? '',
            style: RobotoTextStyle.s14w400(TotoTheme.text.base),
          ),
          Text(
            orderDetail.phone ?? '',
            style: RobotoTextStyle.s14w400(TotoTheme.text.base),
          ),
        ],
      ),
    );
  }

  Widget? canceledCause(state) {
    const _padding = EdgeInsets.only(top: 18);

    if (state == DeliveryOrderState.canceled &&
        orderDetail.cancelCause != null) {
      return Container(
        padding: _padding,
        child: Text(
          orderDetail.cancelCause!,
          style: RobotoTextStyle.s14w400(TotoTheme.text.danger),
        ),
      );
    }
    return null;
  }

  Widget cancelComment() {
    const _padding = EdgeInsets.only(
      left: 12,
      right: 12,
      top: 20,
      bottom: 20,
    );
    const _margin = EdgeInsets.only(bottom: 18);
    const _marginPhone = EdgeInsets.only(top: 16);
    const _borderRadius = 8.0;

    return Container(
      padding: _padding,
      margin: _margin,
      decoration: BoxDecoration(
        color: TotoTheme.gray,
        borderRadius: BorderRadius.circular(_borderRadius),
      ),
      child: Column(
        children: [
          Text(
            orderDetail.cancelComment ??
                TotoDictionary.orderDetailDeliveredDefaultCommentCanceled,
            style: RobotoTextStyle.s14w400(TotoTheme.text.base),
          ),
          Container(
            margin: _marginPhone,
            child: Center(
              child: InkWell(
                onTap: () {
                  //TODO: нажатие на телефон
                },
                child: Text(
                  TotoDictionary.supportNumber,
                  style: RobotoTextStyle.s18w700(TotoTheme.text.primary),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget dateTimeInfo() {
    DateTime? dateTime =
        (orderDetail.orderState == DeliveryOrderState.delivered)
            ? orderDetail.actualTime
            : orderDetail.deliveryDate;
    const _height = 16.0;
    const _widthSizedBox = 16.0;
    const _margin = EdgeInsets.symmetric(vertical: 16.0);

    return Container(
      margin: _margin,
      height: _height,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            (dateTime != null)
                ? DateTimeExtension.getStringByDate(dateTime)
                : '',
            style: RobotoTextStyle.s14w400(TotoTheme.text.base),
          ),
          SizedBox(width: _widthSizedBox),
          if (orderDetail == DeliveryOrderState.canceled)
            Text(
              (dateTime != null)
                  ? DateTimeExtension.getTimeByDate(dateTime)
                  : '',
              style: RobotoTextStyle.s14w400(TotoTheme.darkGrayText),
            ),
        ],
      ),
    );
  }

  Widget compositionTitle() {
    const _paddingCompositionTitle = EdgeInsets.symmetric(vertical: 12);

    return Column(
      children: [
        Container(
          height: _heightSep,
          color: TotoTheme.primaryLight,
        ),
        Container(
          alignment: Alignment.centerRight,
          padding: _paddingCompositionTitle,
          child: Text(
            TotoDictionary.userOrderDetailCompositionTitle.toLowerCase(),
            style: RobotoTextStyle.smallCapsFs18Fw700(TotoTheme.darkGrayText),
          ),
        ),
      ],
    );
  }

  Widget orderDeliveryProgress() {
    const _paddingDeliveryProgCont = EdgeInsets.only(top: 50, bottom: 50);

    return Column(
      children: [
        Container(
          height: _heightSep,
          color: TotoTheme.primaryLight,
        ),
        Container(
          padding: _paddingDeliveryProgCont,
          child: DeliveryRow(orderDetail),
        ),
      ],
    );
  }
}
