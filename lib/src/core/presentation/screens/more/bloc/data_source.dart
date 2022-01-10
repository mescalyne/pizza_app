import 'package:toto_mobile/src/core/domain/entities/unique_page.dart';

import 'list_item.dart';

enum MoreCell { user, points, contacts, other }

class MoreDataSource {
  final double? points;
  final String? userName;

  MoreDataSource(this.points, this.userName) {
    configCellDataWith();
  }

  List<MoreCell> cellsData = [
    MoreCell.user,
    MoreCell.points,
    MoreCell.contacts,
  ];

  void configCellDataWith() {
    if ((points == null) || (userName == null)) {
      cellsData.remove(MoreCell.points);
    }
  }

  List<String> get stringList {
    return [
      (userName == null) ? 'Войти' : userName!.toUpperCase(),
      (points != null) ? points!.round().toString() + ' Тотонусов' : '0 Тотонусов',
      'Контакты',
    ];
  }

  MoreCellItem? configItem(MoreCell type) {
    switch (type) {
      case MoreCell.user:
        var item = MoreCellItem('', stringList[0], CellType.withIcons, type, '');
        return (item);
      case MoreCell.points:
        var item = MoreCellItem('', stringList[1], CellType.greenText, type, '');
        return (item);
      case MoreCell.other:
        return null;
      case MoreCell.contacts:
        var item = MoreCellItem('', stringList[2], CellType.withIcons, type, '');
        return (item);
    }
  }

  MoreCellItem? configItemWithDtoData(UniquePageDto data) {
    if ((data.thumbnailIconPath != null) && (data.title != null) && (data.slug != null)) {
      return MoreCellItem(data.thumbnailIconPath!, data.title!,
          CellType.withIcons, MoreCell.other, data.slug!);
    }
    return null;
  }
}
