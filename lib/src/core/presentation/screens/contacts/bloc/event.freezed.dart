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
class _$ContactsEventTearOff {
  const _$ContactsEventTearOff();

  Initialization initialization() {
    return const Initialization();
  }

  ErrorLoading errorLoading() {
    return const ErrorLoading();
  }

  OnEmailPressed emailPressed(String email) {
    return OnEmailPressed(
      email,
    );
  }

  OnPhoneCallPressed phoneCallPressed(String phoneNumber) {
    return OnPhoneCallPressed(
      phoneNumber,
    );
  }

  OnSocialNetworksPressed socialNetworksPressed(String url) {
    return OnSocialNetworksPressed(
      url,
    );
  }

  OnrateAppPressed rateAppPressed() {
    return const OnrateAppPressed();
  }
}

/// @nodoc
const $ContactsEvent = _$ContactsEventTearOff();

/// @nodoc
mixin _$ContactsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialization,
    required TResult Function() errorLoading,
    required TResult Function(String email) emailPressed,
    required TResult Function(String phoneNumber) phoneCallPressed,
    required TResult Function(String url) socialNetworksPressed,
    required TResult Function() rateAppPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialization,
    TResult Function()? errorLoading,
    TResult Function(String email)? emailPressed,
    TResult Function(String phoneNumber)? phoneCallPressed,
    TResult Function(String url)? socialNetworksPressed,
    TResult Function()? rateAppPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialization,
    TResult Function()? errorLoading,
    TResult Function(String email)? emailPressed,
    TResult Function(String phoneNumber)? phoneCallPressed,
    TResult Function(String url)? socialNetworksPressed,
    TResult Function()? rateAppPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialization value) initialization,
    required TResult Function(ErrorLoading value) errorLoading,
    required TResult Function(OnEmailPressed value) emailPressed,
    required TResult Function(OnPhoneCallPressed value) phoneCallPressed,
    required TResult Function(OnSocialNetworksPressed value)
        socialNetworksPressed,
    required TResult Function(OnrateAppPressed value) rateAppPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialization value)? initialization,
    TResult Function(ErrorLoading value)? errorLoading,
    TResult Function(OnEmailPressed value)? emailPressed,
    TResult Function(OnPhoneCallPressed value)? phoneCallPressed,
    TResult Function(OnSocialNetworksPressed value)? socialNetworksPressed,
    TResult Function(OnrateAppPressed value)? rateAppPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialization value)? initialization,
    TResult Function(ErrorLoading value)? errorLoading,
    TResult Function(OnEmailPressed value)? emailPressed,
    TResult Function(OnPhoneCallPressed value)? phoneCallPressed,
    TResult Function(OnSocialNetworksPressed value)? socialNetworksPressed,
    TResult Function(OnrateAppPressed value)? rateAppPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactsEventCopyWith<$Res> {
  factory $ContactsEventCopyWith(
          ContactsEvent value, $Res Function(ContactsEvent) then) =
      _$ContactsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ContactsEventCopyWithImpl<$Res>
    implements $ContactsEventCopyWith<$Res> {
  _$ContactsEventCopyWithImpl(this._value, this._then);

  final ContactsEvent _value;
  // ignore: unused_field
  final $Res Function(ContactsEvent) _then;
}

/// @nodoc
abstract class $InitializationCopyWith<$Res> {
  factory $InitializationCopyWith(
          Initialization value, $Res Function(Initialization) then) =
      _$InitializationCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitializationCopyWithImpl<$Res>
    extends _$ContactsEventCopyWithImpl<$Res>
    implements $InitializationCopyWith<$Res> {
  _$InitializationCopyWithImpl(
      Initialization _value, $Res Function(Initialization) _then)
      : super(_value, (v) => _then(v as Initialization));

  @override
  Initialization get _value => super._value as Initialization;
}

/// @nodoc

class _$Initialization implements Initialization {
  const _$Initialization();

  @override
  String toString() {
    return 'ContactsEvent.initialization()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Initialization);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialization,
    required TResult Function() errorLoading,
    required TResult Function(String email) emailPressed,
    required TResult Function(String phoneNumber) phoneCallPressed,
    required TResult Function(String url) socialNetworksPressed,
    required TResult Function() rateAppPressed,
  }) {
    return initialization();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialization,
    TResult Function()? errorLoading,
    TResult Function(String email)? emailPressed,
    TResult Function(String phoneNumber)? phoneCallPressed,
    TResult Function(String url)? socialNetworksPressed,
    TResult Function()? rateAppPressed,
  }) {
    return initialization?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialization,
    TResult Function()? errorLoading,
    TResult Function(String email)? emailPressed,
    TResult Function(String phoneNumber)? phoneCallPressed,
    TResult Function(String url)? socialNetworksPressed,
    TResult Function()? rateAppPressed,
    required TResult orElse(),
  }) {
    if (initialization != null) {
      return initialization();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialization value) initialization,
    required TResult Function(ErrorLoading value) errorLoading,
    required TResult Function(OnEmailPressed value) emailPressed,
    required TResult Function(OnPhoneCallPressed value) phoneCallPressed,
    required TResult Function(OnSocialNetworksPressed value)
        socialNetworksPressed,
    required TResult Function(OnrateAppPressed value) rateAppPressed,
  }) {
    return initialization(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialization value)? initialization,
    TResult Function(ErrorLoading value)? errorLoading,
    TResult Function(OnEmailPressed value)? emailPressed,
    TResult Function(OnPhoneCallPressed value)? phoneCallPressed,
    TResult Function(OnSocialNetworksPressed value)? socialNetworksPressed,
    TResult Function(OnrateAppPressed value)? rateAppPressed,
  }) {
    return initialization?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialization value)? initialization,
    TResult Function(ErrorLoading value)? errorLoading,
    TResult Function(OnEmailPressed value)? emailPressed,
    TResult Function(OnPhoneCallPressed value)? phoneCallPressed,
    TResult Function(OnSocialNetworksPressed value)? socialNetworksPressed,
    TResult Function(OnrateAppPressed value)? rateAppPressed,
    required TResult orElse(),
  }) {
    if (initialization != null) {
      return initialization(this);
    }
    return orElse();
  }
}

