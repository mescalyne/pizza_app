import 'package:flutter/cupertino.dart';
import 'package:toto_mobile/src/resources/resources.dart';

class PageIndicator extends StatelessWidget {
  final int itemCount;
  final int coloredItemIndex;

  static const double indicatorSize = 3;
  static const indicatorPadding = EdgeInsets.all(2.0);

  PageIndicator(this.itemCount, this.coloredItemIndex);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: createIndicatorsList(),
    );
  }

  List<Widget> createIndicatorsList() {
    var returnList = <Widget>[];
    for (var i = 0; i < itemCount; i++) {
      var point = Padding(
        padding: indicatorPadding,
        child: ClipOval(
          child: Container(
            height: indicatorSize,
            width: indicatorSize,
            color: coloredItemIndex == i
                ? TotoTheme.primaryBorder
                : TotoTheme.textDisabled,
          ),
        ),
      );
      returnList.add(point);
    }
    return returnList;
  }
}