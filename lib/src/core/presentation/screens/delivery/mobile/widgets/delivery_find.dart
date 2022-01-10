import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toto_mobile/src/core/presentation/screens/delivery/bloc/bloc.dart';
import 'package:toto_mobile/src/core/presentation/screens/delivery/bloc/state.dart';
import 'package:toto_mobile/src/extensions/TextStyle.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

class DeliveryFind extends StatelessWidget {
  final Function onFoundByQueryAddressTapped;
  DeliveryFind({Key? key, required this.onFoundByQueryAddressTapped})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget _addressItem(SuggestItem address) => GestureDetector(
          onTap: () => onFoundByQueryAddressTapped(address),
          child: Container(
            margin: EdgeInsets.only(
              bottom: 20,
            ),
            width: 343,
            height: 40,
            child: Text(
              address.searchText,
              style: RobotoTextStyle.smallCapsFs13Fw400(
                Colors.grey,
              ),
            ),
          ),
        );
    Widget _addressesList(List<SuggestItem> addresses) => ListView.builder(
          itemCount: addresses.length,
          itemBuilder: (context, index) {
            return _addressItem(
              addresses[index],
            );
          },
        );
    return BlocBuilder<DeliveryBloc, DeliveryState>(
      builder: (context, state) {
        return Container(
          height: 300,
          margin: EdgeInsets.symmetric(
            horizontal: 36,
          ),
          child: _addressesList(
            state.suggestAddresses,
          ),
        );
      },
    );
  }
}
