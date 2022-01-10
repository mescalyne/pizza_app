

import 'package:graphql/client.dart';
import 'package:injectable/injectable.dart';
import 'package:toto_mobile/src/core/data/models/network_result.dart';
import 'package:toto_mobile/src/core/data/network/service/payment/payment.dart';
import 'package:toto_mobile/src/utils/logger.dart';
import 'package:toto_mobile/src/utils/result.dart';

abstract class PaymentRepository {
  Future<Result> checkCreateOrder();
  Future<Result<String>> checkoutCart();
}

@Injectable(as: PaymentRepository)
class PaymentRepositoryImpl extends PaymentRepository {
  final PaymentApi _api;

  PaymentRepositoryImpl(this._api);

  @override
  Future<Result> checkCreateOrder() async {
    try {
      final _contactsQueryData = await _api.checkCreateOrder();
      if (_contactsQueryData?.checkCreateOrder != null) {
        print(_contactsQueryData?.checkCreateOrder);
        return Result.success(null);
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
  Future<Result<String>> checkoutCart() async {
    try {
      final _contactsQueryData = await _api.checkoutCart();
      if (_contactsQueryData?.checkoutCart != null) {
        print(_contactsQueryData?.checkoutCart?.url);
        return Result.success(_contactsQueryData?.checkoutCart?.url);
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

}