abstract class Initialization implements ContactsEvent {
  const factory Initialization() = _$Initialization;
}

/// @nodoc
abstract class $ErrorLoadingCopyWith<$Res> {
  factory $ErrorLoadingCopyWith(
          ErrorLoading value, $Res Function(ErrorLoading) then) =
      _$ErrorLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$ErrorLoadingCopyWithImpl<$Res> extends _$ContactsEventCopyWithImpl<$Res>
    implements $ErrorLoadingCopyWith<$Res> {
  _$ErrorLoadingCopyWithImpl(
      ErrorLoading _value, $Res Function(ErrorLoading) _then)
      : super(_value, (v) => _then(v as ErrorLoading));

  @override
  ErrorLoading get _value => super._value as ErrorLoading;
}

/// @nodoc

class _$ErrorLoading implements ErrorLoading {
  const _$ErrorLoading();

  @override
  String toString() {
    return 'ContactsEvent.errorLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ErrorLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialization,
    required TResult Function() errorLoading,
    required TResult Function(String email) emailPressed,
    required TResult Function(String phoneNumber) phoneCallPressed,
    required TResult Function(String url) socialNetworksPressed,
    required TResult Function() rateAppPressed,
  }) {
    return errorLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialization,
    TResult Function()? errorLoading,
    TResult Function(String email)? emailPressed,
    TResult Function(String phoneNumber)? phoneCallPressed,
    TResult Function(String url)? socialNetworksPressed,
    TResult Function()? rateAppPressed,
  }) {
    return errorLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialization,
    TResult Function()? errorLoading,
    TResult Function(String email)? emailPressed,
    TResult Function(String phoneNumber)? phoneCallPressed,
    TResult Function(String url)? socialNetworksPressed,
    TResult Function()? rateAppPressed,
    required TResult orElse(),
  }) {
    if (errorLoading != null) {
      return errorLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialization value) initialization,
    required TResult Function(ErrorLoading value) errorLoading,
    required TResult Function(OnEmailPressed value) emailPressed,
    required TResult Function(OnPhoneCallPressed value) phoneCallPressed,
    required TResult Function(OnSocialNetworksPressed value)
        socialNetworksPressed,
    required TResult Function(OnrateAppPressed value) rateAppPressed,
  }) {
    return errorLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialization value)? initialization,
    TResult Function(ErrorLoading value)? errorLoading,
    TResult Function(OnEmailPressed value)? emailPressed,
    TResult Function(OnPhoneCallPressed value)? phoneCallPressed,
    TResult Function(OnSocialNetworksPressed value)? socialNetworksPressed,
    TResult Function(OnrateAppPressed value)? rateAppPressed,
  }) {
    return errorLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialization value)? initialization,
    TResult Function(ErrorLoading value)? errorLoading,
    TResult Function(OnEmailPressed value)? emailPressed,
    TResult Function(OnPhoneCallPressed value)? phoneCallPressed,
    TResult Function(OnSocialNetworksPressed value)? socialNetworksPressed,
    TResult Function(OnrateAppPressed value)? rateAppPressed,
    required TResult orElse(),
  }) {
    if (errorLoading != null) {
      return errorLoading(this);
    }
    return orElse();
  }
}

