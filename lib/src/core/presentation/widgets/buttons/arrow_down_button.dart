import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toto_mobile/src/resources/resources.dart';
import 'package:toto_mobile/src/resources/svg.dart';

class ArrowDownButton extends StatelessWidget {
  final Function? onPress;
  ArrowDownButton({this.onPress});

  static const _widthIconButton = 45.0;
  static const _paddingTopButton = EdgeInsets.only(top: 10, bottom: 2);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: GestureDetector(
          onTap: onPress != null
              ? onPress!()
              : () {
                  Navigator.pop(context);
                },
          child: Container(
            color: TotoTheme.background.base,
            padding: _paddingTopButton,
            child: Image.asset(
              arrowDown,
              width: _widthIconButton,
            ),
          ),
        ),
      ),
    );
  }
}
