// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LoginEventTearOff {
  const _$LoginEventTearOff();

  ChangeAuthMode changeAuthMethod() {
    return const ChangeAuthMode();
  }

  PhoneAuth phoneAuth(String telephone, String code) {
    return PhoneAuth(
      telephone,
      code,
    );
  }

  RequestPhoneCodeAuth requestPhoneCodeAuth(String telephone, bool isResend) {
    return RequestPhoneCodeAuth(
      telephone,
      isResend,
    );
  }

  RequestPhoneCodeRegister requestPhoneCodeRegister(
      String telephone, String name) {
    return RequestPhoneCodeRegister(
      telephone,
      name,
    );
  }

  SubmitRegister registerSubmitted() {
    return const SubmitRegister();
  }

  LoginSendCode loginSendCode() {
    return const LoginSendCode();
  }

  RegisterSendCode registerSendCode() {
    return const RegisterSendCode();
  }
}

/// @nodoc
const $LoginEvent = _$LoginEventTearOff();

/// @nodoc
mixin _$LoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() changeAuthMethod,
    required TResult Function(String telephone, String code) phoneAuth,
    required TResult Function(String telephone, bool isResend)
        requestPhoneCodeAuth,
    required TResult Function(String telephone, String name)
        requestPhoneCodeRegister,
    required TResult Function() registerSubmitted,
    required TResult Function() loginSendCode,
    required TResult Function() registerSendCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? changeAuthMethod,
    TResult Function(String telephone, String code)? phoneAuth,
    TResult Function(String telephone, bool isResend)? requestPhoneCodeAuth,
    TResult Function(String telephone, String name)? requestPhoneCodeRegister,
    TResult Function()? registerSubmitted,
    TResult Function()? loginSendCode,
    TResult Function()? registerSendCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? changeAuthMethod,
    TResult Function(String telephone, String code)? phoneAuth,
    TResult Function(String telephone, bool isResend)? requestPhoneCodeAuth,
    TResult Function(String telephone, String name)? requestPhoneCodeRegister,
    TResult Function()? registerSubmitted,
    TResult Function()? loginSendCode,
    TResult Function()? registerSendCode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeAuthMode value) changeAuthMethod,
    required TResult Function(PhoneAuth value) phoneAuth,
    required TResult Function(RequestPhoneCodeAuth value) requestPhoneCodeAuth,
    required TResult Function(RequestPhoneCodeRegister value)
        requestPhoneCodeRegister,
    required TResult Function(SubmitRegister value) registerSubmitted,
    required TResult Function(LoginSendCode value) loginSendCode,
    required TResult Function(RegisterSendCode value) registerSendCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChangeAuthMode value)? changeAuthMethod,
    TResult Function(PhoneAuth value)? phoneAuth,
    TResult Function(RequestPhoneCodeAuth value)? requestPhoneCodeAuth,
    TResult Function(RequestPhoneCodeRegister value)? requestPhoneCodeRegister,
    TResult Function(SubmitRegister value)? registerSubmitted,
    TResult Function(LoginSendCode value)? loginSendCode,
    TResult Function(RegisterSendCode value)? registerSendCode,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeAuthMode value)? changeAuthMethod,
    TResult Function(PhoneAuth value)? phoneAuth,
    TResult Function(RequestPhoneCodeAuth value)? requestPhoneCodeAuth,
    TResult Function(RequestPhoneCodeRegister value)? requestPhoneCodeRegister,
    TResult Function(SubmitRegister value)? registerSubmitted,
    TResult Function(LoginSendCode value)? loginSendCode,
    TResult Function(RegisterSendCode value)? registerSendCode,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res> implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  final LoginEvent _value;
  // ignore: unused_field
  final $Res Function(LoginEvent) _then;
}

/// @nodoc
abstract class $ChangeAuthModeCopyWith<$Res> {
  factory $ChangeAuthModeCopyWith(
          ChangeAuthMode value, $Res Function(ChangeAuthMode) then) =
      _$ChangeAuthModeCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChangeAuthModeCopyWithImpl<$Res> extends _$LoginEventCopyWithImpl<$Res>
    implements $ChangeAuthModeCopyWith<$Res> {
  _$ChangeAuthModeCopyWithImpl(
      ChangeAuthMode _value, $Res Function(ChangeAuthMode) _then)
      : super(_value, (v) => _then(v as ChangeAuthMode));

  @override
  ChangeAuthMode get _value => super._value as ChangeAuthMode;
}

/// @nodoc

class _$ChangeAuthMode implements ChangeAuthMode {
  const _$ChangeAuthMode();

