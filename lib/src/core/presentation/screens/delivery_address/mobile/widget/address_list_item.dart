import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toto_mobile/src/core/domain/entities/address.dart';
import 'package:toto_mobile/src/core/presentation/screens/delivery_address/bloc/bloc.dart';
import 'package:toto_mobile/src/core/presentation/screens/delivery_address/bloc/event.dart';
import 'package:toto_mobile/src/extensions/TextStyle.dart';
import 'package:toto_mobile/src/resources/resources.dart';

class AddressListItem extends StatelessWidget {
  final AddressDto addressItem;

  AddressListItem({required this.addressItem, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final DeliveryAddressBloc deliveryBloc = BlocProvider.of<DeliveryAddressBloc>(context);
    return Container(
      color: TotoTheme.surface,
      height: 100,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            alignment: AlignmentDirectional.center,
            height: 60,
            width: 60,
            child: Icon(
              TotoIcons.location,
              size: 30,
              color: TotoTheme.accent,
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width - 120,
            padding: const EdgeInsets.only(top: 16),
            child: Flexible(
              child: Text(
                'г. ${addressItem.cityName}, ${addressItem.street} ${addressItem.home}  ${addressItem.apartment ?? ''}',
                style: RobotoTextStyle.s18w400(TotoTheme.text.base),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 19, right: 19),
            alignment: AlignmentDirectional.bottomEnd,
            height: 100,
            width: 60,
            child: InkWell(
              onTap: () {
                context.read<DeliveryAddressBloc>().add(
                    DeliveryAddressEvent.onDeleteDeliveryAddress(
                        addressItem.id));
              },
              child: Icon(
                TotoIcons.delete,
                size: 24,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
