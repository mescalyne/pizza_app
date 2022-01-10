class LoginState {
  final AuthDialogMode webDialogMode;
  final AuthStatus authStatus;
  final CodeStatus codeStatus;
  final FormFieldValidation nameValidation;
  final FormFieldValidation phoneValidation;
  final FormFieldValidation codeValidation;

  // Errors
  final String? serverRequestCodeError;
  final String? serverValidateCodeError;

  bool get nameIsValid => nameValidation == FormFieldValidation.valid;

  bool get phoneIsValid => phoneValidation == FormFieldValidation.valid;

  bool get codeIsValid => codeValidation == FormFieldValidation.valid;

  bool get isLoginMode => webDialogMode == AuthDialogMode.login;

  LoginState({
    this.webDialogMode = AuthDialogMode.login,
    this.authStatus = AuthStatus.init,
    this.codeStatus = CodeStatus.init,
    this.nameValidation = FormFieldValidation.valid,
    this.phoneValidation = FormFieldValidation.valid,
    this.codeValidation = FormFieldValidation.valid,
    this.serverRequestCodeError,
    this.serverValidateCodeError,
  });

  LoginState copyWith({
    FormFieldValidation? nameValidation,
    FormFieldValidation? phoneValidation,
    FormFieldValidation? codeValidation,
    AuthDialogMode? webDialogMode,
    AuthStatus? authStatus,
    CodeStatus? codeStatus,
    String? serverRequestCodeError,
    String? serverValidateCodeError,
  }) {
    return LoginState(
      webDialogMode: webDialogMode ?? this.webDialogMode,
      authStatus: authStatus ?? this.authStatus,
      codeStatus: codeStatus ?? this.codeStatus,
      nameValidation: nameValidation ?? this.nameValidation,
      phoneValidation: phoneValidation ?? this.phoneValidation,
      codeValidation: codeValidation ?? this.codeValidation,
      serverRequestCodeError: serverRequestCodeError,
      serverValidateCodeError: serverValidateCodeError,
    );
  }
}

enum AuthStatus { init, loading, success, error }

enum CodeStatus { init, loading, success, error }

enum FormFieldValidation { valid, invalid }

enum AuthDialogMode { login, release, register }
