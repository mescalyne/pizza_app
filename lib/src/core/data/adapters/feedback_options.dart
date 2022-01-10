import 'package:toto_mobile/src/core/data/network/models/feedback_options_fragment.data.gql.dart';
import 'package:toto_mobile/src/core/domain/entities/feedback_options.dart';
import 'package:toto_mobile/src/resources/maps.dart';

extension FeedbackOptionsAdapter on GFeedbackOptionFragment {
  FeedbackOptionsDto get toFeedbackDto {
    return FeedbackOptionsDto(
      id: id,
      type: type,
      text: text,
      iconPath: icon?.url,
      thumbnailIconPath: icon?.url_thumbnail,
      iconType: mapMediaFileTypeDto[icon?.type]
    );
  }
}
