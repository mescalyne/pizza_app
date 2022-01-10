import 'package:toto_mobile/src/core/domain/entities/cart.dart';

class CartsPaginatorDto {
  PaginatorInfoDto? paginatorInfo;
  List<CartDto> carts;

  CartsPaginatorDto({this.paginatorInfo, required this.carts});
}

class PaginatorInfoDto {
  int count;
  int currentPage;
  int? firstItem;
  bool hasMorePages;
  int? lastItem;
  int lastPage;
  int perPage;
  int total;

  PaginatorInfoDto({
    required this.count,
    required this.currentPage,
    this.firstItem,
    required this.hasMorePages,
    this.lastItem,
    required this.lastPage,
    required this.perPage,
    required this.total,
  });
}
