import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:toto_mobile/src/core/presentation/router/bloc/bloc.dart';
import 'package:toto_mobile/src/core/presentation/router/bloc/event.dart';
import 'package:toto_mobile/src/core/presentation/screens/delivery/bloc/state.dart';
import 'package:toto_mobile/src/core/presentation/screens/delivery_address/bloc/bloc.dart';
import 'package:toto_mobile/src/core/presentation/screens/delivery_address/bloc/state.dart';
import 'package:toto_mobile/src/core/presentation/screens/delivery_address/mobile/widget/address_list.dart';
import 'package:toto_mobile/src/extensions/TextStyle.dart';
import 'package:toto_mobile/src/resources/icons.dart';
import 'package:toto_mobile/src/resources/resources.dart';

class DeliveryAddressMobilePage extends StatelessWidget {
  const DeliveryAddressMobilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DeliveryAddressInfoPage();
  }
}

class DeliveryAddressInfoPage extends StatelessWidget {
  const DeliveryAddressInfoPage({Key? key}) : super(key: key);

  static const _paddingButton = EdgeInsets.only(left: 20);
  static const _widthSizedBoxButton = 13.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Адреса'),
          titleTextStyle: RobotoTextStyle.titleTextStyle(),
          centerTitle: true,
          leading: InkWell(
            onTap: () {
              context.read<RouterBloc>().add(RouterEvent.pop());
            },
            child: Icon(TotoIcons.arrow_back, size: 20, color: TotoTheme.black),
          ),
          elevation: 0,
          backgroundColor: TotoTheme.surface,
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          color: TotoTheme.bgGrey,
          padding: EdgeInsets.only(top: 12, bottom: 12),
          child: Column(children: [
            BlocBuilder<DeliveryAddressBloc, DeliveryAddressState>(
                builder: (context, state) {
              if (state is HomeInitial) {
                return AddressListView(loadedAddress: state.loadedAddress);
              }
              return Container();
            }),
            InkWell(
              onTap: () {
                context.read<RouterBloc>().add(RouterEvent.toDelivery(ChooseDeliveryAddressScenario.pop));
              },
              child: Container(
                color: TotoTheme.surface,
                alignment: AlignmentDirectional.center,
                height: 40,
                padding: _paddingButton,
                child: Row(
                  children: [
                    Icon(
                      TotoIcons.add,
                      color: TotoTheme.accent,
                      size: 20,
                    ),
                    SizedBox(width: _widthSizedBoxButton),
                    Text(
                      TotoDictionary.userAddressAddMore.toLowerCase(),
                      style:
                          RobotoTextStyle.smallCapsFs18Fw700(TotoTheme.accent),
                    ),
                  ],
                ),
              ),
            ),
          ]),
        ));
  }
}
