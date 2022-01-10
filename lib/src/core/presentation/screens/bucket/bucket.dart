import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toto_mobile/src/core/presentation/screens/bucket/bloc/bloc.dart';
import 'package:toto_mobile/src/core/presentation/screens/bucket/bloc/event.dart';
import 'package:toto_mobile/src/core/presentation/screens/bucket/bloc/state.dart';
import 'package:toto_mobile/src/core/presentation/screens/bucket/mobile/error/error_dishies.dart';
import 'package:toto_mobile/src/core/presentation/screens/bucket/mobile/full_dishies/main.dart';
import 'package:toto_mobile/src/core/presentation/widgets/empty_order_view.dart';
import 'package:toto_mobile/src/core/presentation/widgets/widgets_with_animation/loader.dart';
import 'package:toto_mobile/src/injection/injection.dart';
import 'package:toto_mobile/src/resources/dictionary.dart';

class BucketPage extends StatelessWidget {
  static const id = '/bucket';
  final Function backToHome;

  const BucketPage({
    required this.backToHome,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<BucketBloc>(
        create: (_) => getIt<BucketBloc>(param1: backToHome),
        child: BucketMobilePage());
  }
}

class BucketMobilePage extends StatelessWidget {
  const BucketMobilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BucketBloc, BucketState>(
      builder: (context, state) {
        switch (state.currScreen) {
          case BucketScreenStatus.empty:
            return EmptyOrderView(
              buttonAction: () => BlocProvider.of<BucketBloc>(context)
                  .add(OnRouteToMenuEvent()),
              buttonText: TotoDictionary.emptyBucketButton,
              messageText: TotoDictionary.emptyBucketText,
            );
          case BucketScreenStatus.full:
            return FullDishies(
              listRecommend: state.listRecommend ?? [],
              coupon: state.coupon,
              discountSum: state.discountSum ?? 0,
              isIncorrectCoupon: state.isIncorrectCoupon,
              isAcceptAvailable: state.isAcceptAvailable!,
              total: state.totalPayment!,
              totalPayment: state.totalPayment!,
              cartItemsWithSizes: state.cartItemsWithSizes!,
            );
          case BucketScreenStatus.error:
            return ErrorBucket();
          case BucketScreenStatus.loading:
            return Center(
              child: LoaderWidget(),
            );
        }
      },
    );
  }
}


