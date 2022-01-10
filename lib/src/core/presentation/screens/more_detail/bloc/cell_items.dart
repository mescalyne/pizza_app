
import 'package:toto_mobile/src/core/presentation/screens/more/bloc/list_item.dart';

class MoreDetailCellItem implements ListItem {
  @override
  CellType cellType;

  MoreDetailCellItem(this.cellType);
}

class MoreImageCellItem implements ListItem {
  @override
  CellType cellType;

  String imagePath;

  MoreImageCellItem(this.cellType, this.imagePath);
}

class MoreTextCellItem implements ListItem {
  @override
  CellType cellType;

  String text;

  MoreTextCellItem(this.cellType, this.text);
}

class MoreURLCellItem implements ListItem {
  @override
  CellType cellType;

  String text;
  String url;

  MoreURLCellItem(this.cellType, this.text, this.url);
}

class MoreExpandedCellItem implements ListItem {
  @override
  CellType cellType;

  String text;
  String header;

  MoreExpandedCellItem(this.cellType,  this.header, this.text);
}

class MorePageCellItem implements ListItem {
  @override
  CellType cellType;

  List<String> imagesPaths;

  MorePageCellItem(this.cellType, this.imagesPaths);
}
