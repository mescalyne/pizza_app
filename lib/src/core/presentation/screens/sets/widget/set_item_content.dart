import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toto_mobile/src/core/domain/entities/product.dart';
import 'package:toto_mobile/src/core/presentation/widgets/product_card/nutritional.dart';
import 'package:toto_mobile/src/extensions/TextStyle.dart';
import 'package:toto_mobile/src/resources/resources.dart';
import 'package:toto_mobile/src/resources/svg.dart';

class SetItemContent extends StatelessWidget {
  final ProductDto productDto;
  SetItemContent({required this.productDto});

  static const _paddingContent = EdgeInsets.only(
    top: 12,
    left: 16,
    right: 16,
  );
  static const _marginContent = EdgeInsets.only(top: 20, bottom: 44);
  static const _imageSize = 164.0;
  static const _heightDescription = 65.0;
  static const _paddingTitle = EdgeInsets.symmetric(vertical: 20);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: _paddingContent,
      margin: _marginContent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          FadeInImage.assetNetwork(
            image: productDto.image,
            height: _imageSize,
            fit: BoxFit.fitWidth,
            placeholder: placeholderPath,
          ),
          Container(
            padding: _paddingTitle,
            child: Text(
              productDto.name,
              maxLines: 2,
              textAlign: TextAlign.center,
              style: RobotoTextStyle.s24w700(TotoTheme.text.base),
            ),
          ),
          Container(
            height: _heightDescription,
            child: Text(
              productDto.description ?? '',
              maxLines: 4,
              textAlign: TextAlign.left,
              style: RobotoTextStyle.s14w400(TotoTheme.text.base),
            ),
          ),
          NutrionalBlock(
            productInfo: productDto,
          ),
        ],
      ),
    );
  }
}
