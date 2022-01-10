import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:provider/src/provider.dart';
import 'package:toto_mobile/src/core/domain/entities/product.dart';
import 'package:toto_mobile/src/core/presentation/entities/modifiers_list.dart';
import 'package:toto_mobile/src/core/presentation/router/bloc/bloc.dart';
import 'package:toto_mobile/src/core/presentation/router/bloc/event.dart';
import 'package:toto_mobile/src/core/presentation/screens/addition/bloc/bloc.dart';
import 'package:toto_mobile/src/core/presentation/screens/addition/bloc/event.dart';
import 'package:toto_mobile/src/core/presentation/screens/addition/carditem/carditem_body.dart';
import 'package:toto_mobile/src/core/presentation/widgets/buttons/bottom_addition_button.dart';
import 'package:toto_mobile/src/extensions/TextStyle.dart';
import 'package:toto_mobile/src/resources/resources.dart';

class CardItemPage extends StatelessWidget {
  final List<ProductDto> productSizes;
  final int countOfProduct;
  final int numberOfSize;
  final ModifiersLists modifiersLists;

  const CardItemPage({
    required this.productSizes,
    required this.countOfProduct,
    required this.numberOfSize,
    required this.modifiersLists,
    Key? key,
  }) : super(key: key);

  static const sizeOfIcon = 20.0;
  static const elevationOfAppBar = 0.0;

  @override
  Widget build(BuildContext context) {
    final product = productSizes[numberOfSize];
    var groupName = product.parentGroup ?? TotoDictionary.recommend;
    var lastIndex = groupName.indexOf(' ');
    if (lastIndex != -1) {
      groupName = groupName.substring(0, lastIndex);
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(groupName,
            style: RobotoTextStyle.s24w700(TotoTheme.text.base)),
        centerTitle: true,
        leading: InkWell(
          onTap: () {
            context.read<RouterBloc>().add(RouterEvent.pop());
          },
          child: Icon(
            TotoIcons.arrow_back,
            size: sizeOfIcon,
            color: TotoTheme.black,
          ),
        ),
        elevation: elevationOfAppBar,
        backgroundColor: TotoTheme.surface,
      ),
      body: CardItemBody(
        countOfProduct: countOfProduct,
        productSizes: productSizes,
        numberOfSize: numberOfSize,
        modifiersLists: modifiersLists,
      ),
      bottomSheet: BottomAdditionButton(
        name: TotoDictionary.productAdd,
        price: (int.parse(product.price ?? '0') * countOfProduct).toString(),
        onTapFunction: () => BlocProvider.of<AdditionBloc>(context)
            .add(AdditionEvent.nextScreen()),
      ),
    );
  }
}