  @override
  String toString() {
    return 'LoginEvent.changeAuthMethod()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ChangeAuthMode);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() changeAuthMethod,
    required TResult Function(String telephone, String code) phoneAuth,
    required TResult Function(String telephone, bool isResend)
        requestPhoneCodeAuth,
    required TResult Function(String telephone, String name)
        requestPhoneCodeRegister,
    required TResult Function() registerSubmitted,
    required TResult Function() loginSendCode,
    required TResult Function() registerSendCode,
  }) {
    return changeAuthMethod();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? changeAuthMethod,
    TResult Function(String telephone, String code)? phoneAuth,
    TResult Function(String telephone, bool isResend)? requestPhoneCodeAuth,
    TResult Function(String telephone, String name)? requestPhoneCodeRegister,
    TResult Function()? registerSubmitted,
    TResult Function()? loginSendCode,
    TResult Function()? registerSendCode,
  }) {
    return changeAuthMethod?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? changeAuthMethod,
    TResult Function(String telephone, String code)? phoneAuth,
    TResult Function(String telephone, bool isResend)? requestPhoneCodeAuth,
    TResult Function(String telephone, String name)? requestPhoneCodeRegister,
    TResult Function()? registerSubmitted,
    TResult Function()? loginSendCode,
    TResult Function()? registerSendCode,
    required TResult orElse(),
  }) {
    if (changeAuthMethod != null) {
      return changeAuthMethod();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeAuthMode value) changeAuthMethod,
    required TResult Function(PhoneAuth value) phoneAuth,
    required TResult Function(RequestPhoneCodeAuth value) requestPhoneCodeAuth,
    required TResult Function(RequestPhoneCodeRegister value)
        requestPhoneCodeRegister,
    required TResult Function(SubmitRegister value) registerSubmitted,
    required TResult Function(LoginSendCode value) loginSendCode,
    required TResult Function(RegisterSendCode value) registerSendCode,
  }) {
    return changeAuthMethod(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChangeAuthMode value)? changeAuthMethod,
    TResult Function(PhoneAuth value)? phoneAuth,
    TResult Function(RequestPhoneCodeAuth value)? requestPhoneCodeAuth,
    TResult Function(RequestPhoneCodeRegister value)? requestPhoneCodeRegister,
    TResult Function(SubmitRegister value)? registerSubmitted,
    TResult Function(LoginSendCode value)? loginSendCode,
    TResult Function(RegisterSendCode value)? registerSendCode,
  }) {
    return changeAuthMethod?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeAuthMode value)? changeAuthMethod,
    TResult Function(PhoneAuth value)? phoneAuth,
    TResult Function(RequestPhoneCodeAuth value)? requestPhoneCodeAuth,
    TResult Function(RequestPhoneCodeRegister value)? requestPhoneCodeRegister,
    TResult Function(SubmitRegister value)? registerSubmitted,
    TResult Function(LoginSendCode value)? loginSendCode,
    TResult Function(RegisterSendCode value)? registerSendCode,
    required TResult orElse(),
  }) {
    if (changeAuthMethod != null) {
      return changeAuthMethod(this);
    }
    return orElse();
  }
}

abstract class ChangeAuthMode implements LoginEvent {
  const factory ChangeAuthMode() = _$ChangeAuthMode;
}

/// @nodoc
abstract class $PhoneAuthCopyWith<$Res> {
  factory $PhoneAuthCopyWith(PhoneAuth value, $Res Function(PhoneAuth) then) =
      _$PhoneAuthCopyWithImpl<$Res>;
  $Res call({String telephone, String code});
}

