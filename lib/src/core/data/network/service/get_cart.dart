import 'package:graphql/client.dart';
import 'package:injectable/injectable.dart';
import 'package:toto_mobile/src/core/data/network/models/get_cart.data.gql.dart';
import 'package:toto_mobile/src/core/data/network/models/get_cart.req.gql.dart';
import 'package:toto_mobile/src/core/data/network/models/get_cart.var.gql.dart';
import 'package:toto_mobile/src/core/data/network/models/get_cart_order.data.gql.dart';
import 'package:toto_mobile/src/core/data/network/models/get_cart_order.req.gql.dart';
import 'package:toto_mobile/src/core/data/network/models/get_cart_order.var.gql.dart';
import 'package:toto_mobile/src/utils/logger.dart';

abstract class CartApi {
  Future<GGetCartQueryData?> getCart(int id);
  Future<GGetCartOrderQueryData?> getCartOrder(int id);
}

@Injectable(as: CartApi)
class CartApiImpl extends CartApi {
  final GraphQLClient _client;

  CartApiImpl(this._client);

  @override
  Future<GGetCartQueryData?> getCart(int id) async {
    final vars = GGetCartQueryVars(
      (qVar) {
        qVar.id = id;
      },
    );
    final req = GGetCartQueryReq(
      (b) => b.vars = vars.toBuilder(),
    );
    final result = await _client.query(QueryOptions(
      document: req.operation.document,
      variables: vars.toJson(),
      fetchPolicy: FetchPolicy.noCache,
    ));

    if (result.hasException) throw Exception(result.exception);

    Logger.logger('getCart', result.data.toString());

    if (result.data != null) {
      return GGetCartQueryData.fromJson(result.data!);
    }
    return null;
  }

  Future<GGetCartOrderQueryData?> getCartOrder(int id) async {
    final vars = GGetCartOrderQueryVars(
          (qVar) {
        qVar.id = id;
      },
    );
    final req = GGetCartOrderQueryReq(
          (b) => b.vars = vars.toBuilder(),
    );
    final result = await _client.query(QueryOptions(
      document: req.operation.document,
      variables: vars.toJson(),
      fetchPolicy: FetchPolicy.noCache,
    ));

    if (result.hasException) throw Exception(result.exception);

    Logger.logger('getCart', result.data.toString());

    if (result.data != null) {
      return GGetCartOrderQueryData.fromJson(result.data!);
    }
    return null;
  }
}
