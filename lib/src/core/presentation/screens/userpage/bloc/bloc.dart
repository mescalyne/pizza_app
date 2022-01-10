import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:toto_mobile/src/core/domain/usecases/profile/current_user.dart';
import 'package:toto_mobile/src/core/domain/usecases/profile/update_profile.dart';
import 'package:toto_mobile/src/core/presentation/router/bloc/bloc.dart';
import 'package:toto_mobile/src/core/presentation/router/bloc/event.dart';

import 'event.dart';
import 'state.dart';

typedef UserPageEventHandler = Stream<UserpageState>;

@Injectable()
class UserpageBloc extends Bloc<UserpageEvent, UserpageState> {
  final CurrentUserUseCase _currUseCase;
  final UpdateProfileUseCase _updtUseCase;
  final RouterEventSink _routerEventSink;

  UserpageBloc(this._currUseCase, this._updtUseCase, this._routerEventSink)
      : super(EmptyState()) {
    add(OnLoaded());
  }

  @override
  UserPageEventHandler mapEventToState(UserpageEvent event) => event.when(
        onLoaded: _onLoaded,
        onSaveNewInfo: _onSaveNewInfo,
        onRouteToDeliveryAddress: _onRouteToDeliveryAddress,
        onRouteToOrders: _onRouteToOrders,
        show: _show,
        logOut: _logOut,
      );

  UserPageEventHandler _onLoaded() async* {
    try {
      var result = await _currUseCase.getUser();
      if (result != null && result.isSuccess) {
        var loadedUser = result.value!;
        yield HomeInitial(loadedUser: loadedUser);
      }
    } catch (ex) {
      log(ex.toString());
    }
  }

  UserPageEventHandler _show() async* {}

  UserPageEventHandler _logOut() async* {
    await _currUseCase.clearUserData();
    _routerEventSink.add(RouterEvent.pop());
  }

  UserPageEventHandler _onRouteToDeliveryAddress() async* {
    _routerEventSink.add(RouterEvent.toDeliveryAddressPage());
  }

  UserPageEventHandler _onRouteToOrders() async* {
    _routerEventSink.add(RouterEvent.toOrdersPage());
  }

  UserPageEventHandler _onSaveNewInfo(name, email, date) async* {
    date ?? '';
    var loadedUser = await _updtUseCase(name, email, date);
    if (loadedUser != null && loadedUser.isSuccess) {
      yield HomeInitial(loadedUser: loadedUser.value!);
    }
  }
}