/// @nodoc
class _$PhoneAuthCopyWithImpl<$Res> extends _$LoginEventCopyWithImpl<$Res>
    implements $PhoneAuthCopyWith<$Res> {
  _$PhoneAuthCopyWithImpl(PhoneAuth _value, $Res Function(PhoneAuth) _then)
      : super(_value, (v) => _then(v as PhoneAuth));

  @override
  PhoneAuth get _value => super._value as PhoneAuth;

  @override
  $Res call({
    Object? telephone = freezed,
    Object? code = freezed,
  }) {
    return _then(PhoneAuth(
      telephone == freezed
          ? _value.telephone
          : telephone // ignore: cast_nullable_to_non_nullable
              as String,
      code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PhoneAuth implements PhoneAuth {
  const _$PhoneAuth(this.telephone, this.code);

  @override
  final String telephone;
  @override
  final String code;

  @override
  String toString() {
    return 'LoginEvent.phoneAuth(telephone: $telephone, code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PhoneAuth &&
            (identical(other.telephone, telephone) ||
                const DeepCollectionEquality()
                    .equals(other.telephone, telephone)) &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(telephone) ^
      const DeepCollectionEquality().hash(code);

  @JsonKey(ignore: true)
  @override
  $PhoneAuthCopyWith<PhoneAuth> get copyWith =>
      _$PhoneAuthCopyWithImpl<PhoneAuth>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() changeAuthMethod,
    required TResult Function(String telephone, String code) phoneAuth,
    required TResult Function(String telephone, bool isResend)
        requestPhoneCodeAuth,
    required TResult Function(String telephone, String name)
        requestPhoneCodeRegister,
    required TResult Function() registerSubmitted,
    required TResult Function() loginSendCode,
    required TResult Function() registerSendCode,
  }) {
    return phoneAuth(telephone, code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? changeAuthMethod,
    TResult Function(String telephone, String code)? phoneAuth,
    TResult Function(String telephone, bool isResend)? requestPhoneCodeAuth,
    TResult Function(String telephone, String name)? requestPhoneCodeRegister,
    TResult Function()? registerSubmitted,
    TResult Function()? loginSendCode,
    TResult Function()? registerSendCode,
  }) {
    return phoneAuth?.call(telephone, code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? changeAuthMethod,
    TResult Function(String telephone, String code)? phoneAuth,
    TResult Function(String telephone, bool isResend)? requestPhoneCodeAuth,
    TResult Function(String telephone, String name)? requestPhoneCodeRegister,
    TResult Function()? registerSubmitted,
    TResult Function()? loginSendCode,
    TResult Function()? registerSendCode,
    required TResult orElse(),
  }) {
    if (phoneAuth != null) {
      return phoneAuth(telephone, code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeAuthMode value) changeAuthMethod,
    required TResult Function(PhoneAuth value) phoneAuth,
    required TResult Function(RequestPhoneCodeAuth value) requestPhoneCodeAuth,
    required TResult Function(RequestPhoneCodeRegister value)
        requestPhoneCodeRegister,
    required TResult Function(SubmitRegister value) registerSubmitted,
    required TResult Function(LoginSendCode value) loginSendCode,
    required TResult Function(RegisterSendCode value) registerSendCode,
  }) {
    return phoneAuth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChangeAuthMode value)? changeAuthMethod,
    TResult Function(PhoneAuth value)? phoneAuth,
    TResult Function(RequestPhoneCodeAuth value)? requestPhoneCodeAuth,
    TResult Function(RequestPhoneCodeRegister value)? requestPhoneCodeRegister,
    TResult Function(SubmitRegister value)? registerSubmitted,
    TResult Function(LoginSendCode value)? loginSendCode,
    TResult Function(RegisterSendCode value)? registerSendCode,
  }) {
    return phoneAuth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeAuthMode value)? changeAuthMethod,
    TResult Function(PhoneAuth value)? phoneAuth,
    TResult Function(RequestPhoneCodeAuth value)? requestPhoneCodeAuth,
    TResult Function(RequestPhoneCodeRegister value)? requestPhoneCodeRegister,
    TResult Function(SubmitRegister value)? registerSubmitted,
    TResult Function(LoginSendCode value)? loginSendCode,
    TResult Function(RegisterSendCode value)? registerSendCode,
    required TResult orElse(),
  }) {
    if (phoneAuth != null) {
      return phoneAuth(this);
    }
    return orElse();
  }
}

abstract class PhoneAuth implements LoginEvent {
  const factory PhoneAuth(String telephone, String code) = _$PhoneAuth;

