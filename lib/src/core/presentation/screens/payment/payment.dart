import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toto_mobile/src/core/presentation/entities/payment_info.dart';
import 'package:toto_mobile/src/core/presentation/screens/payment/bloc/event.dart';
import 'package:toto_mobile/src/core/presentation/screens/payment/widgets/bonus_slider.dart';
import 'package:toto_mobile/src/core/presentation/screens/payment/widgets/payment_type.dart';
import 'package:toto_mobile/src/core/presentation/ui/AppSnackBar.dart';
import 'package:toto_mobile/src/core/presentation/widgets/buttons/rounded_button.dart';
import 'package:toto_mobile/src/core/presentation/widgets/empty_order_view.dart';
import 'package:toto_mobile/src/core/presentation/widgets/widgets_with_animation/loader.dart';
import 'package:toto_mobile/src/extensions/TextStyle.dart';
import 'package:toto_mobile/src/resources/dictionary.dart';
import 'package:toto_mobile/src/resources/resources.dart';
import 'package:toto_mobile/src/resources/svg.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'bloc/bloc.dart';
import 'bloc/state.dart';

class PaymentPage extends StatefulWidget {
  static const id = '/payment';

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  int _usedBonus = 0;

  PaymentTypeWidget? _paymentTypeWidget;
  String _activeButtonTitle = TotoDictionary.fullBucketPrice;

  static const _successWebpage =
      'https://3dsec.sberbank.ru/sbersafe/anonymous/order/finishTds';
  static const _failureWebpage =
      'https://3dsec.sberbank.ru/sbersafe/anonymous/order/finishTds';

  // Sizes

  static const _listPadding = EdgeInsets.only(top: 20);
  static const _topTextPadding = EdgeInsets.only(
      left: 16, right: 16, top: 20, bottom: 6);
  static const _textPadding = EdgeInsets.only(
      left: 16, right: 16, top: 6, bottom: 6);

