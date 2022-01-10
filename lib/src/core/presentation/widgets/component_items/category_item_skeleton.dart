import 'package:flutter/material.dart';
import 'package:toto_mobile/src/core/presentation/widgets/skeleton/skeleton.dart';
import 'package:toto_mobile/src/resources/theme.dart';

class CategoryItemSkeletonWidget extends StatelessWidget {
  const CategoryItemSkeletonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 164,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 12),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 13),
                child: SkeletonElement(
                  height: 113,
                  width: MediaQuery.of(context).size.width * 0.3,
                ),
              ),
              Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
              Padding(
                padding: EdgeInsets.only(top: 16, bottom: 25),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: 98,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 117,
                        child: SkeletonText(
                          height: 16,
                        ),
                      ),
                      SkeletonTextColumn(
                        numberOfColumn: 3,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 16),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 12),
          ),
          Divider(
            color: TotoTheme.primary,
            height: 1,
          ),
        ],
      ),
    );
  }
}
