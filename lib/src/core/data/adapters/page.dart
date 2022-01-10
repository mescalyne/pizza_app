import 'dart:convert';

import 'package:toto_mobile/src/core/data/models/page_content.dart';
import 'package:toto_mobile/src/core/data/network/models/page_fragment.data.gql.dart';
import 'package:toto_mobile/src/core/domain/entities/page.dart';

extension PageAdapter on GPageFragment {
  PageDto get toPageDto {
    var _contents = <PageContentDto>[];
    if (contents != null) {
      for (var element in contents!) {
        if (element.toPageContentDto != null) {
          _contents.add(element.toPageContentDto!);
        }
      }
    }
    return PageDto(title: title, contents: _contents);
  }
}

extension PageContentAdapter on GPageFragment_contents {
  PageContentDto? get toPageContentDto {
    if (data == null) return null;
    var decodeJson = jsonDecode(data!.value);
    var type = decodeJson['type'] as String;

    switch (type) {
      case 'image':
        var imagePth = decodeJson['data'] as String?;
        return PageContentDto(
            data: imagePth, order: order, type: DataType.image);
      case 'roundImage':
        var imagePth = decodeJson['data'] as String;
        return PageContentDto(
            data: imagePth, order: order, type: DataType.roundImage);
      case 'attachment':
        var attachmentData = AttachmentData.fromJson(decodeJson['data']);
        return PageContentDto(
            data: attachmentData, order: order, type: DataType.attachment);
      case 'text':
        var text = decodeJson['data'] as String;
        return PageContentDto(data: text, order: order, type: DataType.text);
      case 'link':
        var linkData = LinkData.fromJson(decodeJson['data']);
        return PageContentDto(
            data: linkData, order: order, type: DataType.link);
      case 'email':
        var email = decodeJson['data'] as String;
        return PageContentDto(data: email, order: order, type: DataType.email);
      case 'linkButton':
        var linkData = LinkData.fromJson(decodeJson['data']);
        return PageContentDto(
            data: linkData, order: order, type: DataType.linkButton);
      case 'images':
        var imagesJson = decodeJson['data'];
        var imagesData = imagesJson != null ? List.from(imagesJson) : null;
        return PageContentDto(
            data: imagesData, order: order, type: DataType.images);
      default:
        return null;
    }
  }
}
