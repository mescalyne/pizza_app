import 'package:graphql/client.dart';
import 'package:injectable/injectable.dart';
import 'package:toto_mobile/src/core/data/adapters/cart.dart';
import 'package:toto_mobile/src/core/data/models/network_result.dart';
import 'package:toto_mobile/src/core/data/network/service/get_cart.dart';
import 'package:toto_mobile/src/core/domain/entities/cart.dart';
import 'package:toto_mobile/src/utils/logger.dart';
import 'package:toto_mobile/src/utils/result.dart';

abstract class DeliveryDetailRepository {
  Future<Result<CartDto>> getCart(int id);
}

@Injectable(as: DeliveryDetailRepository)
class DeliveryDetailRepositoryImpl extends DeliveryDetailRepository {
  final CartApi _cartsApi;

  DeliveryDetailRepositoryImpl(this._cartsApi);

  @override
  Future<Result<CartDto>> getCart(int id) async {
    try {
      final _cartsQueryData = await _cartsApi.getCartOrder(id);
      if (_cartsQueryData?.getCartOrderInfo != null) {
        return Result.success(_cartsQueryData!.getCartOrderInfo.toCartDto);
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
