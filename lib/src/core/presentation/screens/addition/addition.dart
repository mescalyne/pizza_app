import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:toto_mobile/src/core/presentation/router/bloc/bloc.dart';
import 'package:toto_mobile/src/core/presentation/router/bloc/event.dart';
import 'package:toto_mobile/src/core/presentation/screens/addition/bloc/bloc.dart';
import 'package:toto_mobile/src/core/presentation/screens/addition/bloc/event.dart';
import 'package:toto_mobile/src/core/presentation/screens/addition/bloc/state.dart';
import 'package:toto_mobile/src/core/presentation/screens/addition/carditem/carditem.dart';
import 'package:toto_mobile/src/core/presentation/screens/addition/recommend/recommend.dart';
import 'package:toto_mobile/src/core/presentation/ui/AppSnackBar.dart';
import 'package:toto_mobile/src/core/presentation/widgets/widgets_with_animation/loader.dart';
import 'package:toto_mobile/src/resources/resources.dart';
import 'package:toto_mobile/src/resources/theme.dart';

class AdditionPage extends StatelessWidget {
  static const id = '/addition';
  const AdditionPage({Key? key}) : super(key: key);

  static const sizeOfIcon = 20.0;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AdditionBloc, AdditionState>(
        listener: (context, state) {
          switch (state.currScreen) {
            case AdditionScreen.error:
              AppSnackBar.showSnackBar(TotoDictionary.error.error, context);
              context.read<RouterBloc>().add(RouterEvent.pop());
              break;
            default:
              break;
          }
        },
        buildWhen: (previous, current) => previous != current,
        builder: (context, state) {
          try {
            switch (state.currScreen) {
              case AdditionScreen.main:
                var product = state.productSizes![state.numberOfSize!];
                return CardItemPage(
                  productSizes: state.productSizes!,
                  countOfProduct: state.countOfProducts![product.id] ?? 1,
                  numberOfSize: state.numberOfSize!,
                  modifiersLists: state.modifiersLists!,
                );
              case AdditionScreen.drink:
                return AdditionsRecommendPage(
                  additionsList: state.drinkList!,
                  countOfAdditions: state.countOfProducts!,
                  countAdditions: state.drinkCount!,
                );
              case AdditionScreen.sauce:
                return AdditionsRecommendPage(
                  additionsList: state.sauceList!,
                  countOfAdditions: state.countOfProducts!,
                  countAdditions: state.sauceCount!,
                );
              case AdditionScreen.load:
                return Container(
                  color: TotoTheme.surface,
                  child: LoaderWidget(),
                );
              case AdditionScreen.error:
                return Container();
            }
          } catch (ex) {
            context.read<AdditionBloc>().add(AdditionEvent.onError());
            return Container();
          }
        });
  }
}
