import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:toto_mobile/src/core/domain/entities/city.dart';
import 'package:toto_mobile/src/core/presentation/entities/location.dart';
import 'package:toto_mobile/src/core/presentation/entities/restaurant.dart';
import 'package:toto_mobile/src/core/presentation/entities/time_activity.dart';
import 'package:toto_mobile/src/core/presentation/screens/home/bloc/bloc.dart';
import 'package:toto_mobile/src/core/presentation/screens/home/bloc/event.dart';
import 'package:toto_mobile/src/core/presentation/screens/home/bloc/state.dart';
import 'package:toto_mobile/src/core/presentation/screens/restaurants_new/bloc/bloc.dart';
import 'package:toto_mobile/src/core/presentation/screens/restaurants_new/bloc/event.dart';
import 'package:toto_mobile/src/core/presentation/screens/restaurants_new/bloc/state.dart';
import 'package:toto_mobile/src/core/presentation/widgets/buttons/arrow_down_button.dart';
import 'package:toto_mobile/src/core/presentation/widgets/widgets_with_animation/loader.dart';
import 'package:toto_mobile/src/extensions/TextStyle.dart';
import 'package:toto_mobile/src/resources/constants.dart';
import 'package:toto_mobile/src/resources/resources.dart';
import 'package:toto_mobile/src/resources/svg.dart';
import 'package:toto_mobile/src/utils/geolocator_manager.dart';
import 'package:toto_mobile/src/utils/logger.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

// TODO При переходе в меню, а потом обратно на экран рестораны все подгружается заново. Нужно сохранять состояние

// * WIDGET SIZES
const _selectorIconSize = 24.0;
const _selectorIconButtonContainerSize = 50.0;
const _detailRestaurantInfoTitleWidth = 273.0;
const _detailRestaurantInfoWidth = 375.0;
const _dividerBetweenCitiesHeight = 2.0;
const _dividerBetweenRestaurantsHeight = 1.0;

// * TEXT STYLES
final _restaurantItemTextStyle = RobotoTextStyle.s24w700(TotoTheme.text.base);

final _detailRestaurantInfoTitleTextStyle =
    RobotoTextStyle.s18w400(TotoTheme.textBase);

// * POSITIONS
const _selectorIconButtonPositionBottom = 0.0;
const _selectorIconButtonPositionRight = 0.0;

// * MARGINS
const _marginRestaurantCityItem = EdgeInsets.only(right: 16, left: 16);
const _marginRestaurantRestaurantItem =
    EdgeInsets.only(right: 16, left: 16, bottom: 20, top: 20);

const _marginDetailRestaurantInfoTitle = EdgeInsets.only(bottom: 10);
const _marginRestaurantSlidingPanelItem =
    EdgeInsets.only(top: 12, right: 5, left: 5);

// * PADDINGS
const _paddingRestaurantRestaurantItem = EdgeInsets.only(bottom: 15, top: 12);
const _paddingRestaurantRestaurantItemDivider =
    EdgeInsets.only(left: 35, right: 35);

// CONST

// DYNAMIC
_paddingListView(BuildContext context) => EdgeInsets.only(
    bottom: MediaQuery.of(context).padding.bottom,
    left: 16,
    right: 16,
    top: 30);
_selectorIconButtonContainerPaddings(BuildContext context) => EdgeInsets.only(
    right: 16, bottom: 91 + MediaQuery.of(context).padding.bottom);

// * WIDGET DECORATIONS

// CONST
const _selectorIconButtonContainerBorderRadius = 100.0;
const _selectorIconButtonContainerShadowsBlurRadius = 8.0;

// FINAL

final _selectorIconButtonContainerShadowsOffset =
    Offset.fromDirection(8.0, 8.0);

final _selectorIconButtonContainerDecoration = BoxDecoration(
  color: TotoTheme.background.primary,
  borderRadius: BorderRadius.circular(
    _selectorIconButtonContainerBorderRadius,
  ),
  boxShadow: [_selectorIconButtonContainerShadows],
);

final _selectorIconButtonContainerShadows = BoxShadow(
  color: TotoTheme.black.withOpacity(0.26),
  blurRadius: _selectorIconButtonContainerShadowsBlurRadius,
  offset: _selectorIconButtonContainerShadowsOffset,
);

