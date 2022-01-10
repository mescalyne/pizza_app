import 'package:flutter/cupertino.dart';
import 'package:toto_mobile/src/resources/resources.dart';

class ModalContainer extends StatelessWidget {
  final double height;
  final double width;
  final double? minHeight;
  final double? minWidth;
  final EdgeInsets padding;
  final double borderRadius;
  final Color? color;
  final Column children;

  ModalContainer({
    required this.height,
    required this.width,
    this.minHeight,
    this.minWidth,
    this.padding = const EdgeInsets.only(
      left: 16,
      top: 20,
      right: 16,
      bottom: 20,
    ),
    this.borderRadius = 20.0,
    this.color,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: BoxConstraints(
            minHeight: minHeight ?? 0.0,
            minWidth: minWidth ?? 0.0,
            maxHeight: height,
            maxWidth: width),
        padding: padding,
        decoration: BoxDecoration(
          color: color ?? TotoTheme.background.base,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: children,
      ),
    );
  }
}
