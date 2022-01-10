import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';
import 'package:toto_mobile/src/core/presentation/entities/delivery_detail.dart';
import 'package:toto_mobile/src/core/presentation/screens/order_detail/bloc/bloc.dart';
import 'package:toto_mobile/src/core/presentation/screens/order_detail/bloc/event.dart';
import 'package:toto_mobile/src/extensions/TextStyle.dart';
import 'package:toto_mobile/src/resources/resources.dart';
import 'package:toto_mobile/src/resources/svg.dart';

class OrderCompositionItemWidget extends StatelessWidget {
  final DeliveryDetailItem orderItem;

  OrderCompositionItemWidget({required this.orderItem});

  static const _height = 105.0;
  static const _heightSizedBox = 4.0;
  static const _padding = EdgeInsets.only(left: 8, top: 17, bottom: 8);
  static const _imageSize = 80.0;
  static const _widthBetweenAmountPrice = 20.0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //переход на карточку товара
        context
            .read<OrderDetailBloc>()
            .add(OrderDetailEvent.onRouteToCartItem(orderItem.productDto));
      },
      child: Container(
        height: _height,
        padding: _padding,
        color: TotoTheme.background.base,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: _imageSize,
              width: _imageSize,
              child: FadeInImage.assetNetwork(
                image: orderItem.imageUrl,
                height: _imageSize,
                width: _imageSize,
                fit: BoxFit.fitWidth,
                placeholder: placeholderPath,
              ),
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    child: Text(
                      orderItem.name,
                      maxLines: 2,
                      style: RobotoTextStyle.s14w400(TotoTheme.text.base),
                    ),
                  ),
                  Text(
                    TotoDictionary.toShortInfo('1', orderItem.weight),
                    style: RobotoTextStyle.s14w400(Color(0xFF828282)),
                  ),
                  SizedBox(height: _heightSizedBox),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        orderItem.amount > 1 ? '${orderItem.amount} x' : '',
                        style: RobotoTextStyle.s18w700(TotoTheme.text.base),
                      ),
                      SizedBox(
                        width: _widthBetweenAmountPrice,
                      ),
                      Text(
                        TotoDictionary.toRubles('${orderItem.sum!.toInt()}'),
                        style: RobotoTextStyle.s18w700(TotoTheme.text.base),
                      ),
                    ],
                  ),
                  SizedBox(height: _heightSizedBox),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
