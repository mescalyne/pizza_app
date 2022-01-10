import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const BorderRadius _borderRadius = BorderRadius.all(Radius.circular(100.0));

class InkContainer extends StatelessWidget {
  final Widget child;
  final Color backgroundColor;
  final Function()? onTap;

  const InkContainer(
      {Key? key,
      required this.child,
      required this.backgroundColor,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: backgroundColor,
      borderRadius: _borderRadius,
      child: InkWell(
        borderRadius: _borderRadius,
        onTap: onTap,
        child: child,
      ),
    );
  }
}
