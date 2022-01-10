import 'package:toto_mobile/src/core/data/network/models/group_fragment.data.gql.dart';
import 'package:toto_mobile/src/core/domain/entities/group.dart';
import 'package:toto_mobile/src/resources/dictionary.dart';

typedef Group = GGroupFragment;

extension GroupAdapter on Group {
  GroupDto get toGroupDto {
    return GroupDto(
      id:id,
        image: images!.isNotEmpty
            ? images!.first.imageUrl!
            : TotoDictionary.defaultImageUrl,
        title: name);
  }
}
