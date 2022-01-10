import 'package:built_collection/src/list.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:graphql/client.dart';
import 'package:injectable/injectable.dart';
import 'package:toto_mobile/src/core/data/network/models/add_item_to_cart.data.gql.dart';
import 'package:toto_mobile/src/core/data/network/models/add_item_to_cart.req.gql.dart';
import 'package:toto_mobile/src/core/data/network/models/add_item_to_cart.var.gql.dart';
import 'package:toto_mobile/src/core/data/network/models/add_items_to_cart.data.gql.dart';
import 'package:toto_mobile/src/core/data/network/models/add_items_to_cart.req.gql.dart';
import 'package:toto_mobile/src/core/data/network/models/add_items_to_cart.var.gql.dart';
import 'package:toto_mobile/src/core/data/network/models/edit_cart.data.gql.dart';
import 'package:toto_mobile/src/core/data/network/models/edit_cart.req.gql.dart';
import 'package:toto_mobile/src/core/data/network/models/edit_cart.var.gql.dart';
import 'package:toto_mobile/src/core/data/network/models/edit_cart_item.data.gql.dart';
import 'package:toto_mobile/src/core/data/network/models/edit_cart_item.req.gql.dart';
import 'package:toto_mobile/src/core/data/network/models/edit_cart_item.var.gql.dart';
import 'package:toto_mobile/src/core/data/network/models/get_my_cart.data.gql.dart';
import 'package:toto_mobile/src/core/data/network/models/get_my_cart.req.gql.dart';
import 'package:toto_mobile/src/core/data/network/models/get_my_cart.var.gql.dart';
import 'package:toto_mobile/src/core/data/network/models/get_product.data.gql.dart';
import 'package:toto_mobile/src/core/data/network/models/get_product.req.gql.dart';
import 'package:toto_mobile/src/core/data/network/models/get_product.var.gql.dart';
import 'package:toto_mobile/src/core/data/network/models/get_recommended_products_for_cart.data.gql.dart';
import 'package:toto_mobile/src/core/data/network/models/get_recommended_products_for_cart.req.gql.dart';
import 'package:toto_mobile/src/core/data/network/models/get_recommended_products_for_cart.var.gql.dart';
import 'package:toto_mobile/src/core/data/network/models/remove_cart.data.gql.dart';
import 'package:toto_mobile/src/core/data/network/models/remove_cart.req.gql.dart';
import 'package:toto_mobile/src/core/data/network/models/remove_cart.var.gql.dart';
import 'package:toto_mobile/src/core/data/network/models/remove_item_from_cart.data.gql.dart';
import 'package:toto_mobile/src/core/data/network/models/remove_item_from_cart.req.gql.dart';
import 'package:toto_mobile/src/core/data/network/models/remove_item_from_cart.var.gql.dart';
import 'package:toto_mobile/src/core/data/network/models/toto.schema.schema.gql.dart';
import 'package:toto_mobile/src/core/domain/entities/edit_cart.dart';
import 'package:toto_mobile/src/utils/logger.dart';

abstract class MyCartApi {
  Future<GGetMyCartData?> getCart();
  Future<GGetProductData?> getProduct(String id);
  Future<GRemoveItemFromCartData?> removeItemFromCart(int id);
  Future<GEditCartItemData?> editCartItem(int id, int amount);
  Future<GEditCartData?> editCart(EditCartDto editCartDto);
  Future<GAddItemToCartData?> addItemToCart(AddItemToCartInput item);
  Future<GAddItemsToCartData?> addItemsToCart(List<AddItemToCartInput> items);
  Future<GEditCartData?> editCartPayment(int? changeFrom, GCartPaymentType type, int bonusSum);
  Future<GGetRecommendedProductsForCartData?> getRecommendedProductsForCart(
      int count);
  Future<GRemoveCartData?> removeCart();
}

@Injectable(as: MyCartApi)
class CartApiImpl extends MyCartApi {
  final GraphQLClient _client;

  CartApiImpl(this._client);

  @override
  Future<GGetMyCartData?> getCart() async {
    final vars = GGetMyCartVars();
    final req = GGetMyCartReq(
      (myCart) => myCart.vars = vars.toBuilder(),
    );

    final result = await _client.query(QueryOptions(
      document: req.operation.document,
      variables: vars.toJson(),
      fetchPolicy: FetchPolicy.noCache,
    ));

    if (result.hasException) throw Exception(result.exception);

    Logger.logger('getMyCart', '${result.data}');

    if (result.data != null) return GGetMyCartData.fromJson(result.data!);
  }

