import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toto_mobile/src/core/domain/entities/address.dart';
import 'package:toto_mobile/src/core/presentation/screens/ordering/bloc/bloc.dart';
import 'package:toto_mobile/src/core/presentation/screens/ordering/bloc/state.dart';
import 'package:toto_mobile/src/core/presentation/screens/ordering/widget/content_page.dart';
import 'package:toto_mobile/src/extensions/String.dart';
import 'package:toto_mobile/src/extensions/TextStyle.dart';
import 'package:toto_mobile/src/resources/resources.dart';

class OrderingPageAddressWidget extends StatelessWidget {
  final AddressDto? addressDto;
  OrderingPageAddressWidget({required this.addressDto});

  static const _padding = EdgeInsets.symmetric(vertical: 12, horizontal: 16);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OrderingBloc, OrderingState>(
      builder: (context, state) {
        return Container(
          padding: _padding,
          margin: orderingPageMarginItem,
          width: MediaQuery.of(context).size.width,
          color: TotoTheme.background.base,
          child: state.isSelfService
              ? Text(
                  state.myCart!.restaurant != null
                      ? state.myCart!.restaurant!.address
                      : TotoDictionary.deliveryCancelAddress,
                  style: RobotoTextStyle.s18w400(
                      state.myCart!.restaurant != null
                          ? TotoTheme.text.base
                          : TotoTheme.accent),
                )
              : Text(
                  StringExtension.addressToString(addressDto) ??
                      TotoDictionary.deliveryCancelAddress,
                  style: RobotoTextStyle.s18w400(addressDto != null
                      ? TotoTheme.text.base
                      : TotoTheme.accent),
                ),
        );
      },
    );
  }
}
