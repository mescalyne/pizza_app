import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toto_mobile/src/extensions/TextStyle.dart';
import 'package:toto_mobile/src/resources/resources.dart';

class DeliveryCommentBlock extends StatelessWidget {
  const DeliveryCommentBlock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: TotoTheme.surface,
      padding: EdgeInsets.only(left: 16, top: 12, right: 16, bottom: 12),
      height: 214,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'КОЛИЧЕСТВО ПЕРСОН'.toLowerCase(),
            style: RobotoTextStyle.smallCapsFs14Fw500(TotoTheme.text.base),
          ),
          Padding(
            padding: EdgeInsets.only(top: 16),
            child: Container(
              child: Row(
                children: [
                  Row(
                    children: [
                      InkWell(
                          child: Icon(TotoIcons.remove_circle_outline,
                              color: TotoTheme.accent)),
                      Padding(
                          padding: EdgeInsets.only(left: 6, right: 6),
                          child: Text(
                            '2',
                            style: RobotoTextStyle.s18w500(TotoTheme.text.base),
                          )),
                      InkWell(
                          child: Icon(TotoIcons.add_circle_outline,
                              color: TotoTheme.accent)),
                    ],
                  ),
                  Container(
                    width: 12,
                  ),
                  Expanded(
                    child: Text(
                      'Исходя из количества персон мы укомплектуем ваш заказ',
                      style: RobotoTextStyle.s13w400(TotoTheme.primary),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 14, bottom: 8),
            child: Text(
              'КОММЕНТАРИЙ',
              style: RobotoTextStyle.s14w500(TotoTheme.text.base),
            ),
          ),
          Container(
            height: 86,
            padding: EdgeInsets.all(15),
            alignment: AlignmentDirectional.topStart,
            decoration: BoxDecoration(
                border: Border.all(color: TotoTheme.primary, width: 1),
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: TextField(
              keyboardType: TextInputType.multiline,
              style: RobotoTextStyle.s13w400(TotoTheme.text.base),
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(0),
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  hintText: TotoDictionary.deliveryComment),
            ),
          )
        ],
      ),
    );
  }
}
