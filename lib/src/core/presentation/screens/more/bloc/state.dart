
import 'list_item.dart';

enum MoreCodeStatus { init, loading, success, error }

class MoreState {
  final MoreCodeStatus codeStatus;
  final List<MoreCellItem> data;

  MoreState(
      {this.codeStatus = MoreCodeStatus.init, this.data = const []});

  MoreState copyWith({MoreCodeStatus? codeStatus, List<MoreCellItem>? data}) {
    return MoreState(
      codeStatus: codeStatus ?? this.codeStatus,
      data: data ?? this.data,
    );
  }
}

