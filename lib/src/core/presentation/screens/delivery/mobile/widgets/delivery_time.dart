import 'package:flutter/material.dart';
import 'package:toto_mobile/src/extensions/TextStyle.dart';
import 'package:toto_mobile/src/resources/resources.dart';

class DeliveryTimeBlock extends StatelessWidget {
  const DeliveryTimeBlock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: TotoTheme.surface,
      padding: EdgeInsets.only(left: 16, top: 16, bottom: 16),
      height: 56,
      child: Row(
        children: [
          Container(
              padding: EdgeInsets.only(right: 12),
              child: Icon(TotoIcons.schedule, color: TotoTheme.accent)),
          Expanded(
            child: Text(
              TotoDictionary.deliveryFaster,
              style: RobotoTextStyle.s16w500(TotoTheme.text.base),
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: 22.25, left: 22.25),
            child: Icon(TotoIcons.arrow_forward),
          )
        ],
      ),
    );
  }
}
