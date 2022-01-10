import 'package:graphql/client.dart';
import 'package:injectable/injectable.dart';
import 'package:toto_mobile/src/core/data/network/models/get_unique_pages.data.gql.dart';
import 'package:toto_mobile/src/core/data/network/models/get_unique_pages.var.gql.dart';
import 'package:toto_mobile/src/core/data/network/models/get_unique_pages.req.gql.dart';
import 'package:toto_mobile/src/utils/logger.dart';


abstract class GetUniquePagesApi {
  Future<GGetUniquePagesData?> getPages();
}

@Injectable(as: GetUniquePagesApi)
class GetUniquePagesApiImpl extends GetUniquePagesApi {
  final GraphQLClient _client;

  GetUniquePagesApiImpl(this._client);

  @override
  Future<GGetUniquePagesData?> getPages() async {
    final vars = GGetUniquePagesVars();
    final req = GGetUniquePagesReq(
          (reqVars) => reqVars.vars = vars.toBuilder(),
    );

    final result = await _client.query(QueryOptions(
      document: req.operation.document,
      variables: vars.toJson(),
      fetchPolicy: FetchPolicy.noCache,
    ));

    if (result.hasException) throw Exception(result.exception);

    Logger.logger('getUser', result.data.toString());
    return (result.data != null) ? GGetUniquePagesData.fromJson(result.data!) : null;
  }
}
