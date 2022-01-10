import 'package:flutter/material.dart';
import 'package:toto_mobile/src/core/domain/entities/product.dart';
import 'package:toto_mobile/src/extensions/TextStyle.dart';
import 'package:toto_mobile/src/resources/resources.dart';

class ModifierSimpleList extends StatelessWidget {
  final Map<ProductDto, bool> modifiersList;
  final Function? onChange;

  const ModifierSimpleList({
    required this.modifiersList,
    this.onChange,
    Key? key,
  }) : super(key: key);

  static const heightOfContent = 44.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: heightOfContent,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: modifiersList.length,
          itemBuilder: (BuildContext context, int index) {
            var key = modifiersList.keys.elementAt(index);
            return ModifierSimpleItem(
              modifier: key,
              isSelected: modifiersList[key] ?? false,
              onChange: onChange,
            );
          }),
    );
  }
}

class ModifierSimpleItem extends StatelessWidget {
  final ProductDto modifier;
  final bool isSelected;
  final Function? onChange;

  ModifierSimpleItem({
    required this.modifier,
    required this.isSelected,
    this.onChange,
    Key? key,
  }) : super(key: key);

  static const paddingOfContent =
      EdgeInsets.only(top: 4, left: 5, bottom: 4, right: 16.5);
  static const paddingOfIntentContent = EdgeInsets.only(right: 18, left: 16);
  static const borderRadius = 20.0;
  static const iconSize = 20.0;
  static const spaceWidth = 10.0;
  static const heightOfContent = 36.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: heightOfContent,
      padding: paddingOfContent,
      child: InkWell(
        onTap: () {
          onChange != null ? onChange!.call(modifier.id) : {};
        },
        child: Container(
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
          child: Container(
            padding: paddingOfIntentContent,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  modifier.name,
                  style: RobotoTextStyle.s16w400(TotoTheme.textBase),
                ),
                Container(
                  width: spaceWidth,
                ),
                isSelected
                    ? Icon(
                        TotoIcons.checkCircle,
                        color: TotoTheme.primary,
                        size: iconSize,
                      )
                    : Icon(
                        TotoIcons.radio_button_unchecked,
                        color: TotoTheme.primary,
                        size: iconSize,
                      ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
