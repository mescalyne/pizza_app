import 'dart:developer';

import 'package:graphql/client.dart';
import 'package:injectable/injectable.dart';
import 'package:toto_mobile/src/core/data/network/models/create_delivery_address.data.gql.dart';
import 'package:toto_mobile/src/core/data/network/models/create_delivery_address.req.gql.dart';
import 'package:toto_mobile/src/core/data/network/models/create_delivery_address.var.gql.dart';
import 'package:toto_mobile/src/core/data/network/models/delete_delivery_address.req.gql.dart';
import 'package:toto_mobile/src/core/data/network/models/delete_delivery_address.var.gql.dart';
import 'package:toto_mobile/src/core/data/network/models/get_all_delivery_address.data.gql.dart';
import 'package:toto_mobile/src/core/data/network/models/get_all_delivery_address.req.gql.dart';
import 'package:toto_mobile/src/core/data/network/models/get_all_delivery_address.var.gql.dart';
import 'package:toto_mobile/src/core/domain/entities/delivery_address.dart';
import 'package:toto_mobile/src/utils/logger.dart';

abstract class DeliveryAddressApi {
  Future<GCreateDeliveryAddressData?> createDeliveryAddress(
      DeliveryDto address);
  Future<GGetAllDeliveryAddressesData?> getAllDeliveryAddresses();
  Future<void> deleteDeliveryAddress(int id);
}

@Injectable(as: DeliveryAddressApi)
class DeliveryAddressApiImpl extends DeliveryAddressApi {
  final GraphQLClient _client;

  DeliveryAddressApiImpl(this._client);
  @override
  Future<GCreateDeliveryAddressData?> createDeliveryAddress(
      DeliveryDto address) async {
    log('${address.cityName}, ${address.street}, ${address.home}, ${address.latitude}, ${address.longitude}');
    final vars = GCreateDeliveryAddressVars((b) {
      b.input.city_name = address.cityName;
      b.input.home = address.home;
      b.input.street = address.street;
      b.input.latitude = address.latitude;
      b.input.longitude = address.longitude;
    });
    final req = GCreateDeliveryAddressReq(
      (b) => b.vars = vars.toBuilder(),
    );

    final result = await _client.mutate(MutationOptions(
      document: req.operation.document,
      variables: vars.toJson(),
      fetchPolicy: FetchPolicy.noCache,
    ));

    if (result.hasException) throw Exception(result.exception);

    Logger.logger('createDeliveryAddress', result.data.toString());

    if (result.data != null) {
      return GCreateDeliveryAddressData.fromJson(result.data!)!;
    }
  }

  @override
  Future<GGetAllDeliveryAddressesData?> getAllDeliveryAddresses() async {
    final vars = GGetAllDeliveryAddressesVars();
    final req = GGetAllDeliveryAddressesReq(
      (b) => b.vars = vars.toBuilder(),
    );

    final result = await _client.query(QueryOptions(
      document: req.operation.document,
      variables: vars.toJson(),
      fetchPolicy: FetchPolicy.noCache,
    ));

    if (result.hasException) throw Exception(result.exception);

    Logger.logger('getAllDeliveryAddresses', result.data.toString());

    if (result.data != null) {
      return GGetAllDeliveryAddressesData.fromJson(result.data!)!;
    }
  }

  @override
  Future<void> deleteDeliveryAddress(int id) async {
    final vars =
        GDeleteDeliveryAddressVars((addressVars) => addressVars..id = id);

    final req = GDeleteDeliveryAddressReq(
      (addressVars) => addressVars.vars = vars.toBuilder(),
    );

    await _client.mutate(MutationOptions(
      document: req.operation.document,
      variables: vars.toJson(),
      fetchPolicy: FetchPolicy.noCache,
    ));
  }
}
