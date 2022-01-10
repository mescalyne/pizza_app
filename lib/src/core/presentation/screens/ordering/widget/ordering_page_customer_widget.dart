import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toto_mobile/src/core/presentation/screens/ordering/bloc/bloc.dart';
import 'package:toto_mobile/src/core/presentation/screens/ordering/bloc/state.dart';
import 'package:toto_mobile/src/core/presentation/screens/ordering/widget/bottomModals/customer_modal.dart';
import 'package:toto_mobile/src/core/presentation/screens/ordering/widget/content_page.dart';
import 'package:toto_mobile/src/extensions/String.dart';
import 'package:toto_mobile/src/extensions/TextStyle.dart';
import 'package:toto_mobile/src/resources/resources.dart';

class OrderingPageCustomerWidget extends StatelessWidget {
  static const _padding =
      EdgeInsets.only(top: 12, bottom: 12, left: 16, right: 25);
  static const _iconSize = 20.0;
  static const _heightSizedBox = 6.0;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OrderingBloc, OrderingState>(
      builder: (context, state) {
        return GestureDetector(
          onTap: () {
            CustomerModal.show(
              context,
              context.read<OrderingBloc>(),
              state.customerName,
              state.customerPhone,
            );
          },
          child: Container(
            padding: _padding,
            margin: orderingPageMarginItem,
            width: MediaQuery.of(context).size.width,
            color: TotoTheme.background.base,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                (state.customerName != null && state.customerPhone != null)
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            state.customerName!,
                            style: RobotoTextStyle.s18w400(TotoTheme.text.base),
                            textAlign: TextAlign.left,
                          ),
                          SizedBox(
                            height: _heightSizedBox,
                          ),
                          Text(
                            StringExtension.stringPhone(state.customerPhone) ??
                                '',
                            style: RobotoTextStyle.s18w400(TotoTheme.text.base),
                            textAlign: TextAlign.left,
                          ),
                        ],
                      )
                    : Container(
                        child: Text(
                          TotoDictionary.deliveryCustomerNull,
                          style: RobotoTextStyle.s18w400(TotoTheme.text.danger),
                        ),
                      ),
                Container(
                  child: Icon(
                    TotoIcons.chevron_forward,
                    size: _iconSize,
                    color: TotoTheme.icon.gray,
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
