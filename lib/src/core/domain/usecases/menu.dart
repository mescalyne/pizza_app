import 'package:injectable/injectable.dart';
import 'package:toto_mobile/src/core/data/models/product_filters.dart';

import 'package:toto_mobile/src/core/data/repository/menu_items.dart';
import 'package:toto_mobile/src/core/domain/entities/group.dart';
import 'package:toto_mobile/src/core/domain/entities/marketing_compaigns.dart';
import 'package:toto_mobile/src/core/domain/entities/product.dart';
import 'package:toto_mobile/src/utils/result.dart';

abstract class GetProductsUseCase {
  Future<List<ProductDto>> call(ProductFilters productFilters);
}

abstract class GetGroupsUseCase {
  Future<List<GroupDto>> call();
}

abstract class GetMarketingCompaignsUseCase {
  Future<Result<List<MarketingCompaignDto>>> call();
}

abstract class GetProductsByParentGroupIdUseCase {
  Future<Result<List<ProductDto>>> call(String id);
}

abstract class GetGroupUseCase {
  Future<Result<GroupDto>> call(String groupId);
}

abstract class GetGroupsByIdsUseCase {
  Future<Result<List<GroupDto>>> call(GroupFiltersInput groupFilters);
}

@Injectable(as: GetMarketingCompaignsUseCase)
class GetMarketingCompaignsImpl extends GetMarketingCompaignsUseCase {
  final MenuItemsRepository _repository;
  GetMarketingCompaignsImpl(
    this._repository,
  );
  @override
  Future<Result<List<MarketingCompaignDto>>> call() {
    final marketingCompaigns = _repository.getMarketingCompaigns();
    return marketingCompaigns;
  }
}

@Injectable(as: GetProductsUseCase)
class GetProductsUseCaseImpl implements GetProductsUseCase {
  final MenuItemsRepository _repository;

  GetProductsUseCaseImpl(this._repository);

  @override
  Future<List<ProductDto>> call(ProductFilters productFilters) async {
    final products = await _repository.getProducts(productFilters);
    return products;
  }
}

@Injectable(as: GetGroupsUseCase)
class GetGroupdsImpl implements GetGroupsUseCase {
  final MenuItemsRepository _repository;

  GetGroupdsImpl(this._repository);

  @override
  Future<List<GroupDto>> call() => _repository.getGroups();
}

@Injectable(as: GetProductsByParentGroupIdUseCase)
class GetProductsByParentGrouptIdUseCaseImpl
    implements GetProductsByParentGroupIdUseCase {
  final MenuItemsRepository _repository;

  GetProductsByParentGrouptIdUseCaseImpl(this._repository);

  @override
  Future<Result<List<ProductDto>>> call(String id) async {
    final products = await _repository.getProductsByParentGroupId(id);
    return products;
  }
}

@Injectable(as: GetGroupUseCase)
class GetGroupImpl implements GetGroupUseCase {
  final MenuItemsRepository _repository;

  GetGroupImpl(this._repository);

  @override
  Future<Result<GroupDto>> call(String groupId) =>
      _repository.getGroup(groupId);
}

@Injectable(as: GetGroupsByIdsUseCase)
class GetGroupsByIdsImpl implements GetGroupsByIdsUseCase {
  final MenuItemsRepository _repository;

  GetGroupsByIdsImpl(this._repository);

  @override
  Future<Result<List<GroupDto>>> call(GroupFiltersInput groupFilters) =>
      _repository.getGroupsByIds(groupFilters);
}
