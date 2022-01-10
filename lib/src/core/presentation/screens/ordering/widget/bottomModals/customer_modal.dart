import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toto_mobile/src/core/presentation/screens/ordering/bloc/bloc.dart';
import 'package:toto_mobile/src/core/presentation/screens/ordering/bloc/event.dart';
import 'package:toto_mobile/src/core/presentation/screens/ordering/bloc/state.dart';
import 'package:toto_mobile/src/core/presentation/widgets/buttons/arrow_down_button.dart';
import 'package:toto_mobile/src/core/presentation/widgets/buttons/rounded_button.dart';
import 'package:toto_mobile/src/core/presentation/widgets/input/input.dart';
import 'package:toto_mobile/src/core/presentation/widgets/input/phoneInput.dart';
import 'package:toto_mobile/src/extensions/TextStyle.dart';
import 'package:toto_mobile/src/resources/resources.dart';
import 'package:toto_mobile/src/utils/validator.dart';

abstract class CustomerModal {
  static final TextEditingController _nameController = TextEditingController();
  static final TextEditingController _phoneController = TextEditingController();

  static const elevationOfModal = 10.0;
  static const radiusOfModal = 20.0;
  static EdgeInsets _padding(context) => EdgeInsets.only(
        bottom: 16 +
            MediaQuery.of(context).viewInsets.bottom +
            MediaQuery.of(context).padding.bottom,
        left: 16,
        right: 16,
      );
  static const _minHeight = 240.0;
  static const _paddingTitle =
      EdgeInsets.only(top: 16, bottom: 16, left: 4, right: 4);
  static const _paddingInput = EdgeInsets.only(bottom: 16);
  static bool _nameIsValid = false;
  static bool _phoneIsValid = false;

  static Future show(
    BuildContext context,
    OrderingBloc bloc,
    String? name,
    String? phone,
  ) {
    if (name != null) {
      _nameController.text = name;
      _nameIsValid = true;
    }
    if (phone != null) {
      _phoneController.text = phone;
      _phoneIsValid = true;
    }
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
          child: BlocConsumer<OrderingBloc, OrderingState>(
            listener: (context, state) {
              if (state.closingModal == true) {
                Navigator.pop(context);
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
                      TotoDictionary.deliveryCustomerTitle,
                      style: RobotoTextStyle.s18w700(TotoTheme.text.base),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  _nameInputField(state, bloc),
                  _phoneInputField(state, bloc),
                  RoundedButton(
                    //disabled: (!_nameIsValid && !_phoneIsValid),
                    onPressed: () {
                      bloc.add(OrderingEvent.onChangeCustomer(
                          _nameController.text, _phoneController.text));
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

  static Widget _nameInputField(OrderingState state, OrderingBloc bloc) {
    return Container(
      padding: _paddingInput,
      child: BasicInputField(
        width: null,
        controller: _nameController,
        prefixIcon: Icon(TotoIcons.profile, color: TotoTheme.icon.gray),
        hintText: TotoDictionary.basic.name,
        errorText: _nameIsValid ? null : TotoDictionary.error.requiredField,
        textCapitalization: TextCapitalization.words,
        onChange: (text) {
          if (!StaticValidators.userNameValidator(text)) {
            _nameIsValid = false;
          } else {
            _nameIsValid = true;
          }
        },
      ),
    );
  }

  static Widget _phoneInputField(OrderingState state, OrderingBloc bloc) {
    return Container(
      padding: _paddingInput,
      child: PhoneInputField(
        errorText: _phoneIsValid ? null : TotoDictionary.error.requiredField,
        controller: _phoneController,
        onChange: (text) {
          final parsedPhone = PatternParser.parseMaskPhoneNumberToDefault(text);
          if (!StaticValidators.phoneNumberValidator(parsedPhone)) {
            _phoneIsValid = false;
          } else {
            _phoneIsValid = true;
          }
        },
      ),
    );
  }
}
