import 'package:toto_mobile/src/core/domain/entities/product.dart';

class SetsState {
  final SetsStatus currentStatus;
  final ProductDto? currentSet;
  final int? currentSetItemIndex;
  final List<ProductDto> listModifiers;
  final bool visibleButtonAdd;

  SetsState({
    this.currentStatus = SetsStatus.loadedData,
    this.currentSet,
    this.currentSetItemIndex,
    this.listModifiers = const [],
    required this.visibleButtonAdd,
  });

  SetsState copyWith({
    SetsStatus? currentStatus,
    ProductDto? currentSet,
    int? currentSetItemIndex,
    List<ProductDto>? listModifiers,
    bool? visibleButtonAdd,
  }) {
    return SetsState(
      currentStatus: currentStatus ?? this.currentStatus,
      currentSet: currentSet ?? this.currentSet,
      currentSetItemIndex: currentSetItemIndex ?? this.currentSetItemIndex,
      listModifiers: listModifiers ?? this.listModifiers,
      visibleButtonAdd: visibleButtonAdd ?? this.visibleButtonAdd,
    );
  }
}

enum SetsStatus {
  loadedData,
  error,
  viewSet,
  viewSetItem,
}
