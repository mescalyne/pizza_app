import 'package:injectable/injectable.dart';
import 'package:toto_mobile/src/core/data/repository/cart.dart';
import 'package:toto_mobile/src/core/domain/entities/product.dart';
import 'package:toto_mobile/src/utils/result.dart';

abstract class GetProductByIdsUseCase {
  Future<Result<List<ProductDto>>> call(ProductFiltersInput productFilters);
}

@Injectable(as: GetProductByIdsUseCase)
class GetProductByIdsUseCaseImpl extends GetProductByIdsUseCase {
  final CartRepository _repository;

  GetProductByIdsUseCaseImpl(this._repository);

  @override
  Future<Result<List<ProductDto>>> call(ProductFiltersInput productFilters) {
    return _repository.getProducts( productFilters);
  }
}

abstract class GetProductByIdUseCase {
  Future<Result<ProductDto>> call(String id);
}

@Injectable(as: GetProductByIdUseCase)
class GetProductByIdUseCaseImpl extends GetProductByIdUseCase {
  final CartRepository _repository;

  GetProductByIdUseCaseImpl(this._repository);

  @override
  Future<Result<ProductDto>> call(String id) {
    final res = _repository.getProduct(id);
    return res;
  }
}
