import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';
import 'package:toto_mobile/src/core/presentation/screens/userpage/bloc/bloc.dart';
import 'package:toto_mobile/src/core/presentation/screens/userpage/bloc/event.dart';
import 'package:toto_mobile/src/extensions/TextStyle.dart';
import 'package:toto_mobile/src/resources/resources.dart';

class UserOrdersBlock extends StatelessWidget {
  const UserOrdersBlock({Key? key}) : super(key: key);

  static const paddingOfContent = EdgeInsets.only(right: 20, left: 16);
  static const heightOfContent = 56.0;
  static const widthOfSpace = 14.0;
  static const sizeOfIcon = 28.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 20, left: 16),
      height: heightOfContent,
      color: TotoTheme.surface,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                TotoIcons.update,
                color: TotoTheme.accent,
                size: sizeOfIcon,
              ),
              Container(
                width: widthOfSpace,
              ),
              Text(
                TotoDictionary.userInfoOrders.toLowerCase(),
                style: RobotoTextStyle.smallCapsFs14Fw700(TotoTheme.text.base),
              )
            ],
          ),
          InkWell(
              onTap: () {
                context
                    .read<UserpageBloc>()
                    .add(UserpageEvent.onRouteToOrders());
              },
              child: Icon(TotoIcons.arrow_forward, color: TotoTheme.black)),
        ],
      ),
    );
  }
}
