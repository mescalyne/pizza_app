import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toto_mobile/src/core/presentation/screens/order_detail/bloc/bloc.dart';
import 'package:toto_mobile/src/core/presentation/screens/order_detail/bloc/event.dart';
import 'package:toto_mobile/src/core/presentation/screens/order_detail/bloc/state.dart';
import 'package:toto_mobile/src/core/presentation/widgets/buttons/arrow_down_button.dart';
import 'package:toto_mobile/src/core/presentation/widgets/buttons/rounded_button.dart';
import 'package:toto_mobile/src/extensions/TextStyle.dart';
import 'package:toto_mobile/src/resources/resources.dart';
import 'package:toto_mobile/src/resources/svg.dart';

class RepeatOrderConfirmationModal {
  static const elevationOfModal = 10.0;
  static const _minHeight = 240.0;
  static const radiusOfModal = 20.0;
  static const _heightLogo = 60.0;
  static const _widthLogo = 68.0;
  static const _widthSizedBox = 16.0;
  static const _heightSizedBox = 12.0;
  static const _paddingContent = EdgeInsets.only(top: 30, bottom: 30);

  static EdgeInsets _padding(context) => EdgeInsets.only(
        bottom: 16 + MediaQuery.of(context).padding.bottom,
        left: 16,
        right: 16,
      );

  static Future show(BuildContext context, OrderDetailBloc bloc) {
    return showModalBottomSheet(
        isScrollControlled: true,
        elevation: elevationOfModal,
        constraints: BoxConstraints(
          minHeight: _minHeight,
          minWidth: MediaQuery.of(context).size.width,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(radiusOfModal),
            topRight: Radius.circular(radiusOfModal),
          ),
        ),
        context: context,
        builder: (BuildContext context) {
          return Container(
            decoration: BoxDecoration(
              color: TotoTheme.background.base,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(radiusOfModal),
                topRight: Radius.circular(radiusOfModal),
              ),
            ),
            padding: _padding(context),
            child: BlocConsumer<OrderDetailBloc, OrderDetailState>(
              bloc: bloc,
              listener: (context, state) {
                if (state.currentStatus == OrderDetailStatus.closeModal) {
                  Navigator.pop(context);
                }
              },
              builder: (context, state) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ArrowDownButton(),
                    Container(
                      padding: _paddingContent,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            screamerLogo,
                            height: _heightLogo,
                            width: _widthLogo,
                          ),
                          SizedBox(width: _widthSizedBox),
                          Expanded(
                            child: Text(
                              TotoDictionary.orderDetailRepeatContinueText,
                              style:
                                  RobotoTextStyle.s18w400(TotoTheme.text.base),
                            ),
                          ),
                        ],
                      ),
                    ),
                    RoundedButton(
                      label: TotoDictionary.userInfoContinue,
                      onPressed: () {
                        bloc.add(OrderDetailEvent.onRepeatOrder());
                      },
                    ),
                    SizedBox(height: _heightSizedBox),
                    RoundedButton(
                      gray: true,
                      label: TotoDictionary.deliveryButtonCancelOrder,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                );
              },
            ),
          );
        });
  }
}
