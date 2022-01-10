import 'dart:async';

import 'package:flutter/material.dart';
import 'package:toto_mobile/src/core/presentation/entities/delivery.dart';
import 'package:toto_mobile/src/core/presentation/entities/delivery_detail.dart';
import 'package:toto_mobile/src/extensions/DateTime.dart';
import 'package:toto_mobile/src/extensions/String.dart';
import 'package:toto_mobile/src/extensions/TextStyle.dart';
import 'package:toto_mobile/src/resources/resources.dart';
import 'package:toto_mobile/src/resources/svg.dart';

class DeliveryRow extends StatefulWidget {
  final DeliveryDetailData cellData;

  DeliveryRow(this.cellData);

  @override
  State<StatefulWidget> createState() => _DeliveryRowState();
}

class _DeliveryRowState extends State<DeliveryRow> {
  Timer? _timer;
  String _time = '00:00';

  List<String> orderStatusText = [
    TotoDictionary.orderDetailDeliveredStatusAdopted,
    TotoDictionary.orderDetailDeliveredStatusPrepare,
    TotoDictionary.orderDetailDeliveredStatusGiven,
    TotoDictionary.orderDetailDeliveredStatusDelivered,
  ];

  // Constants
  static const _ordersStatusPadding = EdgeInsets.only(top: 40, bottom: 40);
  static const _paddingPlaceholder =
      EdgeInsets.only(left: 36, right: 36, top: 20);
  static const _imageSize = 24.0;
  static const _imageSizeIcon = 30.0;
  static const _borderContainerSize = 4.0;
  static const __expectedDeliveryTimePadding = EdgeInsets.only(top: 11);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _orderTimer(),
        _orderStatus(),
        if (_orderDeliveryInfo() != null) _orderDeliveryInfo()!,
      ],
    );
  }

  @override
  void initState() {
    _startTimer();
    super.initState();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  Widget _orderTimer() {
    return Center(
      child: Text(
        _time,
        style: RobotoTextStyle.s36w700(TotoTheme.textPrimaryDart),
      ),
    );
  }

  void _startTimer() async {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(oneSec, (timer) {
      if (widget.cellData.orderState == DeliveryOrderState.canceled ||
          widget.cellData.orderState == DeliveryOrderState.delivered) {
        _timer?.cancel();
        return;
      }
      var nowTime = DateTime.now();
      var deliveryTime = widget.cellData.createdTime;
      if (deliveryTime == null) {
        _timer?.cancel();
        return;
      }
      var timeDifference = nowTime.difference(deliveryTime);
      setState(() {
        if (!timeDifference.isNegative) {
          _time = StringExtension.durationToString(timeDifference);
        }
      });
    });
  }

  Widget _orderStatus() {
    return Padding(
      padding: _ordersStatusPadding,
      child: Stack(
        children: [
          Container(
            padding: _paddingPlaceholder,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _placeholderContainer(0),
                _placeholderContainer(1),
                _placeholderContainer(2),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _imageByIndex(0),
              _imageByIndex(1),
              _imageByIndex(2),
              _imageByIndex(3),
            ],
          ),
        ],
      ),
    );
  }

  Widget _placeholderContainer(int elementIndex) {
    return Expanded(
      child: Container(
        height: _borderContainerSize,
        color: _colorByState(elementIndex),
      ),
    );
  }

  Widget _imageByIndex(int elementIndex) {
    const _height = 75.0;
    const _heightText = 32.0;
    const _widthText = 72.0;

    return Container(
      height: _height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(child: _imageByState(elementIndex)),
          Container(
            width: _widthText,
            height: _heightText,
            alignment: Alignment.topCenter,
            child: Text(
              orderStatusText[elementIndex],
              textAlign: TextAlign.center,
              maxLines: 2,
              style: RobotoTextStyle.s14w400(TotoTheme.text.base),
            ),
          ),
        ],
      ),
    );
  }

  Widget? _orderDeliveryInfo() {
    DateTime? dateTime =
        (widget.cellData.orderState == DeliveryOrderState.delivered)
            ? widget.cellData.actualTime
            : widget.cellData.deliveryDate;
    if (dateTime == null) return null;
    return Column(
      children: [
        Text(
          (widget.cellData.orderState == DeliveryOrderState.delivered)
              ? TotoDictionary.expectedDelivered
              : TotoDictionary.expectedDeliveryTime,
          style: RobotoTextStyle.s16w500(TotoTheme.textBase),
        ),
        Padding(
          padding: __expectedDeliveryTimePadding,
          child: Text(
            (widget.cellData.orderState == DeliveryOrderState.delivered)
                ? DateTimeExtension.getTimeByDate(dateTime)
                : '${StringExtension.dateTimeWithInterval(dateTime)}',
            style: RobotoTextStyle.s18w700(TotoTheme.textPrimaryDart),
          ),
        ),
      ],
    );
  }

  Color _colorByState(int elementIndex) {
    switch (widget.cellData.orderState) {
      case DeliveryOrderState.adopted:
        return TotoTheme.textDisabled;
      case DeliveryOrderState.prepare:
        switch (elementIndex) {
          case 0:
            return TotoTheme.textPrimaryDart;
          default:
            return TotoTheme.textDisabled;
        }
      case DeliveryOrderState.given:
        switch (elementIndex) {
          case 0:
            return TotoTheme.textPrimaryDart;
          case 1:
            return TotoTheme.textPrimaryDart;
          default:
            return TotoTheme.textDisabled;
        }
      default:
        return TotoTheme.textPrimaryDart;
    }
  }

  Widget _imageByState(int elementIndex) {
    var image;
    switch (widget.cellData.orderState) {
      case DeliveryOrderState.adopted:
        switch (elementIndex) {
          case 0:
            image = icLogoMain;
            break;
          default:
            image = ellipse;
            break;
        }
        break;
      case DeliveryOrderState.prepare:
        switch (elementIndex) {
          case 0:
            image = ellipseGreen;
            break;
          case 1:
            image = icLogoMain;
            break;
          default:
            image = ellipse;
            break;
        }
        break;
      case DeliveryOrderState.given:
        switch (elementIndex) {
          case 0:
            image = ellipseGreen;
            break;
          case 1:
            image = ellipseGreen;
            break;
          case 2:
            image = icLogoMain;
            break;
          default:
            image = ellipse;
            break;
        }
        break;
      case DeliveryOrderState.delivered:
        switch (elementIndex) {
          case 3:
            image = icLogoMain;
            break;
          default:
            image = ellipseGreen;
            break;
        }
        break;
      case DeliveryOrderState.canceled:
        image = ellipse;
        break;
    }
    return Image.asset(
      image,
      fit: BoxFit.fitWidth,
      width: (image == icLogoMain) ? _imageSizeIcon : _imageSize,
    );
  }
}