  String get telephone => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PhoneAuthCopyWith<PhoneAuth> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestPhoneCodeAuthCopyWith<$Res> {
  factory $RequestPhoneCodeAuthCopyWith(RequestPhoneCodeAuth value,
          $Res Function(RequestPhoneCodeAuth) then) =
      _$RequestPhoneCodeAuthCopyWithImpl<$Res>;
  $Res call({String telephone, bool isResend});
}

/// @nodoc
class _$RequestPhoneCodeAuthCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res>
    implements $RequestPhoneCodeAuthCopyWith<$Res> {
  _$RequestPhoneCodeAuthCopyWithImpl(
      RequestPhoneCodeAuth _value, $Res Function(RequestPhoneCodeAuth) _then)
      : super(_value, (v) => _then(v as RequestPhoneCodeAuth));

  @override
  RequestPhoneCodeAuth get _value => super._value as RequestPhoneCodeAuth;

  @override
  $Res call({
    Object? telephone = freezed,
    Object? isResend = freezed,
  }) {
    return _then(RequestPhoneCodeAuth(
      telephone == freezed
          ? _value.telephone
          : telephone // ignore: cast_nullable_to_non_nullable
              as String,
      isResend == freezed
          ? _value.isResend
          : isResend // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$RequestPhoneCodeAuth implements RequestPhoneCodeAuth {
  const _$RequestPhoneCodeAuth(this.telephone, this.isResend);

  @override
  final String telephone;
  @override
  final bool isResend;

  @override
  String toString() {
    return 'LoginEvent.requestPhoneCodeAuth(telephone: $telephone, isResend: $isResend)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RequestPhoneCodeAuth &&
            (identical(other.telephone, telephone) ||
                const DeepCollectionEquality()
                    .equals(other.telephone, telephone)) &&
            (identical(other.isResend, isResend) ||
                const DeepCollectionEquality()
                    .equals(other.isResend, isResend)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(telephone) ^
      const DeepCollectionEquality().hash(isResend);

  @JsonKey(ignore: true)
  @override
  $RequestPhoneCodeAuthCopyWith<RequestPhoneCodeAuth> get copyWith =>
      _$RequestPhoneCodeAuthCopyWithImpl<RequestPhoneCodeAuth>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() changeAuthMethod,
    required TResult Function(String telephone, String code) phoneAuth,
    required TResult Function(String telephone, bool isResend)
        requestPhoneCodeAuth,
    required TResult Function(String telephone, String name)
        requestPhoneCodeRegister,
    required TResult Function() registerSubmitted,
    required TResult Function() loginSendCode,
    required TResult Function() registerSendCode,
  }) {
    return requestPhoneCodeAuth(telephone, isResend);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? changeAuthMethod,
    TResult Function(String telephone, String code)? phoneAuth,
    TResult Function(String telephone, bool isResend)? requestPhoneCodeAuth,
    TResult Function(String telephone, String name)? requestPhoneCodeRegister,
    TResult Function()? registerSubmitted,
    TResult Function()? loginSendCode,
    TResult Function()? registerSendCode,
  }) {
    return requestPhoneCodeAuth?.call(telephone, isResend);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? changeAuthMethod,
    TResult Function(String telephone, String code)? phoneAuth,
    TResult Function(String telephone, bool isResend)? requestPhoneCodeAuth,
    TResult Function(String telephone, String name)? requestPhoneCodeRegister,
    TResult Function()? registerSubmitted,
    TResult Function()? loginSendCode,
    TResult Function()? registerSendCode,
    required TResult orElse(),
  }) {
    if (requestPhoneCodeAuth != null) {
      return requestPhoneCodeAuth(telephone, isResend);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeAuthMode value) changeAuthMethod,
    required TResult Function(PhoneAuth value) phoneAuth,
    required TResult Function(RequestPhoneCodeAuth value) requestPhoneCodeAuth,
    required TResult Function(RequestPhoneCodeRegister value)
        requestPhoneCodeRegister,
    required TResult Function(SubmitRegister value) registerSubmitted,
    required TResult Function(LoginSendCode value) loginSendCode,
    required TResult Function(RegisterSendCode value) registerSendCode,
  }) {
    return requestPhoneCodeAuth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChangeAuthMode value)? changeAuthMethod,
    TResult Function(PhoneAuth value)? phoneAuth,
    TResult Function(RequestPhoneCodeAuth value)? requestPhoneCodeAuth,
    TResult Function(RequestPhoneCodeRegister value)? requestPhoneCodeRegister,
    TResult Function(SubmitRegister value)? registerSubmitted,
    TResult Function(LoginSendCode value)? loginSendCode,
    TResult Function(RegisterSendCode value)? registerSendCode,
  }) {
    return requestPhoneCodeAuth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeAuthMode value)? changeAuthMethod,
    TResult Function(PhoneAuth value)? phoneAuth,
    TResult Function(RequestPhoneCodeAuth value)? requestPhoneCodeAuth,
    TResult Function(RequestPhoneCodeRegister value)? requestPhoneCodeRegister,
    TResult Function(SubmitRegister value)? registerSubmitted,
    TResult Function(LoginSendCode value)? loginSendCode,
    TResult Function(RegisterSendCode value)? registerSendCode,
    required TResult orElse(),
  }) {
    if (requestPhoneCodeAuth != null) {
      return requestPhoneCodeAuth(this);
    }
    return orElse();
  }
}

