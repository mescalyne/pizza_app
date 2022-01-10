import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toto_mobile/src/core/presentation/entities/restaurant.dart';

import 'package:toto_mobile/src/extensions/TextStyle.dart';
import 'package:toto_mobile/src/resources/dictionary.dart';
import 'package:toto_mobile/src/resources/theme.dart';

class FindRestaurantForm extends StatelessWidget {
  final List<Restaurant> restaurants;
  final TextEditingController textEditingController;
  final Function onInputFormTapped;
  // final RestaurantDataStatus dataStatus;
  const FindRestaurantForm(
      {Key? key,
      // required this.dataStatus,
      required this.onInputFormTapped,
      required this.restaurants,
      required this.textEditingController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    void _getSuggestions(String query) async {
      var matchedRestaurants = <Restaurant>[];

      restaurants.forEach(
        (element) {
          if (element.address.contains(query)) {
            matchedRestaurants.add(element);
          }
        },
      );

      if (matchedRestaurants.isNotEmpty) {
        // BlocProvider.of<RestaurantBloc>(context)
        //     .add(FindQueryChanged(matchedRestaurants));
      }
    }

    return TextFormField(
      // readOnly:
      //     dataStatus == RestaurantDataStatus.foundRestaurant ? false : true,
      onTap: () {
        // onInputFormTapped(dataStatus);
      },
      onChanged: (text) {
        if (textEditingController.text.isEmpty) {
          // BlocProvider.of<RestaurantBloc>(context).add(
          //   OpenFindRestaurantPanel(),
          // );
        } else {
          _getSuggestions(text);
        }
      },
      controller: textEditingController,
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
