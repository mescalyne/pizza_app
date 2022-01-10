import 'package:flutter/cupertino.dart';
import 'package:provider/src/provider.dart';
import 'package:toto_mobile/src/core/presentation/screens/ordering/bloc/bloc.dart';
import 'package:toto_mobile/src/core/presentation/screens/ordering/bloc/event.dart';
import 'package:toto_mobile/src/core/presentation/screens/ordering/widget/bottomModals/delivery_time_modal.dart';
import 'package:toto_mobile/src/core/presentation/screens/ordering/widget/content_page.dart';
import 'package:toto_mobile/src/extensions/DateTime.dart';
import 'package:toto_mobile/src/extensions/TextStyle.dart';
import 'package:toto_mobile/src/resources/resources.dart';

class OrderingPageTimeWidget extends StatelessWidget {
  final DateTime? dateTime;
  final bool selectDate;
  OrderingPageTimeWidget({required this.dateTime, required this.selectDate});

  static const _padding =
      EdgeInsets.only(top: 12, bottom: 12, left: 16, right: 25);
  static const _paddingIcon = EdgeInsets.only(right: 14);
  static const _iconSize = 20.0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<OrderingBloc>().add(OrderingEvent.onOpenTimeModal());
        DeliveryTimeModal.show(context, context.read<OrderingBloc>());
      },
      child: Container(
        padding: _padding,
        margin: orderingPageMarginItem,
        width: MediaQuery.of(context).size.width,
        color: TotoTheme.background.base,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: _paddingIcon,
                  child: Icon(
                    TotoIcons.schedule,
                    size: _iconSize,
                    color: TotoTheme.icon.accent,
                  ),
                ),
                (selectDate)
                    ? Text(
                        (dateTime != null
                                ? DateTimeExtension.getTimeByDate(dateTime!)
                                : TotoDictionary.deliveryFaster)
                            .toLowerCase(),
                        style: RobotoTextStyle.smallCapsFs16Fw500(
                            TotoTheme.text.base),
                      )
                    : Text(
                        TotoDictionary.deliveryTimeNoChanged.toLowerCase(),
                        style: RobotoTextStyle.smallCapsFs18Fw500(
                            TotoTheme.accent),
                      ),
              ],
            ),
            Container(
              child: Icon(
                TotoIcons.chevron_forward,
                size: _iconSize,
                color: TotoTheme.icon.gray,
              ),
            )
          ],
        ),
      ),
    );
  }
}
