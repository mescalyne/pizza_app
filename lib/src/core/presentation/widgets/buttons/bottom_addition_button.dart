import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toto_mobile/src/extensions/TextStyle.dart';
import 'package:toto_mobile/src/resources/resources.dart';

class BottomAdditionButton extends StatelessWidget {
  final String name;
  final String? price;
  final Widget? icon;
  final Function? onTapFunction;

  const BottomAdditionButton({
    required this.name,
    this.price,
    this.icon,
    this.onTapFunction,
    Key? key,
  }) : super(key: key);

  static const heightOfButton = 70.0;
  static const borderRadiusOfButton = 20.0;
  static const paddingOfPrice = EdgeInsets.only(left: 24);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTapFunction == null ? {} : onTapFunction!.call(),
      child: Container(
        height: heightOfButton,
        decoration: BoxDecoration(
          color: TotoTheme.primary,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(borderRadiusOfButton),
            topRight: Radius.circular(borderRadiusOfButton),
          ),
        ),
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              name,
              style: RobotoTextStyle.s24w500(TotoTheme.surface),
            ),
            price != null
                ? Container(
                    padding: paddingOfPrice,
                    child: Text(
                      TotoDictionary.toRubles(price!),
                      style: RobotoTextStyle.s24w500(TotoTheme.surface),
                    ),
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
