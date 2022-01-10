import 'package:flutter/material.dart';
import 'package:toto_mobile/src/extensions/TextStyle.dart';
import 'package:toto_mobile/src/resources/theme.dart';

class ChoosePlaceTitle extends StatelessWidget {
  final String title;

  const ChoosePlaceTitle({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 22, right: 16, left: 16),
      child: Text(
        title,
        textAlign: TextAlign.left,
        style: RobotoTextStyle.s18w700(TotoTheme.textBase),
      ),
    );
  }
}
