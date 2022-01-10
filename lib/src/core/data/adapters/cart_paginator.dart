import 'package:toto_mobile/src/core/data/adapters/cart.dart';
import 'package:toto_mobile/src/core/data/network/models/carts_paginator.data.gql.dart';
import 'package:toto_mobile/src/core/data/network/models/paginator_info_fragment.data.gql.dart';
import 'package:toto_mobile/src/core/domain/entities/cart.dart';
import 'package:toto_mobile/src/core/domain/entities/carts_paginator.dart';

typedef CartsPaginatorFragment = GCartsPaginatorFragment;
typedef PaginatorInfo = GPaginatorInfoFragment;

extension CartsPaginatorAdapter on CartsPaginatorFragment {
  CartsPaginatorDto get toCartPaginatorDto {
    var _carts = <CartDto>[];
    if (data != null) {
      for (var item in data!) {
        _carts.add(item.toCartDto);
      }
    }
    return CartsPaginatorDto(
        carts: _carts, paginatorInfo: paginatorInfo?.toPaginatorInfoDto);
  }
}

extension PaginatorInfoAdapter on PaginatorInfo {
  PaginatorInfoDto get toPaginatorInfoDto {
    return PaginatorInfoDto(
      count: count,
      currentPage: currentPage,
      hasMorePages: hasMorePages,
      lastPage: lastPage,
      perPage: perPage,
      total: total,
      firstItem: firstItem,
      lastItem: lastItem,
    );
  }
}
