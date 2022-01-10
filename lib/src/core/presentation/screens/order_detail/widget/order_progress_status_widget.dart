import 'package:flutter/cupertino.dart';
import 'package:toto_mobile/src/core/presentation/entities/delivery.dart';
import 'package:toto_mobile/src/extensions/TextStyle.dart';
import 'package:toto_mobile/src/resources/resources.dart';

class OrderProgressStatusWidget extends StatelessWidget {
  final OrderProgressStatus orderProgressStatus;
  final double height;
  final double width;
  final double textSize;

  OrderProgressStatusWidget({
    required this.orderProgressStatus,
    required this.height,
    required this.width,
    required this.textSize,
  });

  static const _padding = EdgeInsets.symmetric(vertical: 2, horizontal: 12);
  static const _borderRadius = 30.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: _padding,
      decoration: BoxDecoration(
        color: (orderProgressStatus == OrderProgressStatus.delivered)
            ? TotoTheme.primary
            : (orderProgressStatus == OrderProgressStatus.cancelled)
                ? TotoTheme.accent
                : TotoTheme.accentOrange,
        borderRadius: BorderRadius.all(Radius.circular(_borderRadius)),
      ),
      alignment: Alignment.center,
      child: Text(
        ((orderProgressStatus == OrderProgressStatus.delivered)
                ? TotoDictionary.userOrderProgressStatusDelivered
                : (orderProgressStatus == OrderProgressStatus.cancelled)
                    ? TotoDictionary.userOrderProgressStatusCanceled
                    : TotoDictionary.userOrderProgressStatusInProgress)
            .toLowerCase(),
        maxLines: 1,
        textAlign: TextAlign.center,
        style: (textSize == 13)
            ? RobotoTextStyle.smallCapsFs13Fw400(TotoTheme.text.baseInverted)
            : RobotoTextStyle.smallCapsFs18Fw400(TotoTheme.text.baseInverted),
      ),
    );
  }
}
