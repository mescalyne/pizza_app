import 'package:graphql/client.dart';
import 'package:injectable/injectable.dart';
import 'package:toto_mobile/src/core/data/network/models/check_create_order.data.gql.dart';
import 'package:toto_mobile/src/core/data/network/models/check_create_order.req.gql.dart';
import 'package:toto_mobile/src/core/data/network/models/check_create_order.var.gql.dart';
import 'package:toto_mobile/src/core/data/network/models/checkout_cart.data.gql.dart';
import 'package:toto_mobile/src/core/data/network/models/checkout_cart.req.gql.dart';
import 'package:toto_mobile/src/core/data/network/models/checkout_cart.var.gql.dart';
import 'package:toto_mobile/src/utils/logger.dart';

abstract class PaymentApi {
  Future<GCheckCreateOrderData?> checkCreateOrder();
  Future<GCheckoutCartData?> checkoutCart();
}

@Injectable(as: PaymentApi)
class PaymentApiImpl extends PaymentApi {
  final GraphQLClient _client;

  PaymentApiImpl(this._client);

  @override
  Future<GCheckCreateOrderData?> checkCreateOrder() async {
    final vars = GCheckCreateOrderVars();
    final req = GCheckCreateOrderReq(
          (b) => b.vars = vars.toBuilder(),
    );

    final result = await _client.mutate(MutationOptions(
        document: req.operation.document,
        variables: vars.toJson(),
        fetchPolicy: FetchPolicy.noCache));

    print('checkCreateOrder');
    if (result.hasException) throw result.exception!.graphqlErrors.first;

    Logger.logger('checkCreateOrder', result.data.toString());

    if (result.data != null) {
      return GCheckCreateOrderData.fromJson(result.data!);
    }
    return null;
  }

  @override
  Future<GCheckoutCartData?> checkoutCart() async {

    final vars = GCheckoutCartVars();
    final req = GCheckoutCartReq(
          (b) => b.vars = vars.toBuilder(),
    );

    final result = await _client.mutate(MutationOptions(
        document: req.operation.document,
        variables: vars.toJson(),
        fetchPolicy: FetchPolicy.noCache));
    print('checkoutCart');
    if (result.hasException) throw result.exception!.graphqlErrors.first;

    Logger.logger('checkoutCart', result.data.toString());

    if (result.data != null) {
      return GCheckoutCartData.fromJson(result.data!);
    }
    return null;
  }
  
}