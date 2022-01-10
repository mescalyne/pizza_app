import 'package:built_collection/src/list.dart';

extension ListToListBuilder<T> on List<T> {
  ListBuilder<T> get toListBuilder {
    return ListBuilder<T>(this);
  }
}