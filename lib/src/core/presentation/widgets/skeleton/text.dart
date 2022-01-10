import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:toto_mobile/src/resources/resources.dart';

const _columnTextPadding = EdgeInsets.only(top: 6);

class SkeletonText extends StatelessWidget {
  final Color? baseColor;
  final Color? highlightColor;
  final double height;

  const SkeletonText({
    Key? key,
    this.baseColor,
    this.highlightColor,
    this.height = 12,
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
        decoration: BoxDecoration(
          color: _baseColor,
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}

class SkeletonTextColumn extends StatelessWidget {
  final int numberOfColumn;
  final EdgeInsetsGeometry padding;

  const SkeletonTextColumn({
    required this.numberOfColumn,
    this.padding = _columnTextPadding,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (int i = 0; i < numberOfColumn; i++)
          Padding(
            padding: padding,
            child: SkeletonText(),
          ),
      ],
    );
  }
}
