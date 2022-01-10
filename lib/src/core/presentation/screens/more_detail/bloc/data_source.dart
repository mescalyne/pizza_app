import 'package:toto_mobile/src/core/data/models/page_content.dart';
import 'package:toto_mobile/src/core/presentation/screens/more/bloc/list_item.dart';

import 'cell_items.dart';

class MoreDetailDataSource {
  MoreDetailDataSource();

  ListItem? configItem(CellType type, dynamic data) {
    try {
      switch (type) {
        case CellType.expanded:
          var item = MoreExpandedCellItem(
              CellType.expanded,
              (data as AttachmentData).header,
              (data).description);
          return item;
        case CellType.imageView:
          var item = MoreImageCellItem(CellType.imageView, data);
          return item;
        case CellType.roundImageView:
          var item = MoreImageCellItem(CellType.roundImageView, data);
          return item;
        case CellType.formatText:
          var item = MoreTextCellItem(CellType.formatText, data);
          return item;
        case CellType.pageView:
          var item = MorePageCellItem(CellType.pageView, data);
          return item;
        case CellType.urlWithName:
          var item = MoreURLCellItem(CellType.urlWithName,
              (data as LinkData).title, (data).url);
          return item;
        case CellType.email:
          var item = MoreTextCellItem(CellType.email, data);
          return item;
        default:
          return MoreDetailCellItem(CellType.standard);
      }
    } catch (e) {
      return null;
    }
  }
}
