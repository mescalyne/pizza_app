import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toto_mobile/src/core/presentation/entities/cart_item_with_size.dart';
import 'package:toto_mobile/src/core/presentation/router/bloc/bloc.dart';
import 'package:toto_mobile/src/core/presentation/router/bloc/event.dart';
import 'package:toto_mobile/src/core/presentation/screens/bucket/bloc/bloc.dart';
import 'package:toto_mobile/src/core/presentation/screens/bucket/bloc/event.dart';
import 'package:toto_mobile/src/core/presentation/screens/bucket/mobile/full_dishies/bucket_list_item_bottom_sheet.dart';
import 'package:toto_mobile/src/extensions/TextStyle.dart';
import 'package:toto_mobile/src/resources/dictionary.dart';
import 'package:toto_mobile/src/resources/icons.dart';
import 'package:toto_mobile/src/resources/svg.dart';
import 'package:toto_mobile/src/resources/theme.dart';

class BucketListItem extends StatelessWidget {
  final CartItemWithSizes cartItem;
  final int countOfProduct;

  static const contentHeight = 105.0;
  static const contentPadding = EdgeInsets.only(right: 32.0, left: 24.0);
  static const saleInfoHeight = 17.0;
  static const imageWidth = 80.0;
  static const imageHeight = 80.0;
  static const nameProductHeight = 32.0;
  static const infoProductHeight = 20.0;
  static const iconSize = 20.0;
  static const iconBoxSize = 30.0;
  static const amountPadding = EdgeInsets.only(left: 6, right: 6);
  static const amountWidth = 190.0;
  static const spaceBoxWidth = 22.0;
  static const dismissTextPadding = EdgeInsets.only(right: 16);

  BucketListItem({
    required this.cartItem,
    required this.countOfProduct,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var bucketBloc = BlocProvider.of<BucketBloc>(context);
    var productInfo = cartItem.productListWithSizes[cartItem.numbersOfSizes];
    return Container(
      height: contentHeight,
      child: Dismissible(
        onDismissed: (_) => bucketBloc.add(DelItemEvent(productInfo.id)),
        direction: DismissDirection.endToStart,
        key: UniqueKey(),
        background: Container(
          padding: dismissTextPadding,
          alignment: AlignmentDirectional.centerEnd,
          color: TotoTheme.accent,
          child: Text(
            TotoDictionary.fullBucketDelete.toLowerCase(),
            style: RobotoTextStyle.smallCapsFs14Fw700(TotoTheme.surface),
          ),
        ),
        child: InkWell(
          onTap: () {
            if (cartItem.parentGroup == 'Наборы') {
              BlocProvider.of<RouterBloc>(context).add(RouterEvent.toSetsPage(
                cartItem.currentId,
                cartItem.productListWithSizes[0].name,
                false,
              ));
            } else {
              BucketModalBottomItem.show(context, cartItem, bucketBloc);
            }
          },
          child: Padding(
            padding: contentPadding,
            child: Column(
              children: [
                Container(
                  height: saleInfoHeight,
                  child: true == false //TODO пока нет данных на беке
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(TotoIcons.promocode, color: TotoTheme.primary),
                            Text(
                              TotoDictionary.discountInCart,
                              style: RobotoTextStyle.s11w300(TotoTheme.primary),
                            ),
                          ],
                        )
                      : SizedBox(),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FadeInImage.assetNetwork(
                      image: productInfo.image,
                      width: imageWidth,
                      height: imageHeight,
                      fit: BoxFit.fitWidth,
                      placeholder: placeholderPath,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          height: nameProductHeight,
                          child: Text(
                            '${cutLongName(productInfo.name)}',
                            style: RobotoTextStyle.s14w400(TotoTheme.text.base),
                          ),
                        ),
                        Container(
                          height: infoProductHeight,
                          child: Text(
                            TotoDictionary.toShortInfo(
                                countOfProduct.toString(),
                                productInfo.weight.toString()),
                            style: RobotoTextStyle.s14w400(Colors.grey),
                          ),
                        ),
                        Container(
                          width: amountWidth,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      if (countOfProduct > 1) {
                                        bucketBloc.add(DecrCountEvent(
                                            productInfo.id, countOfProduct));
                                      }
                                    },
                                    child: Container(
                                      height: iconBoxSize,
                                      width: iconBoxSize,
                                      alignment: Alignment.center,
                                      child: Icon(
                                        TotoIcons.remove_circle_outline,
                                        color: TotoTheme.accent,
                                        size: iconSize,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: amountPadding,
                                    child: Text(
                                      '${countOfProduct}',
                                      style: RobotoTextStyle.s14w500(
                                          TotoTheme.text.base),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      bucketBloc.add(IncrCountEvent(
                                          productInfo.id, countOfProduct));
                                    },
                                    child: Container(
                                      height: iconBoxSize,
                                      width: iconBoxSize,
                                      alignment: Alignment.center,
                                      child: Icon(
                                        TotoIcons.add_circle_outline,
                                        color: TotoTheme.accent,
                                        size: iconSize,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                '${TotoDictionary.toRubles(productInfo.price.toString())}',
                                style: RobotoTextStyle.s18w700(
                                    TotoTheme.text.base),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

String cutLongName(String str) {
  if (str.length > 27) {
    return str.substring(0, 25) + '...';
  } else {
    return str;
  }
}
