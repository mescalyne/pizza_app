import 'package:toto_mobile/src/core/domain/entities/file.dart';

class MarketingCompaignDto {
  final String id;
  final String name;
  final String description;
  final FileDto image;
  MarketingCompaignDto({
    required this.id,
    required this.name,
    required this.description,
    required this.image,
  });
}
