import 'package:flutter/material.dart';
import 'package:toto_mobile/src/core/domain/entities/product.dart';
import 'package:toto_mobile/src/extensions/TextStyle.dart';
import 'package:toto_mobile/src/resources/resources.dart';

class ModifierList extends StatelessWidget {
  final Map<ProductDto, bool> modifiersList;
  final Function? onChange;

  const ModifierList({
    required this.modifiersList,
    this.onChange,
    Key? key,
  }) : super(key: key);

  static const heightOfContent = 120.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: heightOfContent,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: modifiersList.length,
          itemBuilder: (BuildContext context, int index) {
            var key = modifiersList.keys.elementAt(index);
            return ModifierItem(
              modifier: key,
              isSelected: modifiersList[key] ?? false,
              onChange: onChange,
            );
          }),
    );
  }
}

class ModifierItem extends StatelessWidget {
  final ProductDto modifier;
  final bool isSelected;
  final Function? onChange;

  ModifierItem({
    required this.modifier,
    required this.isSelected,
    this.onChange,
    Key? key,
  }) : super(key: key);

  static const paddingOfContent =
      EdgeInsets.only(top: 4, left: 5, bottom: 4, right: 16.5);
  static const paddingOfIntentContent = EdgeInsets.only(top: 8, bottom: 12);
  static const borderRadius = 16.0;
  static const textPadding = EdgeInsets.only(right: 4, left: 4);
  static const positionedSize = 5.0;
  static const textHeight = 22.0;
  static const imageContainerHeigth = 70.0;
  static const imageContainerPadding = EdgeInsets.only(top: 8, bottom: 12);
  static const widthOfContent = 100.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: paddingOfContent,
      child: InkWell(
        onTap: () {
          onChange != null ? onChange!.call(modifier.id) : {};
        },
        child: Container(
          width: widthOfContent,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: isSelected ? TotoTheme.primary : TotoTheme.surface,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(borderRadius),
            boxShadow: [
              isSelected
                  ? BoxShadow(
                      color: TotoTheme.surface,
                      blurRadius: 8,
                      offset: Offset(4, 0),
                    )
                  : BoxShadow(
                      color: TotoTheme.black.withOpacity(0.16),
                      blurRadius: 4,
                      offset: Offset(0, 0),
                    ),
            ],
          ),
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: imageContainerHeigth,
                    child: Container(
                      padding: imageContainerPadding,
                      child: Image.network(modifier.image),
                    ),
                  ),
                  Container(
                    padding: textPadding,
                    height: textHeight,
                    child: Text(
                      modifier.name,
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.fade,
                      maxLines: 1,
                      style: RobotoTextStyle.s12w300(TotoTheme.text.base),
                    ),
                  ),
                  Text(
                    TotoDictionary.toRubles(modifier.price.toString()),
                    textAlign: TextAlign.center,
                    style: RobotoTextStyle.s14w400(TotoTheme.primary),
                  ),
                ],
              ),
              Positioned(
                right: positionedSize,
                top: positionedSize,
                child: isSelected
                    ? Icon(
                        TotoIcons.checkCircle,
                        color: TotoTheme.primary,
                      )
                    : Container(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
