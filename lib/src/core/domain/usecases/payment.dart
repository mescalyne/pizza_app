import 'package:injectable/injectable.dart';
import 'package:toto_mobile/src/core/data/models/network_result.dart';
import 'package:toto_mobile/src/core/data/repository/cart.dart';
import 'package:toto_mobile/src/core/data/repository/current_user.dart';
import 'package:toto_mobile/src/core/data/repository/payment.dart';
import 'package:toto_mobile/src/core/domain/entities/cart.dart';
import 'package:toto_mobile/src/core/presentation/entities/payment_info.dart';
import 'package:toto_mobile/src/utils/result.dart';

abstract class PaymentUseCase {
  Future<Result<PaymentInfo>> getPaymentData();

  Future<int?> getBonusCount();

  Future<Result<String?>> pay(PaymentTypeContent content, int bonusSum);
}

@Injectable(as: PaymentUseCase)
class PaymentUseCaseUseCaseImpl extends PaymentUseCase {
  final CartRepository _cartRepository;
  final CurrentUserRepository _userRepository;
  final PaymentRepository _paymentRepository;

  PaymentUseCaseUseCaseImpl(
      this._cartRepository, this._userRepository, this._paymentRepository);

  @override
  Future<int?> getBonusCount() async {
    var user = await _userRepository.getUser();
    if (user.isSuccess) {
      return user.value?.bonusBalance?.toInt();
    }
    return null;
  }

  @override
  Future<Result<PaymentInfo>> getPaymentData() async {
    try {
      var cart = await _cartRepository.getCart();
      if (cart.isSuccess && cart.value != null) {
        var paymentInfo = PaymentInfo(
            deliveryPrice: cart.value!.deliveryPrice,
            orderPrice: int.parse(cart.value!.total),
            possibleBonuses: null);
        return Result.success(paymentInfo);
      }
      return Result.failure(null);
    } catch (e) {
      return Result.failure(null);
    }
  }

  @override
  Future<Result<String?>> pay(PaymentTypeContent content, int bonusSum) async {
    var cart = await editCall(content, bonusSum);
    if (cart.isSuccess) {
      var checkoutCartResult = await _paymentRepository.checkoutCart();
      return checkoutCartResult;
    }
    return Result.failure(Failure(NetworkResult.error));
  }

  Future<Result> editCall(PaymentTypeContent content, int bonusSum) async {
    if (content.type == PaymentType.cart) {
      var cart = await _cartRepository.editCartPayment(
          null, CartPaymentType.cardExternal, bonusSum);
      return cart;
    } else if (content.type == PaymentType.cash && content is CashTypeContent) {
      if (content.withoutShortChange == false) {
        var cart = await _cartRepository.editCartPayment(
            null, CartPaymentType.cash, bonusSum);
        return cart;
      } else {
        var cart = await _cartRepository.editCartPayment(
            content.shortChange, CartPaymentType.cash, bonusSum);
        return cart;
      }
    } else {
      return Result.failure(Failure(NetworkResult.error));
    }
  }
}
