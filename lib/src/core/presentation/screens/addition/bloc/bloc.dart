import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:toto_mobile/src/core/domain/entities/edit_cart.dart';
import 'package:toto_mobile/src/core/domain/entities/group.dart';
import 'package:toto_mobile/src/core/domain/entities/product.dart';
import 'package:toto_mobile/src/core/domain/usecases/cart.dart';
import 'package:toto_mobile/src/core/domain/usecases/get_product.dart';
import 'package:toto_mobile/src/core/domain/usecases/menu.dart';
import 'package:toto_mobile/src/core/presentation/entities/modifiers_list.dart';
import 'package:toto_mobile/src/core/presentation/router/bloc/bloc.dart';
import 'package:toto_mobile/src/core/presentation/router/bloc/event.dart';
import 'package:toto_mobile/src/core/presentation/screens/addition/bloc/event.dart';
import 'package:toto_mobile/src/core/presentation/screens/addition/bloc/state.dart';
import 'package:toto_mobile/src/utils/logger.dart';

@Injectable()
class AdditionBloc extends Bloc<AdditionEvent, AdditionState> {
  final RouterEventSink _routerEventSink;
  final GetProductByIdUseCase _getProductByIdUseCase;
  final GetProductByIdsUseCase _getProductByIdsUseCase;
  final GetGroupsByIdsUseCase _getGroupsByIdsUseCase;
  final AddItemsToCartUseCase _addItemsToCartUseCase;
  final GetProductsByParentGroupIdUseCase _getProductsByParentGroupIdUseCase;
  final WatchCountItemInCartUseCase _watchCountItemInCartUseCase;

  String? productId;
  static const dniksGroupId = '5c5a8f3d-87b1-4516-bebc-1a9160cb75c7';
  static const saucesGroupId = 'ab1d73ef-7235-4ff7-b032-10fab01d2fbd';
  Map<String, int> countOfProducts = {};
  List<ProductDto> productSizes = [];
  int numberOfSize = 0;

  ModifiersLists modifiersLists = ModifiersLists();
  int countOfDrinks = 0;
  int countOfSauces = 0;

  AdditionBloc(
    @factoryParam this.productId,
    this._routerEventSink,
    this._getProductByIdUseCase,
    this._getProductByIdsUseCase,
    this._addItemsToCartUseCase,
    this._getGroupsByIdsUseCase,
    this._getProductsByParentGroupIdUseCase,
    this._watchCountItemInCartUseCase,
  ) : super(AdditionState(currScreen: AdditionScreen.load)) {
    if (productId == null)
      add(OnErrorEvent());
    else {
      add(LoadProductEvent());
    }
  }

  @override
  Stream<AdditionState> mapEventToState(AdditionEvent event) => event.when(
        incrAddition: _onIncrement,
        decrAddition: _onDecrement,
        loadProduct: _onLoad,
        loadModifiers: _onLoadModifiers,
        prevScreen: _onPrevScreen,
        nextScreen: _onNextScreen,
        loadDrink: _onLoadDrink,
        loadSauce: _onLoadSauce,
        onAddToCart: _onAddToCart,
        onError: _onError,
        changeSize: _onChangeSize,
        changeModifier: _onChangeModifier,
      );

  Stream<AdditionState> _onError() async* {
    yield state.copyWith(currScreen: AdditionScreen.error);
  }

