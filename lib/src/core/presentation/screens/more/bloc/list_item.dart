import 'data_source.dart';

abstract class ListItem {
  late final CellType cellType;
}

class MoreCellItem implements ListItem {
  final String icon;

  @override
  CellType cellType;

  String text;
  String slug;

  MoreCell cellNameType;

  MoreCellItem(
      this.icon, this.text, this.cellType, this.cellNameType, this.slug);
}

enum CellType {
  expanded,
  standard,
  withIcons,
  greenText,
  imageView,
  formatText,
  pageView,
  button,
  roundImageView,
  urlWithName,
  email,
  contact
}
