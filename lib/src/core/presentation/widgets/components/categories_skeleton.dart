import 'package:flutter/material.dart';
import 'package:toto_mobile/src/core/presentation/widgets/skeleton/element.dart';
import 'package:toto_mobile/src/core/presentation/widgets/skeleton/skeleton.dart';
import 'package:toto_mobile/src/resources/theme.dart';

class CategoriesSkeleton extends SliverPersistentHeaderDelegate {
  static const _paddingScroll = EdgeInsets.only(left: 16);
  static const _paddingContainer =
      EdgeInsets.only(top: 8, bottom: 8, right: 6, left: 6);
  static const _marginContainer =
      EdgeInsets.only(left: 4, top: 5, right: 4, bottom: 8);
  static const _widthContainer = 76.0;
  static const _borderRadiusContainer = 16.0;
  static const _widthImage = 45.0;
  static const _heightImage = 30.0;
  static const _fontSize = 13.0;
  static const _paddingBetween = EdgeInsets.only(bottom: 10);

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Colors.transparent,
      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        padding: _paddingScroll,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return InkWell(
            child: Container(
              margin: _marginContainer,
              padding: _paddingContainer,
              width: _widthContainer,
              decoration: BoxDecoration(
                color: Colors.white,
                border: index == 0
                    ? Border.all(
                        width: 1,
                        color: TotoTheme.primary,
                      )
                    : Border.all(width: 1, color: TotoTheme.surface),
                borderRadius: BorderRadius.all(
                  Radius.circular(_borderRadiusContainer),
                ),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 3.0),
                      color: Colors.black38,
                      spreadRadius: -1,
                      blurRadius: 5),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 2,
                    child: SkeletonElement(
                      width: _widthImage,
                      height: _heightImage,
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(padding: _paddingBetween),
                  ),
                  SkeletonText(
                    height: _fontSize,
                  ),
                ],
              ),
            ),
          );
        },
        itemCount: 6,
      ),
    );
  }

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }

  @override
  double get maxExtent => 85;

  @override
  double get minExtent => 44;
}
