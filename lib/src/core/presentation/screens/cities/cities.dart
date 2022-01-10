import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toto_mobile/src/core/domain/entities/city.dart';
import 'package:toto_mobile/src/core/presentation/router/bloc/bloc.dart';
import 'package:toto_mobile/src/core/presentation/router/bloc/event.dart';
import 'package:toto_mobile/src/core/presentation/screens/cities/bloc/bloc.dart';
import 'package:toto_mobile/src/core/presentation/screens/cities/bloc/event.dart';
import 'package:toto_mobile/src/core/presentation/screens/cities/bloc/state.dart';
import 'package:toto_mobile/src/core/presentation/screens/cities/widgets/error.dart';
import 'package:toto_mobile/src/core/presentation/screens/delivery/bloc/state.dart';
import 'package:toto_mobile/src/core/presentation/ui/AppSnackBar.dart';
import 'package:toto_mobile/src/core/presentation/widgets/modals/choose_cities_widget.dart';
import 'package:toto_mobile/src/core/presentation/widgets/modals/choose_place_modal.dart';
import 'package:toto_mobile/src/resources/resources.dart';

class CitiesPage extends StatelessWidget {
  static const id = '/cities';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocConsumer<CitiesBloc, CitiesState>(
          listener: (context, state) {
            switch (state.currentStatus) {
              case CitiesStatus.error:
                AppSnackBar.showSnackBar(TotoDictionary.error.error, context);
                break;
              case CitiesStatus.connectionError:
                AppSnackBar.showSnackBar(
                    TotoDictionary.error.networkError, context);
                break;
              default:
                break;
            }
          },
          builder: (context, state) {
            switch (state.currentStatus) {
              case CitiesStatus.error:
                return CitiesNotFoundError();
              case CitiesStatus.viewCities:
                return Container(
                  decoration: BoxDecoration(
                    gradient: TotoTheme.background.primaryGradient,
                  ),
                  child: Center(
                    child: ChooseCitiesModal(
                      dialogBlocType: DialogBlocType.city,
                      citiesBloc: context.read<CitiesBloc>(),
                      onChangeCity: (int index) {
                        context.read<CitiesBloc>().add(
                              CitiesEvent.onChangeCity(state.cities[index]),
                            );
                      },
                      onSendChangeCity: (CityDto? city) {
                        context
                            .read<CitiesBloc>()
                            .add(CitiesEvent.onSendChangeCity(city));
                      },
                      cities: state.cities,
                      currentCity: state.currentCity != null
                          ? int.parse(state.currentCity!.id)
                          : 0,
                      closed: false,
                      homeBloc: null,
                    ),
                  ),
                );
              case CitiesStatus.viewPlace:
                return Container(
                  decoration: BoxDecoration(
                    gradient: TotoTheme.background.primaryGradient,
                  ),
                  child: ChoosePlaceModal(
                    changePlace: (Place changedPlace) {
                      switch (changedPlace) {
                        case Place.pickup:
                          context.read<RouterBloc>().add(RouterEvent.toHome());
                          break; //TODO: переход на экран выбора ресторана
                        case Place.delivery:
                          context.read<RouterBloc>().add(RouterEvent.toDelivery(
                              ChooseDeliveryAddressScenario
                                  .navigateToHomeMenu));
                          break;
                        default:
                          break;
                      }
                    },
                  ),
                );
              default:
                return Container(
                  decoration: BoxDecoration(
                    gradient: TotoTheme.background.primaryGradient,
                  ),
                );
            }
          },
        ),
      ),
    );
  }
}
