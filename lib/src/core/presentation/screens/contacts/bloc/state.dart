import 'package:toto_mobile/src/core/presentation/screens/more_detail/bloc/state.dart';

import 'cell_items.dart';

class ContactsState {
  final DataStatus status;
  final List<ContactCellItem> data;
  final String screenName;
  final bool? urlOpenResult;

  ContactsState(
      {this.status = DataStatus.init,
      this.data = const [],
      required this.screenName,
      this.urlOpenResult});

  ContactsState copyWith(
      {DataStatus? status,
      List<ContactCellItem>? data,
      String? buttonName,
      String? screenName,
      bool? urlOpenResult}) {
    return ContactsState(
      status: status ?? this.status,
      data: data ?? this.data,
      screenName: screenName ?? this.screenName,
      urlOpenResult: urlOpenResult ?? this.urlOpenResult,
    );
  }
}
