class ModificatorDto {
  final int? maxAmount;
  final int? minAmount;
  final String modifierId;
  final bool? requird;
  final int? defaultAmount;
  final bool? hideIfDefaultAmount;

  ModificatorDto({
    required this.maxAmount,
    required this.minAmount,
    required this.modifierId,
    required this.requird,
    required this.defaultAmount,
    required this.hideIfDefaultAmount,
  });
}

class GroupModificatorDto {
  final int? maxAmount;
  final int? minAmount;
  final String modifierId;
  final bool? requird;
  final List<ModificatorDto> childModifiers;
  final bool? childModifiersHaveMinMaxRestrictions;

  GroupModificatorDto({
    required this.maxAmount,
    required this.minAmount,
    required this.modifierId,
    required this.requird,
    required this.childModifiers,
    required this.childModifiersHaveMinMaxRestrictions,
  });
}
