import 'package:toto_mobile/src/core/data/models/page_content.dart';
import 'package:toto_mobile/src/core/domain/entities/city.dart';

class PageDto {
  String title;
  CityDto? city;
  PageSeoDto? seo;
  List<PageContentDto> contents;

  PageDto({
    required this.title,
    this.city,
    this.seo,
    required this.contents,
  });
}

class PageSeoDto {
  String? title;
  String? description;
  String? image;
  String? keywords;
  String? noindex;

  PageSeoDto({
    required this.title,
    required this.description,
    required this.image,
    required this.keywords,
    required this.noindex,
  });
}

class PageContentDto {
  DataType type;
  Object? data;
  int? order;

  PageContentDto({required this.type, required this.data, required this.order});
}
