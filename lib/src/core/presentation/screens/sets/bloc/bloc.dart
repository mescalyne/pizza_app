import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:toto_mobile/src/core/domain/entities/edit_cart.dart';
import 'package:toto_mobile/src/core/domain/entities/modificator.dart';
import 'package:toto_mobile/src/core/domain/entities/product.dart';
import 'package:toto_mobile/src/core/domain/usecases/cart.dart';
import 'package:toto_mobile/src/core/domain/usecases/get_product.dart';
import 'package:toto_mobile/src/core/presentation/router/bloc/bloc.dart';
import 'package:toto_mobile/src/core/presentation/router/bloc/event.dart';
import 'package:toto_mobile/src/core/presentation/screens/sets/bloc/state.dart';

import 'event.dart';

typedef SetsEventHandler = Stream<SetsState>;

@Injectable()
class SetsBloc extends Bloc<SetsEvent, SetsState> {
  final AddItemToCartUseCase _addItemToCartUseCase;
  final GetProductByIdUseCase _getProductByIdUseCase;
  final RouterEventSink _routerEventSink;
  final WatchCountItemInCartUseCase _watchCountItemInCartUseCase;

  final String? setId;
  final bool? visibleButtonAdd;

  SetsBloc(
    @factoryParam this.setId,
    @factoryParam this.visibleButtonAdd,
    this._addItemToCartUseCase,
    this._routerEventSink,
    this._getProductByIdUseCase,
    this._watchCountItemInCartUseCase,
  ) : super(
          SetsState(
            currentStatus: SetsStatus.loadedData,
            visibleButtonAdd: visibleButtonAdd ?? true,
          ),
        ) {
    add(SetsEvent.onLoaded());
  }

  @override
  SetsEventHandler mapEventToState(SetsEvent event) => event.when(
        onLoaded: _onLoaded,
        onItemDetailPage: _onItemDetailPage,
        onError: _onError,
        onBackButton: _onBackButton,
        onAddToCartButton: _onAddToCartButton,
      );

  SetsEventHandler _onError() async* {
    _routerEventSink.add(RouterEvent.pop());
  }

  SetsEventHandler _onLoaded() async* {
    var data = await _getProductByIdUseCase(setId!);
    if (data.isSuccess && data.value != null) {
      List<ProductDto> list = [];
      for (ModificatorDto modifier in data.value!.modifiers ?? []) {
        var res = await _getProductByIdUseCase(modifier.modifierId);
        if (res.isSuccess && res.value != null) {
          list.add(res.value!);
        } else {
          yield state.copyWith(currentStatus: SetsStatus.error);
          return;
        }
      }
      yield state.copyWith(
        currentStatus: SetsStatus.viewSet,
        currentSet: data.value!,
        listModifiers: list,
      );
    } else {
      yield state.copyWith(currentStatus: SetsStatus.error);
    }
  }

  SetsEventHandler _onItemDetailPage(int index) async* {
    yield state.copyWith(
      currentStatus: SetsStatus.viewSetItem,
      currentSetItemIndex: index,
    );
  }

  SetsEventHandler _onBackButton() async* {
    switch (state.currentStatus) {
      case SetsStatus.viewSetItem:
        yield state.copyWith(currentStatus: SetsStatus.viewSet);
        break;
      default:
        _routerEventSink.add(RouterEvent.pop());
        break;
    }
  }

  SetsEventHandler _onAddToCartButton() async* {
    var data = await _addItemToCartUseCase(AddItemToCartInput(
        productId: state.currentSet!.id,
        amount: 1)); //(id: state.currentSet!.id, amount: 1));
    if (data.isSuccess && data.value != null) {
      _watchCountItemInCartUseCase.setCount(state.currentSet!.id, 1);
      _routerEventSink.add(RouterEvent.pop());
    } else {
      yield state.copyWith(currentStatus: SetsStatus.error);
    }
  }
}