  Stream<AdditionState> _onLoadModifiers() async* {
    try {
      var currentProduct = productSizes[numberOfSize];
      var modifiers = currentProduct.modifiers;
      if (modifiers != null && modifiers.length > 0) {
        List<String> ids =
            modifiers.map((element) => element.modifierId).toList();
        var result = await _getProductByIdsUseCase(
            ProductFiltersInput(ids: ids, notIncludedInMenu: true));
        if (result.isSuccess && result.value != null) {
          List<ProductDto> modifierProducts = result.value!;
          var mainModifiers = modifiersLists.mainModifiers.modifiersList;
          modifierProducts.forEach((element) => mainModifiers[element] = false);
        }
      }
      var groupModifiers = currentProduct.groupModifiers ?? [];
      if (groupModifiers.length > 0) {
        List<String> ids =
            groupModifiers.map((element) => element.modifierId).toList();
        var result = await _getGroupsByIdsUseCase(
            GroupFiltersInput(ids: ids, notIncludedInMenu: true));
        List<GroupDto> namesOfGroups = [];
        if (result.isSuccess && result.value != null) {
          namesOfGroups = result.value!;
        }
        for (var element in groupModifiers) {
          var nameOfGroup = namesOfGroups
              .firstWhere((name) => name.id == element.modifierId)
              .title;
          ids = element.childModifiers.map((e) => e.modifierId).toList();
          var result = await _getProductByIdsUseCase(
              ProductFiltersInput(ids: ids, notIncludedInMenu: true));
          if (result.isSuccess && result.value != null) {
            var mods = result.value!;
            if (mods.length > 0) {
              ModifierCounts modifierCounts = ModifierCounts();
              mods.forEach(
                  (element) => modifierCounts.modifiersList[element] = false);
              modifiersLists.groupModifiers[nameOfGroup] = modifierCounts;
              modifiersLists.groupModifiers[nameOfGroup]?.groupId =
                  element.modifierId;
            }
          }
        }
      }
      yield state.copyWith(
        currScreen: AdditionScreen.main,
        modifiersLists: modifiersLists,
      );
    } catch (ex) {
      Logger.logger('_onBadLoadModifiers', ex.toString());
    }
  }

  Stream<AdditionState> _onLoad() async* {
    try {
      if (state.productSizes == null) {
        var result = await _getProductByIdUseCase(productId!);
        if (result.isSuccess && result.value != null) {
          var currentProduct = result.value;
          var currentId = currentProduct!.id;
          var currentProductSizes = currentProduct.productSizes;

          productSizes.add(currentProduct);
          countOfProducts[currentId] = 1;
          numberOfSize = 0;

          if (currentProductSizes != null && currentProductSizes.length > 0) {
            currentProductSizes.forEach((element) =>
                productSizes.add(ProductDto.fromProductSizesDto(element)));
          }

          yield state.copyWith(
            currScreen: AdditionScreen.main,
            countOfProducts: countOfProducts,
            numberOfSize: numberOfSize,
            productSizes: productSizes,
            modifiersLists: modifiersLists,
          );
          add(LoadModifiersEvent());
        }
      } else {
        yield state.copyWith(
          currScreen: AdditionScreen.main,
        );
      }
    } catch (ex) {
      yield state.copyWith(
        currScreen: AdditionScreen.error,
      );
    }
  }

  Stream<AdditionState> _onChangeSize(String id) async* {
    try {
      numberOfSize = productSizes.indexWhere((element) => element.id == id);
      countOfProducts[id] = countOfProducts[productId]!;
      countOfProducts.remove(productId);
      productId = id;

      yield state.copyWith(
        currScreen: AdditionScreen.main,
        productSizes: productSizes,
        countOfProducts: countOfProducts,
        numberOfSize: numberOfSize,
      );
    } catch (ex) {
      yield state.copyWith(
        currScreen: AdditionScreen.error,
      );
    }
  }

  Stream<AdditionState> _onChangeModifier(String id, String? group) async* {
    try {
      modifiersLists.changeEntry(id, group);

      yield state.copyWith(
        modifiersLists: modifiersLists,
      );
    } catch (ex) {
      yield state.copyWith(
        currScreen: AdditionScreen.error,
      );
    }
  }

