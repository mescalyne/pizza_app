import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toto_mobile/src/core/domain/entities/delivery_address.dart';
import 'package:toto_mobile/src/core/domain/entities/product.dart';
import 'package:toto_mobile/src/core/presentation/entities/restaurant.dart';
import 'package:toto_mobile/src/core/presentation/screens/cities/bloc/state.dart';
import 'package:toto_mobile/src/core/presentation/screens/menu/bloc/bloc.dart';
import 'package:toto_mobile/src/core/presentation/screens/menu/bloc/event.dart';
import 'package:toto_mobile/src/core/presentation/screens/menu/bloc/state.dart';
import 'package:toto_mobile/src/core/presentation/widgets/component_items/category_item.dart';
import 'package:toto_mobile/src/core/presentation/widgets/component_items/category_item_skeleton.dart';
import 'package:toto_mobile/src/core/presentation/widgets/components/categories.dart';
import 'package:toto_mobile/src/core/presentation/widgets/components/categories_skeleton.dart';
import 'package:toto_mobile/src/core/presentation/widgets/components/nested_header.dart';
import 'package:toto_mobile/src/extensions/TextStyle.dart';
import 'package:toto_mobile/src/resources/resources.dart';
import 'package:toto_mobile/src/resources/theme.dart';

class MenuMobilePage extends StatefulWidget {
  final ScrollController scrollController;

  const MenuMobilePage({Key? key, required this.scrollController})
      : super(key: key);
  @override
  _MenuMobilePageState createState() => _MenuMobilePageState();
}

class _MenuMobilePageState extends State<MenuMobilePage> {
  List<CategoryItemWidget> _buildMenuItems(
      List<ProductDto> categoryItems, Map<String, int> lisCountItem) {
    return categoryItems.map(
      (product) {
        var count = lisCountItem[product.id];
        return CategoryItemWidget(categoryItem: product, count: count);
      },
    ).toList();
  }

  static EdgeInsets _paddingScrollView(context) => EdgeInsets.only(
      top: 17,
      left: 16,
      right: 16,
      bottom: 90 + MediaQuery.of(Scaffold.of(context).context).padding.bottom);
  static const _heightNestedHeader = 281.0;
  static const _heightCategoriesTitle = 50.0;
  static const _paddingCategoriesTitle = EdgeInsets.only(left: 10.0);
  static const _countCategoriesSkeleton = 6;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MenuBloc, MenuState>(
      builder: (context, MenuState state) {
        return NotificationListener(
          child: CustomScrollView(
            controller: widget.scrollController,
            physics: (state.currentState == MenuStatus.loadingData)
                ? NeverScrollableScrollPhysics()
                : ClampingScrollPhysics(),
            slivers: [
              SliverAppBar(
                automaticallyImplyLeading: false,
                backgroundColor: TotoTheme.background.base,
                collapsedHeight: _heightNestedHeader,
                snap: false,
                pinned: false,
                floating: false,
                flexibleSpace: MenuNestedHeader(
                  address: _getAddress(state.place, state.deliveryAddress, state.restaurant),                    
                ),
              ),
              SliverPersistentHeader(
                delegate: (state.currentState == MenuStatus.loadingData)
                    ? CategoriesSkeleton()
                    : Categories(
                        controller: widget.scrollController,
                      ),
                floating: false,
                pinned: true,
              ),
              SliverPadding(
                padding: _paddingScrollView(context),
                sliver: (state.currentState == MenuStatus.loadingData)
                    ? SliverList(
                        delegate: SliverChildBuilderDelegate(
                          (context, index) {
                            return CategoryItemSkeletonWidget();
                          },
                          childCount: _countCategoriesSkeleton,
                        ),
                      )
                    : SliverList(
                        delegate: SliverChildBuilderDelegate(
                          (BuildContext context, int index) {
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: _paddingCategoriesTitle,
                                  child: Container(
                                    height: _heightCategoriesTitle,
                                    child: Text(
                                      state.categories[index].title,
                                      overflow: TextOverflow.fade,
                                      maxLines: 2,
                                      style: RobotoTextStyle.s24w700(
                                          TotoTheme.textBase),
                                    ),
                                  ),
                                ),
                                ..._buildMenuItems(
                                  state.dishes
                                      .where((element) =>
                                          element.parentGroup ==
                                          state.categories[index].title)
                                      .toList(),
                                  state.lisItemInCartAmount,
                                )
                              ],
                            );
                          },
                          childCount: state.categories.length,
                        ),
                      ),
              ),
            ],
          ),
          onNotification: (t) {
            scrollListener(t, state);
            return true;
          },
        );
      },
    );
  }

  String _getAddress(Place place, DeliveryDto? deliveryAddress, Restaurant? restaurant) {
    String address = TotoDictionary.addressTitle;
    if(place == Place.delivery && deliveryAddress != null) {
      address = '${deliveryAddress.cityName}, ${deliveryAddress.street}, ${deliveryAddress.home}';
    }
    if(place == Place.pickup && restaurant != null) {
      address = restaurant.address;
    }
    return address;
  }

  Future scrollListener(Object? t, MenuState state) async {
    if (state.scrollCategories && t is ScrollUpdateNotification) {
      const _scrollHeightCategoriesTitle = 50.0;
      const _scrollHeightCategoryItem = 182.0;
      const _scrollHeightAppBar = 285.0 + 45.0;
      double _offset = widget.scrollController.offset;
      int _currentIndexCategory = state.activeCategory;
      double categoryPosition(index) =>
          _scrollHeightCategoriesTitle * index +
          (state.groupOfProducts[state.categories[index].title] ?? 0) *
              _scrollHeightCategoryItem +
          _scrollHeightAppBar;
      for (int index = 0; index < state.categories.length; index++) {
        if (index == 0 && _offset < _scrollHeightAppBar) {
          if (_currentIndexCategory != index) {
            BlocProvider.of<MenuBloc>(context)
                .add(MenuEvent.menuCategoryAnimateTo(index));
          }
        }
        if (index < state.categories.length - 1) {
          if (_offset >= categoryPosition(index) &&
              _offset < categoryPosition(index + 1)) {
            if (_currentIndexCategory != index) {
              BlocProvider.of<MenuBloc>(context)
                  .add(MenuEvent.menuCategoryAnimateTo(index));
            }
            break;
          }
        } else {
          if (_offset >= categoryPosition(state.categories.length - 1) &&
              _offset < widget.scrollController.position.maxScrollExtent) {
            if (_currentIndexCategory != index) {
              BlocProvider.of<MenuBloc>(context)
                  .add(MenuEvent.menuCategoryAnimateTo(index));
            }
            break;
          }
        }
      }
    }
  }
}
