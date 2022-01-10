
import 'package:graphql/client.dart';
import 'package:injectable/injectable.dart';
import 'package:toto_mobile/src/core/data/adapters/cart_paginator.dart';
import 'package:toto_mobile/src/core/data/models/network_result.dart';
import 'package:toto_mobile/src/core/data/network/service/get_archived_carts.dart';
import 'package:toto_mobile/src/core/domain/entities/cart_filters_input.dart';
import 'package:toto_mobile/src/core/domain/entities/carts_paginator.dart';
import 'package:toto_mobile/src/utils/logger.dart';
import 'package:toto_mobile/src/utils/result.dart';

abstract class DeliveryProgressRepository {
  Future<Result<CartsPaginatorDto>> getCarts(int? page, int? perPage, CartFiltersInputDto? filters);
}

@Injectable(as: DeliveryProgressRepository)
class DeliveryProgressRepositoryImpl extends DeliveryProgressRepository {
  final ArchivedCartsApi _cartsApi;

  DeliveryProgressRepositoryImpl(this._cartsApi);

  @override
  Future<Result<CartsPaginatorDto>> getCarts(int? page, int? perPage, CartFiltersInputDto? filters) async {
    try {
      final _cartsQueryData = await _cartsApi.getCarts(page, perPage, filters);
      if (_cartsQueryData?.getArchivedCarts != null) {
        return Result.success(_cartsQueryData!.getArchivedCarts.toCartPaginatorDto);
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