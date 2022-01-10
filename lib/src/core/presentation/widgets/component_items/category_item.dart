import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toto_mobile/src/core/domain/entities/product.dart';
import 'package:toto_mobile/src/core/presentation/screens/menu/bloc/bloc.dart';
import 'package:toto_mobile/src/core/presentation/screens/menu/bloc/event.dart';
import 'package:toto_mobile/src/core/presentation/widgets/component_items/badge_item.dart';
import 'package:toto_mobile/src/extensions/TextStyle.dart';
import 'package:toto_mobile/src/resources/resources.dart';
import 'package:toto_mobile/src/resources/svg.dart';

class CategoryItemWidget extends StatelessWidget {
  const CategoryItemWidget(
      {Key? key, required this.categoryItem, required this.count})
      : super(key: key);

  final ProductDto categoryItem;
  final int? count;

  static const _badgePosition = BadgePosition(top: 0, end: 0);
  static const _badgeHeight = 20.0;
  static const _badgePadding = EdgeInsets.zero;
  static const _heightContent = 140.0;
  static const _heightImage = 140.0;
  static const _height = 182.0;
  static const _paddingTop = EdgeInsets.only(top: 8);
  static const _paddingBottom = EdgeInsets.only(bottom: 8);
  static const _paddingContentRight = EdgeInsets.only(right: 16);
  static const _paddingNameDesc = EdgeInsets.only(top: 9);
  static const _paddingDescPrice = 12.0;
  static const _paddingPricePrice = EdgeInsets.only(right: 12);
  static const _imageWidth = 200.0;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      highlightColor: Colors.white,
      splashColor: Colors.white,
      onTap: () => BlocProvider.of<MenuBloc>(context)
          .add(MenuEvent.onRouteToCardItem(categoryItem)),
      child: Badge(
        toAnimate: false,
        badgeColor: TotoTheme.background.base,
        showBadge: (count != null),
        elevation: 0,
        shape: BadgeShape.square,
        padding: _badgePadding,
        badgeContent: BadgeItem(
          height: _badgeHeight,
          width: _badgeHeight,
          child: Text(
            '$count',
            style: RobotoTextStyle.s13w500(TotoTheme.white),
          ),
        ),
        position: _badgePosition,
        child: Container(
          height: _height,
          child: Column(
            children: [
              Padding(
                padding: _paddingTop,
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Stack(
                      alignment: AlignmentDirectional.topStart,
                      children: [
                        Container(
                          height: _heightImage,
                          child: Center(
                            child: FadeInImage.assetNetwork(
                              image: categoryItem.image,
                              width: _imageWidth,
                              height: _heightImage,
                              fit: BoxFit.fitWidth,
                              placeholder: placeholderPath,
                            ),
                          ),
                        ),
                        /*Container(
                        height: 32,
                        width: 26,
                        child: Text(
                          '🔥',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black, fontSize: 24),
                        ),
                      ),*/ //TODO: Добавить с сервера.
                      ],
                    ),
                    Expanded(
                      child: Container(
                        height: _heightContent,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              categoryItem.name,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.end,
                              style:
                                  RobotoTextStyle.s15w500(TotoTheme.textBase),
                            ),
                            Padding(
                              padding: _paddingNameDesc,
                            ),
                            Text(
                              categoryItem.description ?? '',
                              overflow: TextOverflow.ellipsis,
                              maxLines: 3,
                              textAlign: TextAlign.end,
                              style: RobotoTextStyle.s12w300(Colors.grey),
                            ),
                            SizedBox(
                              height: _paddingDescPrice,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                /*Container(
                                  child: Text(
                                    '255 ₽',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: TotoTheme.text.danger,
                                      fontSize: 18,
                                      decoration: TextDecoration.lineThrough,
                                    ),
                                  ),
                                ),*/ //TODO: Нету на сервере
                                Padding(
                                  padding: _paddingPricePrice,
                                ),
                                _price(categoryItem.price ?? '0',
                                    categoryItem.parentGroup == 'Пицца')
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: _paddingContentRight,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: _paddingBottom,
              ),
              Divider(
                color: TotoTheme.primary,
                height: 1,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _price(String price, bool ot) {
    const _padding = EdgeInsets.only(left: 16, bottom: 7, right: 0, top: 7);

    return Container(
      padding: _padding,
      child: Text(
        '${(ot) ? 'от ' : ''}${TotoDictionary.toRubles(price)}',
        textAlign: TextAlign.center,
        style: RobotoTextStyle.s20w700(TotoTheme.text.primary),
      ),
    );
  }
}
