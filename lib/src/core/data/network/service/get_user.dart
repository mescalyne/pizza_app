import 'package:graphql/client.dart';
import 'package:injectable/injectable.dart';
import 'package:toto_mobile/src/core/data/network/models/get_user.data.gql.dart';
import 'package:toto_mobile/src/core/data/network/models/get_user.var.gql.dart';
import 'package:toto_mobile/src/core/data/network/models/get_user.req.gql.dart';
import 'package:toto_mobile/src/utils/logger.dart';

abstract class GetUserApi {
  Future<GGetUserData?> getUser(int id);
}

@Injectable(as: GetUserApi)
class GetUserApiImpl extends GetUserApi {
  final GraphQLClient _client;

  GetUserApiImpl(this._client);

  @override
  Future<GGetUserData?> getUser(int id) async {
    final vars = GGetUserVars((user) => user..id = '$id');
    final req = GGetUserReq((user) => user.vars = vars.toBuilder());

    final result = await _client.mutate(
      MutationOptions(
        document: req.operation.document,
        variables: vars.toJson(),
        fetchPolicy: FetchPolicy.noCache,
      ),
    );

    if (result.hasException) throw Exception(result.exception);

    Logger.logger('getUser', result.data.toString());

    if (result.data != null) return GGetUserData.fromJson(result.data!);
  }
}
