import 'dart:developer';

import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:toto_mobile/src/core/data/models/network_result.dart';
import 'package:toto_mobile/src/core/data/models/product_filters.dart';
import 'package:toto_mobile/src/core/data/network/service/menu_items.dart';
import 'package:toto_mobile/src/core/data/adapters/product.dart';
import 'package:toto_mobile/src/core/data/adapters/group.dart';
import 'package:toto_mobile/src/core/domain/entities/group.dart';
import 'package:toto_mobile/src/core/data/adapters/marketing_compain.dart';
import 'package:toto_mobile/src/core/domain/entities/marketing_compaigns.dart';
import 'package:toto_mobile/src/core/domain/entities/product.dart';
import 'package:toto_mobile/src/utils/logger.dart';
import 'package:toto_mobile/src/utils/result.dart';

abstract class MenuItemsRepository {
  Future<List<ProductDto>> getProducts(ProductFilters productFilters);
  Future<List<GroupDto>> getGroups();
  Future<Result<List<ProductDto>>> getProductsByParentGroupId(String id);
  Future<Result<GroupDto>> getGroup(String groupId);
  Future<Result<List<GroupDto>>> getGroupsByIds(GroupFiltersInput groupFilters);
  Future<Result<List<MarketingCompaignDto>>> getMarketingCompaigns();
}

@Injectable(as: MenuItemsRepository)
class MenuItemsRepositoryImpl extends MenuItemsRepository {
  final MenuApi _menuApi;

  MenuItemsRepositoryImpl(this._menuApi);

  @override
  Future<List<GroupDto>> getGroups() async {
    final categ = await _menuApi.getCategories();
    return categ.getGroups!.map((group) => group.toGroupDto).toList();
  }

  @override
  Future<List<ProductDto>> getProducts(ProductFilters productFilters) async {
    final products = await _menuApi.getProducts(productFilters);
    return products.getProducts!.map((product) {
      log(product.name);

      log(product.images.toString());
      return product.toProductDto;
    }).toList();
  }

  @override
  Future<Result<List<ProductDto>>> getProductsByParentGroupId(String id) async {
    final products = await _menuApi.getProductsByParentGroupId(id);
    try {
      if (products != null && products.getProducts != null) {
        return Result.success(
            products.getProducts!.map((item) => item.toProductDto).toList());
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
  Future<Result<GroupDto>> getGroup(String groupId) async {
    final group = await _menuApi.getGroupById(groupId);
    try {
      if (group != null && group.getGroup != null) {
        return Result.success(group.getGroup!.toGroupDto);
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
  Future<Result<List<GroupDto>>> getGroupsByIds(GroupFiltersInput groupFilters) async {
    final group = await _menuApi.getGroupsByIds(groupFilters);
    try {
      if (group != null && group.getGroups != null) {
        return Result.success(
            group.getGroups!.map((element) => element.toGroupDto).toList());
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

  Future<Result<List<MarketingCompaignDto>>> getMarketingCompaigns() async {
    final marketingCompaigns = await _menuApi.getMarketingCamapaign();
    try {
      if (marketingCompaigns?.getMarketingCampaigns != null) {
        return Result.success(
          marketingCompaigns!.getMarketingCampaigns!
              .map((item) => item.toMarketingCompaignDto)
              .toList(),
        );
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
