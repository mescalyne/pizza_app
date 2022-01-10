import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:toto_mobile/src/core/data/models/network_result.dart';
import 'package:toto_mobile/src/core/domain/usecases/auth/authPhone.dart';
import 'package:toto_mobile/src/core/domain/usecases/auth/requestPhoneCode.dart';
import 'package:toto_mobile/src/core/presentation/router/bloc/bloc.dart';
import 'package:toto_mobile/src/core/presentation/router/bloc/event.dart';
import 'package:toto_mobile/src/resources/dictionary.dart';
import 'package:toto_mobile/src/utils/logger.dart';
import 'package:toto_mobile/src/utils/validator.dart';

import 'event.dart';
import 'state.dart';

typedef LoginEventHandler = Stream<LoginState>;

@Injectable()
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final RouterEventSink _routerEventSink;
  final AuthPhoneUseCase _authUseCase;
  final RequestPhoneCodeUseCase _requestPhoneCodeUseCase;

  LoginBloc(
      this._authUseCase, this._requestPhoneCodeUseCase, this._routerEventSink)
      : super(LoginState());

  @override
  Stream<LoginState> mapEventToState(LoginEvent event) => event.when(
      phoneAuth: _onPhoneAuth,
      requestPhoneCodeAuth: _onRequestPhoneCodeAuth,
      registerSubmitted: _onRegisterSubmitted,
      loginSendCode: _onLoginSendCode,
      registerSendCode: _onRegisterSendCode,
      changeAuthMethod: _onChangeAuthMethod,
      requestPhoneCodeRegister: _requestPhoneCodeRegister);

  LoginEventHandler _onPhoneAuth(String telephone, String code) async* {
    Logger.logger('LoginBloc', 'phoneAuth');

    final parsedPhone = PatternParser.parseMaskPhoneNumberToDefault(telephone);
    if (!StaticValidators.phoneNumberValidator(parsedPhone)) {
      yield state.copyWith(phoneValidation: FormFieldValidation.invalid);
      return;
    }
    if (!StaticValidators.phoneCodeValidator(code)) {
      yield state.copyWith(codeValidation: FormFieldValidation.invalid);
      return;
    }

    yield state.copyWith(authStatus: AuthStatus.loading);

    var result = await _authUseCase(parsedPhone, code);
    yield clearCodeStatusState();

    switch (result) {
      case NetworkResult.success:
        yield state.copyWith(authStatus: AuthStatus.success);
        _routerEventSink.add(RouterEvent.pop());
        break;
      case NetworkResult.incorrectUser:
        yield state.copyWith(
            authStatus: AuthStatus.error,
            serverValidateCodeError: TotoDictionary.incorrectCode);
        break;
      default:
        yield state.copyWith(
            authStatus: AuthStatus.error,
            serverValidateCodeError: TotoDictionary.serverError);
        break;
    }
  }

  LoginEventHandler _onRequestPhoneCodeAuth(
      String telephone, bool isResend) async* {
    Logger.logger('LoginBloc', 'requestPhoneCodeAuth');

    final parsedPhone = PatternParser.parseMaskPhoneNumberToDefault(telephone);
    if (!StaticValidators.phoneNumberValidator(parsedPhone)) {
      yield state.copyWith(phoneValidation: FormFieldValidation.invalid);
      return;
    }

    if (!isResend) {
      yield state.copyWith(codeStatus: CodeStatus.loading);
    }

    var result = await _requestPhoneCodeUseCase(parsedPhone);
    yield clearCodeStatusState();

    switch (result) {
      case NetworkResult.success:
        yield state.copyWith(codeStatus: CodeStatus.success);
        break;
      case NetworkResult.wrongTelephoneFormat:
        yield state.copyWith(
            codeStatus: CodeStatus.error,
            serverRequestCodeError: TotoDictionary.phoneValidationError);
        break;
      case NetworkResult.incorrectUser:
        yield state.copyWith(
            codeStatus: CodeStatus.error,
            serverRequestCodeError: TotoDictionary.incorrectPhone);
        break;
      default:
        yield state.copyWith(codeStatus: CodeStatus.error);
        break;
    }
  }

  LoginEventHandler _onRegisterSubmitted() async* {
    Logger.logger('LoginBloc', 'onRegisterSubmitted');
  }

  LoginEventHandler _requestPhoneCodeRegister(
      String telephone, String name) async* {
    final parsedPhone = PatternParser.parseMaskPhoneNumberToDefault(telephone);

    if (!StaticValidators.phoneNumberValidator(parsedPhone)) {
      yield state.copyWith(phoneValidation: FormFieldValidation.invalid);
      return;
    }

    if (!StaticValidators.userNameValidator(name)) {
      yield state.copyWith(
          nameValidation: FormFieldValidation.invalid,
          phoneValidation: FormFieldValidation.valid);
      return;
    }

    var result = await _authUseCase.requestPhoneCodeRegister(parsedPhone, name);
    yield clearCodeStatusState();

    switch (result) {
      case NetworkResult.success:
        yield state.copyWith(codeStatus: CodeStatus.success);
        break;
      case NetworkResult.wrongTelephoneFormat:
        yield state.copyWith(
            codeStatus: CodeStatus.error,
            serverRequestCodeError: TotoDictionary.phoneValidationError);
        break;
      case NetworkResult.incorrectUser:
        yield state.copyWith(
            codeStatus: CodeStatus.error,
            serverRequestCodeError: TotoDictionary.incorrectPhone);
        break;
      case NetworkResult.userExist:
        yield state.copyWith(
            codeStatus: CodeStatus.error,
            serverRequestCodeError: TotoDictionary.userAlreadyExist);
        break;
      default:
        yield state.copyWith(codeStatus: CodeStatus.error);
        break;
    }
  }

  LoginEventHandler _onLoginSendCode() async* {
    yield state.copyWith(codeStatus: CodeStatus.init);
  }

  LoginEventHandler _onRegisterSendCode() async* {
    Logger.logger('LoginBloc', 'onRegisterSendCode');
  }

  LoginEventHandler _onChangeAuthMethod() async* {
    yield state.copyWith(
        webDialogMode:
            state.isLoginMode ? AuthDialogMode.register : AuthDialogMode.login);
  }

  LoginState clearCodeStatusState() {
    return state.copyWith(
        phoneValidation: FormFieldValidation.valid,
        nameValidation: FormFieldValidation.valid,
        codeValidation: FormFieldValidation.valid,
        serverValidateCodeError: null,
        serverRequestCodeError: null);
  }
}
