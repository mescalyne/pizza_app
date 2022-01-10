import 'package:toto_mobile/src/core/presentation/screens/more/bloc/list_item.dart';

class MoreDetailState {
  final DataStatus status;
  final List<ListItem> data;
  final String? buttonName;
  final String screenName;
  final bool? urlOpenResult;

  MoreDetailState(
      {this.status = DataStatus.init,
      this.data = const [],
      this.buttonName,
      required this.screenName,
      this.urlOpenResult});

  MoreDetailState copyWith(
      {DataStatus? status,
      List<ListItem>? data,
      String? buttonName,
      String? screenName,
      bool? urlOpenResult}) {
    return MoreDetailState(
      status: status ?? this.status,
      data: data ?? this.data,
      buttonName: buttonName ?? this.buttonName,
      screenName: screenName ?? this.screenName,
      urlOpenResult: urlOpenResult ?? this.urlOpenResult,
    );
  }
}

enum DataStatus { init, loading, success, error, connectionError, unauthorized }
