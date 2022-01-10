import 'package:flutter/material.dart';
import 'package:toto_mobile/src/core/presentation/screens/cities/bloc/state.dart';
import 'package:toto_mobile/src/core/presentation/widgets/modal_items/choose_place_title_item.dart';
import 'package:toto_mobile/src/core/presentation/widgets/modals/modal_container.dart';
import 'package:toto_mobile/src/extensions/TextStyle.dart';
import 'package:toto_mobile/src/resources/dictionary.dart';
import 'package:toto_mobile/src/resources/icons.dart';
import 'package:toto_mobile/src/resources/theme.dart';

class ChoosePlaceModal extends StatelessWidget {
  final Function changePlace;
  final bool close;

  const ChoosePlaceModal({
    Key? key,
    required this.changePlace,
    this.close = false,
  }) : super(key: key);

  static const _height = 165.0;
  static const _padding = EdgeInsets.only(top: 16, bottom: 6);
  static const _iconSize = 20.0;
  static const _sizedBoxWidth = 16.0;
  static const _paddingItem = EdgeInsets.only(top: 14, bottom: 14, left: 18);

  @override
  Widget build(BuildContext context) {
    return ModalContainer(
      height: _height,
      width: MediaQuery.of(context).size.width * 0.78,
      padding: _padding,
      children: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ChoosePlaceTitle(title: TotoDictionary.choosePlaceTitle),
          Divider(
            color: TotoTheme.primary,
            height: 1,
          ),
          GestureDetector(
            onTap: () {
              close ? Navigator.pop(context) : null;
              changePlace(Place.pickup);
            },
            child: Container(
              color: Colors.transparent,
              padding: _paddingItem,
              child: Row(
                children: [
                  Icon(
                    TotoIcons.delivery_food,
                    color: TotoTheme.primary,
                    size: _iconSize,
                  ),
                  SizedBox(width: _sizedBoxWidth),
                  Text(
                    TotoDictionary.pickupPlace,
                    style: RobotoTextStyle.s18w400(TotoTheme.darkGrayText),
                  ),
                ],
              ),
            ),
          ),
          Divider(
            color: TotoTheme.primary,
            height: 1,
          ),
          GestureDetector(
            onTap: () {
              close ? Navigator.pop(context) : null;
              changePlace(Place.delivery);
            },
            child: Container(
              color: Colors.transparent,
              padding: _paddingItem,
              child: Row(
                children: [
                  Icon(
                    TotoIcons.motorcycle,
                    color: TotoTheme.primary,
                    size: _iconSize,
                  ),
                  SizedBox(width: _sizedBoxWidth),
                  Text(
                    TotoDictionary.deliveryPlace,
                    style: RobotoTextStyle.s18w400(TotoTheme.darkGrayText),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
