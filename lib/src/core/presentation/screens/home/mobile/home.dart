import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toto_mobile/src/core/presentation/screens/bucket/bucket.dart';
import 'package:toto_mobile/src/core/presentation/screens/home/bloc/bloc.dart';
import 'package:toto_mobile/src/core/presentation/screens/home/bloc/event.dart';
import 'package:toto_mobile/src/core/presentation/screens/home/bloc/state.dart';
import 'package:toto_mobile/src/core/presentation/screens/menu/menu.dart';
import 'package:toto_mobile/src/core/presentation/screens/more/more.dart';
import 'package:toto_mobile/src/core/presentation/screens/orders/orders.dart';
import 'package:toto_mobile/src/core/presentation/screens/restaurants_new/bloc/state.dart';
import 'package:toto_mobile/src/core/presentation/screens/restaurants_new/restaurants_new.dart';
import 'package:toto_mobile/src/core/presentation/widgets/components/appbar.dart';
import 'package:toto_mobile/src/core/presentation/widgets/components/bottom_navigation_bar.dart';
import 'package:toto_mobile/src/core/presentation/widgets/components/drawer.dart';

class HomeMobilePage extends StatefulWidget {
  final MainScreen initialPage;
  const HomeMobilePage({Key? key, required this.initialPage}) : super(key: key);

  @override
  _HomeMobilePageState createState() => _HomeMobilePageState();
}

class _HomeMobilePageState extends State<HomeMobilePage> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  late ScrollController scrollController;

  void onMenuScroolToHeaderPressed() {
    scrollController.animateTo(0,
        duration: Duration(seconds: 1), curve: Curves.easeIn);
  }

  @override
  Widget build(BuildContext context) {
    scrollController = PrimaryScrollController.of(context)!;
    if (widget.initialPage != MainScreen.infoRestaurants)
      context.read<HomeBloc>().add(
            OnBottomNavigationItemClickedEvent(widget.initialPage),
          );
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        key: _scaffoldKey,
        appBar: ToToAppBar(
          size: Size.fromHeight(61),
          scaffoldKey: _scaffoldKey,
        ),
        drawer: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            return ToToDrawer(cities: state.cities);
          },
        ),
        body: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            return Stack(
              children: [
                Builder(
                  builder: (_) {
                    switch (state.activeItem) {
                      case MainScreen.menu:
                        return MenuPage(
                          scrollController: scrollController,
                        );
                      case MainScreen.bucket:
                        return BucketPage(
                          backToHome: () => BlocProvider.of<HomeBloc>(context)
                              .add(OnBottomNavigationItemClickedEvent(
                                  MainScreen.menu)),
                        );
                      case MainScreen.delivery:
                        return OrdersPage();
                      case MainScreen.more:
                        return MorePage();
                      case MainScreen.chooseRestaurants:
                        return RestaurantNew(
                          pageStatus: RestaurantNewPageStatus.chooseRestaurant,
                        );

                      default:
                        return RestaurantNew(
                          pageStatus: RestaurantNewPageStatus.informative,
                        );
                    }
                  },
                ),
                Positioned(
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: AnimatedContainer(
                    height: state.activeItem != MainScreen.chooseRestaurants
                        ? 75 + MediaQuery.of(context).padding.bottom
                        : 0,
                    duration: Duration(milliseconds: 300),
                    child: ToToBottomNavigationBar(
                      activeItem: state.activeItem.index,
                      onMenuScroolToHeaderPressed: onMenuScroolToHeaderPressed,
                      countItemInCart: state.countItemInCartAll,
                    ),
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