  @override
  void initState() {
    _paymentTypeWidget = PaymentTypeWidget(
        possiblePaymentTypes: [PaymentType.cart, PaymentType.cash],
        chooseTypeCallback: (type) => {
              print(type),
              setState(() {
                if (type is CashTypeContent) {
                  _activeButtonTitle = TotoDictionary.toKitchen;
                } else {
                  _activeButtonTitle = TotoDictionary.fullBucketPrice;
                }
              }),
            });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        backgroundColor: TotoTheme.gray,
        appBar: AppBar(
          title: Text(TotoDictionary.payment),
          backgroundColor: TotoTheme.bg,
          foregroundColor: TotoTheme.text.base,
          titleTextStyle: RobotoTextStyle.titleTextStyle(),
        ),
        body: BlocConsumer<PaymentBloc, PaymentState>(
          listener: (context, state) {
            switch (state.status) {
              case PaymentStatus.error:
                AppSnackBar.showSnackBar(TotoDictionary.error.error, context);
                break;
              default:
                break;
            }
          },
          builder: (context, state) {
            switch (state.status) {
              case PaymentStatus.loading:
                return _loadingView();
              case PaymentStatus.success:
                if (state.paymentInfo?.orderPrice != null) {
                  return _dataView(
                      state.bonusCount,
                      state.paymentInfo!.orderPrice,
                      state.paymentInfo?.deliveryPrice,
                      context);
                }
                return _errorView();
              case PaymentStatus.webView:
                return _webView(state.urlPath!, context);
              case PaymentStatus.resultSuccess:
                return _resultView(true, context);
              case PaymentStatus.resultFailure:
                return _resultView(false, context);
              case PaymentStatus.kitchenSuccess:
                return _kitchenResultView(context);
              default:
                return _errorView();
            }
          },
        ),
      ),
    );
  }

  void _webViewStarted(String page, BuildContext context) {
    print(page);
    if (page.contains(_successWebpage)) {
      context.read<PaymentBloc>().add(PaymentEvent.showResult(true));
    }
    else if (page.contains(_failureWebpage)) {
      context.read()<PaymentBloc>().add(PaymentEvent.showResult(false));
    }
  }

  void _toMenu(BuildContext context) {
    context.read<PaymentBloc>().add(PaymentEvent.cancelOrder());
  }

  void _reSendPayment(BuildContext context) {
    if (_paymentTypeWidget != null) {
      for (var widget in _paymentTypeWidget!.cellList) {
        if (widget.isActive) {
          context
              .read<PaymentBloc>()
              .add(PaymentEvent.payment(widget.content, _usedBonus));
        }
      }
    }
  }

  Widget _webView(String url, BuildContext context) {
    return WebView(
      initialUrl: url,
      onPageStarted: (page) {
        _webViewStarted(page, context);
      },
      javascriptMode: JavascriptMode.unrestricted,
      gestureNavigationEnabled: true,
    );
  }

  Widget _loadingView() {
    return Scaffold(body: LoaderWidget());
  }

  Widget _errorView() {
    return Container(
      child: Center(
        child: Text(
          TotoDictionary.error.dataError,
          style: RobotoTextStyle.s15w500(TotoTheme.text.primaryDark),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  Widget _resultView(bool isSuccess, BuildContext context) {
    return EmptyOrderView(
        buttonAction: () {
          isSuccess ? _toMenu(context) : _reSendPayment(context);
        },
        buttonText: isSuccess ? TotoDictionary.paymentToMenu : TotoDictionary.paymentRepeatTry,
        messageText: isSuccess
            ? TotoDictionary.paymentIsSuccess
            : TotoDictionary.paymentIsFailure,
        imagePath: isSuccess ? screamerSuccess : screamerLogo);
  }

  Widget _kitchenResultView(BuildContext context) {
    return EmptyOrderView(
        buttonAction: () {
          _toMenu(context);
        },
        buttonText: TotoDictionary.paymentToMenu,
        messageText: TotoDictionary.orderIsAccept,
        imagePath: screamerSuccess);
  }

  Widget _dataView(int? _bonusCount, int _orderPrice, String? deliveryPrice,
      BuildContext context) {
    return Column(
      children: [
        Container(
          child: Expanded(
            child: ListView(
              children: [
                if (_bonusCount != null && _bonusCount > 0)
                  Padding(
                    padding: _listPadding,
                    child: BonusSlider(
                      bonusCount: _bonusCount,
                      orderPrice: _orderPrice,
                      useBonusSumButtonAction: (result, value) =>
                          _useBonusSumButtonAction(result, value),
                    ),
                  ),
                if (_paymentTypeWidget != null) _paymentTypeWidget!,
                Padding(
                  padding: _topTextPadding,
                  child: Row(
                    children: [
                      Text(
                        TotoDictionary.deliveryTotalPriceOrder,
                        style: RobotoTextStyle.s16w400(Colors.black),
                      ),
                      Spacer(),
                      Text(TotoDictionary.toRubles(_orderPrice.toString()),
                          style: RobotoTextStyle.s16w400(Colors.black)),
                    ],
                  ),
                ),
                if (deliveryPrice != null)
                  Padding(
                    padding: _textPadding,
                    child: Row(
                      children: [
                        Text(
                          TotoDictionary.deliveryDeliveryPriceOrder,
                          style: RobotoTextStyle.s16w400(Colors.black),
                        ),
                        Spacer(),
                        Text(
                            deliveryPrice == '0'
                                ? TotoDictionary.freeDelivery
                                : TotoDictionary.toRubles(deliveryPrice),
                            style: RobotoTextStyle.s16w400(Colors.black)),
                      ],
                    ),
                  ),
                if (_usedBonus != 0)
                  Padding(
                    padding: _textPadding,
                    child: Row(
                      children: [
                        Text(
                          TotoDictionary.bonusPayment,
                          style: RobotoTextStyle.s16w400(Colors.black),
                        ),
                        Spacer(),
                        Text(TotoDictionary.toRubles(_usedBonus.toString()),
                            style: RobotoTextStyle.s16w400(Colors.black)),
                      ],
                    ),
                  ),
                Padding(
                  padding: _textPadding,
                  child: Row(
                    children: [
                      Text(
                        TotoDictionary.totalCost,
                        style: RobotoTextStyle.s16w700(Colors.black),
                      ),
                      Spacer(),
                      Text(
                          TotoDictionary.toRubles((_usedBonus != 0
                                  ? (_orderPrice - _usedBonus)
                                  : _orderPrice)
                              .toString()),
                          style: RobotoTextStyle.s16w700(Colors.black)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        _buttonsWidget(context, _orderPrice),
      ],
    );
  }

  Widget _buttonsWidget(BuildContext context, int _orderPrice) {
    final _padding = EdgeInsets.only(
      left: 16,
      right: 16,
      bottom: 0,
      top: 16,
    );
    const _minHeight = 120.0;
    const _maxHeight = 200.0;
    const _heightSizedBox = 8.0;
    const _radius = 20.0;

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
          RoundedButton(
            onPressed: () {
              if (_paymentTypeWidget != null) {
                for (var widget in _paymentTypeWidget!.cellList) {
                  if (widget.isActive) {
                    context
                        .read<PaymentBloc>()
                        .add(PaymentEvent.payment(widget.content, _usedBonus));
                  }
                }
              }
            },
            label: _activeButtonTitle,
          ),
          SizedBox(
            height: _heightSizedBox,
          ),
          RoundedButton(
            onPressed: () {
              context.read<PaymentBloc>().add(PaymentEvent.cancelOrder());
            },
            label: TotoDictionary.deliveryButtonCancelOrder,
            gray: true,
          ),
        ],
      ),
    );
  }

  void _useBonusSumButtonAction(bool isUsed, int value) {
    setState(() {
      if (isUsed) {
        _usedBonus = value;
      } else {
        _usedBonus = 0;
      }
    });
  }
}
