import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toto_mobile/src/extensions/TextStyle.dart';
import 'package:toto_mobile/src/resources/resources.dart';

class DeliveryButtonBlock extends StatelessWidget {
  const DeliveryButtonBlock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      height: 188,
      width: double.infinity,
      decoration: BoxDecoration(
        color: TotoTheme.surface,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        boxShadow: [
          BoxShadow(
            color: TotoTheme.gray,
            spreadRadius: 3,
            blurRadius: 5,
          )
        ],
      ),
      child: Column(
        children: [
          Container(
            height: 26,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Стоимость заказа',
                  style: RobotoTextStyle.s16w400(null),
                ),
                Text(
                  '1253 ₽',
                  style: RobotoTextStyle.s16w400(null),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            height: 26,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Доставка',
                  style: RobotoTextStyle.s16w400(null),
                ),
                Text(
                  '200 ₽',
                  style: RobotoTextStyle.s16w400(null),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 8,
          ),
          InkWell(
            child: Container(
              height: 40,
              alignment: AlignmentDirectional.center,
              decoration: BoxDecoration(
                  color: TotoTheme.primary,
                  borderRadius: BorderRadius.all(Radius.circular(100))),
              child: Text(
                'Оплатить',
                style: RobotoTextStyle.s16w700(TotoTheme.surface),
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          InkWell(
            child: Container(
              height: 40,
              alignment: AlignmentDirectional.center,
              decoration: BoxDecoration(
                  color: TotoTheme.gray,
                  borderRadius: BorderRadius.all(Radius.circular(100))),
              child: Text(
                'Отменить',
                style: RobotoTextStyle.s16w400(TotoTheme.gray),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
