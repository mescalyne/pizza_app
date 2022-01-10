import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'event.freezed.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.changeAuthMethod() = ChangeAuthMode;

  const factory LoginEvent.phoneAuth(String telephone, String code) = PhoneAuth;

  const factory LoginEvent.requestPhoneCodeAuth(
      String telephone, bool isResend) = RequestPhoneCodeAuth;

  const factory LoginEvent.requestPhoneCodeRegister(
      String telephone, String name) = RequestPhoneCodeRegister;

  const factory LoginEvent.registerSubmitted() = SubmitRegister;

  const factory LoginEvent.loginSendCode() = LoginSendCode;

  const factory LoginEvent.registerSendCode() = RegisterSendCode;
}
