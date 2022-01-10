import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:toto_mobile/src/core/domain/entities/product.dart';
import 'package:toto_mobile/src/core/presentation/screens/addition/bloc/bloc.dart';
import 'package:toto_mobile/src/core/presentation/screens/addition/bloc/event.dart';
import 'package:toto_mobile/src/core/presentation/screens/addition/recommend/recommend_list_item_info.dart';
import 'package:toto_mobile/src/extensions/String.dart';
import 'package:toto_mobile/src/extensions/TextStyle.dart';
import 'package:toto_mobile/src/resources/resources.dart';
import 'package:toto_mobile/src/resources/svg.dart';

class AdditionsListItem extends StatelessWidget {
  final ProductDto addition;
  final int countOfAddition;
  const AdditionsListItem({
    required this.countOfAddition,
    required this.addition,
    Key? key,
  }) : super(key: key);

  static const paddingContent = EdgeInsets.only(bottom: 8);
  static const marginContent = EdgeInsets.only(top: 12, right: 16, bottom: 12);
  static const heighContent = 139.0;
  static const imageHeight = 115.0;
  static const imageWidth = 130.0;
  static const heightDescription = 36.0;
  static const paddingDescription = EdgeInsets.only(top: 8);
  static const iconBoxSize = 36.0;
  static const iconSize = 20.0;
  static const amountPadding = EdgeInsets.only(left: 5, right: 5);
  static const amountWidth = 150.0;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => AdditionsListItemInfoCard.show(context, addition),
      child: Container(
        padding: paddingContent,
        margin: marginContent,
        height: heighContent,
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FadeInImage.assetNetwork(
              image: addition.image,
              height: imageHeight,
              width: imageWidth,
              fit: BoxFit.fitWidth,
              placeholder: placeholderPath,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        addition.name,
                        maxLines: 2,
                        textAlign: TextAlign.end,
                        overflow: TextOverflow.ellipsis,
                        style: RobotoTextStyle.s15w500(TotoTheme.text.base),
                      ),
                      Container(
                        height: heightDescription,
                        padding: paddingDescription,
                        child: Text(
                          StringExtension.onlyCompositionInDescription(
                              addition.description ?? ''),
                          maxLines: 3,
                          textAlign: TextAlign.end,
                          overflow: TextOverflow.ellipsis,
                          style: RobotoTextStyle.s13w400(TotoTheme.text.base),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: amountWidth,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: () => countOfAddition != 0
                                    ? BlocProvider.of<AdditionBloc>(context)
                                        .add(AdditionEvent.decrAddition(
                                            addition.id))
                                    : {},
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
                                  '$countOfAddition',
                                  style: RobotoTextStyle.s18w700(
                                      TotoTheme.text.base),
                                ),
                              ),
                              InkWell(
                                onTap: () =>
                                    BlocProvider.of<AdditionBloc>(context).add(
                                        AdditionEvent.incrAddition(
                                            addition.id)),
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
                        ),
                        Text(
                          '${TotoDictionary.toRubles(addition.price.toString())}',
                          style: RobotoTextStyle.s18w700(TotoTheme.text.base),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
