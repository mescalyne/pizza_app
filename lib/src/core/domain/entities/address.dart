class AddressDto {
  final int id;
  final String? cityName;
  final String street;
  final String? home;
  final String? housing;
  final String? apartment;
  final String? comment;
  final bool? addressInZone;
  final double? latitude;
  final double? longitude;

  const AddressDto({
    required this.latitude,
    required this.longitude,
    required this.id,
    required this.cityName,
    required this.street,
    required this.home,
    required this.housing,
    required this.apartment,
    required this.comment,
    required this.addressInZone,
  });
}
