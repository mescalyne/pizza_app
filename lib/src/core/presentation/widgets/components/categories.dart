import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toto_mobile/src/core/presentation/screens/menu/bloc/bloc.dart';
import 'package:toto_mobile/src/core/presentation/screens/menu/bloc/event.dart';
import 'package:toto_mobile/src/core/presentation/screens/menu/bloc/state.dart';
import 'package:toto_mobile/src/extensions/TextStyle.dart';
import 'package:toto_mobile/src/resources/svg.dart';
import 'package:toto_mobile/src/resources/theme.dart';

class Categories extends SliverPersistentHeaderDelegate {
  final ScrollController categoriesController = ScrollController();

  static const _scrollHeightCategoriesTitle = 50.0;
  static const _scrollHeightCategoryItem = 182.0;
  static const _scrollHeightAppBar = 286.0 + 45.0;

  static const _paddingScroll = EdgeInsets.only(left: 16);
  static const _paddingContainer =
      EdgeInsets.only(top: 8, bottom: 8, right: 6, left: 6);
  static const _marginContainer =
      EdgeInsets.only(left: 4, top: 5, right: 4, bottom: 8);
  static const _widthContainer = 76.0;
  static const _borderRadiusContainer = 16.0;
  static const _widthImage = 45.0;
  static const _heightImage = 30.0;
  static const _paddingBetwen = EdgeInsets.only(bottom: 10);

  static int _stateActiveCategory = 0;

  final ScrollController controller;
  Categories({required this.controller});

  void _scrollCategoryToIndex(int index, BuildContext context) {
    double _offset = index * (_widthContainer + _marginContainer.horizontal) -
        (MediaQuery.of(context).size.width / 2) +
        _paddingScroll.left +
        ((_widthContainer + _marginContainer.horizontal) / 2);
    categoriesController.animateTo(
      (_offset < categoriesController.position.minScrollExtent)
          ? categoriesController.position.minScrollExtent
          : (_offset > categoriesController.position.maxScrollExtent)
              ? categoriesController.position.maxScrollExtent
              : _offset,
      duration: Duration(milliseconds: 300),
      curve: Curves.easeIn,
    );
  }

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Colors.transparent,
      child: BlocConsumer<MenuBloc, MenuState>(
        listener: (context, state) {
          if (state.activeCategory != _stateActiveCategory) {
            _stateActiveCategory = state.activeCategory;
            _scrollCategoryToIndex(_stateActiveCategory, context);
          }
        },
        builder: (context, state) {
          switch (state.currentState) {
            default:
              return ListView.builder(
                padding: _paddingScroll,
                scrollDirection: Axis.horizontal,
                controller: categoriesController,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      BlocProvider.of<MenuBloc>(context)
                          .add(MenuEvent.menuCategoryTypePressed(index));
                      controller.animateTo(
                        _scrollHeightCategoriesTitle * index +
                            (state.groupOfProducts[
                                        state.categories[index].title] ??
                                    0) *
                                _scrollHeightCategoryItem +
                            _scrollHeightAppBar,
                        duration: Duration(milliseconds: 1000),
                        curve: Curves.ease,
                      );
                    },
                    child: Container(
                      margin: _marginContainer,
                      padding: _paddingContainer,
                      width: _widthContainer,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: index == _stateActiveCategory
                            ? Border.all(
                                width: 1,
                                color: TotoTheme.primary,
                              )
                            : Border.all(width: 1, color: TotoTheme.surface),
                        borderRadius: BorderRadius.all(
                          Radius.circular(_borderRadiusContainer),
                        ),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 3.0),
                              color: Colors.black38,
                              spreadRadius: -1,
                              blurRadius: 5),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            flex: 2,
                            child: FadeInImage.assetNetwork(
                              image: state.categories[index].image.toString(),
                              width: _widthImage,
                              height: _heightImage,
                              fit: BoxFit.fitWidth,
                              placeholder: placeholderPath,
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Padding(padding: _paddingBetwen),
                          ),
                          Text(
                            state.categories[index].title,
                            textAlign: TextAlign.center,
                            style: RobotoTextStyle.s13w400(TotoTheme.text.base),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                itemCount: state.categories.length,
              );
          }
        },
      ),
    );
  }

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }

  @override
  double get maxExtent => 85;

  @override
  double get minExtent => 46;
}
