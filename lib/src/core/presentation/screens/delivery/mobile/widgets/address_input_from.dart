import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toto_mobile/src/core/domain/entities/delivery_address.dart';
import 'package:toto_mobile/src/core/presentation/screens/delivery/bloc/bloc.dart';
import 'package:toto_mobile/src/core/presentation/screens/delivery/bloc/event.dart';
import 'package:toto_mobile/src/core/presentation/screens/delivery/bloc/state.dart';
import 'package:toto_mobile/src/extensions/TextStyle.dart';
import 'package:toto_mobile/src/resources/resources.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

class AddressInputForm extends StatelessWidget {
  final Function onTap;
  final bool readOnly;
  final DeliveryDto? deliveryAddress;
  DeliveryAddressStatus deliveryAddressStatus;
  final TextEditingController textEditingController;
  final FocusNode focusInput;
  AddressInputForm({
    Key? key,
    required this.deliveryAddressStatus,
    required this.readOnly,
    required this.onTap,
    required this.deliveryAddress,
    required this.textEditingController,
    required this.focusInput,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343,
      height: 40,
      child: TextFormField(
        focusNode: focusInput,
        keyboardType: TextInputType.streetAddress,
        readOnly: readOnly,
        controller: textEditingController,
        style: RobotoTextStyle.smallCapsFs13Fw400(TotoTheme.darkGrayText),
        onChanged: (String query) {
          YandexSearch.getSuggestions(
            address: query,
            southWestPoint: Point(latitude: 50, longitude: 50),
            northEastPoint: Point(latitude: 20, longitude: 20),
            suggestType: SuggestType.geo,
            suggestWords: true,
            onSuggest: (suggestions) {
              BlocProvider.of<DeliveryBloc>(context).add(
                ShowAddressesByQuery(
                  suggestions,
                ),
              );
            },
          );
        },
        onTap: () => onTap(),
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
          suffixIcon: !readOnly
              ? IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () {
                    textEditingController.clear();
                  },
                )
              : IconButton(
                  icon: Icon(
                    Icons.close,
                    color: Colors.transparent,
                  ),
                  onPressed: () {},
                ),
          hintStyle: RobotoTextStyle.smallCapsFs13Fw400(TotoTheme.darkGrayText),
          hintText: 'Город, улица, дом',
          contentPadding: EdgeInsets.only(left: 20, right: 20),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.0),
            borderSide: BorderSide(color: TotoTheme.primary, width: 1),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
            borderSide: BorderSide(
              color: TotoTheme.primary,
              width: 1,
            ),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: TotoTheme.primary, width: 1),
            borderRadius: BorderRadius.all(
              Radius.circular(30),
            ),
          ),
        ),
      ),
    );
  }
}
