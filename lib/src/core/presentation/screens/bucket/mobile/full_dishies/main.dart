import 'package:flutter/material.dart';
import 'package:toto_mobile/src/core/domain/entities/product.dart';
import 'package:toto_mobile/src/core/presentation/entities/cart_item_with_size.dart';
import 'package:toto_mobile/src/core/presentation/screens/bucket/mobile/full_dishies/accept_button.dart';
import 'package:toto_mobile/src/core/presentation/screens/bucket/mobile/full_dishies/bucket_list.dart';
import 'package:toto_mobile/src/core/presentation/screens/bucket/mobile/full_dishies/form_promocode.dart';
import 'package:toto_mobile/src/core/presentation/screens/bucket/mobile/full_dishies/recommendations.dart';
import 'package:toto_mobile/src/core/presentation/screens/bucket/mobile/full_dishies/total_price.dart';
import 'package:toto_mobile/src/resources/resources.dart';

class FullDishies extends StatelessWidget {
  final List<ProductDto> listRecommend;
  final bool isAcceptAvailable;
  final String total;
  final String totalPayment;
  final String? coupon;
  final double? discountSum;
  final bool isIncorrectCoupon;

  final List<CartItemWithSizes> cartItemsWithSizes;

  FullDishies({
    required this.listRecommend,
    required this.isAcceptAvailable,
    required this.totalPayment,
    required this.total,
    required this.coupon,
    required this.discountSum,
    required this.isIncorrectCoupon,
    required this.cartItemsWithSizes,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BucketNestedScrollView(
      total: totalPayment,
      isAcceptAvailable: isAcceptAvailable,
      loadedBucketBlock: LoadedBucketList(
        cartItemsWithSizes: cartItemsWithSizes,
      ),
      prommocodeBlock: FormPromocode(
        isIncorrectCoupon: isIncorrectCoupon,
        coupon: coupon,
      ),
      totalPriceBlock: TotalPrice(
        totalPrice: totalPayment,
        discountSum: discountSum,
        isAcceptAvailable: isAcceptAvailable,
      ),
      recommendationBlock: Recommendations(listRecommend: listRecommend),
    );
  }
}

class BucketNestedScrollView extends StatelessWidget {
  final String total;
  final bool isAcceptAvailable;
  final Widget loadedBucketBlock;
  final Widget prommocodeBlock;
  final Widget totalPriceBlock;
  final Widget recommendationBlock;

  BucketNestedScrollView(
      {required this.total,
      required this.isAcceptAvailable,
      required this.loadedBucketBlock,
      required this.prommocodeBlock,
      required this.totalPriceBlock,
      required this.recommendationBlock,
      Key? key})
      : super(key: key);

  static const spaceBoxHeight = 100.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TotoTheme.surface,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            loadedBucketBlock,
            recommendationBlock,
            prommocodeBlock,
            totalPriceBlock,
            Container(
              height: spaceBoxHeight,
            )
          ],
        ),
      ),
      bottomNavigationBar: AcceptButtonField(
        total: total,
        isAcceptAvailable: isAcceptAvailable,
      ),
    );
  }
}
