import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'event.freezed.dart';

@freezed
class AdditionEvent with _$AdditionEvent {
  const factory AdditionEvent.incrAddition(String id) = IncrAdditionEvent;
  const factory AdditionEvent.decrAddition(String id) = DecrAdditionEvent;
  const factory AdditionEvent.loadProduct() = LoadProductEvent;
  const factory AdditionEvent.loadModifiers() = LoadModifiersEvent;
  const factory AdditionEvent.prevScreen() = PrevScreenEvent;
  const factory AdditionEvent.nextScreen() = NextScreenEvent;
  const factory AdditionEvent.loadDrink() = LoadDrinkEvent;
  const factory AdditionEvent.loadSauce() = LoadSauceEvent;
  const factory AdditionEvent.onAddToCart() = OnAddToCartEvent;
  const factory AdditionEvent.onError() = OnErrorEvent;
  const factory AdditionEvent.changeSize(String id) = ChangeSizeEvent;
  const factory AdditionEvent.changeModifier(String id, String? group) = ChangeModifierEvent;
}
