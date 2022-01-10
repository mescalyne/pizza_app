import 'package:graphql/client.dart';
import 'package:injectable/injectable.dart';
import 'package:toto_mobile/src/core/data/network/models/get_page.data.gql.dart';
import 'package:toto_mobile/src/core/data/network/models/get_page.req.gql.dart';
import 'package:toto_mobile/src/core/data/network/models/get_page.var.gql.dart';
import 'package:toto_mobile/src/utils/logger.dart';


abstract class PageApi {
  Future<GGetPageQueryData?> getPage(int cityId, String slug);
}

@Injectable(as: PageApi)
class PageApiImpl extends PageApi {
  final GraphQLClient _client;

  PageApiImpl(this._client);

  @override
  Future<GGetPageQueryData?> getPage(int cityId, String slug) async {
    final vars = GGetPageQueryVars(
          (b) {
        b.city_id = cityId;
        b.slug = slug;
      },
    );
    final req = GGetPageQueryReq(
          (b) => b.vars = vars.toBuilder(),
    );
    final result = await _client.query(QueryOptions(
      document: req.operation.document,
      variables: vars.toJson(),
      fetchPolicy: FetchPolicy.noCache,
    ));

    if (result.hasException) throw Exception(result.exception);

    Logger.logger('getPage', result.data.toString());

    if (result.data != null) {
      return GGetPageQueryData.fromJson(result.data!);
    }
    return null;
  }
  
}


