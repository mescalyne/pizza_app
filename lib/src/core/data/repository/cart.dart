import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';
import 'package:toto_mobile/src/core/data/adapters/cart.dart';
import 'package:toto_mobile/src/core/data/adapters/product.dart';
import 'package:toto_mobile/src/core/data/models/network_result.dart';
import 'package:toto_mobile/src/core/data/network/service/cart.dart';
import 'package:toto_mobile/src/core/data/network/service/menu_items.dart';
import 'package:toto_mobile/src/core/domain/entities/cart.dart';
import 'package:toto_mobile/src/core/domain/entities/edit_cart.dart';
import 'package:toto_mobile/src/core/domain/entities/product.dart';
import 'package:toto_mobile/src/resources/maps.dart';
import 'package:toto_mobile/src/utils/logger.dart';
import 'package:toto_mobile/src/utils/result.dart';

abstract class CartRepository {
  Future<Result<CartDto>> getCart();

  Future<Result<ProductDto>> getProduct(id);

  Future<Result<List<ProductDto>>> getProducts(ProductFiltersInput productFilters);

  Future<Result<CartDto>> removeItemFromCart(id);

  Future<Result<CartDto>> editCartItem(id, amount);

  Future<Result<CartDto>> editCart(EditCartDto editCart);

  Future<Result<CartDto>> editCartPayment(int? changeFrom, CartPaymentType type, int bonusSum);

  Future<Result<CartDto>> setPromo(promo);

  Future<Result<CartDto>> changeAddress(addressId);

  Future<Result<List<ProductDto>>> getRecommendedProductsForCart(count);

  Future<Result<CartDto>> addItemToCart(AddItemToCartInput addItemToCartInput);

  Future<Result<CartDto>> addItemsToCart(
      List<AddItemToCartInput> addItemsToCartDto);

  Future<Result<CartDto>> removeCart();
}

@Singleton()
class CartWatchableRepository {
  final _countItemInCartAllController = BehaviorSubject<int>();
  Stream<int> get countItemInCartAllController =>
      _countItemInCartAllController.stream;

  void setCountItemInCartAllController(int count) {
    _countItemInCartAllController.add(count);
  }

  final _countItemInCartController = BehaviorSubject<Map<String, int>>();
  Stream<Map<String, int>> get countItemInCartController =>
      _countItemInCartController.stream;

  void setCountItemInCartController(
      {required String productId, required int count}) {
    Map<String, int> list = _countItemInCartController.value ?? {};
    if (list.keys.any((element) => (productId == element))) {
      list[productId] = (list[productId]! + count);
    } else {
      list.addAll({productId: count});
    }
    _countItemInCartAllController.add(list.length);
    _countItemInCartController.add(list);
  }

  void setCountItemInCartReplaceController(Map<String, int> list) {
    _countItemInCartController.add(list);
    _countItemInCartAllController.add(list.length);
  }

  void deleteCountItemInCartController(String productId) {
    Map<String, int> list = _countItemInCartController.value ?? {};
    if (list.keys.any((element) => (productId == element))) {
      list.remove(productId);
    }
    _countItemInCartController.add(list);
    _countItemInCartAllController.add(list.length);
  }

  void deleteAllCountItemInCartController() {
    _countItemInCartAllController.add(0);
    _countItemInCartController.add({});
  }
}

@Injectable(as: CartRepository)
class CartRepositoryImpl extends CartRepository {
  final MyCartApi cartApi;
  final MenuApi menuApi;

  CartRepositoryImpl(this.cartApi, this.menuApi);

  @override
  Future<Result<CartDto>> getCart() async {
    final cart = await cartApi.getCart();
    try {
      if (cart != null) {
        return Result.success(cart.getMyCart.toCartDto);
      }
      return Result.failure(Failure(NetworkResult.error));
    } on GraphQLError catch (e) {
      Logger.logger('GraphQLError', '$e');
      return Result.failure(Failure(NetworkResult.error));
    } catch (e) {
      Logger.logger('NetworkError', '$e');
      return Result.failure(Failure(NetworkResult.networkFailure));
    }
  }

  @override
  Future<Result<ProductDto>> getProduct(id) async {
    final product = await cartApi.getProduct(id);
    try {
      return Result.success(product!.getProduct!.toProductDto);
    } on GraphQLError catch (e) {
      Logger.logger('GraphQLError', '$e');
      return Result.failure(Failure(NetworkResult.error));
    } catch (e) {
      Logger.logger('NetworkError', '$e');
      return Result.failure(Failure(NetworkResult.networkFailure));
    }
  }

  @override
  Future<Result<List<ProductDto>>> getProducts(ProductFiltersInput productFilters) async {
    try {
      final products = await menuApi.getProductsByIds(productFilters);
      return Result.success(products?.getProducts?.map((item) {        
        return item.toProductDto;
      }).toList());
    } on GraphQLError catch (e) {
      Logger.logger('GraphQLError', '$e');
      return Result.failure(Failure(NetworkResult.error));
    } catch (e) {
      Logger.logger('NetworkError', '$e');
      return Result.failure(Failure(NetworkResult.networkFailure));
    }
  }

  @override
  Future<Result<CartDto>> removeItemFromCart(id) async {
    final cart = await cartApi.removeItemFromCart(id);
    try {
      if (cart != null) {
        return Result.success(cart.removeItemFromCart.toCartDto);
      }
      return Result.failure(Failure(NetworkResult.error));
    } on GraphQLError catch (e) {
      Logger.logger('GraphQLError', '$e');
      return Result.failure(Failure(NetworkResult.error));
    } catch (e) {
      Logger.logger('NetworkError', '$e');
      return Result.failure(Failure(NetworkResult.networkFailure));
    }
  }

