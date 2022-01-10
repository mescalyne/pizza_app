import 'package:flutter/material.dart';
import 'package:toto_mobile/src/extensions/TextStyle.dart';
import 'package:toto_mobile/src/resources/svg.dart';
import 'package:toto_mobile/src/resources/theme.dart';

import 'buttons/rounded_button.dart';

class EmptyOrderView extends StatelessWidget {
  final Function()? buttonAction;
  final String? messageText;
  final String? buttonText;
  final String? imagePath;

  // Constants

  static const _selfPadding = EdgeInsets.only(right: 15, left: 15);
  static const _imageSize = 130.0;
  static const _buttonPadding = EdgeInsets.only(right: 16, left: 16, top: 40);
  static const _textPadding = EdgeInsets.only(top: 20, bottom: 5);

  EmptyOrderView(
      {required this.buttonAction,
      required this.buttonText,
      required this.messageText,
      this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Center(
          child: Padding(
        padding: _selfPadding,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            pomidorka(),
            if (textWidget() != null) textWidget()!,
            if (activeButton() != null) activeButton()!,
          ],
        ),
      )),
    );
  }

  Widget? activeButton() {
    if (buttonAction == null) return null;
    return Padding(
      padding: _buttonPadding,
      child: RoundedButton(
        label: buttonText ?? '',
        onPressed: buttonAction,
        hasArrow: false,
      ),
    );
  }

  Widget? textWidget() {
    if (messageText == null) return null;
    return Padding(
      padding: _textPadding,
      child: Text(messageText!,
          maxLines: 4,
          textAlign: TextAlign.center,
          style: RobotoTextStyle.s18w300(TotoTheme.text.base)),
    );
  }

  Widget pomidorka() {
    return Image.asset(
      imagePath ?? icLogoMain,
      fit: BoxFit.fitWidth,
      width: _imageSize,
    );
  }
}
