import 'dart:developer';

import 'package:built_collection/src/list.dart';
import 'package:flutter/material.dart';
import 'package:graphql/client.dart';
import 'package:injectable/injectable.dart';
import 'package:toto_mobile/src/core/data/models/product_filters.dart';
import 'package:toto_mobile/src/core/data/network/models/get_groups.data.gql.dart';
import 'package:toto_mobile/src/core/data/network/models/get_groups.req.gql.dart';
import 'package:toto_mobile/src/core/data/network/models/get_groups.var.gql.dart';
import 'package:toto_mobile/src/core/data/network/models/get_group.data.gql.dart';
import 'package:toto_mobile/src/core/data/network/models/get_group.req.gql.dart';
import 'package:toto_mobile/src/core/data/network/models/get_group.var.gql.dart';
import 'package:toto_mobile/src/core/data/network/models/get_products.data.gql.dart';
import 'package:toto_mobile/src/core/data/network/models/get_products.req.gql.dart';
import 'package:toto_mobile/src/core/data/network/models/get_products.var.gql.dart';
import 'package:toto_mobile/src/core/domain/entities/group.dart';
import 'package:toto_mobile/src/core/domain/entities/product.dart';
import 'package:toto_mobile/src/core/data/network/models/get_compaigns.data.gql.dart';
import 'package:toto_mobile/src/extensions/ListBuilder.dart';

import 'package:toto_mobile/src/utils/logger.dart';

abstract class MenuApi {
  Future<GGetProductsQueryData> getProducts(ProductFilters productFilters);
  Future<GGetGroupQueryData?> getGroupById(String groupId);
  Future<GGetGroupsQueryData?> getGroupsByIds(GroupFiltersInput groupFilters);
  Future<GGetProductsQueryData?> getProductsByParentGroupId(String id);
  Future<GGetProductsQueryData?> getProductsByIds(ProductFiltersInput input);
  Future<GGetGroupsQueryData> getCategories();
  Future<GGetCompaignsData?> getMarketingCamapaign();
}

@Injectable(as: MenuApi)
class MenuApiImpl extends MenuApi {
  final GraphQLClient _client;

  MenuApiImpl(this._client);

  @override
  Future<GGetProductsQueryData> getProducts(
      ProductFilters productFilters) async {
    final vars = GGetProductsQueryVars(
      (b) {
        b.filters.restaurant = productFilters.restaurant;
        b.filters.terminals = productFilters.terminals?.toList().toListBuilder;
      },
    );
    final req = GGetProductsQueryReq(
      (b) => b.vars = vars.toBuilder(),
    );

    final result = await _client.mutate(MutationOptions(
      document: req.operation.document,
      variables: vars.toJson(),
      fetchPolicy: FetchPolicy.noCache,
    ));

    if (result.hasException) throw Exception(result.exception);

    log('${result.data}');

    return GGetProductsQueryData.fromJson(result.data!)!;
  }

  @override
  Future<GGetGroupsQueryData> getCategories() async {
    final vars = GGetGroupsQueryVars();
    final req = GGetGroupsQueryReq(
      (b) => b.vars = vars.toBuilder(),
    );

    final result = await _client.mutate(MutationOptions(
      document: req.operation.document,
      variables: vars.toJson(),
      fetchPolicy: FetchPolicy.noCache,
    ));

    if (result.hasException) throw Exception(result.exception);

    Logger.logger('getCategories', result.data.toString());

    return GGetGroupsQueryData.fromJson(result.data!)!;
  }

  @override
  Future<GGetProductsQueryData> getProductsByIds(
      ProductFiltersInput productFilters) async {
    var gItems;
    if (productFilters.ids != null) {
      final reqVars = productFilters.ids!.map((item) => item.toString());
      gItems = ListBuilder<String>(reqVars);
    }
    final vars = GGetProductsQueryVars((group) {
      group.filters
        ..ids = gItems
        ..notIncludedInMenu = productFilters.notIncludedInMenu;
    });

    final req = GGetProductsQueryReq(
      (b) => b.vars = vars.toBuilder(),
    );

    final result = await _client.mutate(MutationOptions(
      document: req.operation.document,
      variables: vars.toJson(),
      fetchPolicy: FetchPolicy.noCache,
    ));

    if (result.hasException) throw Exception(result.exception);

    log('${result.data}');

    return GGetProductsQueryData.fromJson(result.data!)!;
  }

  @override
  Future<GGetProductsQueryData?> getProductsByParentGroupId(String id) async {
    final vars =
        GGetProductsQueryVars((input) => input.filters.parentGroupId = id);
    final req = GGetProductsQueryReq((input) => input.vars = vars.toBuilder());
    final result = await _client.mutate(MutationOptions(
      document: req.operation.document,
      variables: vars.toJson(),
      fetchPolicy: FetchPolicy.noCache,
    ));
    if (result.hasException) throw Exception(result.exception);
    Logger.logger('getProductsByParentGroupId', result.data.toString());
    return GGetProductsQueryData.fromJson(result.data!)!;
  }

  @override

  Future<GGetGroupQueryData?> getGroupById(String groupId) async {
    final vars = GGetGroupQueryVars((input) => input.id = groupId);
    final req = GGetGroupQueryReq((input) => input.vars = vars.toBuilder());
    final result = await _client.mutate(MutationOptions(
      document: req.operation.document,
      variables: vars.toJson(),
      fetchPolicy: FetchPolicy.noCache,
    ));

    if (result.hasException) throw Exception(result.exception);

    Logger.logger('getGroupById', result.data.toString());
    if (result.data != null) {
      return GGetGroupQueryData.fromJson(result.data!);
    }
    return null;
  }

  Future<GGetCompaignsData?> getMarketingCamapaign() async {
    final vars = GGetProductsQueryVars();
    final req = GGetProductsQueryReq((input) => input.vars = vars.toBuilder());
    final result = await _client.query(QueryOptions(

      document: req.operation.document,
      variables: vars.toJson(),
      fetchPolicy: FetchPolicy.noCache,
    ));
    if (result.hasException) throw Exception(result.exception);

    Logger.logger('getMarketingCamapaign', result.data.toString());
    if (result.data != null) {
      return GGetCompaignsData.fromJson(result.data!);
    }
    return null;
  }

  @override
  Future<GGetGroupsQueryData> getGroupsByIds(
      GroupFiltersInput groupFilters) async {
    var gItems;
    if (groupFilters.ids != null) {
      final reqVars = groupFilters.ids!.map((item) => item.toString());
      gItems = ListBuilder<String>(reqVars);
    }

    final vars = GGetGroupsQueryVars((group) {
      group.filters
        ..ids = gItems
        ..notIncludedInMenu = groupFilters.notIncludedInMenu;
    });

    final req = GGetGroupsQueryReq((input) => input.vars = vars.toBuilder());
    final result = await _client.mutate(MutationOptions(
      document: req.operation.document,
      variables: vars.toJson(),
      fetchPolicy: FetchPolicy.noCache,
    ));
    if (result.hasException) throw Exception(result.exception);
    Logger.logger('getGroupsByIds', result.data.toString());
    return GGetGroupsQueryData.fromJson(result.data!)!;
  }
}

