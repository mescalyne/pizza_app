import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:toto_mobile/src/core/data/models/product_filters.dart';
import 'package:toto_mobile/src/core/domain/entities/cart.dart';
import 'package:toto_mobile/src/core/domain/entities/delivery_address.dart';
import 'package:toto_mobile/src/core/domain/entities/group.dart';
import 'package:toto_mobile/src/core/domain/entities/product.dart';
import 'package:toto_mobile/src/core/domain/adapters/restaurant.dart';
import 'package:toto_mobile/src/core/domain/usecases/cart.dart';

import 'package:toto_mobile/src/core/domain/usecases/menu.dart';
import 'package:toto_mobile/src/core/domain/usecases/restaurant.dart';
import 'package:toto_mobile/src/core/presentation/entities/restaurant.dart';
import 'package:toto_mobile/src/core/presentation/router/bloc/bloc.dart';
import 'package:toto_mobile/src/core/presentation/router/bloc/event.dart';
import 'package:toto_mobile/src/core/presentation/screens/cities/bloc/state.dart';
import 'package:toto_mobile/src/core/presentation/screens/menu/bloc/event.dart';
import 'package:toto_mobile/src/core/presentation/screens/menu/bloc/state.dart';

typedef MenuEventHandler = Stream<MenuState>;

@Injectable()
class MenuBloc extends Bloc<MenuEvent, MenuState> {
  final GetMarketingCompaignsUseCase _getMarketingCompaignsUseCase;
  final GetProductsUseCase _getProductsUseCase;
  final GetGroupsUseCase _getGroupsUseCase;
  final RouterEventSink _routerEventSink;
  final GetMyCartUseCase _cartUseCases;

  final WatchDeliveryAddressUseCase _watchDeliveryAddressUseCase;
  final WatchCountItemInCartUseCase _watchCountItemInCartUseCase;
  final WatchPickUpAddressUseCase _watchPickUpAddressUseCase;

  Place _place = Place.pickup;

  List<GroupDto> _groups = [];
  List<ProductDto> _products = [];

  final Map<String, int> _groupsOfProducts = {};
  final Map<String, List<ProductDto>> _segmentedProducts = {};
  final Map<String, int> _listItemInCartAmount = {};

  int _activeCategory = 0;

  DeliveryDto? _deliveryAddress;
  late Restaurant _restaurant;

  bool firstCall = true;

  MenuState get _changePlace => MenuState(
        place: _place,
        groupOfProducts: _groupsOfProducts,
        currentState: MenuStatus.changePlace,
        dishes: _products,
        categories: _groups,
        activeCategory: _activeCategory,
        deliveryAddress: _deliveryAddress,
        restaurant: _restaurant,
        lisItemInCartAmount: _listItemInCartAmount,
      );

  MenuState get _loadedDataState => MenuState(
        activeCategory: _activeCategory,
        categories: _groups,
        currentState: MenuStatus.loadedData,
        dishes: _products,
        groupOfProducts: _groupsOfProducts,
        place: _place,
        deliveryAddress: _deliveryAddress,
        restaurant: _restaurant,
        lisItemInCartAmount: _listItemInCartAmount,
      );

  MenuBloc(
    this._getMarketingCompaignsUseCase,
    this._routerEventSink,
    this._getProductsUseCase,
    this._getGroupsUseCase,
    this._watchDeliveryAddressUseCase,
    this._watchPickUpAddressUseCase,
    this._watchCountItemInCartUseCase,
    this._cartUseCases,
  ) : super(
          MenuState(),
        ) {
    _watchDeliveryAddressUseCase.deliveryAddress().listen(
      (deliveryAddress) {
        _deliveryAddress = deliveryAddress;
        add(MenuEvent.changeDeliveryAddress());
      },
    );

    _watchPickUpAddressUseCase.pickUpAddress().listen(
      (pickUpAddress) {
        _restaurant = pickUpAddress.toRestaurant;
        add(MenuEvent.changePickUpAddress());
      },
    );

    _watchCountItemInCartUseCase.countItem().listen((list) {
      add(MenuEvent.updateItemCountInCart(list));
    });
    initWatchCountItemAll();

    add(MenuEvent.loadData());
  }

  @override
  Stream<MenuState> mapEventToState(MenuEvent event) => event.when(
        changeRestaurantMenu: _changeRestaurantMenu,
        changePickUpAddress: _changePickUpAddress,
        changeDeliveryAddress: _changeDeliveryAddress,
        changePlace: _onChangePlace,
        loadData: _loadData,
        menuCategoryTypePressed: _onMenuCategoryTypePressed,
        menuCategoryAnimateTo: _onMenuCategoryAnimateTo,
        iconPressed: _onIconPressed,
        onRouteToCardItem: _onRouteToCardItem,
        updateItemCountInCart: _updateItemCountInCart,
      );