class RestaurantNew extends StatefulWidget {
  final RestaurantNewPageStatus pageStatus;

  const RestaurantNew({Key? key, required this.pageStatus}) : super(key: key);

  @override
  _RestaurantNewState createState() => _RestaurantNewState();
}

class _RestaurantNewState extends State<RestaurantNew>
    with AutomaticKeepAliveClientMixin {
  final Completer<YandexMapController> _completer = Completer();
  final _panelController = PanelController();
  final List<Column> restaurantsList = [];

  late YandexMapController mapController;

  // * PRIVATE FUNCTIONS

  // * Установка фокуса на выбранный ресторан
  // @param restaurants - рестораны выбранного города
  void _setBoundsForCity(List<Restaurant> restaurants) {
    var bottomSide = double.maxFinite;
    var topSide = 0.0;
    var rightSide = 0.0;
    var leftSide = double.maxFinite;
    restaurants.forEach(
      (restaurant) {
        if (restaurant.location.latitude > topSide)
          topSide = restaurant.location.latitude;
        if (restaurant.location.latitude < bottomSide)
          bottomSide = restaurant.location.latitude;
        if (restaurant.location.longitude < leftSide)
          leftSide = restaurant.location.longitude;
        if (restaurant.location.longitude > rightSide)
          rightSide = restaurant.location.longitude;

        mapController.setBounds(
          animation: MapAnimation(duration: 0.5, smooth: true),
          southWestPoint:
              Point(latitude: bottomSide - 0.02, longitude: leftSide - 0.01),
          northEastPoint:
              Point(latitude: topSide + 0.02, longitude: rightSide + 0.01),
        );
      },
    );
  }

  void _onMakeOrderButtonPressed(Restaurant restaurant) {
    context.read<RestaurantNewBloc>().add(
          RestaurantNewEvent.changeRestaurant(restaurant),
        );
    context.read<HomeBloc>().add(
          HomeEvent.bottomNavigationItemClickedEvent(MainScreen.menu),
        );
  }

  // * Рисуются метки на карте
  // @param nearestRestaurant - ближайший ресторан
  // @param segmentedRestaurants - рестораны рассортированные по городам. Ключ (String) - название города
  // @param cities - список всех городов
  // @param currentCity - текущий выбранный город
  void _createPlacemarksFromRestaurants(
    Restaurant? nearestRestaurant,
    Map<String, List<Restaurant>> segmentedRestaurants,
    List<CityDto> cities,
    CityDto? currentCity,
  ) {
    segmentedRestaurants.forEach(
      (city, restaurants) {
        restaurants.forEach(
          (restaurant) async {
            ByteData data = await rootBundle.load(mapPin);
            mapController.addPlacemark(
              Placemark(
                onTap: (placemark, point) {
                  mapController.move(
                    point: Point(
                      latitude: point.latitude - 0.003,
                      longitude: point.longitude,
                    ),
                    animation: MapAnimation(
                      duration: 0.5,
                      smooth: true,
                    ),
                  );
                  context.read<RestaurantNewBloc>().add(
                        ChooseRestaurant(restaurant),
                      );
                  _openNearestRestaurantPanel();
                },
                style: PlacemarkStyle(
                  scale: 1,
                  opacity: 1,
                  rawImageData: data.buffer.asUint8List(),
                ),
                point: Point(
                  latitude: restaurant.location.latitude,
                  longitude: restaurant.location.longitude,
                ),
              ),
            );
          },
        );
      },
    );

    if (nearestRestaurant == null) {
      log('nearestRestaurant == null');
      _setBoundsForCity(
        segmentedRestaurants[currentCity!.name] ?? [],
      );
    } else {
      mapController.move(
        animation: MapAnimation(duration: 0.5, smooth: true),
        point: Point(
          latitude: nearestRestaurant.location.latitude - 0.003,
          longitude: nearestRestaurant.location.longitude,
        ),
      );
    }
  }

  void _showNearestRestaurant(Restaurant restaurant) async {
    await mapController.move(
      animation: MapAnimation(duration: 0.5, smooth: true),
      point: Point(
        latitude: restaurant.location.latitude - 0.003,
        longitude: restaurant.location.longitude,
      ),
    );
  }

  List<Column> _convertToListViewItems(
      Map<String, List<Restaurant>> restaurants) {
    restaurantsList.clear();
    restaurants.forEach(
      (city, restaurants) {
        restaurantsList.add(
          _restaurantsListViewItem(
            city,
            restaurants,
          ),
        );
      },
    );

    return restaurantsList;
  }

  void _openRestaurantList() => context.read<RestaurantNewBloc>().add(
        RestaurantNewEvent.openRestaurantsList(),
      );

  void _closeRestaurantList() => context.read<RestaurantNewBloc>().add(
        RestaurantNewEvent.closeRestaurantsList(),
      );

  // ASYNC
  void _openNearestRestaurantPanel() async => await _panelController.open();

  void _closeNearestRestaurantPanel() async => await _panelController.close();

  // BlocConsumer отслеживает получение ресторанов
  // @param listener - вызывает функцию для построения меток ресторанов на карте
  // @param builder - виджеты экрана
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<RestaurantNewBloc, RestaurantNewState>(
        listener: (context, state) {
          log(state.currentStatus.toString());
          if (state.currentStatus == RestaurantNewStatus.loading) {
            Logger.logger('loading', 'waiting for data');
          }
          // if (state.currentStatus ==
          //     RestaurantNewStatus.foundNearestRestaurant) {
          //   Logger.logger('_showNearestRestaurant', 'called');
          //   _showNearestRestaurant(state.restaurant!);
          // }
          if (state.currentStatus == RestaurantNewStatus.createPlacemarks) {
            _createPlacemarksFromRestaurants(
              state.restaurant,
              state.segmentedRestaurants,
              state.cities,
              state.currentCity,
            );
          }
          if (state.currentStatus == RestaurantNewStatus.changeCity &&
              state.cities.isNotEmpty) {
            _closeNearestRestaurantPanel();

            _setBoundsForCity(
              state.segmentedRestaurants[state.currentCity!.name] ?? [],
            );
          }
        },
        builder: (context, state) => _mainContent(state),
      ),
    );
  }

  // * WIDGETS
  Widget _mainContent(RestaurantNewState state) => Stack(
        children: [
          _yandexMap(),
          _restaurantsListView(
            state.segmentedRestaurants,
            state.restaurantsListStatus,
          ),
          _selectorIconButton(
            state.restaurantsListStatus,
          ),
          (state.restaurant != null)
              ? _nearestRestaurantSlidingPanel(
                  restaurant: state.restaurant!,
                )
              : Container(height: 253),
        ],
      );

  YandexMap _yandexMap() => YandexMap(
        onMapRendered: _onMapRendered,
        onMapCreated: _onMapCreated,
      );

  // Список ресторанов по городам
  // @param restaurants - все рестораны
  // @param cities - все города
  Widget _restaurantsListView(
    Map<String, List<Restaurant>> segmentedRestaurants,
    RestaurantsNewListStatus restaurantsListStatus,
  ) {
    switch (restaurantsListStatus) {
      case RestaurantsNewListStatus.close:
        return Container();
      case RestaurantsNewListStatus.view:
        if (segmentedRestaurants.isEmpty) {
          return Container(
            color: TotoTheme.background.base,
            width: MediaQuery.of(context).size.width,
            child: LoaderWidget(),
          );
        } else {
          return Container(
            color: TotoTheme.background.base,
            width: MediaQuery.of(context).size.width,
            child: Container(
              margin:
                  widget.pageStatus == RestaurantNewPageStatus.chooseRestaurant
                      ? EdgeInsets.zero
                      : EdgeInsets.only(bottom: Constants.tabBarHeight),
              child: ListView(
                padding: _paddingListView(context),
                children: _convertToListViewItems(segmentedRestaurants),
              ),
            ),
          );
        }
    }
  }

  // Город и список ресторанов
  // @param cityName - заголовок города
  // @param restaurants - все рестораны
  Column _restaurantsListViewItem(
          String cityName, List<Restaurant> restaurants) =>
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _cityListViewTitle(cityName),
          _freeSpaceBetweenRestaurants,
          _listOfRestaurantsInCity(restaurants),
          Divider(
            height: _dividerBetweenCitiesHeight,
          ),
          _freeSpaceBetweenRestaurants,
        ],
      );

  // Заголовок города
  // @param cityName - название города
  Widget _cityListViewTitle(String cityName) => Container(
        margin: _marginRestaurantCityItem,
        child: Text(
          cityName,
          textAlign: TextAlign.start,
          style: _restaurantItemTextStyle,
        ),
      );

  // Список ресторанов конкретного города
  // @param retaurants - все рестораны конкретного города
  Widget _listOfRestaurantsInCity(List<Restaurant> restaurants) =>
      ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: restaurants.length,
        itemBuilder: (context, index) {
          return _detailRestaurantInfo(
            restaurants[index],
            index,
          );
        },
      );

  // item одного ресторана
  // @param restaurant - ресторан в списке
  Widget _detailRestaurantInfo(Restaurant restaurant, int index) => Column(
        children: [
          if (index != 0)
            Container(
              padding: _paddingRestaurantRestaurantItemDivider,
              child: Divider(
                height: _dividerBetweenRestaurantsHeight,
              ),
            ),
          InkWell(
            onTap: () async {
              _closeRestaurantList();
              context
                  .read<RestaurantNewBloc>()
                  .add(ChooseRestaurant(restaurant));

              mapController.move(
                  point: Point(
                    latitude: restaurant.location.latitude - 0.003,
                    longitude: restaurant.location.longitude,
                  ),
                  animation: MapAnimation(duration: 0.5, smooth: true));
              _openNearestRestaurantPanel();
            },
            child: Container(
              width: _detailRestaurantInfoWidth,
              margin: _marginRestaurantRestaurantItem,
              padding: _paddingRestaurantRestaurantItem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    icLogoMain,
                    width: 20,
                    height: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _detailRestaurantInfoTitle(
                        address: restaurant.address,
                      ),
                      _detailRestaurantInfoStatus(restaurant),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      );

  // Статус ресторана (открыт/закрыт)
  // ! Должно также приходить время открытия и время закрытия (на бэке уже вроде как есть)
  Widget _detailRestaurantInfoStatus(Restaurant restaurant) => Row(
        children: [
          Icon(
            TotoIcons.schedule,
            color: restaurant.timeActivity.isOpen == true
                ? TotoTheme.primary
                : TotoTheme.accent,
            size: 15,
          ),
          SizedBox(
            width: 6,
          ),
          if (restaurant.timeActivity.isOpen != null)
            _textByRestaurantActiveTime(restaurant.timeActivity),
        ],
      );

  Text _textByRestaurantActiveTime(TimeActivity timeActivity) {
    if (timeActivity.isOpen == true) {
      return Text(
        'Открыто до ${timeActivity.closeAt}',
        style: RobotoTextStyle.s13w400(TotoTheme.primary),
      );
    } else {
      return Text(
        'Закрыто до ${timeActivity.openAt}',
        style: RobotoTextStyle.s13w400(TotoTheme.accent),
      );
    }
  }

  // Заголовок выбранного ресторана
  // @param address - адрес ресторана
  // @param name - название ресторана
  // @param city - город в котором находится ресторан

  Widget _detailRestaurantInfoTitle({
    required String address,
  }) =>
      Container(
        margin: _marginDetailRestaurantInfoTitle,
        width: _detailRestaurantInfoTitleWidth,
        child: Text(
          '$address',
          maxLines: 2,
          style: _detailRestaurantInfoTitleTextStyle,
        ),
      );

  // Кнопка открытия/закрытия списка ресторанов
  // @param status - статус экрана (открыт/закрыт список ресторанов)
  Widget _selectorIconButton(RestaurantsNewListStatus status) {
    return Positioned(
      bottom: _selectorIconButtonPositionBottom,
      right: _selectorIconButtonPositionRight,
      child: Container(
        margin: _selectorIconButtonContainerPaddings(context),
        height: _selectorIconButtonContainerSize,
        width: _selectorIconButtonContainerSize,
        decoration: _selectorIconButtonContainerDecoration,
        child: _selectorIconContainer(status),
      ),
    );
  }

  // Container для кнопки открытия/закрытия списка ресторанов
  // @param status - статус экрана (открыт/закрыт список ресторанов)
  Widget _selectorIconContainer(RestaurantsNewListStatus status) => InkWell(
        onTap: () => status == RestaurantsNewListStatus.close
            ? _openRestaurantList()
            : _closeRestaurantList(),
        child: _selectorIcon(status),
      );

  // Иконка кнопки открытия/закрытия списка ресторанов
  // @param status - статус экрана (открыт/закрыт список ресторанов)
  Widget _selectorIcon(RestaurantsNewListStatus status) => Icon(
        status == RestaurantsNewListStatus.close
            ? Icons.list
            : Icons.map_outlined,
        size: _selectorIconSize,
        color: TotoTheme.bg,
      );

  // Нижняя панель показывающая информацию о выбранном ресторане
  // @param restaurant - выбранный ресторан
  Widget _nearestRestaurantSlidingPanel({required Restaurant restaurant}) =>
      SlidingUpPanel(
        defaultPanelState: PanelState.CLOSED,
        controller: _panelController,
        minHeight: 0,
        maxHeight:
            253 + MediaQuery.of(Scaffold.of(context).context).padding.bottom,
        color: Colors.transparent,
        panel: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          child: _restaurantSlidingPanelItem(restaurant),
        ),
      );

  // item ресторана в нижней панели
  // @param restaurant - выбранный ресторан
  Widget _restaurantSlidingPanelItem(Restaurant restaurant) => Container(
        color: TotoTheme.surface,
        child: Container(
          width: MediaQuery.of(context).size.width,
          margin: _marginRestaurantSlidingPanelItem,
          child: Column(
            children: [
              ArrowDownButton(onPress: () => _closeNearestRestaurantPanel),
              _freeSpaceBetweenArrowDownAndRestaurantTitle,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    TotoIcons.companies,
                    color: TotoTheme.darkGrayText,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _detailRestaurantInfoTitle(
                        address: restaurant.address,
                      ),
                      _detailRestaurantInfoStatus(restaurant),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 35,
              ),
              widget.pageStatus == RestaurantNewPageStatus.chooseRestaurant
                  ? _chooseRestaurantButton(restaurant)
                  : Container()
            ],
          ),
        ),
      );

  Widget _chooseRestaurantButton(Restaurant restaurant) => ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Container(
          height: 40,
          width: 343,
          color: TotoTheme.primary,
          child: TextButton(
            onPressed: () => {_onMakeOrderButtonPressed(restaurant)},
            child: Text(
              'Выбрать ресторан',
              style: RobotoTextStyle.s14w400(TotoTheme.surface),
            ),
          ),
        ),
      );

  Widget _freeSpaceBetweenRestaurants = SizedBox(
    height: 20,
  );

  Widget _freeSpaceBetweenArrowDownAndRestaurantTitle = SizedBox(
    height: 34,
  );

  void _onMapRendered() async {
    final locationPermission = await GeolocatorManager.getLocationPermission();
    Location? location = null;
    if (locationPermission.isEnabled()) {
      Point? targetUserPoint;
      var count = 5;

      // while (count-- > 0) {
      //   if (await mapController.getUserTargetPoint() != null) {
      //     targetUserPoint = (await mapController.getUserTargetPoint())!;
      //     break;
      //   }
      //   await Future.delayed(Duration(seconds: 1));
      // }

      location = Location(latitude: 56.139873, longitude: 40.407111);
      BlocProvider.of<RestaurantNewBloc>(context).add(
        LoadData(),
      );
      if (targetUserPoint == null) {
        print('Location error');
      } else {
        // BlocProvider.of<RestaurantBloc>(context).add(
        //   SearchNearestRestaurant(
        //       targetUserPoint.latitude, targetUserPoint.longitude),
        // );
      }
    } else {
      BlocProvider.of<RestaurantNewBloc>(context).add(
        LoadData(),
      );
    }
  }

  void _onMapCreated(YandexMapController controller) async {
    Logger.logger('onMapCreated', controller.toString());
    mapController = controller;
  }

  @override
  bool get wantKeepAlive => true;
}
