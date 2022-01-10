import 'package:toto_mobile/src/core/domain/entities/delivery_address.dart';
import 'package:toto_mobile/src/core/domain/entities/group.dart';
import 'package:toto_mobile/src/core/domain/entities/product.dart';
import 'package:toto_mobile/src/core/presentation/entities/restaurant.dart';
import 'package:toto_mobile/src/core/presentation/screens/cities/bloc/state.dart';

class MenuState {
  final Map<String, int> groupOfProducts;
  final List<ProductDto> dishes;
  final List<GroupDto> categories;
  final int activeCategory;
  final bool scrollCategories;
  final MenuStatus currentState;
  final DeliveryDto? deliveryAddress;
  final Restaurant? restaurant;
  final Place place;

  final Map<String, int> lisItemInCartAmount;

  MenuState({
    this.restaurant,
    this.deliveryAddress,
    this.place = Place.pickup,
    this.groupOfProducts = const {},
    this.currentState = MenuStatus.loadingData,
    this.dishes = const [],
    this.categories = const [],
    this.activeCategory = 0,
    this.scrollCategories = true,
    this.lisItemInCartAmount = const {},
  });

  MenuState copyWith({
    Map<String, int>? groupOfProducts,
    List<ProductDto>? dishes,
    List<GroupDto>? categories,
    int? activeCategory,
    bool? scrollCategories,
    MenuStatus? currentState,
    DeliveryDto? deliveryAddress,
    Restaurant? restaurant,
    Place? place,
    int? restaurantId,
  }) {
    return MenuState(
      groupOfProducts: groupOfProducts ?? this.groupOfProducts,
      dishes: dishes ?? this.dishes,
      categories: categories ?? this.categories,
      activeCategory: activeCategory ?? this.activeCategory,
      scrollCategories: scrollCategories ?? true,
      currentState: currentState ?? this.currentState,
      deliveryAddress: deliveryAddress ?? this.deliveryAddress,
      restaurant: restaurant ?? this.restaurant,
      place: place ?? this.place,
    );
  }
}

enum MenuStatus {
  loadedData,
  loadingData,
  dishesLoading,
  dishesLoaded,
  changePlace
}
