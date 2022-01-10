import 'package:freezed_annotation/freezed_annotation.dart';

part 'event.freezed.dart';

@freezed
class ContactsEvent with _$ContactsEvent {
  const factory ContactsEvent.initialization() = Initialization;
  const factory ContactsEvent.errorLoading() = ErrorLoading;
  const factory ContactsEvent.emailPressed(String email) = OnEmailPressed;
  const factory ContactsEvent.phoneCallPressed(String phoneNumber) =
      OnPhoneCallPressed;
  const factory ContactsEvent.socialNetworksPressed(String url) =
      OnSocialNetworksPressed;
  const factory ContactsEvent.rateAppPressed() = OnrateAppPressed;
}
