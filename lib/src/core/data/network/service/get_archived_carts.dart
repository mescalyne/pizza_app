import 'package:graphql/client.dart';
import 'package:injectable/injectable.dart';
import 'package:toto_mobile/src/core/data/network/models/get_archived_carts.data.gql.dart';
import 'package:toto_mobile/src/core/data/network/models/get_archived_carts.req.gql.dart';
import 'package:toto_mobile/src/core/data/network/models/get_archived_carts.var.gql.dart';
import 'package:toto_mobile/src/core/domain/entities/cart_filters_input.dart';
import 'package:toto_mobile/src/resources/maps.dart';
import 'package:toto_mobile/src/utils/logger.dart';

abstract class ArchivedCartsApi {
  Future<GGetArchivedCartsQueryData?> getCarts(
      int? page, int? perPage, CartFiltersInputDto? filter);
}

@Injectable(as: ArchivedCartsApi)
class ArchivedCartsApiImpl extends ArchivedCartsApi {
  final GraphQLClient _client;

  ArchivedCartsApiImpl(this._client);

  @override
  Future<GGetArchivedCartsQueryData?> getCarts(
      int? page, int? perPage, CartFiltersInputDto? filter) async {
    final vars = GGetArchivedCartsQueryVars(
      (qVar) {
        qVar.page = page;
        qVar.perPage = perPage;
        qVar.filters.not_done_status = filter?.notDone;
        qVar.filters.order_status = orderStatusDtoMapping[filter?.orderStatus];
        qVar.filters.payment_status = paymentStatusDtoMapping[filter?.paymentStatus];
      },
    );
    final req = GGetArchivedCartsQueryReq(
      (b) => b.vars = vars.toBuilder(),
    );
    final result = await _client.query(QueryOptions(
      document: req.operation.document,
      variables: vars.toJson(),
      fetchPolicy: FetchPolicy.noCache,
    ));

    if (result.hasException) throw Exception(result.exception);

    Logger.logger('getArchivedCarts', result.data.toString());

    if (result.data != null) {
      return GGetArchivedCartsQueryData.fromJson(result.data!);
    }
    return null;
  }
}
