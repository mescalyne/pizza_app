import 'package:custom_pop_up_menu/custom_pop_up_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toto_mobile/src/core/domain/entities/city.dart';
import 'package:toto_mobile/src/core/presentation/screens/home/bloc/bloc.dart';
import 'package:toto_mobile/src/core/presentation/screens/home/bloc/event.dart';
import 'package:toto_mobile/src/core/presentation/screens/home/bloc/state.dart';
import 'package:toto_mobile/src/core/presentation/widgets/component_items/current_city_title_item.dart';
import 'package:toto_mobile/src/core/presentation/widgets/modals/choose_cities_widget.dart';
import 'package:toto_mobile/src/extensions/TextStyle.dart';
import 'package:toto_mobile/src/resources/icons.dart';
import 'package:toto_mobile/src/resources/svg.dart';
import 'package:toto_mobile/src/resources/theme.dart';
import 'package:toto_mobile/src/utils/launchers/url_launcher.dart';

class ToToAppBar extends StatefulWidget implements PreferredSizeWidget {
  final Size size;
  final GlobalKey<ScaffoldState> scaffoldKey;
  ToToAppBar({Key? key, required this.size, required this.scaffoldKey})
      : super(key: key);

  @override
  _MyAppBarState createState() => _MyAppBarState();

  @override
  Size get preferredSize => size;
}

class ItemModel {
  String number;
  String description;
  ItemModel(this.number, this.description);
}

class _MyAppBarState extends State<ToToAppBar> {
  late List<ItemModel> menuItems;
  final CustomPopupMenuController _controller = CustomPopupMenuController();
  @override
  void initState() {
    super.initState();
    menuItems = [
      ItemModel('8 800 707-02-32', 'Звонок бесплатный'),
    ];
  }

  @override
  Widget build(BuildContext context) {
    void _onCityPressed(CityDto city) => context.read<HomeBloc>().add(
          HomeEvent.onCityPressed(city),
        );

    void _onSendChangeCity() {
      context.read<HomeBloc>().add(
            HomeEvent.onSubmitCityPressed(),
          );
    }

    BuildContext _getContext = context;

    void _openCitiesList(
            BuildContext context, List<CityDto> cities, int activeCity) =>
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return ChooseCitiesModal(
              dialogBlocType: DialogBlocType.home,
              homeBloc: _getContext.read<HomeBloc>(),
              onChangeCity: _onCityPressed,
              onSendChangeCity: _onSendChangeCity,
              cities: cities,
              currentCity: activeCity,
              closed: true,
              citiesBloc: null,
            );
          },
        );

    return PreferredSize(
      preferredSize: widget.size,
      child: AppBar(
        shadowColor: TotoTheme.black.withOpacity(0.26),
        title: Row(
          children: [
            BlocBuilder<HomeBloc, HomeState>(
              builder: (context, state) {
                return CurrentCityTitle(title: state.currentCity != null ? state.currentCity!.name : '');
              },
            ),
            Padding(padding: EdgeInsets.only(left: 8)),
            BlocBuilder<HomeBloc, HomeState>(
              builder: (context, state) {
                return IconButton(
                  onPressed: () =>
                      _openCitiesList(context, state.cities, int.parse(state.currentCity!.id)),
                  icon: Icon(
                    TotoIcons.location,
                    color: TotoTheme.darkGrayText,
                    size: 20,
                  ),
                );
              },
            )
          ],
        ),
        backgroundColor: Colors.white,
        leading: Image.asset(
          icLogoMain,
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(8),
            child: CustomPopupMenu(
              arrowColor: Colors.white,
              menuBuilder: () => ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  color: Colors.white,
                  child: IntrinsicWidth(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: menuItems
                          .map(
                            (item) => GestureDetector(
                              behavior: HitTestBehavior.translucent,
                              onTap: () => {
                                _controller.hideMenu(),
                                URLLauncher.launchPhone(menuItems.first.number)
                              },
                              child: Container(
                                height: 70,
                                padding: EdgeInsets.all(20),
                                child: Column(
                                  children: <Widget>[
                                    Expanded(
                                      flex: 4,
                                      child: Text(
                                        item.number,
                                        style: RobotoTextStyle.s14w400(
                                            TotoTheme.primaryDark),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: Text(
                                        item.description,
                                        style: RobotoTextStyle.s10w400(
                                            Colors.grey),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                          .toList(),
                    ),
                  ),
                ),
              ),
              pressType: PressType.singleClick,
              verticalMargin: -10,
              controller: _controller,
              child: Container(
                padding: EdgeInsets.all(8),
                child: Icon(TotoIcons.call, color: TotoTheme.primary),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
