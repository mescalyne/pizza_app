import 'package:collection/collection.dart';
import 'package:toto_mobile/src/core/domain/entities/edit_cart.dart';
import 'package:toto_mobile/src/core/domain/entities/product.dart';

class ModifierCounts {
  Map<ProductDto, bool> modifiersList = {};
  int minAmount = 0;
  String? groupId;

  void changeEntry(String id) {
    var product =
        modifiersList.entries.firstWhereOrNull((item) => item.key.id == id);
    if (product != null) {
      if (product.value == true)
        modifiersList[product.key] = false;
      else
        modifiersList[product.key] = true;
    }
  }
}

class ModifiersLists {
  ModifierCounts mainModifiers = ModifierCounts();
  Map<String, ModifierCounts> groupModifiers = {};

  void changeEntry(String id, String? group) {
    if (group == null)
      mainModifiers.changeEntry(id);
    else {
      groupModifiers[group]?.changeEntry(id);
    }
  }

  List<CartItemModifierInput> getList() {
    List<CartItemModifierInput> list = [];

    mainModifiers.modifiersList.forEach((key, value) => {
          if (value == true)
            {list.add(CartItemModifierInput(productId: key.id, amount: 1))}
        });
    groupModifiers.forEach((key, value) {
      value.modifiersList.forEach((mkey, mvalue) {
        if (mvalue == true) {
          print(mkey.parentGroup);
          list.add(CartItemModifierInput(
            productId: mkey.id,
            amount: 1,
            groupId: value.groupId,
          ));
        }
      });
    });
    return list;
  }
}
