import 'package:toto_mobile/src/core/data/network/models/unique_page_fragment.data.gql.dart';
import 'package:toto_mobile/src/core/domain/entities/unique_page.dart';
import 'package:toto_mobile/src/resources/maps.dart';

extension UniquePageAdapter on GUniquePageFragment {
  UniquePageDto get toPageDto {
    return UniquePageDto(
      title: title,
      slug: slug,
      iconPath: icon?.url,
      thumbnailIconPath: icon?.url_thumbnail,
      type: (icon?.type != null)
          ? mapMediaFileTypeDto[icon!.type]
          : null,
    );
  }
}
