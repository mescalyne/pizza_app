import 'package:freezed_annotation/freezed_annotation.dart';
part 'event.freezed.dart';

@freezed
class StartPageEvent with _$StartPageEvent {
  const factory StartPageEvent.onResumeButtonClicked() = OnResumeButtonClicked;
  const factory StartPageEvent.checkPermissions() = CheckPermissions;
}