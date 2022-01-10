import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toto_mobile/src/core/presentation/screens/ordering/bloc/bloc.dart';
import 'package:toto_mobile/src/core/presentation/screens/ordering/bloc/event.dart';
import 'package:toto_mobile/src/core/presentation/screens/ordering/bloc/state.dart';
import 'package:toto_mobile/src/core/presentation/screens/ordering/widget/content_page.dart';
import 'package:toto_mobile/src/core/presentation/ui/AppSnackBar.dart';
import 'package:toto_mobile/src/core/presentation/widgets/empty_order_view.dart';
import 'package:toto_mobile/src/core/presentation/widgets/widgets_with_animation/loader.dart';
import 'package:toto_mobile/src/extensions/TextStyle.dart';
import 'package:toto_mobile/src/resources/resources.dart';

TextEditingController commentControllerField = TextEditingController();

class OrderingPage extends StatelessWidget {
  static const id = '/ordering';

  OrderingPage();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('${TotoDictionary.deliveryCheckout}'),
          backgroundColor: TotoTheme.bg,
          foregroundColor: TotoTheme.text.base,
          titleTextStyle: RobotoTextStyle.titleTextStyle(),
          elevation: 0,
        ),
        body: BlocConsumer<OrderingBloc, OrderingState>(
          listener: (context, state) {
            switch (state.currentState) {
              case OrderingStatus.error:
                AppSnackBar.showSnackBar(TotoDictionary.error.error, context);
                context.read<OrderingBloc>().add(OrderingEvent.errorLoaded());
                break;
              default:
                break;
            }
          },
          builder: (context, state) {
            switch (state.currentState) {
              case OrderingStatus.success:
                return OrderingContentPage();
              case OrderingStatus.unauthorized:
                return _unauthorizedUserView(context);
              default:
                return LoaderWidget();
            }
          },
        ),
      ),
    );
  }

  Widget _unauthorizedUserView(BuildContext context) {
    return EmptyOrderView(
        buttonAction: () => _unauthorizedUserAction(context),
        buttonText: TotoDictionary.authorization.login,
        messageText: TotoDictionary.deliveryUnauthorizedUser);
  }

  void _unauthorizedUserAction(BuildContext context) {
    context.read<OrderingBloc>().add(OrderingEvent.openAuthorization());
  }
}
