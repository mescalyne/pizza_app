import 'package:toto_mobile/src/core/data/repository/profile/unique_pages.dart';
import 'package:toto_mobile/src/core/domain/entities/unique_page.dart';
import 'package:toto_mobile/src/utils/result.dart';

// @Injectable(as: UniquePagesRepository)
class TestUniquePagesRepositoryImpl extends UniquePagesRepository {
  TestUniquePagesRepositoryImpl();

  static const String imagePath =
      'https://www.freeiconspng.com/thumbs/baby-shark-png/baby-shark-png-transparent-background-1.png';
  static const String thumbnailImagePath =
      'https://bipbap.ru/wp-content/uploads/2017/04/0_7c779_5df17311_orig.jpg';

  @override
  Future<Result<List<UniquePageDto>>> getPages() async {
    var pages = [
      UniquePageDto(
          title: 'Акции',
          iconPath: imagePath,
          thumbnailIconPath: thumbnailImagePath,
          type: MediaFileType.image,
          slug: 'promotions'),
      UniquePageDto(
          title: 'Вакансии',
          iconPath: imagePath,
          thumbnailIconPath: thumbnailImagePath,
          type: MediaFileType.image,
          slug: 'vacancies'),
      UniquePageDto(
          title: 'Вопрос-Ответ',
          iconPath: imagePath,
          thumbnailIconPath: thumbnailImagePath,
          type: MediaFileType.image,
          slug: 'faq'),
      UniquePageDto(
          title: 'Партнерам',
          iconPath: imagePath,
          thumbnailIconPath: thumbnailImagePath,
          type: MediaFileType.image,
          slug: 'aboutPartners'),
      UniquePageDto(
          title: 'О нас',
          iconPath: imagePath,
          thumbnailIconPath: thumbnailImagePath,
          type: MediaFileType.image,
          slug: 'aboutUs'),
    ];
    return Result.success(pages);
  }
}
