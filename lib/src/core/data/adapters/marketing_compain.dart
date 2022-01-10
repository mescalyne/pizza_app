import 'package:toto_mobile/src/core/data/adapters/cart.dart';
import 'package:toto_mobile/src/core/data/network/models/marketing_compain_fragment.data.gql.dart';
import 'package:toto_mobile/src/core/data/network/models/file_fragment.data.gql.dart';

import 'package:toto_mobile/src/core/domain/entities/cart.dart';
import 'package:toto_mobile/src/core/domain/entities/carts_paginator.dart';
import 'package:toto_mobile/src/core/domain/entities/file.dart';
import 'package:toto_mobile/src/core/domain/entities/marketing_compaigns.dart';

typedef MarketingCompaignFragment = GMarketingCompaignFragment;
typedef FileFragment = GFileFragment;

extension MarketingCompainAdapter on MarketingCompaignFragment {
  MarketingCompaignDto get toMarketingCompaignDto {
    return MarketingCompaignDto(
        id: id,
        name: name!,
        description: description!,
        image: image!.toFileDto);
  }
}

extension FileAdapter on FileFragment {
  FileDto get toFileDto {
    return FileDto(
      id: id,
      url: url!,
      size: size!,
    );
  }
}
