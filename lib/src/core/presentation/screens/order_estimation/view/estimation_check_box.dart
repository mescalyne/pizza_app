import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:toto_mobile/src/core/presentation/screens/order_estimation/bloc/check_box_item.dart';
import 'package:toto_mobile/src/extensions/TextStyle.dart';
import 'package:toto_mobile/src/resources/resources.dart';
import 'package:toto_mobile/src/resources/svg.dart';

class EstimationOrderCheckBoxList extends StatelessWidget {
  final List<CheckBoxItem> estimationCheckBoxItems;
  final Set<int> trueStates = {};

  EstimationOrderCheckBoxList({
    required this.estimationCheckBoxItems,
  });

  // Constants

  static const _viewPadding = EdgeInsets.only(top: 16, bottom: 16);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: _viewPadding,
      child: ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return EstimationOrderCheckBox(
            estimationCheckBoxItem: estimationCheckBoxItems[index],
            changeBoxValue: (isChecked) {
              if (isChecked) {
                trueStates.add(estimationCheckBoxItems[index].id);
              } else {
                trueStates.remove(estimationCheckBoxItems[index].id);
              }
            },
          );
        },
        itemCount: estimationCheckBoxItems.length,
      ),
    );
  }
}

class EstimationOrderCheckBox extends StatefulWidget {
  final CheckBoxItem estimationCheckBoxItem;
  final Function(bool) changeBoxValue;

  EstimationOrderCheckBox(
      {required this.estimationCheckBoxItem, required this.changeBoxValue});

  @override
  State<StatefulWidget> createState() => _EstimationOrderCheckBoxState();
}

class _EstimationOrderCheckBoxState extends State<EstimationOrderCheckBox> {
  static const _height = 40.0;
  static const _paddingBetween = EdgeInsets.only(left: 14);
  static const _margin = EdgeInsets.only(top: 4, bottom: 4);
  static const _iconSize = 24.0;
  static const _fontSize = 14.0;

  var _checkBoxValue = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: _height,
      margin: _margin,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _imageByPath(widget.estimationCheckBoxItem.imagePath),
          Padding(padding: _paddingBetween),
          Text(
            widget.estimationCheckBoxItem.text.toLowerCase(),
            textAlign: TextAlign.start,
            style: RobotoTextStyle.smallCapsFs14Fw700(
              TotoTheme.text.base,
            ),
          ),
          Spacer(),
          Checkbox(
              value: _checkBoxValue,
              onChanged: (value) {
                setState(() {
                  widget.changeBoxValue(_checkBoxValue);
                  _checkBoxValue = !_checkBoxValue;
                });
              }),
        ],
      ),
    );
  }

  Widget _imageByPath(String? imagePath) {
    if (imagePath != null) {
      return FadeInImage.assetNetwork(
        image: imagePath,
        fit: BoxFit.fitWidth,
        placeholder: placeholderPath,
        width: _iconSize,
      );
    } else {
      return Image.asset(
        placeholderPath,
        fit: BoxFit.fitWidth,
        width: _iconSize,
      );
    }
  }
}
