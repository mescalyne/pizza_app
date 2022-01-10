import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toto_mobile/src/extensions/TextStyle.dart';
import 'package:toto_mobile/src/resources/resources.dart';

import '../widgets.dart';

const double _defaultHeight = 40.0;
const double _defaultWidth = 265.0;
TextStyle _textStyle = RobotoTextStyle.s16w400(TotoTheme.text.base);
const EdgeInsetsGeometry _buttonPadding = EdgeInsets.all(7.0);

class MainButton extends StatelessWidget {
  final String label;
  final Color background;

  final bool disabled;
  final TextStyle? textStyle;
  final Function()? onPressed;
  final double? width;

  const MainButton(
      {Key? key,
      this.width,
      this.onPressed,
      this.textStyle,
      this.disabled = false,
      required this.label,
      required this.background})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? _defaultWidth,
      height: _defaultHeight,
      child: InkContainer(
        backgroundColor: background,
        onTap: onPressed != null && !disabled ? onPressed : null,
        child: Center(
          child: Padding(
            padding: _buttonPadding,
            child: Text(label, style: TextStyle.lerp(_textStyle, textStyle, 1)),
          ),
        ),
      ),
    );
  }
}
