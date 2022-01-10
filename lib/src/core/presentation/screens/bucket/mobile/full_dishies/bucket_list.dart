import 'package:flutter/material.dart';
import 'package:toto_mobile/src/core/presentation/entities/cart_item_with_size.dart';
import 'package:toto_mobile/src/core/presentation/screens/bucket/mobile/full_dishies/bucket_list_item.dart';

class LoadedBucketList extends StatelessWidget {
  final List<CartItemWithSizes> cartItemsWithSizes;

  const LoadedBucketList({
    required this.cartItemsWithSizes,
    Key? key,
  }) : super(key: key);

  static const listItemPadding = EdgeInsets.only(top: 16, bottom: 16);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: listItemPadding,
      child: Column(
        children: [
          ...cartItemsWithSizes
              .map((cartItem) => BucketListItem(
                    cartItem: cartItem,
                    countOfProduct: cartItem.countOfProduct,
                  ))
              .toList(),
        ],
      ),
    );
  }
}
