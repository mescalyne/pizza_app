import 'package:flutter/material.dart';
import 'package:toto_mobile/src/core/domain/entities/product.dart';
import 'package:toto_mobile/src/core/presentation/entities/cart_item_with_size.dart';
import 'package:toto_mobile/src/core/presentation/screens/bucket/bloc/bloc.dart';
import 'package:toto_mobile/src/core/presentation/screens/bucket/mobile/full_dishies/product_card.dart';
import 'package:toto_mobile/src/core/presentation/widgets/buttons/arrow_down_button.dart';
import 'package:toto_mobile/src/core/presentation/widgets/product_card/compositional.dart';
import 'package:toto_mobile/src/core/presentation/widgets/product_card/modifiers.dart';
import 'package:toto_mobile/src/core/presentation/widgets/product_card/modifiers_simple.dart';
import 'package:toto_mobile/src/core/presentation/widgets/product_card/nutritional.dart';
import 'package:toto_mobile/src/core/presentation/widgets/product_card/product_size_choice.dart';
import 'package:toto_mobile/src/extensions/TextStyle.dart';

class BucketModalBottomItem {
  static const elevetionOfModal = 10.0;
  static const radiusOfModal = 30.0;
  static const paddingIntentContent =
      EdgeInsets.only(top: 4, left: 8, right: 8);
  static const paddingTitleContent = EdgeInsets.only(top: 28);
  static const heightIntentContent = 35.0;

  static show(
      BuildContext newcontext, CartItemWithSizes cartItem, BucketBloc bloc) {
    return showModalBottomSheet(
        isScrollControlled: true,
        backgroundColor: Colors.white,
        elevation: elevetionOfModal,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(radiusOfModal),
                topRight: Radius.circular(radiusOfModal))),
        context: newcontext,
        builder: (BuildContext context) {
          return BucketModalScrollableSheet(
            mainContext: newcontext,
            cartItem: cartItem,
          );
        });
  }
}

class BucketModalScrollableSheet extends StatelessWidget {
  final CartItemWithSizes cartItem;
  final BuildContext mainContext;
  Map<String, String> sizesOfProduct = {};
  late ProductDto productInfo;

  BucketModalScrollableSheet({
    required this.cartItem,
    required this.mainContext,
    Key? key,
  }) : super(key: key) {
    productInfo = cartItem.productListWithSizes[cartItem.numbersOfSizes];
    cartItem.productListWithSizes
        .forEach((element) => sizesOfProduct[element.id] = element.name);
  }

  static const paddingIntentContent =
      EdgeInsets.only(top: 4, left: 8, right: 8);
  static const paddingTitleContent = EdgeInsets.only(bottom: 28);

  @override
  Widget build(BuildContext context) {
    Map<ProductDto, bool> modifiersList = {};
    cartItem.cartItemModifiers
        .forEach((element) => modifiersList[element.product] = true);
    Map<ProductDto, bool> groupModifiersList = {};
    cartItem.cartItemGroupModifiers
        .forEach((element) => groupModifiersList[element.product] = true);

    return DraggableScrollableSheet(
        expand: false,
        initialChildSize: 0.8,
        maxChildSize: 1,
        builder: (context, scrollController) {
          return SingleChildScrollView(
            controller: scrollController,
            child: Container(
              padding: paddingIntentContent,
              child: Wrap(
                children: [
                  ArrowDownButton(),
                  Container(
                    padding: paddingTitleContent,
                  ),
                  ProductModalInfoCard(
                    titleForCardBlock: TitleModalForItem(
                      name: productInfo.name,
                      image: productInfo.image,
                    ),
                    productInfo: productInfo,
                    nutritionalBlock: NutrionalBlock(
                      key: UniqueKey(),
                      productInfo: productInfo,
                    ),
                    modifierListBlock: ModifierList(
                      modifiersList: modifiersList,
                    ),
                    modifierListSimplesBlock: ModifierSimpleList(
                      modifiersList: groupModifiersList,
                    ),
                    productCompositionalBlock: ItemCompositional(
                      description: productInfo.description ?? '',
                    ),
                    productSizeChoiceBlock: sizesOfProduct.length > 1
                        ? ProductSizeChoice(
                            sizesOfProduct: sizesOfProduct,
                            numberOfSize: cartItem.numbersOfSizes,
                          )
                        : Container(),
                  ),
                ],
              ),
            ),
          );
        });
  }
}

class TitleModalForItem extends StatelessWidget {
  final String name;
  final String image;

  static const heightImage = 200.0;
  static const imagePadding = EdgeInsets.only(top: 16, bottom: 16);

  TitleModalForItem({required this.name, required this.image, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('$name', style: RobotoTextStyle.s18w700(null)),
        Padding(
          padding: imagePadding,
          child: Image.network(
            image,
            height: heightImage,
          ),
        ),
      ],
    );
  }
}
