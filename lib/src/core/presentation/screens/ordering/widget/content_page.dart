import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toto_mobile/src/core/presentation/screens/ordering/bloc/bloc.dart';
import 'package:toto_mobile/src/core/presentation/screens/ordering/bloc/event.dart';
import 'package:toto_mobile/src/core/presentation/screens/ordering/bloc/state.dart';
import 'package:toto_mobile/src/core/presentation/screens/ordering/widget/ordering_page_address_widget.dart';
import 'package:toto_mobile/src/core/presentation/screens/ordering/widget/ordering_page_customer_widget.dart';
import 'package:toto_mobile/src/core/presentation/screens/ordering/widget/ordering_page_person_comment_widget.dart';
import 'package:toto_mobile/src/core/presentation/screens/ordering/widget/ordering_page_time_widget.dart';
import 'package:toto_mobile/src/core/presentation/widgets/buttons/rounded_button.dart';
import 'package:toto_mobile/src/core/presentation/widgets/widgets_with_animation/loader.dart';
import 'package:toto_mobile/src/extensions/TextStyle.dart';
import 'package:toto_mobile/src/resources/resources.dart';

import '../ordering.dart';

const orderingPageMarginItem = EdgeInsets.only(bottom: 4);

class OrderingContentPage extends StatelessWidget {
  static EdgeInsets _scrollViewPadding(bool isSelfService) =>
      EdgeInsets.only(bottom: 20 + ((isSelfService) ? 154 : 188));

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OrderingBloc, OrderingState>(
      builder: (context, state) {
        if (state.myCart == null) {
          return LoaderWidget();
        } else {
          return Stack(
            children: [
              Container(
                color: TotoTheme.gray,
                child: Column(
                  children: [
                    Expanded(
                      child: SingleChildScrollView(
                        padding: _scrollViewPadding(state.isSelfService),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _changedPlace(state.isSelfService),
                            OrderingPageAddressWidget(
                                addressDto: state.myCart!.deliveryAddress),
                            OrderingPageCustomerWidget(),
                            OrderingPageTimeWidget(
                              dateTime: state.dateTimes.length > 0
                                  ? state.dateTimes[state.changeDate]
                                  : null,
                              selectDate: (state.dateTimes.length > 0),
                            ),
                            OrderingPagePersonCommentWidget(),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: _buttonsWidget(context),
              ),
            ],
          );
        }
      },
    );
  }

  Widget _buttonsWidget(BuildContext context) {
    final _padding = EdgeInsets.only(
      left: 16,
      right: 16,
      bottom: 16 + MediaQuery.of(context).padding.bottom,
      top: 16,
    );
    const _minHeight = 154.0;
    const _maxHeight = 230.0;
    const _heightSizedBox = 8.0;
    const _radius = 20.0;

    return BlocBuilder<OrderingBloc, OrderingState>(
      builder: (context, state) {
        return Container(
          padding: _padding,
          constraints: BoxConstraints(
            minHeight: _minHeight,
            maxHeight: _maxHeight,
          ),
          decoration: BoxDecoration(
            color: TotoTheme.background.base,
            borderRadius: BorderRadius.vertical(top: Radius.circular(_radius)),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, -1),
                color: Colors.black38,
                spreadRadius: -3,
                blurRadius: 15,
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _textAndPrice(
                  TotoDictionary.deliveryTotalPriceOrder, state.myCart!.total),
              if (!state.myCart!.isSelfService)
                _textAndPrice(TotoDictionary.deliveryDeliveryPriceOrder,
                    (state.deliveryPrice ?? 0).toString()),
              RoundedButton(
                disabled: (state.customerPhone == null ||
                        state.customerName == null) ||
                    (state.dateTimes.length == 0) ||
                    (state.myCart!.terminalId ==
                        null), // TODO: это если не выбран был ресторан для самовывоза или доставки(нет адреса)
                onPressed: () {
                  context.read<OrderingBloc>().add(
                      OrderingEvent.onSendComment(commentControllerField.text));
                  context
                      .read<OrderingBloc>()
                      .add(OrderingEvent.onButtonPayment());
                },
                label: TotoDictionary.deliveryButtonPayOrder,
              ),
              SizedBox(
                height: _heightSizedBox,
              ),
              RoundedButton(
                onPressed: () {
                  context
                      .read<OrderingBloc>()
                      .add(OrderingEvent.onButtonCancel());
                },
                label: TotoDictionary.deliveryButtonCancelOrder,
                gray: true,
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _textAndPrice(String title, String price) {
    const _height = 34.0;
    const _padding = EdgeInsets.only(bottom: 8);

    return Container(
      padding: _padding,
      height: _height,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            maxLines: 1,
            style: RobotoTextStyle.s16w400(TotoTheme.text.base),
          ),
          Text(
            TotoDictionary.toRubles(price),
            style: RobotoTextStyle.s16w400(TotoTheme.text.base),
          ),
        ],
      ),
    );
  }

  Widget _changedPlace(bool isSelfService) {
    const _height = 57.0;
    const _padding = EdgeInsets.only(left: 16, right: 24, top: 20, bottom: 16);

    return Container(
      height: _height,
      padding: _padding,
      alignment: Alignment.centerLeft,
      child: Text(
        isSelfService
            ? TotoDictionary.pickupPlace
            : TotoDictionary.deliveryPlace,
        textAlign: TextAlign.start,
        style: RobotoTextStyle.s18w700(TotoTheme.text.base),
      ),
    );
  }
}
