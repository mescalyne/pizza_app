import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';
import 'package:location/location.dart';
import 'package:toto_mobile/src/core/presentation/router/bloc/bloc.dart';
import 'package:toto_mobile/src/core/presentation/router/bloc/event.dart';
import 'package:toto_mobile/src/core/presentation/screens/splash/bloc/state.dart';
import 'package:toto_mobile/src/utils/geolocator_manager.dart';

import 'event.dart';

typedef StartEventHandler = Stream<StartState>;

@Injectable()
class StartBloc extends Bloc<StartPageEvent, StartState> {
  final RouterEventSink _routerEventSink;

  StartBloc(
    this._routerEventSink,
  ) : super(StartState()) {
    add(StartPageEvent.checkPermissions());
  }

  @override
  Stream<StartState> mapEventToState(StartPageEvent event) => event.when(
        checkPermissions: _checkPermissions,
        onResumeButtonClicked: _onResumeButtonClicked,
      );

  StartEventHandler _checkPermissions() async* {
    final locationPermission = await GeolocatorManager.getLocationPermission();

    if (locationPermission == LocationPermission.always ||
        locationPermission == LocationPermission.whileInUse) {
      _routerEventSink.add(RouterEvent.toCitiesPage());
    } else
      yield state.copyWith(requirePermission: RequirePermission.show);
  }

  StartEventHandler _onResumeButtonClicked() async* {
    await GeolocatorManager.tryToEnableGeolocation();
    _routerEventSink.add(RouterEvent.pop());
    _routerEventSink.add(RouterEvent.toCitiesPage());
  }
}