  @override
  Future<GRemoveCartData?> removeCart() async {
    final vars = GRemoveCartVars();
    final req = GRemoveCartReq(
      (myCart) => myCart.vars = vars.toBuilder(),
    );
    final result = await _client.mutate(MutationOptions(
      document: req.operation.document,
      variables: vars.toJson(),
      fetchPolicy: FetchPolicy.noCache,
    ));

    if (result.hasException) throw Exception(result.exception);
    Logger.logger('removeCart', '${result.data}');
    if (result.data != null) {
      return GRemoveCartData.fromJson(result.data!);
    } else {
      return null;
    }
  }

  @override
  Future<GGetProductData?> getProduct(String id) async {
    final vars = GGetProductVars((product) => product..id = id);
    final req = GGetProductReq(
      (product) => product.vars = vars.toBuilder(),
    );

    final result = await _client.mutate(MutationOptions(
      document: req.operation.document,
      variables: vars.toJson(),
      fetchPolicy: FetchPolicy.noCache,
    ));

    if (result.hasException) throw Exception(result.exception);
    Logger.logger('getProduct', '${result.data}');
    if (result.data != null) return GGetProductData.fromJson(result.data!);
  }

  @override
  Future<GRemoveItemFromCartData?> removeItemFromCart(int id) async {
    final vars = GRemoveItemFromCartVars(
        (removeItem) => removeItem..cart_item_id = '$id');
    final req = GRemoveItemFromCartReq(
      (removeItem) => removeItem.vars = vars.toBuilder(),
    );

    final result = await _client.mutate(MutationOptions(
      document: req.operation.document,
      variables: vars.toJson(),
      fetchPolicy: FetchPolicy.noCache,
    ));

    if (result.hasException) throw Exception(result.exception);
    Logger.logger('removeItemFromCart', '${result.data}');
    if (result.data != null) {
      return GRemoveItemFromCartData.fromJson(result.data!);
    }
  }

  @override
  Future<GEditCartItemData?> editCartItem(int id, int amount) async {
    final vars = GEditCartItemVars((editItem) {
      editItem.input.cart_item_id = id;
      editItem.input.amount = amount;
    });

    final req = GEditCartItemReq(
      (removeItem) => removeItem.vars = vars.toBuilder(),
    );

    final result = await _client.mutate(MutationOptions(
      document: req.operation.document,
      variables: vars.toJson(),
      fetchPolicy: FetchPolicy.noCache,
    ));

    if (result.hasException) throw Exception(result.exception);
    Logger.logger('editCartItem', '${result.data}');
    if (result.data != null) return GEditCartItemData.fromJson(result.data!);
  }

  @override
  Future<GEditCartData?> editCart(EditCartDto editCartDto) async {
    final vars = editCartDto.toVars;

    final req = GEditCartReq(
      (editItem) => editItem.vars = vars.toBuilder(),
    );

    final result = await _client.mutate(MutationOptions(
      document: req.operation.document,
      variables: vars.toJson(),
      fetchPolicy: FetchPolicy.noCache,
    ));

    if (result.hasException) throw Exception(result.exception);
    Logger.logger('EditCart', '${result.data}');
    if (result.data != null) return GEditCartData.fromJson(result.data!);
  }

  @override
  Future<GGetRecommendedProductsForCartData?> getRecommendedProductsForCart(
      int count) async {
    final vars = GGetRecommendedProductsForCartVars(
        (limitVar) => limitVar.limit = count);
    final req = GGetRecommendedProductsForCartReq(
      (myCart) => myCart.vars = vars.toBuilder(),
    );
    final result = await _client.query(QueryOptions(
      document: req.operation.document,
      variables: vars.toJson(),
      fetchPolicy: FetchPolicy.noCache,
    ));
    if (result.hasException) throw Exception(result.exception);
    Logger.logger('gegetRecommendedProductsForCarttProduct', '${result.data}');
    if (result.data != null) {
      return GGetRecommendedProductsForCartData.fromJson(result.data!);
    }
  }

