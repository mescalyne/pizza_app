import 'package:flutter/material.dart';
import 'package:toto_mobile/src/resources/resources.dart';

class ProductSizeChoice extends StatelessWidget {
  final Map<String, String> sizesOfProduct;
  final int numberOfSize;
  final Function? onChange;

  const ProductSizeChoice({
    required this.numberOfSize,
    required this.sizesOfProduct,
    this.onChange,
    Key? key,
  }) : super(key: key);

  static const heightIntentContent = 35.0;
  static const paddingContent = EdgeInsets.only(top: 4, bottom: 12);
  static const paddingIntentContent = EdgeInsets.all(4);
  static const separateWidth = 15.0;

  @override
  Widget build(BuildContext context) {
    var countOfSizes = sizesOfProduct.length;

    return Padding(
      padding: paddingContent,
      child: Container(
          padding: paddingIntentContent,
          height: heightIntentContent,
          decoration: BoxDecoration(
            color: TotoTheme.primaryLight,
            borderRadius: BorderRadius.circular(25),
          ),
          child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              var parentWidth = constraints.maxWidth;
              var allSeparateWidth = separateWidth * (countOfSizes - 1);
              var selectBlockWidth =
                  (parentWidth - allSeparateWidth) / countOfSizes;

              return ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: sizesOfProduct.length,
                  separatorBuilder: (context, _) => Container(
                        width: separateWidth,
                      ),
                  itemBuilder: (BuildContext context, int index) {
                    return ProductSizeItem(
                      index: index,
                      selectBlockWidth: selectBlockWidth,
                      sizesOfProduct: sizesOfProduct,
                      numberOfSize: numberOfSize,
                      onChange: onChange,
                    );
                  });
            },
          )),
    );
  }
}

class ProductSizeItem extends StatelessWidget {
  final Map<String, String> sizesOfProduct;
  final int numberOfSize;
  final Function? onChange;
  final int index;
  final double selectBlockWidth;

  ProductSizeItem({
    required this.numberOfSize,
    required this.sizesOfProduct,
    required this.index,
    required this.selectBlockWidth,
    this.onChange,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String key = sizesOfProduct.keys.elementAt(index);
    String value = sizesOfProduct.values.elementAt(index);

    return InkWell(
      onTap: () => numberOfSize == index ? {} : onChange?.call(key),
      child: Container(
        height: 24,
        width: selectBlockWidth,
        alignment: AlignmentDirectional.center,
        decoration: index == numberOfSize
            ? BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: TotoTheme.surface,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 4),
                    blurRadius: 8,
                    color: Colors.black.withOpacity(0.16),
                  ),
                ],
              )
            : BoxDecoration(),
        child: Text(
          '$value',
          style: TextStyle(
              color: index == numberOfSize
                  ? TotoTheme.textBase
                  : TotoTheme.textPrimaryDart),
        ),
      ),
    );
  }
}
