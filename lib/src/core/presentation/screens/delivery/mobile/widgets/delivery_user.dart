import 'package:flutter/material.dart';
import 'package:toto_mobile/src/extensions/TextStyle.dart';
import 'package:toto_mobile/src/resources/resources.dart';

class DeliveryUserBlock extends StatelessWidget {
  const DeliveryUserBlock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: TotoTheme.surface,
      padding: EdgeInsets.only(left: 16, top: 12, bottom: 11),
      height: 71,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Альбина',
                style: RobotoTextStyle.s18w400(TotoTheme.text.base),
              ),
              Text(
                '+7 898 123 45 67',
                style: RobotoTextStyle.s18w400(TotoTheme.text.base),
              ),
            ],
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
