import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:toto_mobile/src/core/presentation/entities/payment_info.dart';
import 'package:toto_mobile/src/extensions/TextStyle.dart';
import 'package:toto_mobile/src/resources/resources.dart';
import 'package:toto_mobile/src/resources/svg.dart';
import 'package:toto_mobile/src/utils/validator.dart';

class PaymentTypeWidget extends StatefulWidget {
  final List<PaymentType> possiblePaymentTypes;
  final Function(PaymentTypeContent) chooseTypeCallback;
  int? totalPrice;
  late List<_PaymentTypeCell> cellList;

  PaymentTypeWidget(
      {required this.possiblePaymentTypes,
      required this.chooseTypeCallback,
      this.totalPrice});

  PaymentTypeWidget copyWith({
    List<PaymentType>? possiblePaymentTypes,
    Function(PaymentTypeContent)? chooseTypeCallback,
    int? totalPrice,
  }) {
    return PaymentTypeWidget(
      possiblePaymentTypes: possiblePaymentTypes ?? this.possiblePaymentTypes,
      chooseTypeCallback: chooseTypeCallback ?? this.chooseTypeCallback,
      totalPrice: totalPrice ?? this.totalPrice,
    );
  }

  @override
  State<StatefulWidget> createState() {
    createList();
    return PaymentTypeWidgetState(cellList: cellList);
  }

  void createList() {
    List<_PaymentTypeCell> list = [];
    for (var i in possiblePaymentTypes) {
      if (i == PaymentType.cart) {
        var content = CartTypeContent();
        content.type = PaymentType.externalCart;
        var cell = _PaymentTypeCell(
            isActive: true, content: content, totalPrice: totalPrice);
        list.add(cell);
      } else {
        var content = CashTypeContent();
        content.type = PaymentType.cash;
        content.withoutShortChange = false;
        content.shortChange = null;
        var cell = _PaymentTypeCell(
            isActive: false, content: content, totalPrice: totalPrice);
        list.add(cell);
      }
    }
    cellList = list;
  }
}

class PaymentTypeWidgetState extends State<PaymentTypeWidget> {
  final List<_PaymentTypeCell> cellList;

  PaymentTypeWidgetState({required this.cellList});

  // Sizes

  static const _containerPadding =
      EdgeInsets.only(left: 16, top: 20, bottom: 8);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: _containerPadding,
            child: Text(
              TotoDictionary.choosePaymentType,
              style: RobotoTextStyle.s18w700(Colors.black),
              textAlign: TextAlign.start,
            ),
          ),
          ListView.builder(
            itemCount: widget.possiblePaymentTypes.length,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return InkWell(
                child: cellList[index].copyWith(),
                onTap: () => _setActiveCell(index),
              );
            },
          ),
        ],
      ),
    );
  }

  void _setActiveCell(int index) {
    for (var i in cellList) {
      i.isActive = false;
    }
    setState(() {
      cellList[index].isActive = true;
      print(index);
      widget.chooseTypeCallback(cellList[index].content);
    });
  }
}

class _PaymentTypeCell extends StatefulWidget {
  bool isActive;
  PaymentTypeContent content;
  int? totalPrice;

  _PaymentTypeCell(
      {required this.isActive,
      required this.content,
      required this.totalPrice});

  _PaymentTypeCell copyWith({
    bool? isActive,
    PaymentTypeContent? content,
    int? totalPrice,
  }) {
    return _PaymentTypeCell(
      isActive: isActive ?? this.isActive,
      content: content ?? this.content,
      totalPrice: totalPrice ?? this.totalPrice,
    );
  }

  @override
  State<_PaymentTypeCell> createState() => _PaymentTypeCellState();
}

class _PaymentTypeCellState extends State<_PaymentTypeCell> {
  bool _withoutShortChange = false;
  late TextEditingController _withoutShortChangeController;
  late MaskTextInputFormatter _textFormatter;

  // Sizes

  static const _checkBoxMargin = EdgeInsets.only(top: 4, bottom: 4);
  static const _checkBoxLeftPadding = EdgeInsets.only(left: 16);
  static const _checkBoxTopPadding = EdgeInsets.only(top: 16);
  static const _checkBoxTextPadding = EdgeInsets.symmetric(horizontal: 12);
  static const _cashOutPadding = EdgeInsets.only(left: 52);

  static const _minActiveHeight = 162.0;
  static const _maxActiveHeight = 180.0;
  static const _minInactiveHeight = 56.0;
  static const _maxInactiveHeight = 70.0;