abstract class RequestPhoneCodeAuth implements LoginEvent {
  const factory RequestPhoneCodeAuth(String telephone, bool isResend) =
      _$RequestPhoneCodeAuth;

  String get telephone => throw _privateConstructorUsedError;
  bool get isResend => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestPhoneCodeAuthCopyWith<RequestPhoneCodeAuth> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestPhoneCodeRegisterCopyWith<$Res> {
  factory $RequestPhoneCodeRegisterCopyWith(RequestPhoneCodeRegister value,
          $Res Function(RequestPhoneCodeRegister) then) =
      _$RequestPhoneCodeRegisterCopyWithImpl<$Res>;
  $Res call({String telephone, String name});
}

/// @nodoc
class _$RequestPhoneCodeRegisterCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res>
    implements $RequestPhoneCodeRegisterCopyWith<$Res> {
  _$RequestPhoneCodeRegisterCopyWithImpl(RequestPhoneCodeRegister _value,
      $Res Function(RequestPhoneCodeRegister) _then)
      : super(_value, (v) => _then(v as RequestPhoneCodeRegister));

  @override
  RequestPhoneCodeRegister get _value =>
      super._value as RequestPhoneCodeRegister;

  @override
  $Res call({
    Object? telephone = freezed,
    Object? name = freezed,
  }) {
    return _then(RequestPhoneCodeRegister(
      telephone == freezed
          ? _value.telephone
          : telephone // ignore: cast_nullable_to_non_nullable
              as String,
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RequestPhoneCodeRegister implements RequestPhoneCodeRegister {
  const _$RequestPhoneCodeRegister(this.telephone, this.name);

  @override
  final String telephone;
  @override
  final String name;

  @override
  String toString() {
    return 'LoginEvent.requestPhoneCodeRegister(telephone: $telephone, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RequestPhoneCodeRegister &&
            (identical(other.telephone, telephone) ||
                const DeepCollectionEquality()
                    .equals(other.telephone, telephone)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(telephone) ^
      const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  $RequestPhoneCodeRegisterCopyWith<RequestPhoneCodeRegister> get copyWith =>
      _$RequestPhoneCodeRegisterCopyWithImpl<RequestPhoneCodeRegister>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() changeAuthMethod,
    required TResult Function(String telephone, String code) phoneAuth,
    required TResult Function(String telephone, bool isResend)
        requestPhoneCodeAuth,
    required TResult Function(String telephone, String name)
        requestPhoneCodeRegister,
    required TResult Function() registerSubmitted,
    required TResult Function() loginSendCode,
    required TResult Function() registerSendCode,
  }) {
    return requestPhoneCodeRegister(telephone, name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? changeAuthMethod,
    TResult Function(String telephone, String code)? phoneAuth,
    TResult Function(String telephone, bool isResend)? requestPhoneCodeAuth,
    TResult Function(String telephone, String name)? requestPhoneCodeRegister,
    TResult Function()? registerSubmitted,
    TResult Function()? loginSendCode,
    TResult Function()? registerSendCode,
  }) {
    return requestPhoneCodeRegister?.call(telephone, name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? changeAuthMethod,
    TResult Function(String telephone, String code)? phoneAuth,
    TResult Function(String telephone, bool isResend)? requestPhoneCodeAuth,
    TResult Function(String telephone, String name)? requestPhoneCodeRegister,
    TResult Function()? registerSubmitted,
    TResult Function()? loginSendCode,
    TResult Function()? registerSendCode,
    required TResult orElse(),
  }) {
    if (requestPhoneCodeRegister != null) {
      return requestPhoneCodeRegister(telephone, name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeAuthMode value) changeAuthMethod,
    required TResult Function(PhoneAuth value) phoneAuth,
    required TResult Function(RequestPhoneCodeAuth value) requestPhoneCodeAuth,
    required TResult Function(RequestPhoneCodeRegister value)
        requestPhoneCodeRegister,
    required TResult Function(SubmitRegister value) registerSubmitted,
    required TResult Function(LoginSendCode value) loginSendCode,
    required TResult Function(RegisterSendCode value) registerSendCode,
  }) {
    return requestPhoneCodeRegister(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChangeAuthMode value)? changeAuthMethod,
    TResult Function(PhoneAuth value)? phoneAuth,
    TResult Function(RequestPhoneCodeAuth value)? requestPhoneCodeAuth,
    TResult Function(RequestPhoneCodeRegister value)? requestPhoneCodeRegister,
    TResult Function(SubmitRegister value)? registerSubmitted,
    TResult Function(LoginSendCode value)? loginSendCode,
    TResult Function(RegisterSendCode value)? registerSendCode,
  }) {
    return requestPhoneCodeRegister?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeAuthMode value)? changeAuthMethod,
    TResult Function(PhoneAuth value)? phoneAuth,
    TResult Function(RequestPhoneCodeAuth value)? requestPhoneCodeAuth,
    TResult Function(RequestPhoneCodeRegister value)? requestPhoneCodeRegister,
    TResult Function(SubmitRegister value)? registerSubmitted,
    TResult Function(LoginSendCode value)? loginSendCode,
    TResult Function(RegisterSendCode value)? registerSendCode,
    required TResult orElse(),
  }) {
    if (requestPhoneCodeRegister != null) {
      return requestPhoneCodeRegister(this);
    }
    return orElse();
  }
}

abstract class RequestPhoneCodeRegister implements LoginEvent {
  const factory RequestPhoneCodeRegister(String telephone, String name) =
      _$RequestPhoneCodeRegister;

  String get telephone => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestPhoneCodeRegisterCopyWith<RequestPhoneCodeRegister> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubmitRegisterCopyWith<$Res> {
  factory $SubmitRegisterCopyWith(
          SubmitRegister value, $Res Function(SubmitRegister) then) =
      _$SubmitRegisterCopyWithImpl<$Res>;
}

/// @nodoc
class _$SubmitRegisterCopyWithImpl<$Res> extends _$LoginEventCopyWithImpl<$Res>
    implements $SubmitRegisterCopyWith<$Res> {
  _$SubmitRegisterCopyWithImpl(
      SubmitRegister _value, $Res Function(SubmitRegister) _then)
      : super(_value, (v) => _then(v as SubmitRegister));

  @override
  SubmitRegister get _value => super._value as SubmitRegister;
}

/// @nodoc

class _$SubmitRegister implements SubmitRegister {
  const _$SubmitRegister();

  @override
  String toString() {
    return 'LoginEvent.registerSubmitted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SubmitRegister);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() changeAuthMethod,
    required TResult Function(String telephone, String code) phoneAuth,
    required TResult Function(String telephone, bool isResend)
        requestPhoneCodeAuth,
    required TResult Function(String telephone, String name)
        requestPhoneCodeRegister,
    required TResult Function() registerSubmitted,
    required TResult Function() loginSendCode,
    required TResult Function() registerSendCode,
  }) {
    return registerSubmitted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? changeAuthMethod,
    TResult Function(String telephone, String code)? phoneAuth,
    TResult Function(String telephone, bool isResend)? requestPhoneCodeAuth,
    TResult Function(String telephone, String name)? requestPhoneCodeRegister,
    TResult Function()? registerSubmitted,
    TResult Function()? loginSendCode,
    TResult Function()? registerSendCode,
  }) {
    return registerSubmitted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? changeAuthMethod,
    TResult Function(String telephone, String code)? phoneAuth,
    TResult Function(String telephone, bool isResend)? requestPhoneCodeAuth,
    TResult Function(String telephone, String name)? requestPhoneCodeRegister,
    TResult Function()? registerSubmitted,
    TResult Function()? loginSendCode,
    TResult Function()? registerSendCode,
    required TResult orElse(),
  }) {
    if (registerSubmitted != null) {
      return registerSubmitted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeAuthMode value) changeAuthMethod,
    required TResult Function(PhoneAuth value) phoneAuth,
    required TResult Function(RequestPhoneCodeAuth value) requestPhoneCodeAuth,
    required TResult Function(RequestPhoneCodeRegister value)
        requestPhoneCodeRegister,
    required TResult Function(SubmitRegister value) registerSubmitted,
    required TResult Function(LoginSendCode value) loginSendCode,
    required TResult Function(RegisterSendCode value) registerSendCode,
  }) {
    return registerSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChangeAuthMode value)? changeAuthMethod,
    TResult Function(PhoneAuth value)? phoneAuth,
    TResult Function(RequestPhoneCodeAuth value)? requestPhoneCodeAuth,
    TResult Function(RequestPhoneCodeRegister value)? requestPhoneCodeRegister,
    TResult Function(SubmitRegister value)? registerSubmitted,
    TResult Function(LoginSendCode value)? loginSendCode,
    TResult Function(RegisterSendCode value)? registerSendCode,
  }) {
    return registerSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeAuthMode value)? changeAuthMethod,
    TResult Function(PhoneAuth value)? phoneAuth,
    TResult Function(RequestPhoneCodeAuth value)? requestPhoneCodeAuth,
    TResult Function(RequestPhoneCodeRegister value)? requestPhoneCodeRegister,
    TResult Function(SubmitRegister value)? registerSubmitted,
    TResult Function(LoginSendCode value)? loginSendCode,
    TResult Function(RegisterSendCode value)? registerSendCode,
    required TResult orElse(),
  }) {
    if (registerSubmitted != null) {
      return registerSubmitted(this);
    }
    return orElse();
  }
}

