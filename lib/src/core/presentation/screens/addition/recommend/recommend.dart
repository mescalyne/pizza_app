import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toto_mobile/src/core/domain/entities/product.dart';
import 'package:toto_mobile/src/core/presentation/screens/addition/bloc/bloc.dart';
import 'package:toto_mobile/src/core/presentation/screens/addition/bloc/event.dart';
import 'package:toto_mobile/src/core/presentation/screens/addition/recommend/recommend_list.dart';
import 'package:toto_mobile/src/core/presentation/widgets/buttons/bottom_addition_button.dart';
import 'package:toto_mobile/src/core/presentation/widgets/widgets_with_animation/loader.dart';
import 'package:toto_mobile/src/extensions/TextStyle.dart';
import 'package:toto_mobile/src/resources/resources.dart';

class AdditionsRecommendPage extends StatelessWidget {
  final List<ProductDto> additionsList;
  final Map<String, int> countOfAdditions;
  final int countAdditions;

  const AdditionsRecommendPage({
    required this.additionsList,
    required this.countOfAdditions,
    required this.countAdditions,
    Key? key,
  }) : super(key: key);

  static const sizeOfIcon = 20.0;
  static const elevationOfAppBar = 0.0;

  @override
  Widget build(BuildContext context) {
    return additionsList.isNotEmpty
        ? Scaffold(
            appBar: AppBar(
              title: Text(
                additionsList.first.parentGroup ?? TotoDictionary.recommend,
              ),
              centerTitle: true,
              titleTextStyle: RobotoTextStyle.titleTextStyle(),
              leading: InkWell(
                onTap: () => BlocProvider.of<AdditionBloc>(context)
                    .add(AdditionEvent.prevScreen()),
                child: Icon(
                  TotoIcons.arrow_back,
                  size: sizeOfIcon,
                  color: TotoTheme.black,
                ),
              ),
              elevation: elevationOfAppBar,
              backgroundColor: TotoTheme.surface,
            ),
            body: AdditionListRecommend(
              additions: additionsList,
              countOfAdditions: countOfAdditions,
            ),
            bottomSheet: BottomAdditionButton(
              onTapFunction: () => BlocProvider.of<AdditionBloc>(context)
                  .add(AdditionEvent.nextScreen()),
              name: countAdditions > 0
                  ? TotoDictionary.productAdd
                  : TotoDictionary.skipAdd,
            ),
          )
        : EmptyAddtion();
  }
}

class EmptyAddtion extends StatelessWidget {
  const EmptyAddtion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<AdditionBloc>(context).add(AdditionEvent.nextScreen());
    return Container(
      color: TotoTheme.surface,
      child: LoaderWidget(),
    );
  }
}
