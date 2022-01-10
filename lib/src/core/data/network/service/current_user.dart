import 'package:graphql/client.dart';
import 'package:injectable/injectable.dart';
import 'package:toto_mobile/src/core/data/network/models/me.data.gql.dart';
import 'package:toto_mobile/src/core/data/network/models/me.var.gql.dart';
import 'package:toto_mobile/src/core/data/network/models/me.req.gql.dart';
import 'package:toto_mobile/src/utils/logger.dart';

abstract class GetCurrentUserApi {
  Future<GGetCurrentUserData?> getUser();
}

@Injectable(as: GetCurrentUserApi)
class GetCurrentUserApiImpl extends GetCurrentUserApi {
  final GraphQLClient _client;

  GetCurrentUserApiImpl(this._client);

  @override
  Future<GGetCurrentUserData?> getUser() async {
    final vars = GGetCurrentUserVars();
    final req = GGetCurrentUserReq(
          (userVars) => userVars.vars = vars.toBuilder(),
    );

    final result = await _client.query(QueryOptions(
      document: req.operation.document,
      variables: vars.toJson(),
      fetchPolicy: FetchPolicy.noCache,
    ));

    if (result.hasException) throw Exception(result.exception);
    Logger.logger('getUser', result.data.toString());
    return (result.data != null) ? GGetCurrentUserData.fromJson(result.data!) : null;
  }
}
