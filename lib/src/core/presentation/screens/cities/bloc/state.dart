import 'package:toto_mobile/src/core/domain/entities/city.dart';

class CitiesState {
  final CitiesStatus currentStatus;
  final CityDto? currentCity;
  final List<CityDto> cities;

  CitiesState({
    this.currentStatus = CitiesStatus.loading,
    this.currentCity,
    this.cities = const [],
  });

  CitiesState copyWith({
    CitiesStatus? currentStatus,
    CityDto? currentCity,
    List<CityDto>? cities,
  }) =>
      CitiesState(
        currentStatus: currentStatus ?? this.currentStatus,
        currentCity: currentCity ?? this.currentCity,
        cities: cities ?? this.cities,
      );
}

enum CitiesStatus { loading, viewCities, viewPlace, error, connectionError }



enum Place { restaurant, pickup, delivery }
