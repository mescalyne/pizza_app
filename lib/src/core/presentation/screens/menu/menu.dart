import 'package:flutter/material.dart';
import 'package:toto_mobile/src/core/presentation/screens/menu/mobile/menu.dart';
import 'package:toto_mobile/src/core/presentation/widgets/decider.dart';


class MenuPage extends StatelessWidget {
  static const id = '/menu';
  final ScrollController scrollController;

  const MenuPage({
    Key? key,
    required this.scrollController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Decider(
      mobile: MenuMobilePage(
        scrollController: scrollController,
      ),
      web: MenuMobilePage(
        scrollController: scrollController,
      ),
      mobileweb: MenuMobilePage(
        scrollController: scrollController,
      ),
    );
  }
}
