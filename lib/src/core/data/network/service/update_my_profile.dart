import 'dart:developer';
import 'package:graphql/client.dart';
import 'package:injectable/injectable.dart';
import 'package:toto_mobile/src/core/data/network/models/update_my_profile.data.gql.dart';
import 'package:toto_mobile/src/core/data/network/models/update_my_profile.req.gql.dart';
import 'package:toto_mobile/src/core/data/network/models/update_my_profile.var.gql.dart';


abstract class UpdateMyProfileApi {
  Future<GupdateCurrentUserData?> updateMyProfile(
      String name, String? email, String? dateOfBirth);
}

@Injectable(as: UpdateMyProfileApi)
class UpdateMyProfileApiImpl extends UpdateMyProfileApi {
  final GraphQLClient _client;

  UpdateMyProfileApiImpl(this._client);

  @override
  Future<GupdateCurrentUserData?> updateMyProfile(
      String name, String? email, String? dateOfBirth) async {
    final vars = GupdateCurrentUserVars((userVars) {
      userVars..name = name
      ..email= email
      ..date_of_birth = dateOfBirth;
    });

    final req = GupdateCurrentUserReq(
      (userVars) => userVars.vars = vars.toBuilder(),
    );

    final result = await _client.mutate(MutationOptions(
      document: req.operation.document,
      variables: vars.toJson(),
      fetchPolicy: FetchPolicy.noCache,
    ));

    if (result.hasException) throw Exception(result.exception);

    log('${result.data}');

    if (result.data != null) {
      return GupdateCurrentUserData.fromJson(result.data!);
    }
  }
}
