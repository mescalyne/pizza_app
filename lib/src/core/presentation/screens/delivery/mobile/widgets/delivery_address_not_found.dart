import 'package:flutter/material.dart';
import 'package:toto_mobile/src/extensions/TextStyle.dart';
import 'package:toto_mobile/src/resources/resources.dart';
import 'package:toto_mobile/src/resources/svg.dart';

class DeliveryAddressNotFoundForm extends StatelessWidget {
  final Function onChooseAnotherDeliveryButton;
  const DeliveryAddressNotFoundForm(
      {Key? key, required this.onChooseAnotherDeliveryButton})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: TotoTheme.surface,
      height: 429,
      width: 375,
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Image.asset(
            arrowDown,
            height: 7,
            width: 45,
          ),
          SizedBox(
            height: 59,
          ),
          Image.asset(
            screamerLogo,
            height: 138,
            width: 157,
          ),
          Container(
            margin: EdgeInsets.only(top: 40),
            height: 42,
            width: 335,
            child: Text(
              'Извините, на ваш адрес доставка не осуществляется',
              textAlign: TextAlign.center,
              style: RobotoTextStyle.s18w500(TotoTheme.text.base),
            ),
          ),
          SizedBox(
            height: 53,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Container(
              color: TotoTheme.primary,
              height: 40,
              width: 343,
              child: TextButton(
                onPressed: () => onChooseAnotherDeliveryButton(),
                child: Text(
                  'Выбрать другой адрес',
                  style: RobotoTextStyle.s16w400(TotoTheme.surface),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
