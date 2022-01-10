import 'dart:developer';

import 'package:graphql/client.dart';
import 'package:toto_mobile/src/core/data/network/models/refresh_token.data.gql.dart';
import 'package:toto_mobile/src/core/data/network/models/refresh_token.req.gql.dart';
import 'package:toto_mobile/src/core/data/network/models/refresh_token.var.gql.dart';

class RefreshApi {

  Future<GrefreshTokenData?> refreshToken(String refreshToken, String baseUrl) async {
    final vars = GrefreshTokenVars((d) {
      d.refresh_token = refreshToken;
    });
    final req = GrefreshTokenReq(
          (b) => b.vars = vars.toBuilder(),
    );
    var httpLink = HttpLink(baseUrl);
    final cacheStore = await HiveStore.open();
    var client = GraphQLClient(
      cache: GraphQLCache(store: cacheStore),
      link: Link.from([
        httpLink,
      ]),
    );

    final result = await client.mutate(MutationOptions(
        document: req.operation.document,
        variables: vars.toJson(),
        fetchPolicy: FetchPolicy.noCache));

    if (result.hasException) throw Exception(result.exception);

    log('${result.data}');

    return (result.data != null) ? GrefreshTokenData.fromJson(result.data!) : null;
  }
}
