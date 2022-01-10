import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:toto_mobile/src/extensions/TextStyle.dart';
import 'package:toto_mobile/src/resources/dictionary.dart';
import 'package:toto_mobile/src/resources/icons.dart';
import 'package:toto_mobile/src/resources/theme.dart';

class Bucket extends StatelessWidget {
  final String quantity;
  const Bucket({Key? key, required this.quantity}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        Badge(
          position: BadgePosition.topEnd(top: -4, end: -6),
          padding: EdgeInsets.all(1),
          badgeContent: Text(
            quantity,
            style: RobotoTextStyle.s12w400(TotoTheme.surface),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Container(
              padding: EdgeInsets.all(9),
              decoration: BoxDecoration(color: TotoTheme.primary),
              child: Icon(
                TotoIcons.shoppingCart,
                color: TotoTheme.surface,
              ),
            ),
          ),
        ),
        Text(TotoDictionary.bucket)
      ]),
    );
  }
}
