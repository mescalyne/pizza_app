class PaymentInfo {
  String? deliveryPrice;
  int orderPrice;
  int? possibleBonuses;

  PaymentInfo(
      {required this.deliveryPrice,
      required this.orderPrice,
      required this.possibleBonuses});

  PaymentInfo copyWith({
    String? deliveryPrice,
    int? orderPrice,
    int? possibleBonuses,
  }) {
    return PaymentInfo(
      deliveryPrice: deliveryPrice ?? this.deliveryPrice,
      orderPrice: orderPrice ?? this.orderPrice,
      possibleBonuses: possibleBonuses ?? this.possibleBonuses,
    );
  }
}

enum PaymentType {cart, externalCart, nativePay, cash}

abstract class PaymentTypeContent {
  late PaymentType type;
}

class CashTypeContent implements PaymentTypeContent {
  bool? withoutShortChange;
  int? shortChange;
  @override
  late PaymentType type;

}

class CartTypeContent implements PaymentTypeContent {
  @override
  late PaymentType type;
}
