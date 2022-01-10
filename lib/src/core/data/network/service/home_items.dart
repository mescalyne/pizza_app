import 'package:graphql/client.dart';
import 'package:injectable/injectable.dart';
import 'package:toto_mobile/src/core/data/network/models/get_cities.data.gql.dart';
import 'package:toto_mobile/src/core/data/network/models/get_cities.req.gql.dart';
import 'package:toto_mobile/src/core/data/network/models/get_cities.var.gql.dart';
import 'package:toto_mobile/src/utils/logger.dart';

abstract class HomeApi {
  Future<GGetCitiesQueryData?> getCities();
}

@Injectable(as: HomeApi)
class HomeApiImpl extends HomeApi {
  final GraphQLClient _client;

  HomeApiImpl(this._client);

  @override
  Future<GGetCitiesQueryData?> getCities() async {
    final vars = GGetCitiesQueryVars();
    final req = GGetCitiesQueryReq(
      (b) => b.vars = vars.toBuilder(),
    );

    final result = await _client.mutate(MutationOptions(
      document: req.operation.document,
      variables: vars.toJson(),
      fetchPolicy: FetchPolicy.noCache,
    ));

    if (result.hasException) throw Exception(result.exception);
    Logger.logger('getCities', result.data.toString());

    if (result.data != null) {
      return GGetCitiesQueryData.fromJson(result.data!)!;
    }

    return null;
  }
}
