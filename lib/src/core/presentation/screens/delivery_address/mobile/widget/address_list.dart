import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toto_mobile/src/core/domain/entities/address.dart';
import 'package:toto_mobile/src/core/presentation/screens/delivery_address/mobile/widget/address_list_item.dart';

class AddressListView extends StatelessWidget {
  final List<AddressDto> loadedAddress;

  AddressListView({required this.loadedAddress, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 108 * (loadedAddress.length).toDouble(),
      child: SingleChildScrollView(
        child: Wrap(runSpacing: 8, children: [
          ...loadedAddress
              .map((addresses) => AddressListItem(addressItem: addresses))
              .toList(),
        ]),
      ),
    );
  }
}
