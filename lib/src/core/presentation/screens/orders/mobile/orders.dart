import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:toto_mobile/src/core/presentation/entities/delivery.dart';
import 'package:toto_mobile/src/core/presentation/screens/more_detail/bloc/state.dart';
import 'package:toto_mobile/src/core/presentation/screens/orders/bloc/bloc.dart';
import 'package:toto_mobile/src/core/presentation/screens/orders/bloc/event.dart';
import 'package:toto_mobile/src/core/presentation/screens/orders/bloc/state.dart';
import 'package:toto_mobile/src/core/presentation/screens/orders/mobile/widget/order_item_widget.dart';
import 'package:toto_mobile/src/core/presentation/ui/AppSnackBar.dart';
import 'package:toto_mobile/src/core/presentation/widgets/empty_order_view.dart';
import 'package:toto_mobile/src/core/presentation/widgets/widgets_with_animation/loader.dart';
import 'package:toto_mobile/src/extensions/TextStyle.dart';
import 'package:toto_mobile/src/resources/constants.dart';
import 'package:toto_mobile/src/resources/resources.dart';

class OrdersMobilePage extends StatefulWidget {
  const OrdersMobilePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => OrdersMobilePageState();
}

class OrdersMobilePageState extends State<OrdersMobilePage> {
  static const _orderTopPadding = 20.0;

  ScrollController scrollController = ScrollController();

  @override
  void initState() {
    scrollController.addListener(pagination);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<OrdersBloc, OrdersState>(
        listener: (context, state) {
          switch (state.status) {
            case DataStatus.error:
              AppSnackBar.showSnackBar(TotoDictionary.error.error, context);
              context.read<OrdersBloc>().add(OrdersEvent.errorLoading());
              break;
            default:
              break;
          }
        },
        builder: (context, state) {
          switch (state.status) {
            case DataStatus.loading:
              return _loadingView();
            case DataStatus.success:
              if (state.orderList.isEmpty) {
                return _emptyOrdersView(context);
              }
              return _ordersList(state.orderList, context);
            case DataStatus.unauthorized:
              return _unauthorizedUserView(context);
            default:
              return _errorView();
          }
        },
      ),
    );
  }

  Widget _ordersList(List<DeliveryProgressData> data, BuildContext context) {
    return Container(
      color: TotoTheme.bgGrey,
      child: RefreshIndicator(
        onRefresh: () => _pullToRefresh(context),
        child: ListView.builder(
          physics: const AlwaysScrollableScrollPhysics(),
          controller: scrollController,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return OrderItemWidget(order: data[index]);
          },
          itemCount: data.length,
          padding: EdgeInsets.only(
              top: _orderTopPadding,
              bottom: (Constants.tabBarHeight +
                  MediaQuery.of(context).padding.bottom)),
        ),
      ),
    );
  }

  Widget _loadingView() {
    return LoaderWidget();
  }

  Widget _errorView() {
    return Container(
      child: Center(
        child: Text(
          TotoDictionary.error.dataError,
          style: RobotoTextStyle.s15w500(TotoTheme.text.primaryDark),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  Widget _emptyOrdersView(BuildContext context) {
    return EmptyOrderView(
        buttonAction: () => _emptyDishesAction(context),
        buttonText: TotoDictionary.emptyBucketButton,
        messageText: TotoDictionary.emptyOrdersText);
  }

  Widget _unauthorizedUserView(BuildContext context) {
    return EmptyOrderView(
        buttonAction: () => _unauthorizedUserAction(context),
        buttonText: TotoDictionary.authorization.login,
        messageText: TotoDictionary.unauthorizedUser);
  }

  // Functions

  void _emptyDishesAction(BuildContext context) {
    context.read<OrdersBloc>().add(OrdersEvent.openMenu());
  }

  void _unauthorizedUserAction(BuildContext context) {
    context.read<OrdersBloc>().add(OrdersEvent.openAuthorization());
  }

  Future<void> _pullToRefresh(BuildContext context) async {
    context.read<OrdersBloc>().add(OrdersEvent.refresh());
  }

  void pagination() {
    if (scrollController.position.pixels ==
        scrollController.position.maxScrollExtent) {
      context.read<OrdersBloc>().add(OrdersEvent.nextPage());
    }
  }
}
