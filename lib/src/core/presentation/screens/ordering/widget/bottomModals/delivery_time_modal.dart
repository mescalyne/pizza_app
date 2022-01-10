import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toto_mobile/src/core/presentation/screens/ordering/bloc/bloc.dart';
import 'package:toto_mobile/src/core/presentation/screens/ordering/bloc/event.dart';
import 'package:toto_mobile/src/core/presentation/screens/ordering/bloc/state.dart';
import 'package:toto_mobile/src/core/presentation/widgets/buttons/arrow_down_button.dart';
import 'package:toto_mobile/src/core/presentation/widgets/buttons/rounded_button.dart';
import 'package:toto_mobile/src/core/presentation/widgets/widgets_with_animation/loader.dart';
import 'package:toto_mobile/src/extensions/DateTime.dart';
import 'package:toto_mobile/src/extensions/TextStyle.dart';
import 'package:toto_mobile/src/resources/resources.dart';

abstract class DeliveryTimeModal {
  static const elevationOfModal = 10.0;
  static const radiusOfModal = 20.0;
  static EdgeInsets _padding(context) => EdgeInsets.only(
        bottom: 40 + MediaQuery.of(context).padding.bottom,
        left: 16,
        right: 16,
      );
  static const _minHeight = 200.0;
  static const _maxHeight = 350.0;
  static const _heightListTimes = 41.0;
  static const _paddingTitle =
      EdgeInsets.only(top: 16, bottom: 16, left: 4, right: 4);
  static const _paddingListTimes = EdgeInsets.only(bottom: 16);
  static const _widthTimeElement = 84.0;
  static const _widthTimeElementNull = 184.0;

  static ScrollController dateTimeListController = ScrollController();

  static EdgeInsets _paddingListView(context, bool isNull) => EdgeInsets.only(
        left: (MediaQuery.of(context).size.width / 2) -
            16 -
            (((isNull) ? _widthTimeElementNull : _widthTimeElement) / 2),
        right: (MediaQuery.of(context).size.width / 2) -
            16 -
            (_widthTimeElement / 2),
      );

  static double _offsetTo(BuildContext context, bool isNull, int index) {
    double offset = (MediaQuery.of(context).size.width / 2) - 16;
    EdgeInsets paddingList = _paddingListView(context, isNull);
    offset -= paddingList.left;
    if (index > 0) {
      offset += _widthTimeElement / 2;
      offset += _widthTimeElement * (index - 1);
    } else {
      offset -= (isNull ? _widthTimeElementNull : _widthTimeElement) / 2;
    }
    return (offset < 0) ? 0.0 : offset;
  }

  static Future show(BuildContext context, OrderingBloc bloc) {
    return showModalBottomSheet(
      isScrollControlled: true,
      elevation: elevationOfModal,
      constraints: BoxConstraints(
        minHeight: _minHeight,
        maxHeight: _maxHeight,
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
          child: BlocConsumer<OrderingBloc, OrderingState>(
            listener: (context, state) {
              if (state.closingModal == true) {
                Navigator.pop(context);
              }
              if (state.scrollingListDate) {
                if (dateTimeListController.hasClients) {
                  dateTimeListController.animateTo(
                    _offsetTo(context, (state.dateTimes[0] == null),
                        state.changeDate),
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeIn,
                  );
                }
              }
            },
            bloc: bloc,
            builder: (context, state) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ArrowDownButton(),
                  Container(
                    padding: _paddingTitle,
                    alignment: Alignment.centerLeft,
                    child: Text(
                      TotoDictionary.deliveryDeliveryTimerTitle,
                      style: RobotoTextStyle.s18w700(TotoTheme.text.base),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Container(
                    padding: _paddingListTimes,
                    child: (state.loadingTimesList)
                        ? LoaderWidget()
                        : Container(
                            height: _heightListTimes,
                            child: ListView.builder(
                              controller: dateTimeListController,
                              padding: _paddingListView(
                                  context, (state.dateTimes[0] == null)),
                              scrollDirection: Axis.horizontal,
                              itemCount: state.dateTimes.length,
                              itemBuilder: (context, index) {
                                return timeListElement(state.changeDate,
                                    state.dateTimes[index], index, bloc);
                              },
                            ),
                          ),
                  ),
                  RoundedButton(
                    onPressed: () {
                      bloc.add(OrderingEvent.onSendChangedDate());
                    },
                    label: TotoDictionary.deliveryButtonDone,
                  )
                ],
              );
            },
          ),
        );
      },
    );
  }

  static Widget timeListElement(
      int changeDate, DateTime? time, int index, OrderingBloc bloc) {
    const _padding = EdgeInsets.only(left: 20, top: 10, right: 20, bottom: 10);
    const _radius = 20.0;

    return InkWell(
      onTap: () {
        bloc.add(OrderingEvent.onChangeDate(index));
      },
      child: Container(
        padding: _padding,
        height: _heightListTimes,
        width: (time == null) ? _widthTimeElementNull : _widthTimeElement,
        child: Text(
          time == null
              ? TotoDictionary.deliveryFaster.toLowerCase()
              : DateTimeExtension.getTimeByDate(time).toLowerCase(),
          style: RobotoTextStyle.smallCapsFs16Fw500((changeDate == index)
              ? TotoTheme.lightGreenGrayText
              : TotoTheme.text.base),
        ),
        decoration: (changeDate == index)
            ? BoxDecoration(
                borderRadius: BorderRadius.circular(_radius),
                border: Border.all(color: TotoTheme.primary, width: 1))
            : null,
      ),
    );
  }
}
