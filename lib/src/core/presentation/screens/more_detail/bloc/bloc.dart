import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:toto_mobile/src/core/data/models/network_result.dart';
import 'package:toto_mobile/src/core/data/models/page_content.dart';
import 'package:toto_mobile/src/core/domain/entities/page.dart';
import 'package:toto_mobile/src/core/domain/usecases/profile/more_detail.dart';
import 'package:toto_mobile/src/core/presentation/router/bloc/bloc.dart';
import 'package:toto_mobile/src/core/presentation/router/bloc/event.dart';
import 'package:toto_mobile/src/core/presentation/screens/more/bloc/list_item.dart';
import 'package:toto_mobile/src/core/presentation/screens/more_detail/bloc/cell_items.dart';
import 'package:toto_mobile/src/core/presentation/screens/more_detail/bloc/event.dart';
import 'package:toto_mobile/src/core/presentation/screens/more_detail/bloc/state.dart';
import 'package:toto_mobile/src/resources/maps.dart';
import 'package:toto_mobile/src/utils/launchers/url_launcher.dart';

import 'data_source.dart';

typedef MoreDetailEventHandler = Stream<MoreDetailState>;

@Injectable()
class MoreDetailBloc extends Bloc<MoreDetailEvent, MoreDetailState> {
  final RouterEventSink _routerEventSink;
  final String? screenType;
  final String? slug;

  String? _activeButtonUrl;

  final GetPageDetailUseCase _useCase;

  MoreDetailBloc(@factoryParam this.screenType, @factoryParam this.slug,
      this._routerEventSink, this._useCase)
      : super(MoreDetailState(screenName: screenType ?? '')) {
    add(MoreDetailEvent.initialization());
  }

  @override
  MoreDetailEventHandler mapEventToState(MoreDetailEvent event) => event.when(
      initialization: _initialization,
      cellPressed: _onCellPressed,
      buttonPressed: _activeButtonPressed,
      errorLoading: _onErrorLoading);

  MoreDetailEventHandler _initialization() async* {
    var _screenName = screenType ?? '';
    var _slug = slug ?? '';

    yield state.copyWith(status: DataStatus.loading, screenName: _screenName);

    var data = await _useCase.getPageData(_slug);
    if ((data.isSuccess) && (data.value != null)) {
      yield state.copyWith(
          status: DataStatus.success,
          data: configViewData(data.value!),
          buttonName: configActiveButton(data.value!),
          screenName: _screenName);
    }
    if ((data.isFailure) && (data.failureValue == NetworkResult.error)) {
      yield state.copyWith(status: DataStatus.error);
    }
    if ((data.isFailure) &&
        (data.failureValue == NetworkResult.networkFailure)) {
      yield state.copyWith(status: DataStatus.connectionError);
    }
  }

  MoreDetailEventHandler _onCellPressed(ListItem cellData) async* {
    if (cellData.cellType == CellType.urlWithName) {
      var urlString = (cellData as MoreURLCellItem).url;
      yield* _openUrl(urlString);
    }
    if (cellData.cellType == CellType.email) {
      var urlString = (cellData as MoreTextCellItem).text;
      URLLauncher.launchEmail(urlString);
    }
  }

  MoreDetailEventHandler _activeButtonPressed() async* {
    if (_activeButtonUrl != null) {
      yield* _openUrl(_activeButtonUrl!);
    }
  }

  MoreDetailEventHandler _onErrorLoading() async* {
    _routerEventSink.add(RouterEvent.pop());
  }

  MoreDetailEventHandler _openUrl(String urlPath) async* {
    var _urlOpenResult = await URLLauncher.canLaunchUrl(urlPath);
    yield state.copyWith(urlOpenResult: _urlOpenResult);
    URLLauncher.launchUrl(urlPath);
  }

  String? configActiveButton(PageDto data) {
    PageContentDto? buttonData = data.contents
        .firstWhere((element) => element.type == DataType.linkButton);
    if (buttonData.data is LinkData) {
      _activeButtonUrl = (buttonData.data as LinkData).url;
      return (buttonData.data as LinkData).title;
    }
    return null;
  }

  List<ListItem> configViewData(PageDto data) {
    var returnData = <ListItem>[];
    var dataSource = MoreDetailDataSource();

    for (final item in data.contents) {
      var cellType = dataTypeToCellType[item.type];
      if (cellType != null) {
        var data = dataSource.configItem(cellType, item.data);
        if (data != null) returnData.add(data);
      }
    }
    return returnData;
  }
}
