import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toto_mobile/src/core/domain/entities/address.dart';
import 'package:toto_mobile/src/core/presentation/screens/delivery/bloc/bloc.dart';
import 'package:toto_mobile/src/core/presentation/screens/delivery/bloc/event.dart';
import 'package:toto_mobile/src/extensions/TextStyle.dart';
import 'package:toto_mobile/src/resources/dictionary.dart';
import 'package:toto_mobile/src/resources/icons.dart';
import 'package:toto_mobile/src/resources/svg.dart';
import 'package:toto_mobile/src/resources/theme.dart';

class DeliveryAddressesForm extends StatelessWidget {
  final List<AddressDto> deliveryAddresses;
  final Function onAddDeliveryAddressPressed;
  final Function chooseUsedDeliveryAddress;
  final int checkedDeliveryAddress;

  const DeliveryAddressesForm(
      {Key? key,
      required this.chooseUsedDeliveryAddress,
      required this.checkedDeliveryAddress,
      required this.deliveryAddresses,
      required this.onAddDeliveryAddressPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: TotoTheme.surface,
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Image.asset(
            arrowDown,
            height: 7,
            width: 45,
          ),
          SizedBox(
            height: 18,
          ),
          Text(
            TotoDictionary.chooseDeliveryAddress,
            style: RobotoTextStyle.smallCapsFs18Fw700(
              TotoTheme.textBase,
            ),
          ),
          SizedBox(
            height: 18,
          ),
          ConstrainedBox(
            constraints: BoxConstraints(maxHeight: 350),
            child: ListView.builder(
              shrinkWrap: false,
              itemCount: deliveryAddresses.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    BlocProvider.of<DeliveryBloc>(context).add(
                      SelectUsedDeliveryAddress(index),
                    );
                  },
                  child: Container(
                    color: TotoTheme.background.base,
                    padding: EdgeInsets.only(right: 16),
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.all(16),
                          child: Icon(
                            (checkedDeliveryAddress == index)
                                ? TotoIcons.radio_buttonChecked
                                : TotoIcons.radio_button_unchecked,
                            color: TotoTheme.accent,
                            size: 24,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            '${deliveryAddresses[index].cityName}, ${deliveryAddresses[index].street}, ${deliveryAddresses[index].home}',
                            style: RobotoTextStyle.s18w400(TotoTheme.textBase),
                            maxLines: 2,
                            textAlign: TextAlign.left,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          InkWell(
            onTap: () {
              onAddDeliveryAddressPressed();
            },
            child: Container(
              margin: const EdgeInsets.only(bottom: 25.5, left: 21),
              child: Row(
                children: [
                  Icon(
                    TotoIcons.add,
                    color: TotoTheme.accent,
                  ),
                  Text(
                    TotoDictionary.addAddress,
                    style: TextStyle(color: TotoTheme.accent, fontSize: 18),
                  )
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: TotoTheme.primary,
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              ),
            ),
            width: 343,
            height: 40,
            child: TextButton(
              onPressed: () => chooseUsedDeliveryAddress(
                  deliveryAddresses, checkedDeliveryAddress),
              child: Text(
                TotoDictionary.chooseDeliveryButtonContinue,
                style: RobotoTextStyle.smallCapsFs16Fw400(TotoTheme.surface),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
