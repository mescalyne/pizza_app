import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toto_mobile/src/core/presentation/screens/home/bloc/bloc.dart';
import 'package:toto_mobile/src/core/presentation/screens/home/bloc/event.dart';
import 'package:toto_mobile/src/core/presentation/screens/home/bloc/state.dart';
import 'package:toto_mobile/src/extensions/TextStyle.dart';
import 'package:toto_mobile/src/resources/dictionary.dart';
import 'package:toto_mobile/src/resources/icons.dart';
import 'package:toto_mobile/src/resources/theme.dart';

class ToToBottomNavigationBar extends StatefulWidget {
  const ToToBottomNavigationBar({
    Key? key,
    required this.activeItem,
    required this.onMenuScroolToHeaderPressed,
    required this.countItemInCart,
  }) : super(key: key);

  final int countItemInCart;
  final int activeItem;
  final Function onMenuScroolToHeaderPressed;

  @override
  State<StatefulWidget> createState() {
    return _ToToBottomNavigationBarState();
  }
}

class _ToToBottomNavigationBarState extends State<ToToBottomNavigationBar> {
  static const _badgePosition = BadgePosition(top: -4, end: -5);
  static const _badgeHeight = 18.0;
  static const _badgePadding = EdgeInsets.zero;

  @override
  Widget build(BuildContext context) {
    void _onItemTapped(int index) {
      BlocProvider.of<HomeBloc>(context).add(
        OnBottomNavigationItemClickedEvent(
          MainScreen.values[index],
        ),
      );
    }

    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 7),
            color: Colors.black38.withOpacity(0.4),
            spreadRadius: -3,
            blurRadius: 13,
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        child: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            return SingleChildScrollView(
              primary: false,
              child: Container(
                height: 75 + MediaQuery.of(context).padding.bottom,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(top: 5.0, bottom: 3, left: 10),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            IconButton(
                              icon: Icon(
                                TotoIcons.location,
                                size: 25,
                                color: state.activeItem.index == 0
                                    ? TotoTheme.accent
                                    : Colors.grey,
                              ),
                              onPressed: () {
                                _onItemTapped(0);
                              },
                            ),
                            Text(
                              TotoDictionary.restaurants,
                              style: RobotoTextStyle.s13w400(
                                state.activeItem.index == 0
                                    ? TotoTheme.accent
                                    : TotoTheme.textBase,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            IconButton(
                              icon: Icon(
                                TotoIcons.restaurant,
                                size: 25,
                                color: state.activeItem.index == 1
                                    ? TotoTheme.accent
                                    : Colors.grey,
                              ),
                              onPressed: () {
                                if (state.activeItem.index == 1) {
                                  widget.onMenuScroolToHeaderPressed();
                                }
                                _onItemTapped(1);
                              },
                            ),
                            Text(
                              TotoDictionary.menu,
                              style: RobotoTextStyle.s13w400(
                                state.activeItem.index == 1
                                    ? TotoTheme.accent
                                    : TotoTheme.textBase,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Badge(
                              toAnimate: false,
                              showBadge: (widget.countItemInCart > 0),
                              badgeContent: Container(
                                height: _badgeHeight,
                                width: _badgeHeight,
                                alignment: Alignment.center,
                                child: Text(
                                  '${widget.countItemInCart}',
                                  style:
                                      RobotoTextStyle.s13w400(TotoTheme.white),
                                ),
                              ),
                              shape: BadgeShape.circle,
                              padding: _badgePadding,
                              position: _badgePosition,
                              badgeColor: TotoTheme.accent,
                              child: ClipRRect(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(30),
                                ),
                                child: Container(
                                  color: TotoTheme.primary,
                                  child: IconButton(
                                    icon: Icon(
                                      TotoIcons.shoppingCart,
                                      size: 25,
                                      color: TotoTheme.surface,
                                    ),
                                    onPressed: () {
                                      _onItemTapped(2);
                                    },
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              TotoDictionary.bucket,
                              style: RobotoTextStyle.s13w400(
                                state.activeItem.index == 2
                                    ? TotoTheme.accent
                                    : TotoTheme.textBase,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                          child: Column(
                        children: [
                          IconButton(
                            icon: Icon(
                              TotoIcons.car_sharing,
                              color: state.activeItem.index == 3
                                  ? TotoTheme.accent
                                  : Colors.grey,
                              size: 25,
                            ),
                            onPressed: () {
                              _onItemTapped(3);
                            },
                          ),
                          Text(
                            TotoDictionary.delivery,
                            style: RobotoTextStyle.s13w400(
                              state.activeItem.index == 3
                                  ? TotoTheme.accent
                                  : TotoTheme.textBase,
                            ),
                          ),
                        ],
                      )),
                      Expanded(
                          child: Column(
                        children: [
                          IconButton(
                            icon: Icon(
                              TotoIcons.more,
                              color: state.activeItem.index == 4
                                  ? TotoTheme.accent
                                  : Colors.grey,
                              size: 25,
                            ),
                            onPressed: () {
                              _onItemTapped(4);
                            },
                          ),
                          Text(
                            TotoDictionary.more,
                            style: RobotoTextStyle.s13w400(
                              state.activeItem.index == 4
                                  ? TotoTheme.accent
                                  : TotoTheme.textBase,
                            ),
                          ),
                        ],
                      )),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
