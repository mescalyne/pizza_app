import 'package:injectable/injectable.dart';
import 'package:toto_mobile/src/core/data/repository/cart.dart';
import 'package:toto_mobile/src/core/domain/entities/cart.dart';
import 'package:toto_mobile/src/core/domain/entities/edit_cart.dart';
import 'package:toto_mobile/src/utils/result.dart';

abstract class GetMyCartUseCase {
  Future<Result<CartDto>> call();
}

@Injectable(as: GetMyCartUseCase)
class GetMyCartUseCaseImpl extends GetMyCartUseCase {
  final CartRepository _repository;

  GetMyCartUseCaseImpl(this._repository);

  @override
  Future<Result<CartDto>> call() {
    Future<Result<CartDto>> gotCart = _repository.getCart();
    return gotCart;
  }
}

abstract class RemoveItemUseCase {
  Future call(int id);
}

@Injectable(as: RemoveItemUseCase)
class RemoveItemUseCaseImpl extends RemoveItemUseCase {
  final CartRepository _repository;

  RemoveItemUseCaseImpl(this._repository);

  @override
  Future call(int id) {
    final cart = _repository.removeItemFromCart(id);
    return cart;
  }
}

abstract class EditCartItemUseCase {
  Future<Result<CartDto>> call(int id, int amount);
}

@Injectable(as: EditCartItemUseCase)
class EditCartItemUseCaseImpl extends EditCartItemUseCase {
  final CartRepository _repository;

  EditCartItemUseCaseImpl(this._repository);

  @override
  Future<Result<CartDto>> call(int id, int amount) async =>
      await _repository.editCartItem(id, amount);
}

abstract class EditCartUseCase {
  Future<Result<CartDto>> call(EditCartDto editCartDto);
}

@Injectable(as: EditCartUseCase)
class EditCartUseCaseImpl extends EditCartUseCase {
  final CartRepository _repository;

  EditCartUseCaseImpl(this._repository);

  @override
  Future<Result<CartDto>> call(EditCartDto editCart) =>
      _repository.editCart(editCart);
}

abstract class SetPromoUseCase {
  Future<Result<CartDto>> call(String promo);
}

@Injectable(as: SetPromoUseCase)
class SetPromoUseCaseImpl extends SetPromoUseCase {
  final CartRepository _repository;

  SetPromoUseCaseImpl(this._repository);

  @override
  Future<Result<CartDto>> call(String promo) => _repository.setPromo(promo);
}

abstract class GetRecommendedProductsForCartUseCase {
  Future call(int count);
}

@Injectable(as: GetRecommendedProductsForCartUseCase)
class GetRecommendedProductsForCartUseCaseImpl
    extends GetRecommendedProductsForCartUseCase {
  final CartRepository _repository;

  GetRecommendedProductsForCartUseCaseImpl(this._repository);

  @override
  Future call(int count) async {
    final recommendList =
        await _repository.getRecommendedProductsForCart(count);
    return recommendList;
  }
}

abstract class AddItemToCartUseCase {
  Future<Result<CartDto>> call(AddItemToCartInput addItemToCartInput);
}

@Injectable(as: AddItemToCartUseCase)
class AddItemToCartUseCaseImpl extends AddItemToCartUseCase {
  final CartRepository _repository;

  AddItemToCartUseCaseImpl(this._repository);

  @override
  Future<Result<CartDto>> call(AddItemToCartInput addItemToCartInput) async {
    final cart = await _repository.addItemToCart(addItemToCartInput);
    return cart;
  }
}

abstract class AddItemsToCartUseCase {
  Future<Result<CartDto>> call(List<AddItemToCartInput> addItemsToCartDto);
}

@Injectable(as: AddItemsToCartUseCase)
class AddItemsToCartUseCaseImpl extends AddItemsToCartUseCase {
  final CartRepository _repository;

  AddItemsToCartUseCaseImpl(this._repository);

  @override
  Future<Result<CartDto>> call(List<AddItemToCartInput> addItemsToCartDto) async {
    final cart = await _repository.addItemsToCart(addItemsToCartDto);
    return cart;
  }
}

abstract class ChangeCurrentDeliveryAddressUseCase {
  Future call(String addressId);
}

@Injectable(as: ChangeCurrentDeliveryAddressUseCase)
class ChangeCurrentDeliveryAddressUseCaseImpl
    extends ChangeCurrentDeliveryAddressUseCase {
  final CartRepository _repository;

  ChangeCurrentDeliveryAddressUseCaseImpl(this._repository);

  @override
  Future call(String addressId) async {
    final cart = await _repository.changeAddress(addressId);
    return cart;
  }
}

abstract class RemoveCartUseCase {
  Future call();
}

@Injectable(as: RemoveCartUseCase)
class RemoveCartUseCaseImpl extends RemoveCartUseCase {
  final CartRepository _repository;

  RemoveCartUseCaseImpl(this._repository);

  @override
  Future call() {
    return _repository.removeCart();
  }
}

abstract class WatchCountItemInCartAllUseCase {
  Stream<int> countItemAll();
}

@Injectable(as: WatchCountItemInCartAllUseCase)
class WatchCountItemInCartAllUseCaseImpl
    extends WatchCountItemInCartAllUseCase {
  final CartWatchableRepository _watchCountItemInCartAllRepository;

  WatchCountItemInCartAllUseCaseImpl(this._watchCountItemInCartAllRepository);
  @override
  Stream<int> countItemAll() {
    return _watchCountItemInCartAllRepository.countItemInCartAllController;
  }
}

abstract class WatchCountItemInCartUseCase {
  Stream<Map<String, int>> countItem();
  void setCount(String productId, int count);
  void setCountAll(Map<String, int> list);
  void delete(String productId);
  void deleteAll();
}

@Injectable(as: WatchCountItemInCartUseCase)
class WatchCountItemInCartUseCaseImpl extends WatchCountItemInCartUseCase {
  final CartWatchableRepository _watchCountItemInCartRepository;

  WatchCountItemInCartUseCaseImpl(this._watchCountItemInCartRepository);
  @override
  Stream<Map<String, int>> countItem() {
    return _watchCountItemInCartRepository.countItemInCartController;
  }

  @override
  void setCount(String productId, int count) {
    _watchCountItemInCartRepository.setCountItemInCartController(
        productId: productId, count: count);
  }

  @override
  void setCountAll(Map<String, int> list) {
    _watchCountItemInCartRepository.setCountItemInCartReplaceController(list);
  }

  @override
  void delete(String productId) {
    _watchCountItemInCartRepository.deleteCountItemInCartController(productId);
  }

  @override
  void deleteAll() {
    _watchCountItemInCartRepository.deleteAllCountItemInCartController();
  }
}
