import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toto_mobile/src/extensions/TextStyle.dart';
import 'package:toto_mobile/src/resources/resources.dart';

class BottomButtonRadius extends StatelessWidget {
  final Color bgColor;
  final String title;
  final Function onPress;
  final bool? disabled;
  final double? height;
  final Color textColor;
  final Widget? widget;

  BottomButtonRadius({
    Key? key,
    required this.title,
    required this.onPress,
    required this.bgColor,
    required this.textColor,
    this.height = 70.0,
    this.disabled = false,
    this.widget,
  }) : super(key: key);

  static const _borderRadius = 20.0;
  static const _padding = EdgeInsets.symmetric(vertical: 16, horizontal: 20);
  static const _marginBorder = EdgeInsets.only(left: 1, right: 1, top: 1);
  static const _paddingWidget = EdgeInsets.only(left: 24);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onPress.call(),
      child: Container(
        height: height,
        decoration: BoxDecoration(
          color: TotoTheme.background.primary,
          borderRadius:
              BorderRadius.vertical(top: Radius.circular(_borderRadius)),
        ),
        child: Container(
          margin: _marginBorder,
          padding: _padding,
          decoration: BoxDecoration(
            color: bgColor,
            borderRadius:
                BorderRadius.vertical(top: Radius.circular(_borderRadius)),
          ),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: RobotoTextStyle.s24w500(textColor),
                ),
                if (widget != null)
                  Container(
                    padding: _paddingWidget,
                    child: widget,
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
