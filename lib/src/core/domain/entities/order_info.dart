import 'dart:core';

class OrderInfoDto {
  String? orderId;
  String? cancelCause;
  String? cancelComment;
  String? deliveryDate;
  String? actualTime;
  String? billTime;
  String? cancelTime;
  String? confirmTime;
  String? createdTime;
  String? printTime;
  String? sendTime;
  int? personsCount;

  OrderInfoDto({
    this.orderId,
    this.cancelCause,
    this.cancelComment,
    this.deliveryDate,
    this.actualTime,
    this.billTime,
    this.cancelTime,
    this.confirmTime,
    this.createdTime,
    this.printTime,
    this.sendTime,
    this.personsCount,
  });
}