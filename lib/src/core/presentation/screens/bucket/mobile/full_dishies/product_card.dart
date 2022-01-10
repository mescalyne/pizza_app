import 'package:flutter/material.dart';
import 'package:toto_mobile/src/core/domain/entities/product.dart';

class ProductModalInfoCard extends StatelessWidget {
  final ProductDto productInfo;
  final Widget titleForCardBlock;
  final Widget nutritionalBlock;
  final Widget modifierListBlock;

  final Widget modifierListSimplesBlock;
  final Widget productCompositionalBlock;
  final Widget productSizeChoiceBlock;

  const ProductModalInfoCard(
      {required this.productInfo,
      required this.titleForCardBlock,
      required this.nutritionalBlock,
      required this.modifierListBlock,
      required this.productCompositionalBlock,
      required this.productSizeChoiceBlock,
      required this.modifierListSimplesBlock,
      Key? key})
      : super(key: key);

  static const paddingContent = EdgeInsets.only(right: 8, left: 8);
  static const paddingIntentContent = EdgeInsets.only(bottom: 10);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: paddingContent,
      child: Column(
        children: [
          Container(
            padding: paddingIntentContent,
            child: Column(
              children: [
                titleForCardBlock,
                productSizeChoiceBlock,
                productCompositionalBlock,
                nutritionalBlock,
              ],
            ),
          ),
          modifierListSimplesBlock,
          modifierListBlock,
        ],
      ),
    );
  }
}
