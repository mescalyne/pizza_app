import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:toto_mobile/src/core/domain/entities/unique_page.dart';
import 'package:toto_mobile/src/core/domain/usecases/profile/current_user.dart';
import 'package:toto_mobile/src/core/domain/usecases/profile/more.dart';

import '../../../router/bloc/bloc.dart';
import '../../../router/bloc/event.dart';
import 'data_source.dart';
import 'event.dart';
import 'list_item.dart';
import 'state.dart';


typedef MoreEventHandler = Stream<MoreState>;

@Injectable()
class MoreBloc extends Bloc<MoreEvent, MoreState> {
  final RouterEventSink _routerEventSink;
  final CurrentUserUseCase _userUseCase;
  final MoreUseCase _dataUseCase;

  double? _pointsNumber;
  String? _userName;
  StreamSubscription? _authWatcher;

  MoreBloc(this._routerEventSink, this._userUseCase, this._dataUseCase)
      : super(MoreState()) {
    add(MoreEvent.initialization());
  }

  @override
  MoreEventHandler mapEventToState(MoreEvent event) => event.when(
        initialization: _initialization,
        cellPressed: _onCellPressed,
        onLoadWithGuest: _onLoadWithGuest,
      );

  MoreEventHandler _initialization() async* {
    yield state.copyWith(codeStatus: MoreCodeStatus.loading);

    _authWatcher = _userUseCase.watch().listen((event) {
      add(OnLoadWithGuest(event));
    });

    yield* _configData();
  }

  MoreEventHandler _onCellPressed(MoreCellItem cellItem) async* {
    if (cellItem.cellNameType == MoreCell.user) {
      if (_userName == null) {
        await _userUseCase.clearUserData(); // TODO: check hive clear result
        _routerEventSink.add(RouterEvent.toLogin());
      } else {
        _routerEventSink.add(RouterEvent.toUserpage());
      }
    } else if (cellItem.cellNameType == MoreCell.points) {
      // TODO: Points logic?
    } else if (cellItem.cellNameType == MoreCell.contacts) {
      _routerEventSink.add(RouterEvent.toContactsPage());
    } else {
      _routerEventSink
          .add(RouterEvent.toTabBarMoreDetail(cellItem.text, cellItem.slug));
    }
  }

  MoreEventHandler _onLoadWithGuest(bool? isGuest) async* {
    if (isGuest == false) {
      var userData = await _userUseCase.getUser();
      _pointsNumber = userData?.value?.bonusBalance;
      _userName = userData?.value?.name;
    } else {
      _pointsNumber = null;
      _userName = null;
    }
    yield* _configData();
  }

  MoreEventHandler _configData() async* {
    var data = await _dataUseCase.getPageData();
    if ((data.isSuccess) && (data.value != null)) {
      var initValue = _configViewData(data.value!);
      yield state.copyWith(codeStatus: MoreCodeStatus.success, data: initValue);
      return;
    } else {
      yield state.copyWith(codeStatus: MoreCodeStatus.error);
    }
  }

  List<MoreCellItem> _configViewData(List<UniquePageDto> data) {
    var returnData = <MoreCellItem>[];
    var dataSource = MoreDataSource(_pointsNumber, _userName);

    for (final item in dataSource.cellsData) {
      var configItem = dataSource.configItem(item);
      if (configItem != null) {
        returnData.add(configItem);
      }
    }

    for (var item in data) {
      var configItem = dataSource.configItemWithDtoData(item);
      if (configItem != null) {
        returnData.add(configItem);
      }
    }

    return returnData;
  }

  @override
  Future<void> close() {
    _authWatcher?.cancel();
    return super.close();
  }
}