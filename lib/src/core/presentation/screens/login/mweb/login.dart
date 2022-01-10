import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toto_mobile/src/core/presentation/screens/login/bloc/login.dart';
import 'package:toto_mobile/src/core/presentation/widgets/buttons/button.dart';
import 'package:toto_mobile/src/core/presentation/widgets/buttons/timer_button.dart';
import 'package:toto_mobile/src/core/presentation/widgets/input/input.dart';
import 'package:toto_mobile/src/core/presentation/widgets/input/phoneCode.dart';
import 'package:toto_mobile/src/core/presentation/widgets/input/phoneInput.dart';
import 'package:toto_mobile/src/core/presentation/widgets/logo/totoNamedLogo.dart';
import 'package:toto_mobile/src/core/presentation/widgets/widgets.dart';
import 'package:toto_mobile/src/extensions/TextStyle.dart';
import 'package:toto_mobile/src/resources/resources.dart';

class LoginMobilePage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _codeController = TextEditingController();

  bool _viewCanPop = false;

  void sendRequestPhoneCode(BuildContext context, bool isResend) {
    if (!context.read<LoginBloc>().state.isLoginMode) {
      context.read<LoginBloc>().add(LoginEvent.requestPhoneCodeRegister(
          _phoneController.text, _nameController.text));
    } else {
      context.read<LoginBloc>().add(
          LoginEvent.requestPhoneCodeAuth(_phoneController.text, isResend));
    }
  }

  void phoneAuth(BuildContext context) {
    context
        .read<LoginBloc>()
        .add(LoginEvent.phoneAuth(_phoneController.text, _codeController.text));
  }

  void changeAuthMethod(BuildContext context) {
    context.read<LoginBloc>().add(LoginEvent.changeAuthMethod());
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
      child: BlocBuilder<LoginBloc, LoginState>(builder: (context, state) {
        return WillPopScope(
          onWillPop: () async {
            _onBackPressed(context);
            return false;
          },
          child: Scaffold(
            appBar: AppBar(
              title: Text(
                (state.isLoginMode)
                    ? TotoDictionary.authorization.authorization
                    : TotoDictionary.authorization.registration,
              ),
              centerTitle: true,
              titleTextStyle: RobotoTextStyle.titleTextStyle(),
              backgroundColor: TotoTheme.background.base,
              elevation: 0.0,
              leading: IconButton(
                icon: Icon(
                  TotoIcons.arrow_back,
                  color: Colors.black,
                ),
                onPressed: () => _onBackPressed(context),
              ),
            ),
            body: SingleChildScrollView(
              child: Center(
                child: SizedBox(
                  width: 265.0,
                  child: Padding(
                    padding: EdgeInsets.only(top: 46.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TotoNamedLogo(),
                        SizedBox(height: 36.0),
                        _authForm(),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      }),
    );
  }

  void _onBackPressed(BuildContext context) async {
    if (_viewCanPop) {
      _codeController.text = '';
      context.read<LoginBloc>().add(LoginEvent.loginSendCode());
    } else {
      Navigator.of(context).pop();
    }
  }

  Widget _authForm() {
    return BlocConsumer<LoginBloc, LoginState>(
      listener: (context, state) {
        if (state.codeStatus == CodeStatus.success) {
          _viewCanPop = true;
        } else {
          _viewCanPop = false;
        }
      },
      builder: (context, state) => Form(
        key: _formKey,
        child: Column(
          children: [
            Visibility(
              visible: !_viewCanPop,
              replacement: _phoneCodeForm(context, state),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      TotoDictionary.authorization.yourPhoneNumber,
                      style: RobotoTextStyle.s18w400(TotoTheme.text.base),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Visibility(
                      visible: !state.isLoginMode,
                      child: _nameInputField(state)),
                  _phoneInputField(state),
                  MainButton(
                    label: TotoDictionary.authorization.next,
                    textStyle:
                        RobotoTextStyle.s14w400(TotoTheme.text.baseInverted),
                    background: TotoTheme.button.primary,
                    disabled: state.codeStatus == CodeStatus.loading,
                    onPressed: () => sendRequestPhoneCode(context, false),
                  ),
                  SizedBox(height: 15.0),
                  GestureDetector(
                    onTap: () => changeAuthMethod(context),
                    child: Text(
                      state.isLoginMode
                          ? TotoDictionary.authorization.register
                          : TotoDictionary.authorization.login,
                      textAlign: TextAlign.center,
                      style: RobotoTextStyle.s16w500(TotoTheme.text.danger),
                    ),
                  ),
                  SizedBox(height: 47.0),
                  MarkedText(
                    TotoDictionary.authorization.personalInfo,
                    spanIndex: 36,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _nameInputField(LoginState state) {
    return Column(
      children: [
        BasicInputField(
            controller: _nameController,
            prefixIcon: Icon(TotoIcons.profile, color: TotoTheme.icon.gray),
            hintText: TotoDictionary.basic.name,
            textCapitalization: TextCapitalization.words,
            errorText:
                state.nameIsValid ? null : TotoDictionary.error.requiredField),
        SizedBox(height: 20.0),
      ],
    );
  }

  Widget _phoneInputField(LoginState state) {
    return Column(
      children: [
        PhoneInputField(
            errorText: state.phoneIsValid
                ? state.serverRequestCodeError
                : TotoDictionary.error.requiredField,
            controller: _phoneController),
        SizedBox(height: 20.0),
      ],
    );
  }

  Widget _phoneCodeForm(BuildContext context, LoginState state) {
    print(state.serverValidateCodeError);
    return Column(children: [
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: MarkedText(
          '${TotoDictionary.authorization.codeSended} ${_phoneController.text}',
          spanIndex: 35,
          style: RobotoTextStyle.s18w400(TotoTheme.text.base),
          spanStyle: RobotoTextStyle.s14w500(TotoTheme.text.primaryDark),
        ),
      ),
      SizedBox(height: 20.0),
      PhoneCodeInput(
          disabled: state.authStatus == AuthStatus.loading,
          controller: _codeController,
          onSubmit: () => phoneAuth(context),
          errorText: state.codeIsValid
              ? state.serverValidateCodeError
              : TotoDictionary.error.requiredField),
      SizedBox(height: 20.0),
      TimerButton(onPressed: () => sendRequestPhoneCode(context, true))
    ]);
  }
}
