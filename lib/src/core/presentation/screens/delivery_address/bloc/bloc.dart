import 'dart:async';
import 'dart:developer';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:injectable/injectable.dart';

import 'package:bloc/bloc.dart';
import 'package:toto_mobile/src/core/domain/usecases/delivery_address.dart';
import 'event.dart';
import 'state.dart';

@Injectable()
class DeliveryAddressBloc
    extends Bloc<DeliveryAddressEvent, DeliveryAddressState> {
  final GetAllDeliveryAddressesUseCase _allDeliveryAddressUseCase;
  final DeleteDeliveryAddressUseCase _deleteDeliveryAddressUseCase;

  DeliveryAddressBloc(
      this._allDeliveryAddressUseCase, this._deleteDeliveryAddressUseCase)
      : super(EmptyState()) {
    add(OnLoaded());
  }

  @override
  Stream<DeliveryAddressState> mapEventToState(DeliveryAddressEvent event) =>
      event.when(
          onLoaded: _onLoaded,
          onDeleteDeliveryAddress: _onDeleteDeliveryAddress);

  Stream<DeliveryAddressState> _onLoaded() async* {
    try {
      var loadedAddress = await _allDeliveryAddressUseCase();
      if (loadedAddress.isSuccess) {
        yield HomeInitial(loadedAddress: loadedAddress.value ?? []);
      }
    } catch (ex) {
      log(ex.toString());
    }
  }

  Stream<DeliveryAddressState> _onDeleteDeliveryAddress(id) async* {
    await _deleteDeliveryAddressUseCase(id);
    var loadedAddress = await _allDeliveryAddressUseCase();
    if (loadedAddress.isSuccess) {
        yield HomeInitial(loadedAddress: loadedAddress.value ?? []);
      }
  }
}
