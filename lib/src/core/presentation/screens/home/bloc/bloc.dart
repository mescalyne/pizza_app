import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:toto_mobile/src/core/domain/entities/city.dart';
import 'package:toto_mobile/src/core/domain/usecases/cart.dart';
import 'package:toto_mobile/src/core/domain/usecases/cities.dart';
import 'package:toto_mobile/src/core/presentation/router/bloc/bloc.dart';
import 'package:toto_mobile/src/utils/logger.dart';

import 'event.dart';
import 'state.dart';

typedef HomeEventHandler = Stream<HomeState>;

@Injectable()
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetCitiesUseCase _getCitiesUseCase;

  final ChangeCityUseCase _changeCityUseCase;
  final WatchCityIdUseCase _watchCityIdUseCase;
  final WatchCitiesUseCase _watchCitiesUseCase;

  final WatchCountItemInCartAllUseCase _watchCountItemInCartAllUseCase;

  MainScreen _activePage = MainScreen.chooseRestaurants;
  int _activeCity = 1;
  CityDto _currentCity = CityDto(
    id: '0',
    name: '',
    prefix: '',
    postalCode: '',
    cityType: '',
    available: false,
  );
  List<CityDto> _cities = [];
  int _countItemInCartAll = 0;

  final RouterBloc? routerBloc;
  late StreamSubscription routerStream;

  HomeBloc(
    @factoryParam this.routerBloc,
    this._watchCitiesUseCase,
    this._getCitiesUseCase,
    this._changeCityUseCase,
    this._watchCityIdUseCase,
    this._watchCountItemInCartAllUseCase,
  ) : super(
          HomeState(
            activeItem: MainScreen.chooseRestaurants,
            currentCity: null,
            cities: [],
            countItemInCartAll: 0,
          ),
        ) {
    _watchCityIdUseCase.city().listen((city) {
      _currentCity = city;
    });
    _watchCitiesUseCase.cities().listen((cities) { 
      _cities = cities;
      add(LoadCities());
    });
    _watchCountItemInCartAllUseCase.countItemAll().listen((int countItemAll) {
      add(HomeEvent.updateCountItemInCart(countItemAll));
    });
    
    if (routerBloc != null) {
      routerStream = routerBloc!.routerToHome.listen((event) {
        Logger.logger('routerToHome', event.toString());
        switch (event) {
          case RouterToHome.toMenu:
            add(HomeEvent.bottomNavigationItemClickedEvent(MainScreen.menu));
            break;
          case RouterToHome.toBucket:
            add(HomeEvent.bottomNavigationItemClickedEvent(MainScreen.bucket));
            break;
        }
      });
    }
  }

  HomeState get _loadedCities => HomeState(
        activeItem: _activePage,
        currentCity: _currentCity,
        cities: _cities,
        countItemInCartAll: _countItemInCartAll,
      );

  @override
  Stream<HomeState> mapEventToState(HomeEvent event) => event.when(
        onSubmitCityPressed: _onSubmitCityPressed,
        loadCities: _loadCities,
        onCityPressed: _onCityPressed,
        bottomNavigationItemClickedEvent: _onBottomNavigationItemClickedEvent,
        updateCountItemInCart: _updateCountItemInCart,
      );

  HomeEventHandler _loadCities() async* {
    // var data = await _getCitiesUseCase();
    // if ((data.isSuccess) && (data.value != null)) {
    //   _cities = data.value!;
    // }

    // // _changeCityIdUseCase.changeCity(_currentCity);
    yield _loadedCities;
  }

  HomeEventHandler _onCityPressed(CityDto city) async* {
    _currentCity = city;

    yield _loadedCities;
  }

  HomeEventHandler _onSubmitCityPressed() async* {
    _changeCityUseCase.changeCity(_currentCity);
    yield _loadedCities;
  }

  HomeEventHandler _onBottomNavigationItemClickedEvent(MainScreen page) async* {
    _activePage = page;
    yield HomeState(
      activeItem: page,
      currentCity: _currentCity,
      cities: _cities,
      countItemInCartAll: _countItemInCartAll,
    );
  }

  HomeEventHandler _updateCountItemInCart(int countItemAll) async* {
    _countItemInCartAll = countItemAll;
    yield HomeState(
      activeItem: _activePage,
      activeCity: _activeCity,
      currentCity: _currentCity,
      cities: _cities,
      countItemInCartAll: _countItemInCartAll,
    );
  }

  @override
  Future<void> close() {
    routerStream.cancel();
    return super.close();
  }
}
