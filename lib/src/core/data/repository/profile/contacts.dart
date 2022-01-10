import 'package:graphql/client.dart';
import 'package:injectable/injectable.dart';
import 'package:toto_mobile/src/core/data/adapters/contacts.dart';
import 'package:toto_mobile/src/core/data/models/network_result.dart';
import 'package:toto_mobile/src/core/data/network/service/get_contacts.dart';
import 'package:toto_mobile/src/core/domain/entities/contacts.dart';
import 'package:toto_mobile/src/utils/logger.dart';
import 'package:toto_mobile/src/utils/result.dart';

abstract class ContactsRepository {
  Future<Result<ContactsDto>> getContacts(int cityId);
}

@Injectable(as: ContactsRepository)
class ContactsRepositoryImpl extends ContactsRepository {
  final ContactApi _contactApi;

  ContactsRepositoryImpl(this._contactApi);

  @override
  Future<Result<ContactsDto>> getContacts(int cityId) async {
    try {
      final _contactsQueryData = await _contactApi.getContacts(cityId);
      if (_contactsQueryData?.getContacts != null) {
        return Result.success(_contactsQueryData!.getContacts!.toContactsDto);
      }
      return Result.failure(Failure(NetworkResult.error));
    } on GraphQLError catch (e) {
      Logger.logger('GraphQLError', '$e');
      return Result.failure(Failure(NetworkResult.error));
    } catch (e) {
      Logger.logger('NetworkError', '$e');
      return Result.failure(Failure(NetworkResult.networkFailure));
    }
  }
}
