import 'package:flutter/material.dart';
import 'package:toto_mobile/src/core/domain/entities/product.dart';
import 'package:toto_mobile/src/extensions/TextStyle.dart';
import 'package:toto_mobile/src/resources/dictionary.dart';
import 'package:toto_mobile/src/resources/resources.dart';

class NutrionalBlock extends StatefulWidget {
  var isFullNutritionals = true;
  final ProductDto productInfo;

  NutrionalBlock({
    required this.productInfo,
    Key? key,
  }) : super(key: key);

  @override
  _NutrionalBlockState createState() => _NutrionalBlockState(
      isFullNutritionals: isFullNutritionals, productInfo: productInfo);
}

class _NutrionalBlockState extends State<NutrionalBlock> {
  bool isFullNutritionals;
  ProductDto productInfo;

  _NutrionalBlockState(
      {required this.isFullNutritionals, required this.productInfo});

  static const paddingOfContent = EdgeInsets.only(top: 16, bottom: 12);
  static const _paddingButton = EdgeInsets.only(top: 2, bottom: 2);
  static const _borderRadiusButton = 8.0;
  static const _widthButton = 42.0;
  static const _offsetButtons = 12.0;
  static const _paddingRightButton = 18.0;

  static const _caloriesPerJoule = 4.184;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: paddingOfContent,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(TotoDictionary.productNutritionValue.toLowerCase(),
                    style: RobotoTextStyle.smallCapsFs14Fw700(
                        TotoTheme.text.base)),
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        isFullNutritionals = true;
                      });
                    },
                    child: Container(
                      alignment: AlignmentDirectional.center,
                      width: _widthButton,
                      padding: _paddingButton,
                      decoration: BoxDecoration(
                        color: isFullNutritionals
                            ? TotoTheme.primary
                            : TotoTheme.surface,
                        borderRadius: BorderRadius.all(
                            Radius.circular(_borderRadiusButton)),
                      ),
                      child: Text(
                        '${TotoDictionary.product100Nutrition}',
                        style: RobotoTextStyle.s12w500(
                          isFullNutritionals
                              ? TotoTheme.surface
                              : TotoTheme.black,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: _offsetButtons,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        isFullNutritionals = false;
                      });
                    },
                    child: Container(
                      width: _widthButton,
                      padding: _paddingButton,
                      alignment: AlignmentDirectional.center,
                      decoration: BoxDecoration(
                        color: isFullNutritionals
                            ? TotoTheme.surface
                            : TotoTheme.primary,
                        borderRadius: BorderRadius.all(
                            Radius.circular(_borderRadiusButton)),
                      ),
                      child: Text(
                        '${TotoDictionary.productAllNutrition}',
                        style: RobotoTextStyle.s12w500(
                          isFullNutritionals
                              ? TotoTheme.black
                              : TotoTheme.surface,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: _paddingRightButton,
              ),
            ],
          ),
          Container(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              NutritionalValueBlock(
                  nutriName: TotoDictionary.productNutritionKdj,
                  nutriValue: isFullNutritionals
                      ? (double.parse(productInfo.energyAmount ?? '0') *
                          _caloriesPerJoule)
                      : (double.parse(productInfo.energyFullAmount ?? '0') *
                          _caloriesPerJoule)),
              NutritionalValueBlock(
                  nutriName: TotoDictionary.productNutritionKkal,
                  nutriValue: isFullNutritionals
                      ? double.parse(productInfo.energyAmount ?? '0')
                      : double.parse(productInfo.energyFullAmount ?? '0')),
              NutritionalValueBlock(
                  nutriName: TotoDictionary.productNutritionBelki,
                  nutriValue: isFullNutritionals
                      ? double.parse(productInfo.fiberAmount ?? '0')
                      : double.parse(productInfo.fiberFullAmount ?? '0')),
              NutritionalValueBlock(
                  nutriName: TotoDictionary.productNutritionGiri,
                  nutriValue: isFullNutritionals
                      ? double.parse(productInfo.fatAmount ?? '0')
                      : double.parse(productInfo.fatFullAmount ?? '0')),
              NutritionalValueBlock(
                  nutriName: TotoDictionary.productNutritionUglev,
                  nutriValue: isFullNutritionals
                      ? double.parse(productInfo.carbohydrateAmount ?? '0')
                      : double.parse(
                          productInfo.carbohydrateFullAmount ?? '0')),
            ],
          ),
        ],
      ),
    );
  }
}

class NutritionalValueBlock extends StatelessWidget {
  final String nutriName;
  final double nutriValue;

  NutritionalValueBlock(
      {required this.nutriName, required this.nutriValue, Key? key})
      : super(key: key);

  static const _height = 36.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: _height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            nutriName,
            style: RobotoTextStyle.s12w500(TotoTheme.greenGrayText),
          ),
          Text(
            nutriValue.ceil().toString(),
            style: RobotoTextStyle.s12w400(TotoTheme.darkGrayText),
          ),
        ],
      ),
    );
  }
}
