import 'package:toto_mobile/src/core/data/network/models/toto.schema.schema.gql.dart';

extension DateTimeSafeParser on GDateTime? {
  DateTime? get toDateTimeOrNull {
    if (this == null) return null;
    return DateTime.parse(this!.value);
  }
}
