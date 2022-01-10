import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:toto_mobile/src/core/presentation/entities/restaurant.dart';
import 'package:toto_mobile/src/core/presentation/router/bloc/bloc.dart';
import 'package:toto_mobile/src/core/presentation/router/bloc/event.dart';
import 'package:toto_mobile/src/core/presentation/screens/pickup/bloc/bloc.dart';
import 'package:toto_mobile/src/core/presentation/screens/pickup/bloc/event.dart';
import 'package:toto_mobile/src/core/presentation/screens/pickup/bloc/state.dart';
import 'package:toto_mobile/src/core/presentation/widgets/components/bottom_sheet_restaurant.dart';
import 'package:toto_mobile/src/core/presentation/widgets/input_fields/text_city_or_address_field.dart';
import 'package:toto_mobile/src/extensions/TextStyle.dart';
import 'package:toto_mobile/src/resources/theme.dart';
import 'package:toto_mobile/src/utils/logger.dart';
import 'package:toto_mobile/src/utils/yandex_map_helper.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

class PickUpMobilePage extends StatefulWidget {
  PickUpMobilePage({Key? key}) : super(key: key);

  @override
  _PickUpMobilePageState createState() => _PickUpMobilePageState();
}

class _PickUpMobilePageState extends State<PickUpMobilePage> {
  final PanelController _panelController = PanelController();
  YandexMapController? mapController;

  void _onRestaurantTap(int restaurantId) {
    context
        .read<PickUpBloc>()
        .add(PickUpEvent.changePickUpAddress(restaurantId));
    _panelController.open();
  }

  void _onSubmitPressed() {
    BlocProvider.of<PickUpBloc>(context).add(MakeOrder());
    context.read<RouterBloc>().add(RouterEvent.pop());
  }

  final TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        shadowColor: Colors.transparent,
        backgroundColor: TotoTheme.surface,
        leading: IconButton(
          onPressed: () {
            context.read<RouterBloc>().add(RouterEvent.pop());
          },
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
        ),
        title: Text(
          'Рестораны',
        ),
        titleTextStyle: RobotoTextStyle.titleTextStyle(),
      ),
      body: Stack(
        children: [
          BlocListener<PickUpBloc, PickUpState>(
            listener: (context, state) {
              if (state.pickUpDataStatus ==
                  PickUpDataStatus.updateRestaurants) {
                if (mapController != null) {
                  mapController!.createPlacemarks(
                    state.allRestaurants
                        .map(
                          (restaurant) => Point(
                            latitude: restaurant.location.latitude,
                            longitude: restaurant.location.longitude,
                          ),
                        )
                        .toList(),
                    _onRestaurantTap,
                  );
                }
              }
            },
            child: YandexMap(
              onMapCreated: _onMapCreated,
            ),
          ),
          BlocConsumer<PickUpBloc, PickUpState>(
            listener: (context, state) {
              switch (state.pickUpStatus) {
                case PickUpStatus.showNearestRestaurant:
                  _moveMap(
                    state.nearestRestaurant!.location.latitude,
                    state.nearestRestaurant!.location.longitude,
                  );
                  _panelController.open();
                  break;
                default:
                  _panelController.close();
                  break;
              }
            },
            builder: (context, state) {
              return SlidingUpPanel(
                color: Colors.transparent,
                defaultPanelState: PanelState.CLOSED,
                controller: _panelController,
                minHeight: 0,
                maxHeight: 300,
                panel: ToToRestaurantBottomSheet(
                  nearestRestaurant: state.nearestRestaurant,
                  onSubmitPressed: _onSubmitPressed,
                  onClose: () {
                    _panelController.close();
                  },
                ),
              );
            },
          ),
          BlocBuilder<PickUpBloc, PickUpState>(
            builder: (context, state) {
              return Column(
                children: [
                  Container(
                    color: state.pickUpStatus == PickUpStatus.openFindingPanel
                        ? Colors.grey.withOpacity(0.8)
                        : Colors.transparent,
                    child: AnimatedContainer(
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30)),
                      ),
                      height: state.pickUpStatus ==
                              PickUpStatus.openFindingPanel
                          ? 80
                          : state.pickUpStatus == PickUpStatus.searchRestaurant
                              ? MediaQuery.of(context).size.height * 0.8
                              : 0,
                      duration: Duration(milliseconds: 100),
                      curve: Curves.easeIn,
                    ),
                  ),
                  state.pickUpStatus == PickUpStatus.openFindingPanel
                      ? Expanded(
                          child: InkWell(
                            onTap: () {
                              if (state.pickUpStatus ==
                                  PickUpStatus.openFindingPanel) {
                                FocusScope.of(context).unfocus();
                                BlocProvider.of<PickUpBloc>(context).add(
                                  ShowNearestRestaurant(),
                                );
                              }
                            },
                            child: Container(
                              color: Colors.grey.withOpacity(0.8),
                            ),
                          ),
                        )
                      : Container()
                ],
              );
            },
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                child: BlocBuilder<PickUpBloc, PickUpState>(
                  builder: (context, state) {
                    return TextCityOrAddressForm(
                        allRestaurants: state.allRestaurants,
                        textEditingController: _textEditingController);
                  },
                ),
              ),
              BlocBuilder<PickUpBloc, PickUpState>(
                builder: (context, state) {
                  switch (state.pickUpDataStatus) {
                    case PickUpDataStatus.hasRestaurants:
                      final places = state.suggestions.map(
                        (placeId) {
                          return InkWell(
                            onTap: () {
                              FocusScope.of(context).unfocus();
                              BlocProvider.of<PickUpBloc>(context).add(
                                ChangePickUpAddress(
                                  state.allRestaurants.indexWhere(
                                    ((restaurant) => restaurant.id == placeId),
                                  ),
                                ),
                              );
                            },
                            child: Padding(
                              padding:
                                  EdgeInsets.only(left: 40, right: 40, top: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    state.allRestaurants
                                        .firstWhere((restaurant) =>
                                            restaurant.id == placeId)
                                        .address,
                                    style: RobotoTextStyle.s14w400(
                                        TotoTheme.text.base),
                                  ),
                                  Divider()
                                ],
                              ),
                            ),
                          );
                        },
                      ).toList();
                      return ConstrainedBox(
                        constraints: BoxConstraints(
                            maxHeight:
                                MediaQuery.of(context).size.height * 0.6),
                        child: ListView(shrinkWrap: true, children: places),
                      );
                    default:
                      return Container();
                  }
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _moveMap(double latitude, double longitude) {
    if (mapController != null) {
      mapController!.move(
        point: Point(
          latitude: latitude - 0.003,
          longitude: longitude,
        ),
      );
    }
  }

  void getSuggestions() {
    YandexSearch.getSuggestions(
      address: 'ТОТО Пиццерия',
      southWestPoint: const Point(latitude: 72, longitude: 150),
      northEastPoint: const Point(latitude: 53, longitude: 39),
      suggestType: SuggestType.transit,
      suggestWords: true,
      onSuggest: (List<SuggestItem> msg) {
        msg.forEach(
          (element) {
            print(element.subtitle);
          },
        );
      },
    );
  }

  void _onMapCreated(YandexMapController controller) async {
    mapController = controller;
    context.read<PickUpBloc>().add(PickUpEvent.showNearestRestaurant());
    context.read<PickUpBloc>().add(PickUpEvent.updateRestaurants());
  }
}
