import 'package:toto_mobile/src/core/domain/entities/cart_item.dart';
import 'package:toto_mobile/src/core/domain/entities/product.dart';

class CartItemWithSizes {
  List<ProductDto> productListWithSizes = [];
  List<CartItemModifierDto> cartItemModifiers = [];
  List<CartItemModifierDto> cartItemGroupModifiers = [];

  String? parentGroup;
  int numbersOfSizes = 0;
  String currentId = '';
  int countOfProduct = 0;

  CartItemWithSizes(ProductDto product) {
    productListWithSizes.add(product);
    parentGroup = product.parentGroup;
    numbersOfSizes = 0;
    currentId = product.id;
    countOfProduct = 1;
  }

  void addProductSize(ProductDto product) {
    productListWithSizes.add(product);
  }

  int indexWhereIdInSizes(String id) {
    return productListWithSizes.indexWhere((element) => element.id == id);
  }
}