  String? get _errorText {
    final text = _withoutShortChangeController.value.text;
    if (text.isEmpty) {
      return null;
    } else if (widget.totalPrice != null &&
        int.parse(text) < widget.totalPrice!) {
      return TotoDictionary.minimumCash;
    }
    return null;
  }

  @override
  void initState() {
    _withoutShortChangeController = TextEditingController();
    _textFormatter = StaticValidators.bonusValidator(100000);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    switch (widget.content.type) {
      case PaymentType.cash:
        return (widget.isActive) ? _activeCashRow() : _checkBoxRow();
      default:
        return _checkBoxRow();
    }
  }

  Widget _checkBoxRow() {
    return Container(
      constraints: BoxConstraints(
        minHeight: 56,
        maxHeight: 70,
      ),
      color: TotoTheme.bg,
      margin: _checkBoxMargin,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: _checkBoxLeftPadding,
            child: Image.asset(
              (widget.isActive ? checkBoxActive : checkBoxInactive),
              width: 24,
              fit: BoxFit.fitWidth,
            ),
          ),
          Padding(
            padding: _checkBoxTextPadding,
            child: Text(
              textByType(widget.content.type),
              style: RobotoTextStyle.smallCapsFs16Fw500(TotoTheme.text.base),
            ),
          )
        ],
      ),
    );
  }

  Widget _activeCashRow() {
    return Container(
      constraints: BoxConstraints(
        minHeight: widget.isActive ? _minActiveHeight : _minInactiveHeight,
        maxHeight: widget.isActive ? _maxActiveHeight : _maxInactiveHeight,
      ),
      margin: _checkBoxMargin,
      color: TotoTheme.bg,
      child: Padding(
        padding: _checkBoxTopPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: _checkBoxLeftPadding,
                  child: Image.asset(
                    (widget.isActive ? checkBoxActive : checkBoxInactive),
                    width: 24,
                    fit: BoxFit.fitWidth,
                  ),
                ),
                Padding(
                  padding: _checkBoxTextPadding,
                  child: Text(
                    textByType(widget.content.type),
                    style: RobotoTextStyle.smallCapsFs16Fw500(TotoTheme.text.base),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(padding: _cashOutPadding),
                Text(
                  TotoDictionary.noCashOut,
                  textAlign: TextAlign.start,
                  style: RobotoTextStyle.s14w400(
                    TotoTheme.text.base,
                  ),
                ),
                Checkbox(
                    value: _withoutShortChange,
                    onChanged: (value) {
                      setState(() {
                        if (value != null) {
                          _withoutShortChange = value;
                          (widget.content as CashTypeContent)
                              .withoutShortChange = value;
                        }
                      });
                    }),
              ],
            ),
            Padding(
              padding: _cashOutPadding,
              child: Text(
                TotoDictionary.prepareCashOut,
                style: RobotoTextStyle.s13w300(TotoTheme.primaryDark),
                textAlign: TextAlign.start,
              ),
            ),
            ValueListenableBuilder(
              valueListenable: _withoutShortChangeController,
              builder: (BuildContext context, TextEditingValue value,
                  Widget? child) {
                return Padding(
                  padding: const EdgeInsets.only(left: 52, top: 4),
                  child: Container(
                    constraints: BoxConstraints(
                      minHeight: 40,
                      maxWidth: 90,
                    ),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      inputFormatters: [_textFormatter],
                      onChanged: (text) => {
                        setState(() {
                          (widget.content as CashTypeContent).shortChange =
                              int.parse(text);
                        }),
                      },
                      style: TextStyle(fontSize: 14),
                      controller: _withoutShortChangeController,
                      decoration: _CashFieldInputDecorator(
                          TotoDictionary.sum, true, _errorText),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  String textByType(PaymentType type) {
    switch (type) {
      case PaymentType.cart:
        return TotoDictionary.cartType;
      case PaymentType.externalCart:
        return TotoDictionary.externalCartType;
      case PaymentType.cash:
        return TotoDictionary.cashType;
      default:
        return TotoDictionary.cashType;
    }
  }
}

class _CashFieldInputDecorator extends InputDecoration {
  static const _heightMinRow = 40.0;

  static InputBorder _inputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(_heightMinRow)),
      borderSide: BorderSide(color: TotoTheme.input.border));

  _CashFieldInputDecorator(String name, bool canEdit, String? error)
      : super(
          isDense: true,
          enabledBorder: _inputBorder,
          focusedBorder: _inputBorder,
          border: _inputBorder,
          hintText: name,
          errorText: error,
        );
}
