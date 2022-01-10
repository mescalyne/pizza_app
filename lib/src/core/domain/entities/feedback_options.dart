
import 'package:toto_mobile/src/core/domain/entities/unique_page.dart';

class FeedbackOptionsDto {
  int id;
  String type;
  String text;
  String? iconPath;
  String? thumbnailIconPath;
  MediaFileType? iconType;

  FeedbackOptionsDto({
    required this.id,
    required this.type,
    required this.text,
    this.iconPath,
    this.thumbnailIconPath,
    this.iconType,
  });
}