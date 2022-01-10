import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toto_mobile/src/core/presentation/screens/more_detail/bloc/state.dart';
import 'package:toto_mobile/src/core/presentation/screens/order_estimation/bloc/bloc.dart';
import 'package:toto_mobile/src/core/presentation/screens/order_estimation/bloc/check_box_item.dart';
import 'package:toto_mobile/src/core/presentation/screens/order_estimation/bloc/event.dart';
import 'package:toto_mobile/src/core/presentation/screens/order_estimation/bloc/state.dart';
import 'package:toto_mobile/src/core/presentation/screens/order_estimation/view/estimation_check_box.dart';
import 'package:toto_mobile/src/core/presentation/ui/AppSnackBar.dart';
import 'package:toto_mobile/src/core/presentation/widgets/buttons/arrow_down_button.dart';
import 'package:toto_mobile/src/core/presentation/widgets/buttons/rounded_button.dart';
import 'package:toto_mobile/src/core/presentation/widgets/widgets_with_animation/loader.dart';
import 'package:toto_mobile/src/extensions/TextStyle.dart';
import 'package:toto_mobile/src/resources/regex.dart';
import 'package:toto_mobile/src/resources/resources.dart';

import 'estimation_oder_stars.dart';

class OrderEstimationPage extends StatefulWidget {
  static const id = '/orderEstimation';

  @override
  State<StatefulWidget> createState() => _OrderEstimationPageState();
}

class _OrderEstimationPageState extends State<OrderEstimationPage> {
  late bool _isOpen;
  late int? _selectedStar;
  late TextEditingController _commentControllerField;

  EstimationOrderCheckBoxList? _checkBoxList;

  // Constants

  static const _estimateAnimationDuration = 500;
  static const _estimationTitlePadding = EdgeInsets.only(top: 30);
  static const _activeButtonPadding = EdgeInsets.only(top: 60);
  static const _checkBoxPadding = EdgeInsets.all(16.0);
  static const _textFieldPadding =
      EdgeInsets.only(left: 20, right: 20, bottom: 5);
  static const _textFieldMargin = EdgeInsets.only(left: 4, right: 4);
  static const _textFieldHeight = 114.0;

  static const _textFieldMaxLength = 500;
  static const _textFieldMaxLines = 10;
  static const _textFieldMinLines = 5;

  @override
  void initState() {
    _isOpen = false;
    _selectedStar = null;
    _commentControllerField = TextEditingController();
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
      child: AnimatedContainer(
        height: _isOpen
            ? MediaQuery.of(context).size.height * 0.95
            : MediaQuery.of(context).size.height * 0.44,
        duration: Duration(milliseconds: _estimateAnimationDuration),
        child: BlocConsumer<OrderEstimationBloc, OrderEstimationState>(
          listener: (context, state) {
            switch (state.status) {
              case DataStatus.error:
                AppSnackBar.showSnackBar(TotoDictionary.error.error, context);
                context
                    .read<OrderEstimationBloc>()
                    .add(OrderEstimationEvent.errorLoading());
                break;
              default:
                break;
            }
          },
          buildWhen: (context, state) {
            switch (state.status) {
              case DataStatus.error:
                return false;
              default:
                return true;
            }
          },
          builder: (context, state) {
            switch (state.status) {
              case DataStatus.loading:
                return _getLoadingView();
              case DataStatus.success:
                return _getDataColumn(state.items, context);
              default:
                return _getDataColumn([], context);
            }
          },
        ),
      ),
    );
  }

  // Widgets

  Widget _getDataColumn(List<CheckBoxItem> items, BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ArrowDownButton(),
          Padding(
            padding: _estimationTitlePadding,
            child: Text(
              TotoDictionary.userOrderEstimationTitle,
              style: RobotoTextStyle.s24w700(TotoTheme.text.base),
              textAlign: TextAlign.center,
            ),
          ),
          EstimationOrderStars(
            selectedStar: _selectedStar,
            selectedStarHandler: (selectedStar) {
              if (selectedStar != null) {
                setState(() {
                  _isOpen = true;
                  _selectedStar = selectedStar;
                });
              }
            },
          ),
          if (_isOpen) _openOrderEstimationView(items, context),
          Container(height: MediaQuery.of(context).viewInsets.bottom),
        ],
      ),
    );
  }

  Widget _openOrderEstimationView(
      List<CheckBoxItem> items, BuildContext context) {
    _checkBoxList = EstimationOrderCheckBoxList(estimationCheckBoxItems: items);
    return Padding(
      padding: _checkBoxPadding,
      child: Column(
        children: [
          if (textBySelectedStar() != null)
            Text(
              textBySelectedStar()!,
              style: RobotoTextStyle.s18w700(TotoTheme.text.base),
              textAlign: TextAlign.center,
            ),
          if (_checkBoxList != null) _checkBoxList!,
          _getTextField(),
          _getActiveButton(context),
        ],
      ),
    );
  }

  Widget _getLoadingView() {
    return LoaderWidget();
  }

  Widget _getTextField() {
    return Container(
      margin: _textFieldMargin,
      padding: _textFieldPadding,
      height: _textFieldHeight,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
        border: Border.all(
          color: TotoTheme.input.border,
        ),
      ),
      child: TextField(
        inputFormatters: [
          FilteringTextInputFormatter.allow(RegExp(TotoRegex.orderTextField))
        ],
        maxLength: _textFieldMaxLength,
        maxLines: _textFieldMaxLines,
        minLines: _textFieldMinLines,
        controller: _commentControllerField,
        style: RobotoTextStyle.s13w400(TotoTheme.text.base),
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: TotoDictionary.userOrderEstimationCommentHint,
        ),
      ),
    );
  }

  String? textBySelectedStar() {
    if (_selectedStar == null) return null;
    if (_selectedStar! < 3) {
      return TotoDictionary.userOrderEstimationDescription1_3;
    } else if (_selectedStar == 4) {
      return TotoDictionary.userOrderEstimationDescription5;
    } else {
      return TotoDictionary.userOrderEstimationDescription4;
    }
  }

  Widget _getActiveButton(BuildContext context) {
    return Padding(
      padding: _activeButtonPadding,
      child: RoundedButton(
        label: TotoDictionary.userOrderEstimationButtonSend,
        onPressed: () => _onActiveButtonTap(context),
        hasArrow: false,
      ),
    );
  }

  void _onActiveButtonTap(BuildContext context) {
    var ids = _checkBoxList?.trueStates;
    if ((_selectedStar != null) && (ids != null)) {
      context
          .read<OrderEstimationBloc>()
          .add(OrderEstimationEvent.onEstimationOrderSend(
            _commentControllerField.value.text.toString(),
            ids,
            _selectedStar!,
          ));
    }
  }
}
