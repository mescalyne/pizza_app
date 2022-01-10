import 'package:toto_mobile/src/core/domain/entities/feedback_options.dart';

import 'check_box_item.dart';

class OrderEstimationDataSource {
  List<CheckBoxItem> configViewData(List<FeedbackOptionsDto> data) {
    var returnList = <CheckBoxItem>[];
    for (var item in data) {
      returnList.add(CheckBoxItem(
        text: item.text,
        imagePath: item.iconPath,
        id: item.id,
      ));
    }
    return returnList;
  }
}
