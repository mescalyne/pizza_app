import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:toto_mobile/src/resources/resources.dart';

class SkeletonElement extends StatelessWidget {
  final Color? baseColor;
  final Color? highlightColor;
  final double? height;
  final double? width;

  const SkeletonElement({
    Key? key,
    this.baseColor,
    this.highlightColor,
    this.height,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _baseColor = baseColor ?? TotoTheme.bgGrey;

    final _highlightColor = highlightColor ?? TotoTheme.gray;

    return Shimmer.fromColors(
      baseColor: _baseColor,
      highlightColor: _highlightColor,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: _baseColor,
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    );
  }
}
