import 'package:injectable/injectable.dart';
import 'package:toto_mobile/src/core/data/repository/profile/contacts.dart';
import 'package:toto_mobile/src/core/domain/entities/city.dart';
import 'package:toto_mobile/src/core/domain/entities/contacts.dart';
import 'package:toto_mobile/src/core/domain/usecases/cities.dart';
import 'package:toto_mobile/src/utils/result.dart';

abstract class GetContactsUseCase {
  Future<Result<ContactsDto>> getContacts();
}

@Injectable(as: GetContactsUseCase)
class GetContactsUseCaseCaseImpl extends GetContactsUseCase {
  final ContactsRepository _contactsRepository;
  final WatchCityIdUseCase _cityIdUseCase;
  CityDto _activeCity = CityDto(
    id: '0',
    name: '',
    prefix: '',
    postalCode: '',
    cityType: '',
    available: false,
  );

  GetContactsUseCaseCaseImpl(this._contactsRepository, this._cityIdUseCase);

  @override
  Future<Result<ContactsDto>> getContacts() async {
    _cityIdUseCase.city().listen((city) {
      _activeCity = city;
    });
    return await _contactsRepository.getContacts(int.parse(_activeCity.id));
  }
}
