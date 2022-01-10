import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toto_mobile/src/extensions/TextStyle.dart';
import 'package:toto_mobile/src/resources/resources.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

class DeliveryAdressBlock extends StatelessWidget {
  const DeliveryAdressBlock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: TotoTheme.surface,
      padding: EdgeInsets.only(left: 16, top: 16, bottom: 16),
      height: 72,
      child: Row(
        children: [
          Expanded(
            child: Text(
              'г. Владимир, ул. Чехова 123, кв. 14 или просто очень длинный адрес', //TODO мок данные
              style: RobotoTextStyle.s18w400(null),
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: 22.25, left: 22.25),
            child: InkWell(
                onTap: () {
                  DeliveryModalBottomItem.choiceAddress(context);
                },
                child: Icon(TotoIcons.arrow_forward)),
          )
        ],
      ),
    );
  }
}

abstract class DeliveryModalBottomItem {
  static Future choiceAddress(BuildContext context) {
    return showModalBottomSheet(
        isScrollControlled: true,
        backgroundColor: Colors.white,
        elevation: 10,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30))),
        context: context,
        builder: (BuildContext context) {
          return BottomItemField();
        });
  }

  static Future openMap(BuildContext context) {
    return showModalBottomSheet(
        isScrollControlled: true,
        backgroundColor: Colors.white,
        elevation: 10,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30))),
        context: context,
        builder: (BuildContext context) {
          return BottomMapField();
        });
  }
}

class BottomMapField extends StatelessWidget {
  final Completer<YandexMapController> _completer = Completer();
  late YandexMapController mapController;

  BottomMapField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 408,
      width: double.infinity,
      child: YandexMap(),
    );
  }
}

class BottomItemField extends StatelessWidget {
  const BottomItemField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 208,
      padding: EdgeInsets.only(top: 35, right: 16, left: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(bottom: 25.5),
            child: Text(
              'Адрес доставки',
              style: RobotoTextStyle.s18w700(null),
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 25.5),
            child: InkWell(
              onTap: () {
                DeliveryModalBottomItem.openMap(context);
              },
              child: Text(
                '+ ДОБАВИТЬ АДРЕС',
                style: RobotoTextStyle.s18w700(TotoTheme.accent),
              ),
            ),
          ),
          InkWell(
            child: Container(
              height: 40,
              alignment: AlignmentDirectional.center,
              decoration: BoxDecoration(
                  color: TotoTheme.primary,
                  borderRadius: BorderRadius.all(Radius.circular(100))),
              child: Text(
                'Продолжить',
                style: RobotoTextStyle.s16w700(TotoTheme.surface),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
