import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toto_mobile/src/core/presentation/entities/delivery.dart';
import 'package:toto_mobile/src/core/presentation/screens/order_detail/bloc/bloc.dart';
import 'package:toto_mobile/src/core/presentation/screens/order_detail/bloc/event.dart';
import 'package:toto_mobile/src/core/presentation/screens/order_detail/bloc/state.dart';
import 'package:toto_mobile/src/core/presentation/screens/order_detail/widget/modal/repeat_order_confirmation_modal.dart';
import 'package:toto_mobile/src/core/presentation/screens/order_detail/widget/order_detail_content_page.dart';
import 'package:toto_mobile/src/core/presentation/ui/AppSnackBar.dart';
import 'package:toto_mobile/src/core/presentation/widgets/buttons/rounded_button.dart';
import 'package:toto_mobile/src/core/presentation/widgets/widgets_with_animation/loader.dart';
import 'package:toto_mobile/src/extensions/TextStyle.dart';
import 'package:toto_mobile/src/resources/resources.dart';

class OrderDetailPage extends StatelessWidget {
  static const id = '/order_detail';

  const OrderDetailPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OrderDetailInfoPage();
  }
}

class OrderDetailInfoPage extends StatelessWidget {
  const OrderDetailInfoPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OrderDetailBloc, OrderDetailState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title:
                Text('${TotoDictionary.userOrderDetailTitle}${state.orderId}'),
            backgroundColor: TotoTheme.bg,
            foregroundColor: TotoTheme.text.base,
            titleTextStyle: RobotoTextStyle.s24w700(TotoTheme.text.base),
            elevation: 0,
          ),
          body: Container(
            child: BlocConsumer<OrderDetailBloc, OrderDetailState>(
              listener: (context, state) {
                switch (state.currentStatus) {
                  case OrderDetailStatus.error:
                    AppSnackBar.showSnackBar(
                        TotoDictionary.error.error, context);
                    context
                        .read<OrderDetailBloc>()
                        .add(OrderDetailEvent.errorLoading());
                    break;
                  default:
                    break;
                }
              },
              builder: (context, state) {
                switch (state.currentStatus) {
                  case OrderDetailStatus.viewContent:
                    return Column(
                      children: [
                        Flexible(
                          child: OrderDetailContentPage(
                            orderDetail: state.currentOrder,
                          ),
                        ),
                        //TODO: протестить, это показывать кнопки если заказ уже завершен
                        if (state.currentOrder.orderState ==
                                DeliveryOrderState.canceled ||
                            state.currentOrder.orderState ==
                                DeliveryOrderState.delivered)
                          buttons(context, state.currentOrder.orderID,
                              state.currentOrder.orderState),
                        SizedBox(
                          height: MediaQuery.of(context).padding.bottom,
                        ),
                      ],
                    );
                  default:
                    return LoaderWidget();
                }
              },
            ),
          ),
        );
      },
    );
  }

  Widget buttons(BuildContext context, orderId, progressStatus) {
    const _height = 122.0;
    const _padding = EdgeInsets.only(
      left: 16,
      right: 16,
      top: 15,
      bottom: 16,
    );
    const _widthRowStar = 90.0;
    const _starSize = 14.0;
    const _heightPaddingButton = 11.0;
    const _paddingStar = EdgeInsets.all(2);

    return Container(
      constraints: BoxConstraints(
        maxHeight: _height,
      ),
      padding: _padding,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.min,
        children: [
          RoundedButton(
            label: TotoDictionary.userOrderDetailRepeatButton,
            onPressed: () {
              RepeatOrderConfirmationModal.show(
                  context, context.read<OrderDetailBloc>());
            },
          ),
          SizedBox(
            height: _heightPaddingButton,
          ),
          (progressStatus == DeliveryOrderState.delivered)
              ? RoundedButton(
                  label: TotoDictionary.userOrderDetailEstimateButton,
                  gray: true,
                  icon: Container(
                    width: _widthRowStar,
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return Container(
                          padding: _paddingStar,
                          child: Icon(
                            TotoIcons.star,
                            color: (0 > index)
                                ? TotoTheme.icon.accent
                                : TotoTheme.icon.gray,
                            size: _starSize,
                          ),
                        );
                      },
                      itemCount: 5,
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                  onPressed: () {
                    context
                        .read<OrderDetailBloc>()
                        .add(OrderDetailEvent.onEstimationOrder(orderId));
                  },
                )
              : Container(),
        ],
      ),
    );
  }
}