abstract class SubmitRegister implements LoginEvent {
  const factory SubmitRegister() = _$SubmitRegister;
}

/// @nodoc
abstract class $LoginSendCodeCopyWith<$Res> {
  factory $LoginSendCodeCopyWith(
          LoginSendCode value, $Res Function(LoginSendCode) then) =
      _$LoginSendCodeCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginSendCodeCopyWithImpl<$Res> extends _$LoginEventCopyWithImpl<$Res>
    implements $LoginSendCodeCopyWith<$Res> {
  _$LoginSendCodeCopyWithImpl(
      LoginSendCode _value, $Res Function(LoginSendCode) _then)
      : super(_value, (v) => _then(v as LoginSendCode));

  @override
  LoginSendCode get _value => super._value as LoginSendCode;
}

/// @nodoc

class _$LoginSendCode implements LoginSendCode {
  const _$LoginSendCode();

  @override
  String toString() {
    return 'LoginEvent.loginSendCode()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoginSendCode);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() changeAuthMethod,
    required TResult Function(String telephone, String code) phoneAuth,
    required TResult Function(String telephone, bool isResend)
        requestPhoneCodeAuth,
    required TResult Function(String telephone, String name)
        requestPhoneCodeRegister,
    required TResult Function() registerSubmitted,
    required TResult Function() loginSendCode,
    required TResult Function() registerSendCode,
  }) {
    return loginSendCode();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? changeAuthMethod,
    TResult Function(String telephone, String code)? phoneAuth,
    TResult Function(String telephone, bool isResend)? requestPhoneCodeAuth,
    TResult Function(String telephone, String name)? requestPhoneCodeRegister,
    TResult Function()? registerSubmitted,
    TResult Function()? loginSendCode,
    TResult Function()? registerSendCode,
  }) {
    return loginSendCode?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? changeAuthMethod,
    TResult Function(String telephone, String code)? phoneAuth,
    TResult Function(String telephone, bool isResend)? requestPhoneCodeAuth,
    TResult Function(String telephone, String name)? requestPhoneCodeRegister,
    TResult Function()? registerSubmitted,
    TResult Function()? loginSendCode,
    TResult Function()? registerSendCode,
    required TResult orElse(),
  }) {
    if (loginSendCode != null) {
      return loginSendCode();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeAuthMode value) changeAuthMethod,
    required TResult Function(PhoneAuth value) phoneAuth,
    required TResult Function(RequestPhoneCodeAuth value) requestPhoneCodeAuth,
    required TResult Function(RequestPhoneCodeRegister value)
        requestPhoneCodeRegister,
    required TResult Function(SubmitRegister value) registerSubmitted,
    required TResult Function(LoginSendCode value) loginSendCode,
    required TResult Function(RegisterSendCode value) registerSendCode,
  }) {
    return loginSendCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChangeAuthMode value)? changeAuthMethod,
    TResult Function(PhoneAuth value)? phoneAuth,
    TResult Function(RequestPhoneCodeAuth value)? requestPhoneCodeAuth,
    TResult Function(RequestPhoneCodeRegister value)? requestPhoneCodeRegister,
    TResult Function(SubmitRegister value)? registerSubmitted,
    TResult Function(LoginSendCode value)? loginSendCode,
    TResult Function(RegisterSendCode value)? registerSendCode,
  }) {
    return loginSendCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeAuthMode value)? changeAuthMethod,
    TResult Function(PhoneAuth value)? phoneAuth,
    TResult Function(RequestPhoneCodeAuth value)? requestPhoneCodeAuth,
    TResult Function(RequestPhoneCodeRegister value)? requestPhoneCodeRegister,
    TResult Function(SubmitRegister value)? registerSubmitted,
    TResult Function(LoginSendCode value)? loginSendCode,
    TResult Function(RegisterSendCode value)? registerSendCode,
    required TResult orElse(),
  }) {
    if (loginSendCode != null) {
      return loginSendCode(this);
    }
    return orElse();
  }
}

