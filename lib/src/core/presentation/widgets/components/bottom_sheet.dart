import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sliding_sheet/sliding_sheet.dart';
import 'package:toto_mobile/src/core/presentation/router/bloc/bloc.dart';
import 'package:toto_mobile/src/core/presentation/router/bloc/event.dart';
import 'package:toto_mobile/src/core/presentation/screens/delivery/bloc/bloc.dart';
import 'package:toto_mobile/src/core/presentation/screens/delivery/bloc/event.dart';
import 'package:toto_mobile/src/core/presentation/screens/delivery/bloc/state.dart';
import 'package:toto_mobile/src/core/presentation/widgets/components/additional_info.dart';
import 'package:toto_mobile/src/core/presentation/widgets/components/delivery_addresses_form.dart';
import 'package:toto_mobile/src/core/presentation/widgets/title.dart';
import 'package:toto_mobile/src/extensions/TextStyle.dart';
import 'package:toto_mobile/src/resources/dictionary.dart';
import 'package:toto_mobile/src/resources/theme.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

import 'address_from.dart';
import 'bottom_geolocation.dart';

class DeliveryBottomSheet extends StatelessWidget {
  final SheetController sheetController;

  DeliveryBottomSheet({
    Key? key,
    required this.sheetController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var readOnly = true;
    Widget _suffixIcon;
    var currentAddress = 'Город, улица, дом';
    var _textEditingController = TextEditingController();

    void _getSuggestions(String query) async {
      await YandexSearch.getSuggestions(
        address: query,
        southWestPoint: const Point(latitude: 55.5143, longitude: 37.24841),
        northEastPoint: const Point(latitude: 56.0421, longitude: 38.0284),
        suggestType: SuggestType.transit,
        suggestWords: true,
        onSuggest: (List<SuggestItem> suggestions) {
          print(suggestions.first.title);
          BlocProvider.of<DeliveryBloc>(context).add(
            AddressChanged(suggestions, query),
          );
        },
      );
    }

    void onResumePressed() {
      BlocProvider.of<DeliveryBloc>(context).add(ChangeDeliveryAddress());
      context.read<RouterBloc>().add(RouterEvent.pop());
    }

    void onUsedDeliveryAddressSelected(String address) {
      BlocProvider.of<DeliveryBloc>(context).add(OnAddressChoosed(address));
      BlocProvider.of<DeliveryBloc>(context)
          .add(ChangeDeliveryAddress(address));
      context.read<RouterBloc>().add(RouterEvent.pop());
    }

    void onAddDeliveryAddressPressed() async {
      await sheetController.snapToExtent(
        0.4,
        duration: Duration(milliseconds: 500),
      );
      BlocProvider.of<DeliveryBloc>(context).add(
        OnFindAddressCancelTapped(),
      );
    }

    void onLocationSelected(String location) async {
      await sheetController.snapToExtent(
        0.9,
        duration: Duration(milliseconds: 500),
      );
      BlocProvider.of<DeliveryBloc>(context).add(OnLocationSelected(location));
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        BlocBuilder<DeliveryBloc, DeliveryState>(
          builder: (context, state) {
            return Padding(
                padding: const EdgeInsets.only(bottom: 20, top: 40, left: 10),
                child: _title(
                  state.status == DeliveryStatus.chooseDeliveryAddressState
                      ? TotoDictionary.chooseDeliveryAddress
                      : TotoDictionary.inputDeliveryAddress,
                ));
          },
        ),
        BlocBuilder<DeliveryBloc, DeliveryState>(
          builder: (context, state) {
            log(state.status.toString());
            currentAddress = state.address;

            switch (state.status) {
              case DeliveryStatus.inputCityState:
                readOnly = false;
                _suffixIcon = IconButton(
                  icon: Icon(
                    Icons.close,
                    color: Colors.grey,
                  ),
                  onPressed: () {
                    _textEditingController.clear();
                  },
                );
                break;

              default:
                readOnly = true;
                _suffixIcon = IconButton(
                  icon: Icon(
                    Icons.close,
                    color: Colors.transparent,
                  ),
                  onPressed: () {
                    _textEditingController.clear();
                  },
                );
                break;
            }

            switch (state.status) {
              case DeliveryStatus.chooseDeliveryAddressState:
                sheetController.snapToExtent(
                  1,
                  duration: Duration(milliseconds: 500),
                );
                return DeliveryAddressesForm(
                  onAddDeliveryAddressPressed: onAddDeliveryAddressPressed,
                  deliveryAddresses: state.deliveryAddresses,
                  checkedDeliveryAddresses: state.checkedDeliveryAddress,
                );
              default:
                return Padding(
                  padding: EdgeInsets.only(bottom: 20, left: 10, right: 10),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: TextFormField(
                      controller: _textEditingController,
                      style: RobotoTextStyle.s13w400(Colors.grey),
                      readOnly: readOnly,
                      onTap: () async {
                        await sheetController.snapToExtent(
                          1,
                          duration: Duration(milliseconds: 500),
                        );
                        BlocProvider.of<DeliveryBloc>(context).add(
                          OnFindAddressTapped(),
                        );
                      },
                      onChanged: (text) => {
                        _getSuggestions(text),
                      },
                      decoration: InputDecoration(
                        suffixIcon: _suffixIcon,
                        contentPadding: EdgeInsets.all(10),
                        fillColor: Colors.white,
                        filled: true,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          borderSide: BorderSide(
                            color: TotoTheme.primary,
                            width: 1,
                          ),
                        ),
                        hintStyle: RobotoTextStyle.s13w400(Colors.grey),
                        hintText: currentAddress,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(30),
                          ),
                          borderSide: BorderSide(
                            color: TotoTheme.primary,
                            width: 1,
                          ),
                        ),
                      ),
                    ),
                  ),
                );
            }
          },
        ),
        BlocBuilder<DeliveryBloc, DeliveryState>(
          builder: (context, state) {
            switch (state.status) {
              case DeliveryStatus.inputAdditionalInfoState:
                return Flexible(
                    child: AdditionAddressInfo(
                  sheetController: sheetController,
                  onResumePressed: onResumePressed,
                ));
              case DeliveryStatus.inputCityState:
                return SingleChildScrollView(
                  child: AddressForm(
                    sheetController: sheetController,
                    textEditingController: _textEditingController,
                  ),
                );

              default:
                return BottomGeolocation(
                  sheetController: sheetController,
                  onLocationSelected:
                      state.status == DeliveryStatus.chooseDeliveryAddressState
                          ? onUsedDeliveryAddressSelected
                          : onLocationSelected,
                  address: state.status ==
                          DeliveryStatus.chooseDeliveryAddressState
                      ? '${state.deliveryAddresses[state.checkedDeliveryAddress].cityName}, ${state.deliveryAddresses[state.checkedDeliveryAddress].street}, ${state.deliveryAddresses[state.checkedDeliveryAddress].home}'
                      : currentAddress,
                );
            }
          },
        ),
      ],
    );

    Widget _title(
      String title,
    ) =>
        Text(
          title,
        );
  }
}
