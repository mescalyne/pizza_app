import 'package:toto_mobile/src/core/data/adapters/product.dart';
import 'package:toto_mobile/src/core/data/network/models/cartItem_fragment.data.gql.dart';
import 'package:toto_mobile/src/core/data/network/models/cartItem_modifier_fragment.data.gql.dart';
import 'package:toto_mobile/src/core/domain/entities/cart_item.dart';

typedef CartItem = GCartItemFragment;
typedef CartItemModifier = GCartItemModifierFragment;

extension CartItemAdapter on CartItem {
  CartItemDto get toCartItemDto {
    return CartItemDto(
      id: id,
      productId: product_id,
      product: product.toProductDto,
      name: name,
      amount: amount,
      total: total,
      discountSum: discount_sum,
      sum: sum,
      code: code,
      modifiers: modifiers?.map((e) => e.toCartItemModifierDto).toList() ?? [],
    );
  }
}

extension CartItemModifierAdapter on CartItemModifier {
  CartItemModifierDto get toCartItemModifierDto {
    return CartItemModifierDto(
      id: id,
      type: type,
      productId: product_id,
      product: product.toProductDto,
      name: name,
      amount: amount,
      groupId: group_id,
      groupName: group_name,
    );
  }
}
