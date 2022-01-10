import 'dart:async';
import 'package:toto_mobile/src/core/data/models/page_content.dart';
import 'package:toto_mobile/src/core/data/repository/profile/page.dart';
import 'package:toto_mobile/src/core/domain/entities/page.dart';
import 'package:toto_mobile/src/utils/result.dart';

// @Injectable(as: PageRepository)
class TestPageRepositoryImpl extends PageRepository {
  TestPageRepositoryImpl();

  static const String urlPath = 'https://flutter.dev';

  static const String imagePath =
      'https://www.freeiconspng.com/thumbs/baby-shark-png/baby-shark-png-transparent-background-1.png';
  static const String imagePathFromFigma =
      'https://bipbap.ru/wp-content/uploads/2017/04/0_7c779_5df17311_orig.jpg';
  static const String bigText =
      'Пиццерия «То-То» - это большой ассортимент пиццы, каждая из которых обладает великолепной симфонией вкуса и аромата. Мы сочетаем качественное ресторанное обслуживание с уютом и комфортом, так что приходя в пиццерию вы можете чувствовать себя как дома. За это время мы разработали много своих уникальных блюд и рецептур. Интерьер заведений сделан так, чтобы приходя в заведение Вы погрузились в атмосферу маленького итальянского городка. Благодаря успешному расположению наших заведений вы легко найдете место как для деловой встречи, так и для романтического свидания или встречи с друзьями. Для гостей работает также служба доставки, чтобы Вы могли заказать любимое блюдо домой и порадовать себя и близких. Мы всегда рады гостям! Пицца \"То-То\" - самое то!';

  @override
  Future<Result<PageDto>> getPage(int cityId, String slug) async {
    var pageContents = [
      PageContentDto(type: DataType.image, data: imagePathFromFigma, order: 0),
      PageContentDto(type: DataType.image, data: imagePath, order: 0),
      PageContentDto(
          type: DataType.roundImage, data: imagePathFromFigma, order: 1),
      PageContentDto(type: DataType.roundImage, data: imagePath, order: 2),
      PageContentDto(
          type: DataType.attachment,
          data: AttachmentData('Title', bigText),
          order: 3),
      PageContentDto(type: DataType.text, data: bigText, order: 4),
      PageContentDto(type: DataType.text, data: 'test text', order: 5),
      PageContentDto(
          type: DataType.link, data: LinkData('Test Link', urlPath), order: 6),
      PageContentDto(
          type: DataType.images,
          data: [
            imagePathFromFigma,
            imagePathFromFigma,
            imagePath,
            imagePathFromFigma
          ],
          order: 7),
      PageContentDto(
          type: DataType.link,
          data: LinkData('Test Link 2', urlPath),
          order: 8),
      PageContentDto(type: DataType.email, data: urlPath, order: 8),
      PageContentDto(
          type: DataType.linkButton,
          data: LinkData('Active Button', urlPath),
          order: 9),
    ];
    var page = PageDto(title: slug, contents: pageContents);

    return Result.success(page);
  }
}
