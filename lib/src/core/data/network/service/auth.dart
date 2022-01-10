import 'package:graphql/client.dart';
import 'package:injectable/injectable.dart';
import 'package:toto_mobile/src/core/data/network/models/auth_guest.data.gql.dart';
import 'package:toto_mobile/src/core/data/network/models/auth_guest.req.gql.dart';
import 'package:toto_mobile/src/core/data/network/models/auth_guest.var.gql.dart';
import 'package:toto_mobile/src/core/data/network/models/phone_auth.data.gql.dart';
import 'package:toto_mobile/src/core/data/network/models/phone_auth.req.gql.dart';
import 'package:toto_mobile/src/core/data/network/models/phone_auth.var.gql.dart';
import 'package:toto_mobile/src/core/data/network/models/request_phone_code_auth.data.gql.dart';
import 'package:toto_mobile/src/core/data/network/models/request_phone_code_auth.req.gql.dart';
import 'package:toto_mobile/src/core/data/network/models/request_phone_code_auth.var.gql.dart';
import 'package:toto_mobile/src/core/data/network/models/request_phone_code_register.data.gql.dart';
import 'package:toto_mobile/src/core/data/network/models/request_phone_code_register.req.gql.dart';
import 'package:toto_mobile/src/core/data/network/models/request_phone_code_register.var.gql.dart';
import 'package:toto_mobile/src/utils/logger.dart';

abstract class AuthApi {
  Future<GrequestPhoneCodeAuthData> requestPhoneCodeAuth(String telephone);
  Future<GrequestPhoneCodeRegisterData?> requestPhoneCodeRegister(String telephone, String name);

  Future<GphoneAuthData> phoneAuth(String telephone, String code);
}

@Injectable(as: AuthApi)
class AuthApiImpl extends AuthApi {
  final GraphQLClient _client;

  AuthApiImpl(this._client);

  @override
  Future<GphoneAuthData> phoneAuth(String telephone, String code) async {
    final vars = GphoneAuthVars((d) {
      d.telephone = telephone;
      d.code = code;
    });
    final req = GphoneAuthReq(
      (b) => b.vars = vars.toBuilder(),
    );

    final result = await _client.mutate(MutationOptions(
        document: req.operation.document,
        variables: vars.toJson(),
        fetchPolicy: FetchPolicy.noCache));

    if (result.hasException) throw result.exception!.graphqlErrors.first;

    Logger.logger('phoneAuthApi', result.data.toString());

    return GphoneAuthData.fromJson(result.data!)!;
  }

  @override
  Future<GrequestPhoneCodeAuthData> requestPhoneCodeAuth(
      String telephone) async {
    final vars = GrequestPhoneCodeAuthVars((d) => d..telephone = telephone);
    final req = GrequestPhoneCodeAuthReq(
      (b) => b.vars = vars.toBuilder(),
    );

    final result = await _client.mutate(MutationOptions(
        document: req.operation.document,
        variables: vars.toJson(),
        fetchPolicy: FetchPolicy.noCache));

    if (result.hasException) throw result.exception!.graphqlErrors.first;

    Logger.logger('requestPhoneCodeAuthApi', result.data.toString());

    return GrequestPhoneCodeAuthData.fromJson(result.data!)!;
  }

  @override
  Future<GrequestPhoneCodeRegisterData?> requestPhoneCodeRegister(String telephone, String name) async {
    final vars = GrequestPhoneCodeRegisterVars((registerVar) {
      registerVar.input.telephone = telephone;
      registerVar.input.name = name;
    }
    );
    final req = GrequestPhoneCodeRegisterReq(
          (b) => b.vars = vars.toBuilder(),
    );

    final result = await _client.mutate(MutationOptions(
        document: req.operation.document,
        variables: vars.toJson(),
        fetchPolicy: FetchPolicy.noCache));

    if (result.hasException) throw result.exception!.graphqlErrors.first;

    Logger.logger('requestPhoneCodeRegister', result.data.toString());

    if (result.data != null) {
      return GrequestPhoneCodeRegisterData.fromJson(result.data!);
    }
    return null;
  }
}

class AuthGuestApi {
  Future<GauthGuestData?> guestAuth(String baseUrl) async {
    final vars = GauthGuestVars();
    final req = GauthGuestReq(
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

    Logger.logger('guestAuth', result.data.toString());

    return (result.data != null) ? GauthGuestData.fromJson(result.data!) : null;
  }
}