  Stream<AdditionState> _onLoadDrink() async* {
    try {
      if (state.drinkList == null) {
        var result = await _getProductsByParentGroupIdUseCase(dniksGroupId);
        if (result.isSuccess) {
          List<ProductDto> drinkList = result.value!;
          yield state.copyWith(
            currScreen: AdditionScreen.drink,
            drinkList: drinkList,
            drinkCount: countOfDrinks,
          );
        }
      } else {
        yield state.copyWith(
          currScreen: AdditionScreen.drink,
        );
      }
    } catch (ex) {
      yield state.copyWith(
        currScreen: AdditionScreen.error,
      );
    }
  }

  Stream<AdditionState> _onLoadSauce() async* {
    try {
      if (state.sauceList == null) {
        var result = await _getProductsByParentGroupIdUseCase(saucesGroupId);
        if (result.isSuccess) {
          List<ProductDto> sauceList = result.value ?? [];
          yield state.copyWith(
            currScreen: AdditionScreen.sauce,
            sauceList: sauceList,
            sauceCount: countOfSauces,
          );
        }
      } else {
        yield state.copyWith(
          currScreen: AdditionScreen.sauce,
        );
      }
    } catch (ex) {
      yield state.copyWith(
        currScreen: AdditionScreen.error,
      );
    }
  }

  Stream<AdditionState> _onIncrement(String id) async* {
    var sauceIndex =
        state.sauceList?.indexWhere((element) => element.id == id) ?? -1;
    var drinkIndex =
        state.drinkList?.indexWhere((element) => element.id == id) ?? -1;

    if (sauceIndex != -1) {
      countOfSauces++;
    } else if (drinkIndex != -1) {
      countOfDrinks++;
    }

    if (countOfProducts[id] == null) {
      countOfProducts[id] = 1;
    } else {
      countOfProducts[id] = countOfProducts[id]! + 1;
    }

    yield state.copyWith(
      countOfProducts: countOfProducts,
      drinkCount: countOfDrinks,
      sauceCount: countOfSauces,
    );
  }

  Stream<AdditionState> _onDecrement(String id) async* {
    var sauceIndex =
        state.sauceList?.indexWhere((element) => element.id == id) ?? -1;
    var drinkIndex =
        state.drinkList?.indexWhere((element) => element.id == id) ?? -1;

    if (sauceIndex != -1) {
      countOfSauces--;
    } else if (drinkIndex != -1) {
      countOfDrinks--;
    }

    if (countOfProducts[id] != null) {
      if (countOfProducts[id] == 1) {
        if (id == productId) return;
        countOfProducts.remove(id);
      } else {
        countOfProducts[id] = countOfProducts[id]! - 1;
      }
    }
    yield state.copyWith(
      countOfProducts: countOfProducts,
      drinkCount: countOfDrinks,
      sauceCount: countOfSauces,
    );
  }

  Stream<AdditionState> _onAddToCart() async* {
    var product = countOfProducts.entries
        .firstWhere((element) => (element.key == productId));
    List<AddItemToCartInput> addItemToCart = [
      AddItemToCartInput(
        productId: product.key,
        amount: product.value,
        modifiers: modifiersLists.getList(),
      )
    ];
    countOfProducts.remove(product.key);
    countOfProducts.forEach((key, value) {
      _watchCountItemInCartUseCase.setCount(key, value);
      addItemToCart.add(AddItemToCartInput(productId: key, amount: value));
    });
    _addItemsToCartUseCase(addItemToCart);
    _routerEventSink.add(RouterEvent.pop());
  }

  Stream<AdditionState> _onPrevScreen() async* {
    switch (state.currScreen.index) {
      case 2:
        _routerEventSink.add(RouterEvent.pop());
        break;
      case 3:
        add(LoadProductEvent());
        break;
      case 4:
        if (state.drinkList!.isNotEmpty)
          add(LoadDrinkEvent());
        else {
          add(LoadProductEvent());
        }
        break;
    }
  }

  Stream<AdditionState> _onNextScreen() async* {
    switch (state.currScreen.index) {
      case 2:
        add(LoadDrinkEvent());
        break;
      case 3:
        add(LoadSauceEvent());
        break;
      case 4:
        add(OnAddToCartEvent());
        break;
    }
  }
}
