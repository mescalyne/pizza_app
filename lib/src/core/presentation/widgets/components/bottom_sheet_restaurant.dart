import 'package:flutter/material.dart';
import 'package:toto_mobile/src/core/presentation/entities/restaurant.dart';
import 'package:toto_mobile/src/core/presentation/entities/time_activity.dart';
import 'package:toto_mobile/src/core/presentation/widgets/buttons/arrow_down_button.dart';
import 'package:toto_mobile/src/extensions/TextStyle.dart';
import 'package:toto_mobile/src/resources/dictionary.dart';
import 'package:toto_mobile/src/resources/icons.dart';
import 'package:toto_mobile/src/resources/theme.dart';

class ToToRestaurantBottomSheet extends StatelessWidget {
  final Restaurant? nearestRestaurant;
  final Function onSubmitPressed;
  final Function onClose;

  const ToToRestaurantBottomSheet({
    Key? key,
    required this.nearestRestaurant,
    required this.onSubmitPressed,
    required this.onClose,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (nearestRestaurant == null) {
      return CircularProgressIndicator();
    }
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              offset: Offset(0, -5),
              color: Colors.black38,
              spreadRadius: -10,
              blurRadius: 20),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        child: Container(
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              
              ArrowDownButton(onPress: () => onClose),
              SizedBox(height: 22,),
              Text(
                'Ближайший к вам ресторан',
                style: RobotoTextStyle.s18w700(TotoTheme.text.base),
              ),
              SizedBox(height: 32,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    TotoIcons.companies,
                    color: TotoTheme.darkGrayText,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _detailRestaurantInfoTitle(
                        address: nearestRestaurant!.address,
                        city: nearestRestaurant!.city.name,
                        name: nearestRestaurant!.name,
                      ),
                      _nearestRestaurantStatus(nearestRestaurant!.timeActivity,),
                    ],
                  )
                ],
              ),
              SizedBox(height: 32,),
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Container(
                  height: 40,
                  width: 343,
                  color: TotoTheme.primary,
                  child: TextButton(
                    onPressed: () => onSubmitPressed(),
                    child: Text(
                      'Выбрать ресторан',
                      style: RobotoTextStyle.s14w400(TotoTheme.surface),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _detailRestaurantInfoTitle({
    required String address,
    required String name,
    required String city,
  }) =>
      Container(
        margin:  EdgeInsets.only(bottom: 10),
        width: 273.0,
        child: Text(
          '$address $name $city',
          maxLines: 2,
          style: RobotoTextStyle.s18w400(TotoTheme.textBase),
        ),
      );

  Widget _nearestRestaurantStatus(TimeActivity timeActivity) {
    if (timeActivity.isOpen == true) {
      return Text(
        'Открыто до ${timeActivity.closeAt}',
        style: RobotoTextStyle.s13w400(TotoTheme.primary),
      );
    } else {
      return Text(
        'Закрыто до ${timeActivity.openAt}',
        style: RobotoTextStyle.s13w400(TotoTheme.accent),
      );
    }
  }
}
