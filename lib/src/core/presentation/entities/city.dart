class City {
  final String id;
  final String name;
  final bool? available;
  final String? cityType;
  final String? postalCode;
  final String? prefix;

  City({
    required this.id,
    required this.name,
    required this.available,
    this.cityType,
    this.postalCode,
    this.prefix,
  });
}
