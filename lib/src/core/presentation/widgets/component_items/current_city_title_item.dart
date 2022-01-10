import 'package:flutter/material.dart';
import 'package:toto_mobile/src/extensions/TextStyle.dart';
import 'package:toto_mobile/src/resources/theme.dart';

class CurrentCityTitle extends StatelessWidget {
  const CurrentCityTitle({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: RobotoTextStyle.s14w500(TotoTheme.textBase),
    );
  }
}
