import 'package:flutter/cupertino.dart';
import 'package:toto_mobile/src/extensions/TextStyle.dart';
import 'package:toto_mobile/src/resources/theme.dart';

class MarkedText extends StatelessWidget {
  final String textData;
  final int? spanIndex;
  final TextStyle? style;
  final TextStyle? spanStyle;
  final TextAlign? textAlign;

  MarkedText(this.textData,
      {this.spanIndex = 0, this.style, this.spanStyle, this.textAlign});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: textAlign ?? TextAlign.center,
      text: TextSpan(
        style: style ?? RobotoTextStyle.s13w400h16(TotoTheme.text.base),
        children: <TextSpan>[
          TextSpan(text: '${textData.substring(0, spanIndex)}'),
          TextSpan(
            text: '${textData.substring(spanIndex!)} ',
            style: spanStyle ?? RobotoTextStyle.s14w400(TotoTheme.text.primary),
          ),
        ],
      ),
    );
  }
}
