import 'package:toto_mobile/src/core/domain/entities/product.dart';
import 'package:toto_mobile/src/core/presentation/entities/cart_item_with_size.dart';

class BucketState {
  final BucketScreenStatus currScreen;
  final bool? isAcceptAvailable;
  final String? total;
  final String? totalPayment;
  final String? coupon;
  final double? discountSum;
  final bool isIncorrectCoupon;
  final List<ProductDto>? listRecommend;
  final List<CartItemWithSizes>? cartItemsWithSizes;

  BucketState({
    required this.currScreen,
    this.isAcceptAvailable,
    this.totalPayment,
    this.total,
    this.coupon,
    this.discountSum,
    this.isIncorrectCoupon = false,
    this.listRecommend,
    this.cartItemsWithSizes,
  });

  BucketState copyWith({
    BucketScreenStatus? currScreen,
    bool? isAcceptAvailable,
    String? total,
    String? totalPayment,
    String? coupon,
    double? discountSum,
    bool? isIncorrectCoupon,
    List<ProductDto>? listRecommend,
    List<CartItemWithSizes>? cartItemsWithSizes,
  }) {
    return BucketState(
      currScreen: currScreen ?? this.currScreen,
      isAcceptAvailable: isAcceptAvailable ?? this.isAcceptAvailable,
      listRecommend: listRecommend ?? this.listRecommend,
      discountSum: discountSum ?? this.discountSum,
      coupon: coupon ?? this.coupon,
      isIncorrectCoupon: isIncorrectCoupon ?? false,
      total: total ?? this.total,
      totalPayment: totalPayment ?? this.totalPayment,
      cartItemsWithSizes: cartItemsWithSizes ?? this.cartItemsWithSizes,
    );
  }
}

enum BucketScreenStatus {
  loading,
  error,
  empty,
  full,
}
