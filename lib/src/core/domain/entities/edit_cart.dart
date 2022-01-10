import 'package:toto_mobile/src/core/domain/entities/cart.dart';

class EditCartDto {
  final String? terminalId;
  final bool? isSelfService;
  final int? addressId;
  final String? coupon;
  final CartPaymentType? paymentType;
  final String? customerName;
  final String? customerPhone;
  final DateTime? date;
  final int? changeFrom;
  final int? bonusSum;
  final int? personsCount;
  final String? comment;

  EditCartDto({
    this.terminalId,
    this.isSelfService,
    this.addressId,
    this.coupon,
    this.paymentType,
    this.customerName,
    this.customerPhone,
    this.date,
    this.changeFrom,
    this.bonusSum,
    this.personsCount,
    this.comment,
  });
}

class AddItemToCartInput {
  final String productId;
  final int amount;
  final String? name;
  final String? code;
  final List<CartItemModifierInput>? modifiers;

  AddItemToCartInput({
    required this.productId,
    required this.amount,
    this.code,
    this.name,
    this.modifiers,
  });
}

class CartItemModifierInput {
  final String productId;
  final int amount;
  final String? name;
  final String? groupId;
  final String? groupName;

  CartItemModifierInput({
    required this.productId,
    required this.amount,
    this.groupId,
    this.groupName,
    this.name,
  });
}
