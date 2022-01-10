import 'package:flutter/material.dart';
import 'package:toto_mobile/src/extensions/TextStyle.dart';
import 'package:toto_mobile/src/resources/resources.dart';

class ItemCompositional extends StatelessWidget {
  final String description;
  const ItemCompositional({
    required this.description,
    Key? key,
  }) : super(key: key);

  static const paddingOfContent = EdgeInsets.only(top: 16);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: paddingOfContent,
      alignment: Alignment.topLeft,
      child: Text(
        TotoDictionary.toDescriptionString(description),
        style: RobotoTextStyle.s14w400(TotoTheme.text.base),
      ),
    );
  }
}
