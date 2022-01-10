import 'package:toto_mobile/src/core/domain/entities/modificator.dart';

class ProductDto {
  final String id;
  final String image;
  final String name;
  final String? description;
  final String? price;
  final String? parentGroup;
  final String? parentGroupId;
  final String? additionalInfo;
  final String? weight;
  final String? carbohydrateAmount;
  final String? carbohydrateFullAmount;
  final String? energyAmount;
  final String? energyFullAmount;
  final String? fatAmount;
  final String? fatFullAmount;
  final String? fiberAmount;
  final String? fiberFullAmount;
  final List<ProductSizesDto>? productSizes;
  final List<ModificatorDto>? modifiers;
  final List<GroupModificatorDto>? groupModifiers;

  ProductDto({
    required this.id,
    required this.parentGroup,
    required this.parentGroupId,
    required this.description,
    required this.image,
    required this.price,
    required this.name,
    required this.additionalInfo,
    required this.weight,
    required this.fiberAmount,
    required this.fiberFullAmount,
    required this.carbohydrateAmount,
    required this.carbohydrateFullAmount,
    required this.energyAmount,
    required this.energyFullAmount,
    required this.fatFullAmount,
    required this.fatAmount,
    required this.productSizes,
    required this.modifiers,
    required this.groupModifiers,
  });

  static ProductDto fromProductSizesDto(ProductSizesDto productSizesDto) {
    return ProductDto(
      id: productSizesDto.id,
      parentGroup: productSizesDto.parentGroup,
      parentGroupId: productSizesDto.parentGroupId,
      description: productSizesDto.description,
      image: productSizesDto.image,
      price: productSizesDto.price,
      name: productSizesDto.name,
      additionalInfo: productSizesDto.additionalInfo,
      weight: productSizesDto.weight,
      fiberAmount: productSizesDto.fiberAmount,
      fiberFullAmount: productSizesDto.fiberFullAmount,
      carbohydrateAmount: productSizesDto.carbohydrateAmount,
      carbohydrateFullAmount: productSizesDto.carbohydrateFullAmount,
      energyAmount: productSizesDto.energyAmount,
      energyFullAmount: productSizesDto.energyFullAmount,
      fatFullAmount: productSizesDto.fatFullAmount,
      fatAmount: productSizesDto.fatAmount,
      productSizes: [],
      modifiers: productSizesDto.modifiers,
      groupModifiers: productSizesDto.groupModifiers,
    );
  }
}

class ProductSizesDto {
  final String id;
  final String image;
  final String name;
  final String? description;
  final String? price;
  final String? parentGroup;
  final String? parentGroupId;
  final String? additionalInfo;
  final String? weight;
  final String? carbohydrateAmount;
  final String? carbohydrateFullAmount;
  final String? energyAmount;
  final String? energyFullAmount;
  final String? fatAmount;
  final String? fatFullAmount;
  final String? fiberAmount;
  final String? fiberFullAmount;
  final List<ModificatorDto>? modifiers;
  final List<GroupModificatorDto>? groupModifiers;

  ProductSizesDto({
    required this.id,
    required this.parentGroup,
    required this.parentGroupId,
    required this.description,
    required this.image,
    required this.price,
    required this.name,
    required this.additionalInfo,
    required this.weight,
    required this.fiberAmount,
    required this.fiberFullAmount,
    required this.carbohydrateAmount,
    required this.carbohydrateFullAmount,
    required this.energyAmount,
    required this.energyFullAmount,
    required this.fatFullAmount,
    required this.fatAmount,
    required this.modifiers,
    required this.groupModifiers,
  });
}

class ProductFiltersInput {
  final List<String>? ids;
  final bool? notIncludedInMenu;

  ProductFiltersInput({
    this.ids,
    this.notIncludedInMenu,
  });
}
