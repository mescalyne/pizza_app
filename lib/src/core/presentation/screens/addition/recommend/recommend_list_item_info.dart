import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:toto_mobile/src/core/domain/entities/product.dart';
import 'package:toto_mobile/src/core/presentation/screens/addition/bloc/bloc.dart';
import 'package:toto_mobile/src/core/presentation/screens/addition/bloc/event.dart';
import 'package:toto_mobile/src/core/presentation/widgets/buttons/arrow_down_button.dart';
import 'package:toto_mobile/src/core/presentation/widgets/buttons/bottom_addition_button.dart';
import 'package:toto_mobile/src/core/presentation/widgets/product_card/nutritional.dart';
import 'package:toto_mobile/src/extensions/TextStyle.dart';
import 'package:toto_mobile/src/resources/resources.dart';

abstract class AdditionsListItemInfoCard {
  static const paddingContent = EdgeInsets.only(top: 28, right: 28, left: 28);
  static const heightImage = 164.0;
  static const heightSpace = 20.0;
  static const radiusOfModal = 30.0;
  static const heightOfModal = 620.0;
  static const heightContent = 500.0;
  static const heightDescription = 100.0;

  static Future show(BuildContext myContext, ProductDto addition) {
    return showModalBottomSheet(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(radiusOfModal),
                topRight: Radius.circular(radiusOfModal))),
        isScrollControlled: true,
        backgroundColor: Colors.white,
        context: myContext,
        builder: (BuildContext context) {
          return Container(
            height: heightOfModal,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ArrowDownButton(),
                Container(
                  height: heightContent,
                  padding: paddingContent,
                  child: Column(
                    children: [
                      Image.network(
                        addition.image,
                        height: heightImage,
                      ),
                      Container(
                        height: heightSpace,
                      ),
                      Text(
                        addition.name,
                        style: RobotoTextStyle.s24w700(TotoTheme.text.base),
                      ),
                      Container(
                        height: heightSpace,
                      ),
                      Text(
                        addition.description ?? '',
                        maxLines: 8,
                        overflow: TextOverflow.ellipsis,
                        style: RobotoTextStyle.s14w400(TotoTheme.text.base),
                      ),
                      NutrionalBlock(
                        productInfo: addition,
                      ),
                    ],
                  ),
                ),
                BottomAdditionButton(
                  name: TotoDictionary.productAdd,
                  onTapFunction: () {
                    BlocProvider.of<AdditionBloc>(myContext)
                        .add(AdditionEvent.incrAddition(addition.id));
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          );
        });
  }
}
