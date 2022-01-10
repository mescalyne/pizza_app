import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';
import 'package:toto_mobile/src/core/domain/entities/product.dart';
import 'package:toto_mobile/src/core/presentation/screens/sets/bloc/bloc.dart';
import 'package:toto_mobile/src/core/presentation/screens/sets/bloc/event.dart';
import 'package:toto_mobile/src/extensions/TextStyle.dart';
import 'package:toto_mobile/src/resources/resources.dart';
import 'package:toto_mobile/src/resources/svg.dart';

class SetItemWidget extends StatelessWidget {
  final ProductDto productId;
  final int index;

  SetItemWidget({required this.productId, required this.index});

  static const _margin = EdgeInsets.only(bottom: 12);
  static const _padding = EdgeInsets.symmetric(horizontal: 8, vertical: 12);
  static const _borderRadius = 16.0;
  static const _height = 125.0;
  static const _imageHeight = 116.0;
  static const _imageWidth = 101.0;
  static const _paddingTitle = EdgeInsets.only(left: 15, right: 8);
  static const _paddingIcon = EdgeInsets.symmetric(horizontal: 5);
  static const _iconSize = 30.0;
  static const _heightBetweenDescription = 4.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: _height,
      margin: _margin,
      padding: _padding,
      decoration: BoxDecoration(
          color: TotoTheme.background.base,
          borderRadius: BorderRadius.all(
            Radius.circular(_borderRadius),
          ),
          boxShadow: [
            BoxShadow(
              color: Color(0x3F000000),
              spreadRadius: 0.1,
              blurRadius: 4, // blur radius
              offset: Offset(0, 3),
            ),
          ]),
      child: InkWell(
        onTap: () {
          context.read<SetsBloc>().add(SetsEvent.onItemDetailPage(index));
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FadeInImage.assetNetwork(
              image: productId.image,
              width: _imageWidth,
              height: _imageHeight,
              fit: BoxFit.fitWidth,
              placeholder: placeholderPath,
            ),
            Flexible(
              child: Container(
                padding: _paddingTitle,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      productId.name,
                      textAlign: TextAlign.end,
                      style: RobotoTextStyle.s14w400(TotoTheme.text.base),
                    ),
                    SizedBox(height: _heightBetweenDescription),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          productId.weight != null
                              ? TotoDictionary.toShortInfo(
                                  null, productId.weight!)
                              : '',
                          textAlign: TextAlign.end,
                          style:
                              RobotoTextStyle.s11w400(TotoTheme.darkGrayText),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Container(
              padding: _paddingIcon,
              child: Icon(
                TotoIcons.chevron_forward,
                size: _iconSize,
                color: TotoTheme.icon.primary,
              ),
            )
          ],
        ),
      ),
    );
  }
}
