import 'package:flutter/material.dart';
import 'package:toto_mobile/src/extensions/TextStyle.dart';
import 'package:toto_mobile/src/resources/resources.dart';

class DeliveryInfo extends StatelessWidget {
  final Function onResumeButtonPressed;

  DeliveryInfo({
    Key? key,
    required this.onResumeButtonPressed,
  }) : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 16, right: 16),
      child: _resumeButton(context),
    );
  }

  Widget _resumeButton(BuildContext context) => Container(
        decoration: BoxDecoration(
          color: TotoTheme.primary,
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          ),
        ),
        width: 343,
        height: 40,
        child: TextButton(
          onPressed: () => onResumeButtonPressed(),
          child: Text(
            'Продолжить',
            style: RobotoTextStyle.smallCapsFs16Fw400(TotoTheme.surface),
          ),
        ),
      );
}
