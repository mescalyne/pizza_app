import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toto_mobile/src/core/presentation/screens/userpage/bloc/bloc.dart';
import 'package:toto_mobile/src/core/presentation/screens/userpage/bloc/event.dart';
import 'package:toto_mobile/src/extensions/TextStyle.dart';
import 'package:toto_mobile/src/resources/resources.dart';

class UserAddressBlock extends StatelessWidget {
  UserAddressBlock({Key? key}) : super(key: key);

  static const paddingOfContent = EdgeInsets.only(right: 20, left: 16);
  static const heightOfBlock = 56.0;
  static const iconSize = 28.0;
  static const heightOfSpace = 15.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: paddingOfContent,
      height: heightOfBlock,
      color: TotoTheme.surface,
      child: InkWell(
        onTap: () {
          context
              .read<UserpageBloc>()
              .add(UserpageEvent.onRouteToDeliveryAddress());
        },
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  TotoIcons.place,
                  color: TotoTheme.accent,
                  size: iconSize,
                ),
                Container(
                  width: heightOfSpace,
                ),
                Text(
                  TotoDictionary.userInfoAddress,
                  style: RobotoTextStyle.smallCapsFs14Fw700(TotoTheme.black),
                )
              ],
            ),
            RotatedBox(
              quarterTurns: 2,
              child: Icon(
                TotoIcons.arrow_back,
                color: TotoTheme.black.withOpacity(0.5),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
