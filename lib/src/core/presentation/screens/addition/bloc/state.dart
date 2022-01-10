import 'package:toto_mobile/src/core/domain/entities/product.dart';
import 'package:toto_mobile/src/core/presentation/entities/modifiers_list.dart';

class AdditionState {
  final AdditionScreen currScreen;
  final ProductDto? mainProduct;
  final List<ProductDto>? productSizes;
  final int? numberOfSize;
  final List<ProductDto>? drinkList;
  final int? drinkCount;
  final List<ProductDto>? sauceList;
  final int? sauceCount;
  final Map<String, int>? countOfProducts;
  final ModifiersLists? modifiersLists;

  AdditionState({
    required this.currScreen,
    this.productSizes,
    this.mainProduct,
    this.drinkList,
    this.drinkCount,
    this.sauceList,
    this.sauceCount,
    this.countOfProducts,
    this.numberOfSize,
    this.modifiersLists,
  });

  AdditionState copyWith({
    AdditionScreen? currScreen,
    ProductDto? mainProduct,
    List<ProductDto>? productSizes,
    List<ProductDto>? drinkList,
    int? drinkCount,
    List<ProductDto>? sauceList,
    int? sauceCount,
    Map<String, int>? countOfProducts,
    int? numberOfSize,
    ModifiersLists? modifiersLists,
  }) {
    return AdditionState(
      productSizes: productSizes ?? this.productSizes,
      currScreen: currScreen ?? this.currScreen,
      mainProduct: mainProduct ?? this.mainProduct,
      drinkList: drinkList ?? this.drinkList,
      drinkCount: drinkCount ?? this.drinkCount,
      sauceList: sauceList ?? this.sauceList,
      sauceCount: sauceCount ?? this.sauceCount,
      countOfProducts: countOfProducts ?? this.countOfProducts,
      numberOfSize: numberOfSize ?? this.numberOfSize,
      modifiersLists: modifiersLists ?? this.modifiersLists,
    );
  }
}

enum AdditionScreen {
  load,
  error,
  main,
  drink,
  sauce,
}
