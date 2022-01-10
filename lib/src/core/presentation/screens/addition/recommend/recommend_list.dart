import 'package:flutter/material.dart';
import 'package:toto_mobile/src/core/domain/entities/product.dart';
import 'package:toto_mobile/src/core/presentation/screens/addition/recommend/recommend_list_item.dart';

class AdditionListRecommend extends StatelessWidget {
  final List<ProductDto> additions;
  final Map<String, int> countOfAdditions;
  const AdditionListRecommend({
    required this.additions,
    required this.countOfAdditions,
    Key? key,
  }) : super(key: key);

  static const paddingContent =
      EdgeInsets.only(top: 20, left: 17, right: 15, bottom: 40);
  static const heightSpace = 50.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: paddingContent,
      child: ListView(
        children: [
          ...additions.map((addition) => AdditionsListItem(
                addition: addition,
                countOfAddition: countOfAdditions[addition.id] ?? 0,
              )),
          Container(
            height: heightSpace,
          ),
        ],
      ),
    );
  }
}
