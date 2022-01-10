import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:toto_mobile/src/core/presentation/widgets/buttons/rounded_button.dart';
import 'package:toto_mobile/src/core/presentation/widgets/slider/toto_slider.dart';
import 'package:toto_mobile/src/extensions/TextStyle.dart';
import 'package:toto_mobile/src/resources/resources.dart';
import 'package:toto_mobile/src/utils/validator.dart';

class BonusSlider extends StatefulWidget {
  final int bonusCount;
  final int orderPrice;
  final Function(bool, int) useBonusSumButtonAction;

  BonusSlider({
    required this.bonusCount,
    required this.orderPrice,
    required this.useBonusSumButtonAction,
  });

  @override
  State<StatefulWidget> createState() => BonusSliderState();
}

class BonusSliderState extends State<BonusSlider> {
  late double _bonusCurrentValue;
  late TextEditingController _bonusValueTextController;
  late bool _bonusSumIsUsed;

  late MaskTextInputFormatter _textFormatter;

  // Sizes

  static const _containerPadding = EdgeInsets.only(left: 16, right: 16, top: 16);
  static const _textPadding = EdgeInsets.only(left: 16, right: 16, top: 22);
  static const _minHeight = 200.0;
  static const _maxHeight = 300.0;

  @override
  void initState() {
    _bonusCurrentValue = 0.0;
    _bonusValueTextController = TextEditingController();
    _bonusValueTextController.text = _bonusCurrentValue.round().toString();
    _bonusSumIsUsed = false;
    _textFormatter = StaticValidators.bonusValidator(widget.bonusCount);
    super.initState();
  }

  @override
  void dispose() {
    _bonusValueTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: TotoTheme.bg,
      alignment: AlignmentDirectional.bottomStart,
      constraints: BoxConstraints(minHeight: _minHeight, maxHeight: _maxHeight),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: _containerPadding,
            child: Text(
              TotoDictionary.availableBonus,
              style: RobotoTextStyle.s18w700(TotoTheme.text.base),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 22),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 16),
                  child: Icon(
                    TotoIcons.botonus,
                    color: TotoTheme.accent,
                  ),
                ),
                SizedBox(
                  width: 12,
                ),
                Text(
                  (widget.bonusCount.toString() + '  ' + TotoDictionary.totonus)
                      .toUpperCase(),
                  style: RobotoTextStyle.s18w700(TotoTheme.text.primaryDark),
                ),
              ],
            ),
          ),
          Padding(
            padding: _textPadding,
            child: Text(
              TotoDictionary.permittedBonusSum,
              style: RobotoTextStyle.s13w300(TotoTheme.text.base),
            ),
          ),
          Padding(
            padding: _textPadding,
            child: Row(
              children: [
                Container(
                  alignment: AlignmentDirectional.center,
                  constraints: BoxConstraints(
                    minHeight: 40,
                    maxWidth: 70,
                  ),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    onChanged: (text) => {
                      setState(() {
                        if (text.isEmpty) {
                          _bonusCurrentValue = 0;
                        }
                        else if (int.parse(text) > _avgBonus()) {
                          _bonusCurrentValue = 1;
                        } else {
                          _bonusCurrentValue = double.parse(text) / _avgBonus();
                        }
                      }),
                    },
                    inputFormatters: [_textFormatter],
                    style: TextStyle(fontSize: 14),
                    controller: _bonusValueTextController,
                    decoration: _SliderFieldInputDecorator(TotoDictionary.scores, true),
                  ),
                ),
                Spacer(),
                SliderWidget(
                  max: _avgBonus(),
                  min: 0,
                  sliderHeight: 48,
                  currentValue: _bonusCurrentValue,
                  onChangeSliderValue: (value) =>
                      {_changeBonusCurrentValue(value)},
                ),
              ],
            ),
          ),
          _buttonWithState(),
        ],
      ),
    );
  }

  // Widgets
  Widget _buttonWithState() {
    return Padding(
      padding: _textPadding,
      child: RoundedButton(
        onPressed: () {
          setState(() {
            _bonusSumIsUsed = !_bonusSumIsUsed;
            widget.useBonusSumButtonAction(
                _bonusSumIsUsed, (_avgBonus() * _bonusCurrentValue).round());
          });
        },
        label: _bonusSumIsUsed
            ? TotoDictionary.deliveryButtonCancelOrder
            : TotoDictionary.useBonusSum,
        gray: _bonusSumIsUsed ? true : false,
      ),
    );
  }

  void _changeBonusCurrentValue(double value) {
    setState(() {
      _bonusCurrentValue = value;
      _bonusSumIsUsed = false;
      _bonusValueTextController.text = (_avgBonus() * value).round().toString();
    });
  }

  int _avgBonus() {
    if (widget.bonusCount <= widget.orderPrice * 0.5) {
      return widget.bonusCount;
    }
    return (widget.orderPrice * 0.5).round();
  }
}

class _SliderFieldInputDecorator extends InputDecoration {
  static const _heightMinRow = 40.0;

  static InputBorder _inputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(_heightMinRow)),
      borderSide: BorderSide(color: TotoTheme.input.border));

  _SliderFieldInputDecorator(String name, bool canEdit)
      : super(
          isDense: true,
          enabledBorder: _inputBorder,
          focusedBorder: _inputBorder,
          border: _inputBorder,
          hintText: name,
        );
}