abstract class ErrorLoading implements ContactsEvent {
  const factory ErrorLoading() = _$ErrorLoading;
}

/// @nodoc
abstract class $OnEmailPressedCopyWith<$Res> {
  factory $OnEmailPressedCopyWith(
          OnEmailPressed value, $Res Function(OnEmailPressed) then) =
      _$OnEmailPressedCopyWithImpl<$Res>;
  $Res call({String email});
}

/// @nodoc
class _$OnEmailPressedCopyWithImpl<$Res>
    extends _$ContactsEventCopyWithImpl<$Res>
    implements $OnEmailPressedCopyWith<$Res> {
  _$OnEmailPressedCopyWithImpl(
      OnEmailPressed _value, $Res Function(OnEmailPressed) _then)
      : super(_value, (v) => _then(v as OnEmailPressed));

  @override
  OnEmailPressed get _value => super._value as OnEmailPressed;

  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(OnEmailPressed(
      email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnEmailPressed implements OnEmailPressed {
  const _$OnEmailPressed(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'ContactsEvent.emailPressed(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OnEmailPressed &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(email);

  @JsonKey(ignore: true)
  @override
  $OnEmailPressedCopyWith<OnEmailPressed> get copyWith =>
      _$OnEmailPressedCopyWithImpl<OnEmailPressed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialization,
    required TResult Function() errorLoading,
    required TResult Function(String email) emailPressed,
    required TResult Function(String phoneNumber) phoneCallPressed,
    required TResult Function(String url) socialNetworksPressed,
    required TResult Function() rateAppPressed,
  }) {
    return emailPressed(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialization,
    TResult Function()? errorLoading,
    TResult Function(String email)? emailPressed,
    TResult Function(String phoneNumber)? phoneCallPressed,
    TResult Function(String url)? socialNetworksPressed,
    TResult Function()? rateAppPressed,
  }) {
    return emailPressed?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialization,
    TResult Function()? errorLoading,
    TResult Function(String email)? emailPressed,
    TResult Function(String phoneNumber)? phoneCallPressed,
    TResult Function(String url)? socialNetworksPressed,
    TResult Function()? rateAppPressed,
    required TResult orElse(),
  }) {
    if (emailPressed != null) {
      return emailPressed(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialization value) initialization,
    required TResult Function(ErrorLoading value) errorLoading,
    required TResult Function(OnEmailPressed value) emailPressed,
    required TResult Function(OnPhoneCallPressed value) phoneCallPressed,
    required TResult Function(OnSocialNetworksPressed value)
        socialNetworksPressed,
    required TResult Function(OnrateAppPressed value) rateAppPressed,
  }) {
    return emailPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialization value)? initialization,
    TResult Function(ErrorLoading value)? errorLoading,
    TResult Function(OnEmailPressed value)? emailPressed,
    TResult Function(OnPhoneCallPressed value)? phoneCallPressed,
    TResult Function(OnSocialNetworksPressed value)? socialNetworksPressed,
    TResult Function(OnrateAppPressed value)? rateAppPressed,
  }) {
    return emailPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialization value)? initialization,
    TResult Function(ErrorLoading value)? errorLoading,
    TResult Function(OnEmailPressed value)? emailPressed,
    TResult Function(OnPhoneCallPressed value)? phoneCallPressed,
    TResult Function(OnSocialNetworksPressed value)? socialNetworksPressed,
    TResult Function(OnrateAppPressed value)? rateAppPressed,
    required TResult orElse(),
  }) {
    if (emailPressed != null) {
      return emailPressed(this);
    }
    return orElse();
  }
}

