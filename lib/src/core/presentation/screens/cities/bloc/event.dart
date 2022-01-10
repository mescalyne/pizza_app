import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:toto_mobile/src/core/domain/entities/city.dart';
import 'package:toto_mobile/src/core/presentation/screens/cities/bloc/state.dart';

part 'event.freezed.dart';

@freezed
class CitiesEvent with _$CitiesEvent {
  const factory CitiesEvent.onLoaded() = OnLoaded;

  const factory CitiesEvent.onChangeCity(CityDto city) = OnChangeCity;
  const factory CitiesEvent.onSendChangeCity(CityDto? choosedCity) =
      OnSendChangeCity;
  const factory CitiesEvent.onChangePlace(Place changePlace) = OnChangePlace;
}
