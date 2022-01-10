import 'package:flutter/material.dart';
import 'package:toto_mobile/src/extensions/TextStyle.dart';
import 'package:toto_mobile/src/resources/dictionary.dart';
import 'package:toto_mobile/src/resources/resources.dart';

class TotalPrice extends StatelessWidget {
  final String totalPrice;
  final double? discountSum;
  final bool isAcceptAvailable;

  const TotalPrice({
    required this.totalPrice,
    required this.discountSum,
    required this.isAcceptAvailable,
    Key? key,
  }) : super(key: key);

  static const paddingContent = EdgeInsets.only(left: 16, right: 16.0);
  static const spaceBoxHeight = 8.0;

  @override
  Widget build(BuildContext context) {
    return isAcceptAvailable
        ? Container(
            padding: paddingContent,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      TotoDictionary.fullBucketTotal,
                      style: RobotoTextStyle.s16w400(TotoTheme.text.base),
                    ),
                    Text(
                      '${TotoDictionary.toRubles(totalPrice)}',
                      style: RobotoTextStyle.s16w400(TotoTheme.text.base),
                    ),
                  ],
                ),
                SizedBox(
                  height: spaceBoxHeight,
                ),
                (discountSum == null || discountSum == 0)
                    ? SizedBox()
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            TotoDictionary.fullBucketDiscountSize,
                            style: RobotoTextStyle.s16w400(TotoTheme.text.base),
                          ),
                          Text(
                            '${TotoDictionary.toRubles(discountSum!.floor().toString())}',
                            style: RobotoTextStyle.s16w400(TotoTheme.text.base),
                          ),
                        ],
                      ),
              ],
            ),
          )
        : Container(
            alignment: AlignmentDirectional.center,
            child: CircularProgressIndicator());
  }
}