abstract class OnEmailPressed implements ContactsEvent {
  const factory OnEmailPressed(String email) = _$OnEmailPressed;

  String get email => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OnEmailPressedCopyWith<OnEmailPressed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnPhoneCallPressedCopyWith<$Res> {
  factory $OnPhoneCallPressedCopyWith(
          OnPhoneCallPressed value, $Res Function(OnPhoneCallPressed) then) =
      _$OnPhoneCallPressedCopyWithImpl<$Res>;
  $Res call({String phoneNumber});
}

/// @nodoc
class _$OnPhoneCallPressedCopyWithImpl<$Res>
    extends _$ContactsEventCopyWithImpl<$Res>
    implements $OnPhoneCallPressedCopyWith<$Res> {
  _$OnPhoneCallPressedCopyWithImpl(
      OnPhoneCallPressed _value, $Res Function(OnPhoneCallPressed) _then)
      : super(_value, (v) => _then(v as OnPhoneCallPressed));

  @override
  OnPhoneCallPressed get _value => super._value as OnPhoneCallPressed;

  @override
  $Res call({
    Object? phoneNumber = freezed,
  }) {
    return _then(OnPhoneCallPressed(
      phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnPhoneCallPressed implements OnPhoneCallPressed {
  const _$OnPhoneCallPressed(this.phoneNumber);

  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'ContactsEvent.phoneCallPressed(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OnPhoneCallPressed &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(phoneNumber);

  @JsonKey(ignore: true)
  @override
  $OnPhoneCallPressedCopyWith<OnPhoneCallPressed> get copyWith =>
      _$OnPhoneCallPressedCopyWithImpl<OnPhoneCallPressed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialization,
    required TResult Function() errorLoading,
    required TResult Function(String email) emailPressed,
    required TResult Function(String phoneNumber) phoneCallPressed,
    required TResult Function(String url) socialNetworksPressed,
    required TResult Function() rateAppPressed,
  }) {
    return phoneCallPressed(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialization,
    TResult Function()? errorLoading,
    TResult Function(String email)? emailPressed,
    TResult Function(String phoneNumber)? phoneCallPressed,
    TResult Function(String url)? socialNetworksPressed,
    TResult Function()? rateAppPressed,
  }) {
    return phoneCallPressed?.call(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialization,
    TResult Function()? errorLoading,
    TResult Function(String email)? emailPressed,
    TResult Function(String phoneNumber)? phoneCallPressed,
    TResult Function(String url)? socialNetworksPressed,
    TResult Function()? rateAppPressed,
    required TResult orElse(),
  }) {
    if (phoneCallPressed != null) {
      return phoneCallPressed(phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialization value) initialization,
    required TResult Function(ErrorLoading value) errorLoading,
    required TResult Function(OnEmailPressed value) emailPressed,
    required TResult Function(OnPhoneCallPressed value) phoneCallPressed,
    required TResult Function(OnSocialNetworksPressed value)
        socialNetworksPressed,
    required TResult Function(OnrateAppPressed value) rateAppPressed,
  }) {
    return phoneCallPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialization value)? initialization,
    TResult Function(ErrorLoading value)? errorLoading,
    TResult Function(OnEmailPressed value)? emailPressed,
    TResult Function(OnPhoneCallPressed value)? phoneCallPressed,
    TResult Function(OnSocialNetworksPressed value)? socialNetworksPressed,
    TResult Function(OnrateAppPressed value)? rateAppPressed,
  }) {
    return phoneCallPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialization value)? initialization,
    TResult Function(ErrorLoading value)? errorLoading,
    TResult Function(OnEmailPressed value)? emailPressed,
    TResult Function(OnPhoneCallPressed value)? phoneCallPressed,
    TResult Function(OnSocialNetworksPressed value)? socialNetworksPressed,
    TResult Function(OnrateAppPressed value)? rateAppPressed,
    required TResult orElse(),
  }) {
    if (phoneCallPressed != null) {
      return phoneCallPressed(this);
    }
    return orElse();
  }
}