abstract class LoginSendCode implements LoginEvent {
  const factory LoginSendCode() = _$LoginSendCode;
}

/// @nodoc
abstract class $RegisterSendCodeCopyWith<$Res> {
  factory $RegisterSendCodeCopyWith(
          RegisterSendCode value, $Res Function(RegisterSendCode) then) =
      _$RegisterSendCodeCopyWithImpl<$Res>;
}

/// @nodoc
class _$RegisterSendCodeCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res>
    implements $RegisterSendCodeCopyWith<$Res> {
  _$RegisterSendCodeCopyWithImpl(
      RegisterSendCode _value, $Res Function(RegisterSendCode) _then)
      : super(_value, (v) => _then(v as RegisterSendCode));

  @override
  RegisterSendCode get _value => super._value as RegisterSendCode;
}

/// @nodoc

class _$RegisterSendCode implements RegisterSendCode {
  const _$RegisterSendCode();

  @override
  String toString() {
    return 'LoginEvent.registerSendCode()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is RegisterSendCode);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() changeAuthMethod,
    required TResult Function(String telephone, String code) phoneAuth,
    required TResult Function(String telephone, bool isResend)
        requestPhoneCodeAuth,
    required TResult Function(String telephone, String name)
        requestPhoneCodeRegister,
    required TResult Function() registerSubmitted,
    required TResult Function() loginSendCode,
    required TResult Function() registerSendCode,
  }) {
    return registerSendCode();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? changeAuthMethod,
    TResult Function(String telephone, String code)? phoneAuth,
    TResult Function(String telephone, bool isResend)? requestPhoneCodeAuth,
    TResult Function(String telephone, String name)? requestPhoneCodeRegister,
    TResult Function()? registerSubmitted,
    TResult Function()? loginSendCode,
    TResult Function()? registerSendCode,
  }) {
    return registerSendCode?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? changeAuthMethod,
    TResult Function(String telephone, String code)? phoneAuth,
    TResult Function(String telephone, bool isResend)? requestPhoneCodeAuth,
    TResult Function(String telephone, String name)? requestPhoneCodeRegister,
    TResult Function()? registerSubmitted,
    TResult Function()? loginSendCode,
    TResult Function()? registerSendCode,
    required TResult orElse(),
  }) {
    if (registerSendCode != null) {
      return registerSendCode();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeAuthMode value) changeAuthMethod,
    required TResult Function(PhoneAuth value) phoneAuth,
    required TResult Function(RequestPhoneCodeAuth value) requestPhoneCodeAuth,
    required TResult Function(RequestPhoneCodeRegister value)
        requestPhoneCodeRegister,
    required TResult Function(SubmitRegister value) registerSubmitted,
    required TResult Function(LoginSendCode value) loginSendCode,
    required TResult Function(RegisterSendCode value) registerSendCode,
  }) {
    return registerSendCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChangeAuthMode value)? changeAuthMethod,
    TResult Function(PhoneAuth value)? phoneAuth,
    TResult Function(RequestPhoneCodeAuth value)? requestPhoneCodeAuth,
    TResult Function(RequestPhoneCodeRegister value)? requestPhoneCodeRegister,
    TResult Function(SubmitRegister value)? registerSubmitted,
    TResult Function(LoginSendCode value)? loginSendCode,
    TResult Function(RegisterSendCode value)? registerSendCode,
  }) {
    return registerSendCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeAuthMode value)? changeAuthMethod,
    TResult Function(PhoneAuth value)? phoneAuth,
    TResult Function(RequestPhoneCodeAuth value)? requestPhoneCodeAuth,
    TResult Function(RequestPhoneCodeRegister value)? requestPhoneCodeRegister,
    TResult Function(SubmitRegister value)? registerSubmitted,
    TResult Function(LoginSendCode value)? loginSendCode,
    TResult Function(RegisterSendCode value)? registerSendCode,
    required TResult orElse(),
  }) {
    if (registerSendCode != null) {
      return registerSendCode(this);
    }
    return orElse();
  }
}

abstract class RegisterSendCode implements LoginEvent {
  const factory RegisterSendCode() = _$RegisterSendCode;
}
