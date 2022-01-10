import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toto_mobile/src/core/presentation/entities/restaurant.dart';
import 'package:toto_mobile/src/core/presentation/screens/pickup/bloc/bloc.dart';
import 'package:toto_mobile/src/core/presentation/screens/pickup/bloc/event.dart';
import 'package:toto_mobile/src/core/presentation/screens/pickup/bloc/state.dart';
import 'package:toto_mobile/src/extensions/TextStyle.dart';
import 'package:toto_mobile/src/resources/dictionary.dart';
import 'package:toto_mobile/src/resources/theme.dart';

class TextCityOrAddressForm extends StatelessWidget {
  final TextEditingController textEditingController;
  final List<Restaurant> allRestaurants;
  final PanelStatus panelStatus = PanelStatus.panelClosed;

  TextCityOrAddressForm(
      {Key? key,
      required this.textEditingController,
      required this.allRestaurants})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    void _getSuggestions(String query) async {
      Set<int> matchedRestaurants = {};

      allRestaurants.forEach(
        (element) {
          log('${element.address.toLowerCase()} - ${query.toLowerCase()}');
          if (element.address.toLowerCase().contains(query.toLowerCase())) {
            matchedRestaurants.add(element.id);
          }
        },
      );

      if (matchedRestaurants.isNotEmpty) {
        BlocProvider.of<PickUpBloc>(context)
            .add(FindQueryChanged(matchedRestaurants));
      }
    }

    return Container(
      width: 343,
      height: 40,
      child: TextFormField(
        controller: textEditingController,
        style: RobotoTextStyle.smallCapsFs13Fw400(TotoTheme.darkGrayText),
        onChanged: (text) => {
          if (textEditingController.text.isEmpty)
            {
              BlocProvider.of<PickUpBloc>(context).add(
                OpenFindRestaurantPanel(),
              ),
            }
          else
            {
              _getSuggestions(text),
            }
        },
        onTap: () {
          if (panelStatus == PanelStatus.panelClosed) {
            BlocProvider.of<PickUpBloc>(context).add(OpenFindRestaurantPanel());
          }
        },
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
          filled: true,
          fillColor: TotoTheme.surface,
          hintStyle: RobotoTextStyle.smallCapsFs13Fw400(TotoTheme.darkGrayText),
          hintText: 'Введите город или адрес',
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

    TextFormField(
      controller: textEditingController,
      onTap: () {
        if (panelStatus == PanelStatus.panelClosed) {
          BlocProvider.of<PickUpBloc>(context).add(OpenFindRestaurantPanel());
        }
      },
      onChanged: (text) => {
        if (textEditingController.text.isEmpty)
          {
            BlocProvider.of<PickUpBloc>(context).add(
              OpenFindRestaurantPanel(),
            ),
          }
        else
          {
            _getSuggestions(text),
          }
      },
      decoration: InputDecoration(
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
        hintStyle: RobotoTextStyle.s18w400(TotoTheme.text.base),
        hintText: TotoDictionary.inputCityOrAddress,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
      ),
    );
  }
}