abstract class OnPhoneCallPressed implements ContactsEvent {
  const factory OnPhoneCallPressed(String phoneNumber) = _$OnPhoneCallPressed;

  String get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OnPhoneCallPressedCopyWith<OnPhoneCallPressed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnSocialNetworksPressedCopyWith<$Res> {
  factory $OnSocialNetworksPressedCopyWith(OnSocialNetworksPressed value,
          $Res Function(OnSocialNetworksPressed) then) =
      _$OnSocialNetworksPressedCopyWithImpl<$Res>;
  $Res call({String url});
}

/// @nodoc
class _$OnSocialNetworksPressedCopyWithImpl<$Res>
    extends _$ContactsEventCopyWithImpl<$Res>
    implements $OnSocialNetworksPressedCopyWith<$Res> {
  _$OnSocialNetworksPressedCopyWithImpl(OnSocialNetworksPressed _value,
      $Res Function(OnSocialNetworksPressed) _then)
      : super(_value, (v) => _then(v as OnSocialNetworksPressed));

  @override
  OnSocialNetworksPressed get _value => super._value as OnSocialNetworksPressed;

  @override
  $Res call({
    Object? url = freezed,
  }) {
    return _then(OnSocialNetworksPressed(
      url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnSocialNetworksPressed implements OnSocialNetworksPressed {
  const _$OnSocialNetworksPressed(this.url);

  @override
  final String url;

  @override
  String toString() {
    return 'ContactsEvent.socialNetworksPressed(url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OnSocialNetworksPressed &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(url);

  @JsonKey(ignore: true)
  @override
  $OnSocialNetworksPressedCopyWith<OnSocialNetworksPressed> get copyWith =>
      _$OnSocialNetworksPressedCopyWithImpl<OnSocialNetworksPressed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialization,
    required TResult Function() errorLoading,
    required TResult Function(String email) emailPressed,
    required TResult Function(String phoneNumber) phoneCallPressed,
    required TResult Function(String url) socialNetworksPressed,
    required TResult Function() rateAppPressed,
  }) {
    return socialNetworksPressed(url);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialization,
    TResult Function()? errorLoading,
    TResult Function(String email)? emailPressed,
    TResult Function(String phoneNumber)? phoneCallPressed,
    TResult Function(String url)? socialNetworksPressed,
    TResult Function()? rateAppPressed,
  }) {
    return socialNetworksPressed?.call(url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialization,
    TResult Function()? errorLoading,
    TResult Function(String email)? emailPressed,
    TResult Function(String phoneNumber)? phoneCallPressed,
    TResult Function(String url)? socialNetworksPressed,
    TResult Function()? rateAppPressed,
    required TResult orElse(),
  }) {
    if (socialNetworksPressed != null) {
      return socialNetworksPressed(url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialization value) initialization,
    required TResult Function(ErrorLoading value) errorLoading,
    required TResult Function(OnEmailPressed value) emailPressed,
    required TResult Function(OnPhoneCallPressed value) phoneCallPressed,
    required TResult Function(OnSocialNetworksPressed value)
        socialNetworksPressed,
    required TResult Function(OnrateAppPressed value) rateAppPressed,
  }) {
    return socialNetworksPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialization value)? initialization,
    TResult Function(ErrorLoading value)? errorLoading,
    TResult Function(OnEmailPressed value)? emailPressed,
    TResult Function(OnPhoneCallPressed value)? phoneCallPressed,
    TResult Function(OnSocialNetworksPressed value)? socialNetworksPressed,
    TResult Function(OnrateAppPressed value)? rateAppPressed,
  }) {
    return socialNetworksPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialization value)? initialization,
    TResult Function(ErrorLoading value)? errorLoading,
    TResult Function(OnEmailPressed value)? emailPressed,
    TResult Function(OnPhoneCallPressed value)? phoneCallPressed,
    TResult Function(OnSocialNetworksPressed value)? socialNetworksPressed,
    TResult Function(OnrateAppPressed value)? rateAppPressed,
    required TResult orElse(),
  }) {
    if (socialNetworksPressed != null) {
      return socialNetworksPressed(this);
    }
    return orElse();
  }
}