  @override
  Future<Result<CartDto>> editCartItem(id, amount) async {
    final cart = await cartApi.editCartItem(id, amount);
    try {
      if (cart != null) return Result.success(cart.editCartItem.toCartDto);
      return Result.failure(Failure(NetworkResult.error));
    } on GraphQLError catch (e) {
      Logger.logger('GraphQLError', '$e');
      return Result.failure(Failure(NetworkResult.error));
    } catch (e) {
      Logger.logger('NetworkError', '$e');
      return Result.failure(Failure(NetworkResult.networkFailure));
    }
  }

  @override
  Future<Result<CartDto>> editCart(EditCartDto editCart) async {
    final cart = await cartApi.editCart(editCart);
    try {
      if (cart != null) return Result.success(cart.editCart.toCartDto);
      return Result.failure(Failure(NetworkResult.error));
    } on GraphQLError catch (e) {
      Logger.logger('GraphQLError', '$e');
      return Result.failure(Failure(NetworkResult.error));
    } catch (e) {
      Logger.logger('NetworkError', '$e');
      return Result.failure(Failure(NetworkResult.networkFailure));
    }
  }

  @override
  Future<Result<CartDto>> setPromo(promo) async {
    final cart = await cartApi.editCart(EditCartDto(coupon: promo));
    try {
      if (cart != null) return Result.success(cart.editCart.toCartDto);
      return Result.failure(Failure(NetworkResult.error));
    } on GraphQLError catch (e) {
      Logger.logger('GraphQLError', '$e');
      return Result.failure(Failure(NetworkResult.error));
    } catch (e) {
      Logger.logger('NetworkError', '$e');
      return Result.failure(Failure(NetworkResult.networkFailure));
    }
  }

  @override
  Future<Result<CartDto>> changeAddress(addressId) async {
    final cart = await cartApi.editCart(EditCartDto(addressId: addressId));
    try {
      if (cart != null) return Result.success(cart.editCart.toCartDto);
      return Result.failure(Failure(NetworkResult.error));
    } on GraphQLError catch (e) {
      Logger.logger('GraphQLError', '$e');
      return Result.failure(Failure(NetworkResult.error));
    } catch (e) {
      Logger.logger('NetworkError', '$e');
      return Result.failure(Failure(NetworkResult.networkFailure));
    }
  }

  @override
  Future<Result<List<ProductDto>>> getRecommendedProductsForCart(count) async {
    final recommendProduct = await cartApi.getRecommendedProductsForCart(count);
    try {
      if (recommendProduct != null) {
        return Result.success(recommendProduct.getRecommendedProductsForCart!
            .map((item) => item.toProductDto)
            .toList());
      }
      return Result.failure(Failure(NetworkResult.error));
    } on GraphQLError catch (e) {
      Logger.logger('GraphQLError', '$e');
      return Result.failure(Failure(NetworkResult.error));
    } catch (e) {
      Logger.logger('NetworkError', '$e');
      return Result.failure(Failure(NetworkResult.networkFailure));
    }
  }

  @override
  Future<Result<CartDto>> addItemToCart(AddItemToCartInput addItemToCartInput) async {
    final cart = await cartApi.addItemToCart(addItemToCartInput);
    try {
      if (cart != null) return Result.success(cart.addItemToCart.toCartDto);
      return Result.failure(Failure(NetworkResult.error));
    } on GraphQLError catch (e) {
      Logger.logger('GraphQLError', '$e');
      return Result.failure(Failure(NetworkResult.error));
    } catch (e) {
      Logger.logger('NetworkError', '$e');
      return Result.failure(Failure(NetworkResult.networkFailure));
    }
  }

  @override
  Future<Result<CartDto>> addItemsToCart(
      List<AddItemToCartInput> addItemsToCartDto) async {
    final cart = await cartApi.addItemsToCart(addItemsToCartDto);
    try {
      if (cart != null) return Result.success(cart.addItemsToCart.toCartDto);
      return Result.failure(Failure(NetworkResult.error));
    } on GraphQLError catch (e) {
      Logger.logger('GraphQLError', '$e');
      return Result.failure(Failure(NetworkResult.error));
    } catch (e) {
      Logger.logger('NetworkError', '$e');
      return Result.failure(Failure(NetworkResult.networkFailure));
    }
  }

  @override
  Future<Result<CartDto>> removeCart() async {
    final cart = await cartApi.removeCart();
    try {
      if (cart != null) return Result.success(cart.removeCart!.toCartDto);
      return Result.failure(Failure(NetworkResult.error));
    } on GraphQLError catch (e) {
      Logger.logger('GraphQLError', '$e');
      return Result.failure(Failure(NetworkResult.error));
    } catch (e) {
      Logger.logger('NetworkError', '$e');
      return Result.failure(Failure(NetworkResult.networkFailure));
    }
  }

  @override
  Future<Result<CartDto>> editCartPayment(int? changeFrom, CartPaymentType type, int bonusSum) async {
    try {
      final cart = await cartApi.editCartPayment(changeFrom, mapPaymentType[type]!, bonusSum);
      if (cart != null) return Result.success(cart.editCart.toCartDto);
      return Result.failure(Failure(NetworkResult.error));
    } on GraphQLError catch (e) {
      Logger.logger('GraphQLError', '$e');
      return Result.failure(Failure(NetworkResult.error));
    } catch (e) {
      Logger.logger('NetworkError', '$e');
      return Result.failure(Failure(NetworkResult.networkFailure));
    }
  }
}
