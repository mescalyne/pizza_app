import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toto_mobile/src/core/presentation/screens/addition/bloc/bloc.dart';
import 'package:toto_mobile/src/core/presentation/screens/addition/bloc/event.dart';
import 'package:toto_mobile/src/extensions/TextStyle.dart';
import 'package:toto_mobile/src/resources/resources.dart';
import 'package:toto_mobile/src/resources/svg.dart';

class CustomTitleForCard extends StatelessWidget {
  final String id;
  final String name;
  final String image;
  final String price;
  final int countOfProduct;

  const CustomTitleForCard({
    required this.id,
    required this.name,
    required this.image,
    required this.price,
    required this.countOfProduct,
    Key? key,
  }) : super(key: key);

  static const paddingContent = EdgeInsets.only(right: 23);
  static const widthImage = 98.0;
  static const paddingImage = EdgeInsets.all(8);
  static const iconBoxSize = 30.0;
  static const iconSize = 20.0;
  static const amountPadding = EdgeInsets.only(left: 5, right: 5);
  static const spaceBoxWidth = 41.0;
  static const spaceBoxHeight = 36.0;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: paddingContent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Container(
                padding: paddingImage,
                child: FadeInImage.assetNetwork(
                  image: image,
                  height: widthImage,
                  fit: BoxFit.fitWidth,
                  placeholder: placeholderPath,
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '$name',
                  style: RobotoTextStyle.s14w400(TotoTheme.text.base),
                ),
                Container(
                  height: spaceBoxHeight,
                ),
                Row(
                  children: [
                    Row(
                      children: [
                        InkWell(
                          onTap: () => BlocProvider.of<AdditionBloc>(context)
                              .add(AdditionEvent.decrAddition(id)),
                          child: Container(
                            width: iconBoxSize,
                            height: iconBoxSize,
                            alignment: Alignment.center,
                            child: Icon(
                              TotoIcons.remove_circle_outline,
                              color: TotoTheme.primary,
                              size: iconSize,
                            ),
                          ),
                        ),
                        Padding(
                          padding: amountPadding,
                          child: Text(
                            '${countOfProduct}',
                            style: RobotoTextStyle.s18w700(TotoTheme.text.base),
                          ),
                        ),
                        InkWell(
                          onTap: () => BlocProvider.of<AdditionBloc>(context)
                              .add(AdditionEvent.incrAddition(id)),
                          child: Container(
                            width: iconBoxSize,
                            height: iconBoxSize,
                            alignment: Alignment.center,
                            child: Icon(
                              TotoIcons.add_circle_outline,
                              color: TotoTheme.primary,
                              size: iconSize,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: spaceBoxWidth,
                    ),
                    Text(
                      '${TotoDictionary.toRubles(price.toString())}',
                      style: RobotoTextStyle.s18w700(TotoTheme.text.base),
                    ),
                  ],
                )
              ],
            )
          ],
        ));
  }
}
