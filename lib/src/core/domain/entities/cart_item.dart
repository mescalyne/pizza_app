import 'package:toto_mobile/src/core/domain/entities/product.dart';

class CartItemDto {
  final int id;
  final String productId;
  final ProductDto product;
  final String name;
  final int amount;
  final double? total;
  final double? discountSum;
  final double? sum;
  final String? code;
  final List<CartItemModifierDto>? modifiers;

  CartItemDto({
    required this.id,
    required this.productId,
    required this.product,
    required this.name,
    required this.amount,
    required this.total,
    required this.discountSum,
    required this.sum,
    required this.code,
    required this.modifiers,
  });
}

class CartItemModifierDto {
  final String id;
  final String type;
  final String productId;
  final ProductDto product;
  final String name;
  final int amount;
  final String? groupId;
  final String? groupName;

  CartItemModifierDto({
    required this.id,
    required this.type,
    required this.productId,
    required this.product,
    required this.name,
    required this.amount,
    required this.groupId,
    required this.groupName,
  });
}
