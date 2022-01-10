import 'package:toto_mobile/src/core/domain/entities/city.dart';

class HomeState {
  final MainScreen activeItem;
  final List<CityDto> cities;
  final int activeCity;
  final int countItemInCartAll;
  CityDto? currentCity;
  
  HomeState({
    this.activeItem = MainScreen.chooseRestaurants,
    this.activeCity = 0,
    this.cities = const [],
    this.countItemInCartAll = 0,
    this.currentCity,
  });

  HomeState copyWith({
    CityDto? currentCity,
    MainScreen? activeItem,
    List<CityDto>? cities,
    int? activeCity,
    int? countItemInCartAll,
  }) {
    return HomeState(
        activeItem: activeItem ?? this.activeItem,
        currentCity: currentCity ?? this.currentCity,
        cities: cities ?? this.cities);
  }
}

enum MainScreen {
  infoRestaurants,
  menu,
  bucket,
  delivery,
  more,
  chooseRestaurants,
}
