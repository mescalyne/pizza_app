import 'package:freezed_annotation/freezed_annotation.dart';

part 'event.freezed.dart';

@freezed
class SetsEvent with _$SetsEvent {
  const factory SetsEvent.onLoaded() = OnLoaded;
  const factory SetsEvent.onItemDetailPage(int index) = OnItemDetailPage;
  const factory SetsEvent.onError() = OnError;
  const factory SetsEvent.onBackButton() = OnBackButton;
  const factory SetsEvent.onAddToCartButton() = OnAddToCartButton;
}
