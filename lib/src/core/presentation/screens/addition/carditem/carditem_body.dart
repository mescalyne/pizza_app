import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:toto_mobile/src/core/domain/entities/product.dart';
import 'package:toto_mobile/src/core/presentation/entities/modifiers_list.dart';
import 'package:toto_mobile/src/core/presentation/screens/addition/bloc/bloc.dart';
import 'package:toto_mobile/src/core/presentation/screens/addition/bloc/event.dart';
import 'package:toto_mobile/src/core/presentation/screens/addition/carditem/carditem_title.dart';
import 'package:toto_mobile/src/core/presentation/widgets/product_card/compositional.dart';
import 'package:toto_mobile/src/core/presentation/widgets/product_card/modifiers.dart';
import 'package:toto_mobile/src/core/presentation/widgets/product_card/modifiers_simple.dart';
import 'package:toto_mobile/src/core/presentation/widgets/product_card/nutritional.dart';
import 'package:toto_mobile/src/core/presentation/widgets/product_card/product_size_choice.dart';
import 'package:toto_mobile/src/extensions/TextStyle.dart';
import 'package:toto_mobile/src/resources/resources.dart';

class CardItemBody extends StatelessWidget {
  final List<ProductDto> productSizes;
  final int countOfProduct;
  final int? numberOfSize;
  final ModifiersLists modifiersLists;

  Map<String, String> sizesOfProduct = {};
  int countOfSizes = 0;

  CardItemBody({
    required this.productSizes,
    required this.countOfProduct,
    required this.numberOfSize,
    required this.modifiersLists,
    Key? key,
  }) : super(key: key) {
    countOfSizes = productSizes.length;
    if (countOfSizes > 1) {
      productSizes.forEach((element) {
        sizesOfProduct[element.id] = element.name;
      });
    }
  }

  static const paddingOfContent =
      EdgeInsets.only(top: 12, left: 8, right: 8, bottom: 400);
  static const paddingOfInternalContent =
      EdgeInsets.only(top: 5, left: 12, right: 12);

  @override
  Widget build(BuildContext context) {
    var product = productSizes[numberOfSize!];
    var countMainModifiers = modifiersLists.mainModifiers.modifiersList.length;
    var countGroupnModifiers = modifiersLists.groupModifiers.entries.length;

    return SingleChildScrollView(
      child: Container(
        color: TotoTheme.gray,
        padding: paddingOfContent,
        child: Column(
          children: [
            Container(
              padding: paddingOfInternalContent,
              decoration: BoxDecoration(
                color: TotoTheme.surface,
                borderRadius: BorderRadius.all(Radius.circular(16)),
              ),
              child: Column(
                children: [
                  CustomTitleForCard(
                    id: product.id,
                    name: countOfSizes > 1
                        ? product.parentGroup ?? TotoDictionary.defaultProduct
                        : product.name,
                    image: product.image,
                    price: product.price ?? '',
                    countOfProduct: countOfProduct,
                  ),
                  countOfSizes > 1
                      ? ProductSizeChoice(
                          sizesOfProduct: sizesOfProduct,
                          numberOfSize: numberOfSize!,
                          onChange: (String id) => {
                            BlocProvider.of<AdditionBloc>(context)
                                .add(ChangeSizeEvent(id))
                          },
                        )
                      : Container(),
                  ItemCompositional(
                    description: product.description ?? '',
                  ),
                  NutrionalBlock(
                    key: UniqueKey(),
                    productInfo: productSizes[numberOfSize!],
                  ),
                ],
              ),
            ),
            countMainModifiers > 0
                ? Column(
                    children: [
                      ModierListCaption(
                        name: TotoDictionary.productAddModifiers,
                      ),
                      ModifierList(
                        modifiersList:
                            modifiersLists.mainModifiers.modifiersList,
                        onChange: ((id) =>
                            BlocProvider.of<AdditionBloc>(context)
                                .add(AdditionEvent.changeModifier(id, null))),
                      ),
                    ],
                  )
                : Container(),
            countGroupnModifiers > 0
                ? Column(
                    children: [
                      ...modifiersLists.groupModifiers.entries
                          .map((element) => Column(
                                children: [
                                  ModierListCaption(name: element.key),
                                  ModifierSimpleList(
                                    modifiersList: element.value.modifiersList,
                                    onChange: ((id) =>
                                        BlocProvider.of<AdditionBloc>(context)
                                            .add(AdditionEvent.changeModifier(
                                                id, element.key))),
                                  ),
                                ],
                              ))
                    ],
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}

class ModierListCaption extends StatelessWidget {
  final String name;

  const ModierListCaption({
    required this.name,
    Key? key,
  }) : super(key: key);

  static const paddingModifierHead =
      EdgeInsets.only(left: 12, top: 16, bottom: 16);
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: paddingModifierHead,
      child: Text(
        name,
        style: RobotoTextStyle.s18w700(TotoTheme.text.base),
      ),
    );
  }
}
