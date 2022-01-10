import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'event.dart';
part 'state.dart';

class SecondBloc extends Bloc<SecondEvent, SecondState> {
  SecondBloc() : super(HomeInitial());

  @override
  Stream<SecondState> mapEventToState(
    SecondEvent event,
  ) async* {}
}
