import 'package:graphql/client.dart';
import 'package:injectable/injectable.dart';
import 'package:toto_mobile/src/core/data/network/models/get_contacts.req.gql.dart';
import 'package:toto_mobile/src/core/data/network/models/get_contacts.var.gql.dart';
import 'package:toto_mobile/src/core/data/network/models/get_contacts.data.gql.dart';
import 'package:toto_mobile/src/utils/logger.dart';

abstract class ContactApi {
  Future<GGetContactsQueryData?> getContacts(int cityId);
}

@Injectable(as: ContactApi)
class ContactApiImpl extends ContactApi {
  final GraphQLClient _client;

  ContactApiImpl(this._client);

  @override
  Future<GGetContactsQueryData?> getContacts(int cityId) async {
    final vars = GGetContactsQueryVars((b) => b..city_id = cityId);
    final req = GGetContactsQueryReq(
      (b) => b.vars = vars.toBuilder(),
    );
    final result = await _client.query(QueryOptions(
      document: req.operation.document,
      variables: vars.toJson(),
      fetchPolicy: FetchPolicy.noCache,
    ));

    if (result.hasException) throw Exception(result.exception);

    Logger.logger('getContacts', result.data.toString());

    if (result.data != null) {
      return GGetContactsQueryData.fromJson(result.data!);
    }
    return null;
  }
}
