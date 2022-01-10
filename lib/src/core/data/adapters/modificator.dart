import 'package:toto_mobile/src/core/data/network/models/modificator_fragment.data.gql.dart';
import 'package:toto_mobile/src/core/domain/entities/modificator.dart';

typedef Modificator = GModificatorFragment;

extension ModificatorAdapter on Modificator {
  ModificatorDto get toModificatorDto {
    return ModificatorDto(
        maxAmount: maxAmount,
        minAmount: maxAmount,
        modifierId: modifierId,
        requird: required,
        defaultAmount: defaultAmount,
        hideIfDefaultAmount: hideIfDefaultAmount,      
      );
  }
}
