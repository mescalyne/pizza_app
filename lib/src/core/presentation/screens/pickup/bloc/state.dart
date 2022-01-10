import 'package:toto_mobile/src/core/presentation/entities/restaurant.dart';

class PickUpState {
  final PickUpStatus pickUpStatus;
  final Set<int> suggestions;
  final List<Restaurant> allRestaurants;
  final PanelStatus panelStatus;
  final Restaurant? nearestRestaurant;
  
  final PickUpDataStatus pickUpDataStatus;

  PickUpState({
    this.pickUpDataStatus = PickUpDataStatus.noRestaurants,
    this.allRestaurants = const [],
    this.nearestRestaurant,
    this.panelStatus = PanelStatus.panelClosed,
    this.pickUpStatus = PickUpStatus.loading,
    this.suggestions = const {},
  });

  PickUpState copyWith({
    PickUpDataStatus? pickUpDataStatus,
    Restaurant? nearestRestaurant,
    PickUpStatus? pickUpStatus,
    Set<int>? suggestions,
    List<Restaurant>? allRestaurants,
    PanelStatus? panelStatus,
  }) {
    return PickUpState(
      pickUpDataStatus: pickUpDataStatus ?? this.pickUpDataStatus,
      nearestRestaurant: nearestRestaurant ?? this.nearestRestaurant,
      allRestaurants: allRestaurants ?? this.allRestaurants,
      suggestions: suggestions ?? this.suggestions,
      panelStatus: panelStatus ?? this.panelStatus,
      pickUpStatus: pickUpStatus ?? this.pickUpStatus,
    );
  }
}

enum PanelStatus { panelOpened, panelClosed }

enum PickUpDataStatus {
  hasRestaurants,
  updateRestaurants,
  showUserLocaiton,
  noRestaurants,
}

enum PickUpStatus {
  loading,
  showNearestRestaurant,
  openFindingPanel,
  searchRestaurant,
}
