import 'package:toto_mobile/src/core/data/network/models/modificator_fragment.data.gql.dart';
import 'package:toto_mobile/src/core/data/network/models/group_modificator_fragment.data.gql.dart';

import 'package:toto_mobile/src/core/data/network/models/product_fragment.data.gql.dart';
import 'package:toto_mobile/src/core/data/network/models/products_size_fragment.data.gql.dart';
import 'package:toto_mobile/src/core/domain/entities/modificator.dart';
import 'package:toto_mobile/src/core/domain/entities/product.dart';
import 'package:toto_mobile/src/resources/dictionary.dart';

typedef Product = GProductFragment;
typedef ProductsSizes = GProductsSizesFragment;
typedef Modificator = GModificatorFragment;
typedef GroupModificator = GGroupModificatorFragment;

extension ProductAdapter on Product {
  ProductDto get toProductDto {
    return ProductDto(
      id: id,
      parentGroup: parentGroup?.name,
      parentGroupId: parentGroup?.id,
      description: description,
      image: images != null && images!.isNotEmpty && images!.first.imageUrl != null
          ? images!.first.imageUrl ?? TotoDictionary.defaultImageUrl
          : TotoDictionary.defaultImageUrl,
      price: price,
      name: name,
      additionalInfo: additionalInfo,
      weight: weight,
      carbohydrateAmount: carbohydrateAmount,
      carbohydrateFullAmount: carbohydrateFullAmount,
      energyAmount: energyAmount,
      energyFullAmount: energyFullAmount,
      fatAmount: fatAmount,
      fatFullAmount: fatFullAmount,
      fiberAmount: fiberAmount,
      fiberFullAmount: fiberFullAmount,
      productSizes:
          products_sizes?.map((e) => e.toProductSizesDto).toList() ?? [],
      modifiers: modifiers?.map((e) => e.toModificatorDto).toList() ?? [],
      groupModifiers: groupModifiers != null
          ? groupModifiers!.map((e) => e.toGroupModificatorDto).toList()
          : [],
    );
  }
}

extension ProductsSizesAdapter on ProductsSizes {
  ProductSizesDto get toProductSizesDto {
    return ProductSizesDto(
      id: id,
      parentGroup: parentGroup?.name,
      parentGroupId: parentGroup?.id,
      description: description,
      image: images != null && images!.isNotEmpty && images!.first.imageUrl != null
          ? images!.first.imageUrl!
          : TotoDictionary.defaultImageUrl,
      price: price,
      name: name,
      additionalInfo: additionalInfo,
      weight: weight,
      carbohydrateAmount: carbohydrateAmount,
      carbohydrateFullAmount: carbohydrateFullAmount,
      energyAmount: energyAmount,
      energyFullAmount: energyFullAmount,
      fatAmount: fatAmount,
      fatFullAmount: fatFullAmount,
      fiberAmount: fiberAmount,
      fiberFullAmount: fiberFullAmount,
      modifiers: modifiers != null
          ? modifiers!.map((e) => e.toModificatorDto).toList()
          : [],
      groupModifiers: groupModifiers != null
          ? groupModifiers!.map((e) => e.toGroupModificatorDto).toList()
          : [],
    );
  }
}

extension ModificatorAdapter on Modificator {
  ModificatorDto get toModificatorDto {
    return ModificatorDto(
      modifierId: modifierId,
      maxAmount: maxAmount,
      minAmount: minAmount,
      requird: required,
      defaultAmount: defaultAmount,
      hideIfDefaultAmount: hideIfDefaultAmount,
    );
  }
}

extension GroupModificatorAdapter on GroupModificator {
  GroupModificatorDto get toGroupModificatorDto {
    return GroupModificatorDto(
      modifierId: modifierId,
      maxAmount: maxAmount,
      minAmount: minAmount,
      requird: required,
      childModifiers: childModifiers!= null
          ? childModifiers!.map((e) => e.toModificatorDto).toList()
          : [],
      childModifiersHaveMinMaxRestrictions: childModifiersHaveMinMaxRestrictions,
    );
  }
}
