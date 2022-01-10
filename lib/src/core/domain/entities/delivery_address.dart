class DeliveryDto {
  final String cityName;
  final String street;
  final String home;
  final double latitude;
  final double longitude;
  final String? housing;
  final String? apartment;
  final String? comment;

  const DeliveryDto({
    this.apartment,
    this.comment,
    this.housing,
    required this.latitude,
    required this.longitude,
    required this.cityName,
    required this.street,
    required this.home,
  });
}
