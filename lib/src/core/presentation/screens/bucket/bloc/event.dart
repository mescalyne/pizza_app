import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:toto_mobile/src/core/domain/entities/cart.dart';
import 'package:toto_mobile/src/utils/result.dart';

part 'event.freezed.dart';

@freezed
class BucketEvent with _$BucketEvent {
  const factory BucketEvent.loadBucket() = LoadBucketEvent;
  const factory BucketEvent.loadRecommend() = LoadRecommendEvent;
  const factory BucketEvent.incrCount(String id, int amount) = IncrCountEvent;
  const factory BucketEvent.decrCount(String id, int amount) = DecrCountEvent;
  const factory BucketEvent.delItem(String id) = DelItemEvent;
  const factory BucketEvent.cancelOrder() = CancelOrderEvent;
  const factory BucketEvent.addRecomend(String id, int amount) =
      AddRecommendEvent;
  const factory BucketEvent.acceptPromo(String prm) = AcceptPromoEvent;
  const factory BucketEvent.onRouteToOrdering() = OnRouteToOrderingEvent;
  const factory BucketEvent.onRouteToMenu() = OnRouteToMenuEvent;
  const factory BucketEvent.onEditCartItem(Result<CartDto> result) =
      OnEditCartItemEvent;
}