abstract class OnSocialNetworksPressed implements ContactsEvent {
  const factory OnSocialNetworksPressed(String url) = _$OnSocialNetworksPressed;

  String get url => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OnSocialNetworksPressedCopyWith<OnSocialNetworksPressed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnrateAppPressedCopyWith<$Res> {
  factory $OnrateAppPressedCopyWith(
          OnrateAppPressed value, $Res Function(OnrateAppPressed) then) =
      _$OnrateAppPressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnrateAppPressedCopyWithImpl<$Res>
    extends _$ContactsEventCopyWithImpl<$Res>
    implements $OnrateAppPressedCopyWith<$Res> {
  _$OnrateAppPressedCopyWithImpl(
      OnrateAppPressed _value, $Res Function(OnrateAppPressed) _then)
      : super(_value, (v) => _then(v as OnrateAppPressed));

  @override
  OnrateAppPressed get _value => super._value as OnrateAppPressed;
}

/// @nodoc

class _$OnrateAppPressed implements OnrateAppPressed {
  const _$OnrateAppPressed();

  @override
  String toString() {
    return 'ContactsEvent.rateAppPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OnrateAppPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialization,
    required TResult Function() errorLoading,
    required TResult Function(String email) emailPressed,
    required TResult Function(String phoneNumber) phoneCallPressed,
    required TResult Function(String url) socialNetworksPressed,
    required TResult Function() rateAppPressed,
  }) {
    return rateAppPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialization,
    TResult Function()? errorLoading,
    TResult Function(String email)? emailPressed,
    TResult Function(String phoneNumber)? phoneCallPressed,
    TResult Function(String url)? socialNetworksPressed,
    TResult Function()? rateAppPressed,
  }) {
    return rateAppPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialization,
    TResult Function()? errorLoading,
    TResult Function(String email)? emailPressed,
    TResult Function(String phoneNumber)? phoneCallPressed,
    TResult Function(String url)? socialNetworksPressed,
    TResult Function()? rateAppPressed,
    required TResult orElse(),
  }) {
    if (rateAppPressed != null) {
      return rateAppPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialization value) initialization,
    required TResult Function(ErrorLoading value) errorLoading,
    required TResult Function(OnEmailPressed value) emailPressed,
    required TResult Function(OnPhoneCallPressed value) phoneCallPressed,
    required TResult Function(OnSocialNetworksPressed value)
        socialNetworksPressed,
    required TResult Function(OnrateAppPressed value) rateAppPressed,
  }) {
    return rateAppPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initialization value)? initialization,
    TResult Function(ErrorLoading value)? errorLoading,
    TResult Function(OnEmailPressed value)? emailPressed,
    TResult Function(OnPhoneCallPressed value)? phoneCallPressed,
    TResult Function(OnSocialNetworksPressed value)? socialNetworksPressed,
    TResult Function(OnrateAppPressed value)? rateAppPressed,
  }) {
    return rateAppPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialization value)? initialization,
    TResult Function(ErrorLoading value)? errorLoading,
    TResult Function(OnEmailPressed value)? emailPressed,
    TResult Function(OnPhoneCallPressed value)? phoneCallPressed,
    TResult Function(OnSocialNetworksPressed value)? socialNetworksPressed,
    TResult Function(OnrateAppPressed value)? rateAppPressed,
    required TResult orElse(),
  }) {
    if (rateAppPressed != null) {
      return rateAppPressed(this);
    }
    return orElse();
  }
}

abstract class OnrateAppPressed implements ContactsEvent {
  const factory OnrateAppPressed() = _$OnrateAppPressed;
}
