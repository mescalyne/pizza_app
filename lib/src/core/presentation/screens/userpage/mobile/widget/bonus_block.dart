import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toto_mobile/src/extensions/TextStyle.dart';
import 'package:toto_mobile/src/resources/icons.dart';
import 'package:toto_mobile/src/resources/resources.dart';

class UserBonusBlock extends StatelessWidget {
  final int bonusSize;
  UserBonusBlock({required this.bonusSize, Key? key}) : super(key: key);

  static const paddingOfContent = EdgeInsets.only(left: 16);
  static const heightOfContent = 56.0;
  static const heightOfSpece = 14.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: TotoTheme.surface,
      padding: paddingOfContent,
      height: heightOfContent,
      alignment: Alignment.centerLeft,
      child: Row(children: [
        Icon(
          TotoIcons.botonus,
          color: TotoTheme.accent,
          size: 28,
        ),
        Container(
          width: heightOfSpece,
        ),
        Text(
          '$bonusSize'.toUpperCase(),
          style: RobotoTextStyle.s18w700(TotoTheme.text.primaryDark),
        ),
        Container(
          width: heightOfSpece,
        ),
        Text(
          TotoDictionary.userInfoTotonus.toUpperCase(),
          style: RobotoTextStyle.s18w700(TotoTheme.text.primaryDark),
        ),
      ]),
    );
  }
}
