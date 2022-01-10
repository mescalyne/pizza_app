import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toto_mobile/src/extensions/TextStyle.dart';
import 'package:toto_mobile/src/resources/icons.dart';
import 'package:toto_mobile/src/resources/resources.dart';

class RoundedButton extends StatelessWidget {
  final String label;
  final bool gray;
  final bool disabled;
  final TextStyle? textStyle;
  final Function()? onPressed;
  final double? width;
  final bool hasArrow;
  final Widget? icon;

  static const double _defaultHeight = 40.0;
  static const EdgeInsets _paddingIcon = EdgeInsets.only(left: 10);

  const RoundedButton(
      {Key? key,
      this.width,
      this.onPressed,
      this.textStyle,
      this.disabled = false,
      this.hasArrow = false,
      this.gray = false,
      this.icon,
      required this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: _defaultHeight,
      child: TextButton(
        style: ButtonStyle(
          padding: MaterialStateProperty.all(
            EdgeInsets.only(left: 20, right: 20),
          ),
          backgroundColor: MaterialStateProperty.all(gray
              ? TotoTheme.gray
              : (disabled)
                  ? TotoTheme.background.primary.withOpacity(0.6)
                  : TotoTheme.background.primary),
          shape: MaterialStateProperty.resolveWith<RoundedRectangleBorder>(
            (states) {
              return RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100));
            },
          ),
        ),
        onPressed: onPressed != null && !disabled ? onPressed : null,
        child: Center(
          //width: 200,
          child: roundButtonLabel(),
        ),
      ),
    );
  }

  Widget roundButtonLabel() {
    if (hasArrow) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            label,
            style: (textStyle != null)
                ? textStyle
                : RobotoTextStyle.s16w400(
                    gray ? Color(0xFF4F4F4F) : Colors.white),
          ),
          SizedBox(
            width: 13,
          ),
          Icon(
            TotoIcons.arrow_forward,
            color: gray ? Color(0xFF4F4F4F) : Colors.white,
            size: 12,
          )
        ],
      );
    } else {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            label,
            style: (textStyle != null)
                ? textStyle
                : RobotoTextStyle.s16w400(
                    gray ? Color(0xFF4F4F4F) : Colors.white),
            textAlign: TextAlign.center,
          ),
          if (icon != null)
            Container(
              padding: _paddingIcon,
              child: icon,
            ),
        ],
      );
    }
  }
}
