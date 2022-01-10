class CityDto {
  final String id;
  final String name;
  final String? prefix;
  final String? postalCode;
  final String? cityType;

  bool? available;

  CityDto({
    required this.id,
    required this.name,
    required this.prefix,
    required this.postalCode,
    required this.cityType,
    required this.available,
  });
}