  @override
  Future<GAddItemToCartData?> addItemToCart(
      AddItemToCartInput addItemToCartInput) async {
    print(addItemToCartInput.modifiers);
    final vars = GAddItemToCartVars((addItem) {
      addItem.input
        ..product_id = addItemToCartInput.productId
        ..amount = addItemToCartInput.amount
        ..modifiers = addItemToCartInput.modifiers
            as ListBuilder<GcartItemModifierInput>?;
    });
    final req = GAddItemToCartReq(
      (removeItem) => removeItem.vars = vars.toBuilder(),
    );
    final result = await _client.mutate(MutationOptions(
      document: req.operation.document,
      variables: vars.toJson(),
      fetchPolicy: FetchPolicy.noCache,
    ));
    if (result.hasException) throw Exception(result.exception);
    Logger.logger('addItemToCart', '${result.data}');
    if (result.data != null) return GAddItemToCartData.fromJson(result.data!);
  }

  @override
  Future<GAddItemsToCartData?> addItemsToCart(
      List<AddItemToCartInput> items) async {
    final reqVars = items.map((item) => item.toVars);
    var gItems = ListBuilder<GaddItemToCartInput>(reqVars);
    final vars = GAddItemsToCartVars((input) => input..input.items = gItems);

    final req = GAddItemsToCartReq(
      (item) => item.vars = vars.toBuilder(),
    );
    print('ttt = $req');
    final result = await _client.mutate(MutationOptions(
      document: req.operation.document,
      variables: vars.toJson(),
      fetchPolicy: FetchPolicy.noCache,
    ));
    if (result.hasException) throw Exception(result.exception);
    Logger.logger('addItemsToCart', '${result.data}');
    if (result.data != null) return GAddItemsToCartData.fromJson(result.data!);
  }

  @override
  Future<GEditCartData?> editCartPayment(int? changeFrom, GCartPaymentType type, int bonusSum) async {
    final vars = GEditCartVars((b) {
      b.input.change_from = changeFrom;
      b.input.payment_type = type;
      b.input.bonus_sum = bonusSum;
      b.input.is_self_service = true;
      b.input.terminal_id = 'fc47147c-733e-dbb4-017c-6fa489e6fcc7';
      b.input.address_id = null;
    });

    final req = GEditCartReq(
          (removeItem) => removeItem.vars = vars.toBuilder(),
    );

    final result = await _client.mutate(MutationOptions(
      document: req.operation.document,
      variables: vars.toJson(),
      fetchPolicy: FetchPolicy.noCache,
    ));
    print('editCartPayment');
    if (result.hasException) throw Exception(result.exception);


    Logger.logger('editCartPayment', '${result.data}');

    if (result.data != null) {
      return GEditCartData.fromJson(result.data!);
    }
    return null;
  }
}

extension on CartItemModifierInput {
  GcartItemModifierInput get toVars {
    final vars = GcartItemModifierInput((itemModifier) {
      itemModifier.product_id = productId;
      itemModifier.amount = amount;
      if (name != null) {
        itemModifier.name = name;
      }
      if (groupId != null) {
        itemModifier.group_id = groupId;
      }
      if (groupName != null) {
        itemModifier.group_name = groupName;
      }
    });
    return vars;
  }
}

extension on AddItemToCartInput {
  GaddItemToCartInput get toVars {
    final vars = GaddItemToCartInput((addItem) {
      addItem.product_id = productId;
      addItem.amount = amount;
      if (name != null) {
        addItem.name = name;
      }
      if (code != null) {
        addItem.code = code;
      }
      if (modifiers != null) {
        var modifiersG = ListBuilder<GcartItemModifierInput>();
        for (var modifier in modifiers!) {
          modifiersG.add(modifier.toVars);
        }
        addItem.modifiers = modifiersG;
      }
    });
    return vars;
  }
}

extension on EditCartDto {
  GEditCartVars get toVars {
    final vars = GEditCartVars((editItem) {
      if (coupon != null) {
        editItem.input.coupon = coupon;
      }
      if (personsCount != null) {
        editItem.input.persons_count = personsCount;
      }
      if (bonusSum != null) {
        editItem.input.bonus_sum = bonusSum;
      }
      if (addressId != null) {
        editItem.input.address_id = addressId;
      }
      if (terminalId != null) {
        editItem.input.terminal_id = terminalId;
      }
      if (changeFrom != null) {
        editItem.input.change_from = changeFrom;
      }
      if (isSelfService != null) {
        editItem.input.is_self_service = isSelfService;
      }
      if (customerName != null) {
        editItem.input.customer_name = customerName;
      }
      if (customerPhone != null) {
        editItem.input.customer_phone = customerPhone;
      }
      if (comment != null) {
        editItem.input.comment = comment;
      }
      if (date != null) {
        var format = DateFormat('yyyy-MM-dd HH:mm:ss');
        editItem.input.date.value = format.format(date!);
      }
    });
    return vars;
  }
}