  MenuEventHandler _changePickUpAddress() async* {
    _products = await _getProductsUseCase(
      ProductFilters(restaurant: _restaurant.id),
    );
    var count = 0;

    _groupsOfProducts[_groups[0].title] = 0;

    for (var i = 1; i < _groups.length; i++) {
      for (var j = 0; j < _products.length; j++) {
        if (_products[j].parentGroup == _groups[i - 1].title) {
          _groupsOfProducts[_groups[i].title] = ++count;
        }
      }
    }

    for (var i = 0; i < _products.length; i++) {
      if (_products[i].parentGroup != null) {
        if (_segmentedProducts[_products[i].parentGroup] == null) {
          _segmentedProducts[_products[i].parentGroup!] =
              []; //TODO поле  parentGroup nullable
        }
      }
      _segmentedProducts[_products[i].parentGroup]!.add(_products[i]);
    }

    yield _loadedDataState;
  }

  MenuEventHandler _changeDeliveryAddress() async* {
    yield _loadedDataState;
  }

  MenuEventHandler _onChangePlace(Place newPlace) async* {
    if (_place == newPlace) return;

    _place = newPlace;

    _products = await _getProductsDependsOnTerminal(_place);

    yield _changePlace;
  }

  MenuEventHandler _changeRestaurantMenu(int restaurantId) async* {}

  MenuEventHandler _loadData() async* {
    _products = await _getProductsDependsOnTerminal(_place);

    _groups = await _getGroupsUseCase();

    var count = 0;

    _groupsOfProducts[_groups[0].title] = 0;

    //Убираем категории в которых нету товаров.
    List<GroupDto> deleteGroupList = [];
    for (var i = 0; i < _groups.length; i++) {
      int countGroup = 0;
      for (var j = 0; j < _products.length; j++) {
        if (_products[j].parentGroup == _groups[i].title) {
          countGroup++;
        }
      }
      if (countGroup == 0) {
        deleteGroupList.add(_groups[i]);
      }
    }
    for (GroupDto group in deleteGroupList) {
      _groups.removeWhere((element) => element == group);
    }

    for (var i = 1; i < _groups.length; i++) {
      for (var j = 0; j < _products.length; j++) {
        if (_products[j].parentGroup == _groups[i - 1].title) {
          _groupsOfProducts[_groups[i].title] = ++count;
        }
      }
    }

    for (var i = 0; i < _products.length; i++) {
      if (_products[i].parentGroup != null) {
        if (_segmentedProducts[_products[i].parentGroup] == null) {
          _segmentedProducts[_products[i].parentGroup!] =
              []; //TODO поле  parentGroup nullable
        }
      }
      _segmentedProducts[_products[i].parentGroup]!.add(_products[i]);
    }

    yield _loadedDataState;
  }

  MenuEventHandler _onMenuCategoryTypePressed(int index) async* {
    _activeCategory = index;
    yield state.copyWith(
        activeCategory: _activeCategory, scrollCategories: false);
    await Future.delayed(Duration(milliseconds: 1000));
    //Ждем пока пролистнеться список товаров до выбраной котигории и разрешаем листнеру дальше слушать скролл меню.
    yield state.copyWith(scrollCategories: true);
  }

  MenuEventHandler _onMenuCategoryAnimateTo(int index) async* {
    _activeCategory = index;
    yield state.copyWith(
        activeCategory: _activeCategory, scrollCategories: true);
  }

  MenuEventHandler _onIconPressed(IconData icon) async* {
    _routerEventSink.add(RouterEvent.toSecond(icon));
  }

  MenuEventHandler _onRouteToCardItem(ProductDto product) async* {
    if (product.parentGroup == 'Наборы') {
      _routerEventSink
          .add(RouterEvent.toSetsPage(product.id, product.name, true));
    } else {
      _routerEventSink.add(RouterEvent.toAddition(product.id));
    }
  }

  MenuEventHandler _updateItemCountInCart(Map<String, int> list) async* {
    _listItemInCartAmount.clear();
    _listItemInCartAmount.addAll(list);
    yield _changePlace;
  }

  void initWatchCountItemAll() async {
    var data = await _cartUseCases();
    Map<String, int> list = {};
    if (data.isSuccess && data.value != null) {
      CartDto _myCart = data.value!;
      if (_myCart.items != null) {
        _myCart.items?.forEach((element) {
          list.addAll({element.productId: element.amount});
        });
      }
      _watchCountItemInCartUseCase.setCountAll(list);
    } else {
      //TODO: error, на этом экране нет отработки ошибок.
    }
  }

  Future<List<ProductDto>> _getProductsDependsOnTerminal(Place place) async {
    List<String>? terminals = [];
    if (_place == Place.delivery) {
      terminals.add(_restaurant.terminalDelivery);
      return await _getProductsUseCase(
        ProductFilters(
          restaurant: _restaurant.id,
          terminals: terminals,
        ),
      );
    } else {
      terminals.add(_restaurant.terminalKitchen);
      return await _getProductsUseCase(
        ProductFilters(
          restaurant: _restaurant.id,
          terminals: terminals,
        ),
      );
    }
  }
}
