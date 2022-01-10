// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_product.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetProductData> _$gGetProductDataSerializer =
    new _$GGetProductDataSerializer();
Serializer<GGetProductData_getProduct> _$gGetProductDataGetProductSerializer =
    new _$GGetProductData_getProductSerializer();
Serializer<GGetProductData_getProduct_parentGroup>
    _$gGetProductDataGetProductParentGroupSerializer =
    new _$GGetProductData_getProduct_parentGroupSerializer();
Serializer<GGetProductData_getProduct_group>
    _$gGetProductDataGetProductGroupSerializer =
    new _$GGetProductData_getProduct_groupSerializer();
Serializer<GGetProductData_getProduct_category>
    _$gGetProductDataGetProductCategorySerializer =
    new _$GGetProductData_getProduct_categorySerializer();
Serializer<GGetProductData_getProduct_products_sizes>
    _$gGetProductDataGetProductProductsSizesSerializer =
    new _$GGetProductData_getProduct_products_sizesSerializer();
Serializer<GGetProductData_getProduct_products_sizes_parentGroup>
    _$gGetProductDataGetProductProductsSizesParentGroupSerializer =
    new _$GGetProductData_getProduct_products_sizes_parentGroupSerializer();
Serializer<GGetProductData_getProduct_products_sizes_images>
    _$gGetProductDataGetProductProductsSizesImagesSerializer =
    new _$GGetProductData_getProduct_products_sizes_imagesSerializer();
Serializer<GGetProductData_getProduct_products_sizes_modifiers>
    _$gGetProductDataGetProductProductsSizesModifiersSerializer =
    new _$GGetProductData_getProduct_products_sizes_modifiersSerializer();
Serializer<GGetProductData_getProduct_products_sizes_groupModifiers>
    _$gGetProductDataGetProductProductsSizesGroupModifiersSerializer =
    new _$GGetProductData_getProduct_products_sizes_groupModifiersSerializer();
Serializer<
        GGetProductData_getProduct_products_sizes_groupModifiers_childModifiers>
    _$gGetProductDataGetProductProductsSizesGroupModifiersChildModifiersSerializer =
    new _$GGetProductData_getProduct_products_sizes_groupModifiers_childModifiersSerializer();
Serializer<GGetProductData_getProduct_images>
    _$gGetProductDataGetProductImagesSerializer =
    new _$GGetProductData_getProduct_imagesSerializer();
Serializer<GGetProductData_getProduct_modifiers>
    _$gGetProductDataGetProductModifiersSerializer =
    new _$GGetProductData_getProduct_modifiersSerializer();
Serializer<GGetProductData_getProduct_groupModifiers>
    _$gGetProductDataGetProductGroupModifiersSerializer =
    new _$GGetProductData_getProduct_groupModifiersSerializer();
Serializer<GGetProductData_getProduct_groupModifiers_childModifiers>
    _$gGetProductDataGetProductGroupModifiersChildModifiersSerializer =
    new _$GGetProductData_getProduct_groupModifiers_childModifiersSerializer();

class _$GGetProductDataSerializer
    implements StructuredSerializer<GGetProductData> {
  @override
  final Iterable<Type> types = const [GGetProductData, _$GGetProductData];
  @override
  final String wireName = 'GGetProductData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GGetProductData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.getProduct;
    if (value != null) {
      result
        ..add('getProduct')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GGetProductData_getProduct)));
    }
    return result;
  }

  @override
  GGetProductData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetProductDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'getProduct':
          result.getProduct.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GGetProductData_getProduct))!
              as GGetProductData_getProduct);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetProductData_getProductSerializer
    implements StructuredSerializer<GGetProductData_getProduct> {
  @override
  final Iterable<Type> types = const [
    GGetProductData_getProduct,
    _$GGetProductData_getProduct
  ];
  @override
  final String wireName = 'GGetProductData_getProduct';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetProductData_getProduct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'code',
      serializers.serialize(object.code, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.parentGroupId;
    if (value != null) {
      result
        ..add('parentGroupId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.groupId;
    if (value != null) {
      result
        ..add('groupId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.parentGroup;
    if (value != null) {
      result
        ..add('parentGroup')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GGetProductData_getProduct_parentGroup)));
    }
    value = object.group;
    if (value != null) {
      result
        ..add('group')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GGetProductData_getProduct_group)));
    }
    value = object.productCategoryId;
    if (value != null) {
      result
        ..add('productCategoryId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.category;
    if (value != null) {
      result
        ..add('category')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GGetProductData_getProduct_category)));
    }
    value = object.products_sizes;
    if (value != null) {
      result
        ..add('products_sizes')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(GGetProductData_getProduct_products_sizes)
            ])));
    }
    value = object.additionalInfo;
    if (value != null) {
      result
        ..add('additionalInfo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.seoDescription;
    if (value != null) {
      result
        ..add('seoDescription')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.seoKeywords;
    if (value != null) {
      result
        ..add('seoKeywords')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.seoText;
    if (value != null) {
      result
        ..add('seoText')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.seoTitle;
    if (value != null) {
      result
        ..add('seoTitle')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isDeleted;
    if (value != null) {
      result
        ..add('isDeleted')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.tags;
    if (value != null) {
      result
        ..add('tags')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.images;
    if (value != null) {
      result
        ..add('images')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList,
                const [const FullType(GGetProductData_getProduct_images)])));
    }
    value = object.isIncludedInMenu;
    if (value != null) {
      result
        ..add('isIncludedInMenu')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.order;
    if (value != null) {
      result
        ..add('order')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.doNotPrintInCheque;
    if (value != null) {
      result
        ..add('doNotPrintInCheque')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.carbohydrateAmount;
    if (value != null) {
      result
        ..add('carbohydrateAmount')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.carbohydrateFullAmount;
    if (value != null) {
      result
        ..add('carbohydrateFullAmount')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.energyAmount;
    if (value != null) {
      result
        ..add('energyAmount')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.energyFullAmount;
    if (value != null) {
      result
        ..add('energyFullAmount')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.fatAmount;
    if (value != null) {
      result
        ..add('fatAmount')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.fatFullAmount;
    if (value != null) {
      result
        ..add('fatFullAmount')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.fiberAmount;
    if (value != null) {
      result
        ..add('fiberAmount')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.fiberFullAmount;
    if (value != null) {
      result
        ..add('fiberFullAmount')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.measureUnit;
    if (value != null) {
      result
        ..add('measureUnit')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.price;
    if (value != null) {
      result
        ..add('price')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.useBalanceForSell;
    if (value != null) {
      result
        ..add('useBalanceForSell')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.weight;
    if (value != null) {
      result
        ..add('weight')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.modifiers;
    if (value != null) {
      result
        ..add('modifiers')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList,
                const [const FullType(GGetProductData_getProduct_modifiers)])));
    }
    value = object.groupModifiers;
    if (value != null) {
      result
        ..add('groupModifiers')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(GGetProductData_getProduct_groupModifiers)
            ])));
    }
    return result;
  }

  @override
  GGetProductData_getProduct deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetProductData_getProductBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'parentGroupId':
          result.parentGroupId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'groupId':
          result.groupId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'parentGroup':
          result.parentGroup.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GGetProductData_getProduct_parentGroup))!
              as GGetProductData_getProduct_parentGroup);
          break;
        case 'group':
          result.group.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GGetProductData_getProduct_group))!
              as GGetProductData_getProduct_group);
          break;
        case 'productCategoryId':
          result.productCategoryId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'category':
          result.category.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GGetProductData_getProduct_category))!
              as GGetProductData_getProduct_category);
          break;
        case 'products_sizes':
          result.products_sizes.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GGetProductData_getProduct_products_sizes)
              ]))! as BuiltList<Object?>);
          break;
        case 'additionalInfo':
          result.additionalInfo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'code':
          result.code = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'seoDescription':
          result.seoDescription = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'seoKeywords':
          result.seoKeywords = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'seoText':
          result.seoText = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'seoTitle':
          result.seoTitle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'isDeleted':
          result.isDeleted = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'tags':
          result.tags.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'images':
          result.images.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GGetProductData_getProduct_images)
              ]))! as BuiltList<Object?>);
          break;
        case 'isIncludedInMenu':
          result.isIncludedInMenu = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'order':
          result.order = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'doNotPrintInCheque':
          result.doNotPrintInCheque = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'carbohydrateAmount':
          result.carbohydrateAmount = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'carbohydrateFullAmount':
          result.carbohydrateFullAmount = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'energyAmount':
          result.energyAmount = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'energyFullAmount':
          result.energyFullAmount = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'fatAmount':
          result.fatAmount = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'fatFullAmount':
          result.fatFullAmount = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'fiberAmount':
          result.fiberAmount = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'fiberFullAmount':
          result.fiberFullAmount = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'measureUnit':
          result.measureUnit = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'useBalanceForSell':
          result.useBalanceForSell = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'weight':
          result.weight = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'modifiers':
          result.modifiers.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GGetProductData_getProduct_modifiers)
              ]))! as BuiltList<Object?>);
          break;
        case 'groupModifiers':
          result.groupModifiers.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GGetProductData_getProduct_groupModifiers)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetProductData_getProduct_parentGroupSerializer
    implements StructuredSerializer<GGetProductData_getProduct_parentGroup> {
  @override
  final Iterable<Type> types = const [
    GGetProductData_getProduct_parentGroup,
    _$GGetProductData_getProduct_parentGroup
  ];
  @override
  final String wireName = 'GGetProductData_getProduct_parentGroup';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetProductData_getProduct_parentGroup object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.parentGroup;
    if (value != null) {
      result
        ..add('parentGroup')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.additionalInfo;
    if (value != null) {
      result
        ..add('additionalInfo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GGetProductData_getProduct_parentGroup deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetProductData_getProduct_parentGroupBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'parentGroup':
          result.parentGroup = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'additionalInfo':
          result.additionalInfo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetProductData_getProduct_groupSerializer
    implements StructuredSerializer<GGetProductData_getProduct_group> {
  @override
  final Iterable<Type> types = const [
    GGetProductData_getProduct_group,
    _$GGetProductData_getProduct_group
  ];
  @override
  final String wireName = 'GGetProductData_getProduct_group';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetProductData_getProduct_group object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.parentGroup;
    if (value != null) {
      result
        ..add('parentGroup')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.additionalInfo;
    if (value != null) {
      result
        ..add('additionalInfo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GGetProductData_getProduct_group deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetProductData_getProduct_groupBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'parentGroup':
          result.parentGroup = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'additionalInfo':
          result.additionalInfo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetProductData_getProduct_categorySerializer
    implements StructuredSerializer<GGetProductData_getProduct_category> {
  @override
  final Iterable<Type> types = const [
    GGetProductData_getProduct_category,
    _$GGetProductData_getProduct_category
  ];
  @override
  final String wireName = 'GGetProductData_getProduct_category';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetProductData_getProduct_category object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GGetProductData_getProduct_category deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetProductData_getProduct_categoryBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetProductData_getProduct_products_sizesSerializer
    implements StructuredSerializer<GGetProductData_getProduct_products_sizes> {
  @override
  final Iterable<Type> types = const [
    GGetProductData_getProduct_products_sizes,
    _$GGetProductData_getProduct_products_sizes
  ];
  @override
  final String wireName = 'GGetProductData_getProduct_products_sizes';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetProductData_getProduct_products_sizes object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.additionalInfo;
    if (value != null) {
      result
        ..add('additionalInfo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.parentGroup;
    if (value != null) {
      result
        ..add('parentGroup')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                GGetProductData_getProduct_products_sizes_parentGroup)));
    }
    value = object.images;
    if (value != null) {
      result
        ..add('images')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(GGetProductData_getProduct_products_sizes_images)
            ])));
    }
    value = object.price;
    if (value != null) {
      result
        ..add('price')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.weight;
    if (value != null) {
      result
        ..add('weight')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.carbohydrateAmount;
    if (value != null) {
      result
        ..add('carbohydrateAmount')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.carbohydrateFullAmount;
    if (value != null) {
      result
        ..add('carbohydrateFullAmount')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.energyAmount;
    if (value != null) {
      result
        ..add('energyAmount')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.energyFullAmount;
    if (value != null) {
      result
        ..add('energyFullAmount')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.fatAmount;
    if (value != null) {
      result
        ..add('fatAmount')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.fatFullAmount;
    if (value != null) {
      result
        ..add('fatFullAmount')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.fiberAmount;
    if (value != null) {
      result
        ..add('fiberAmount')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.fiberFullAmount;
    if (value != null) {
      result
        ..add('fiberFullAmount')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.modifiers;
    if (value != null) {
      result
        ..add('modifiers')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  GGetProductData_getProduct_products_sizes_modifiers)
            ])));
    }
    value = object.groupModifiers;
    if (value != null) {
      result
        ..add('groupModifiers')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  GGetProductData_getProduct_products_sizes_groupModifiers)
            ])));
    }
    return result;
  }

  @override
  GGetProductData_getProduct_products_sizes deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetProductData_getProduct_products_sizesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'additionalInfo':
          result.additionalInfo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'parentGroup':
          result.parentGroup.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GGetProductData_getProduct_products_sizes_parentGroup))!
              as GGetProductData_getProduct_products_sizes_parentGroup);
          break;
        case 'images':
          result.images.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GGetProductData_getProduct_products_sizes_images)
              ]))! as BuiltList<Object?>);
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'weight':
          result.weight = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'carbohydrateAmount':
          result.carbohydrateAmount = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'carbohydrateFullAmount':
          result.carbohydrateFullAmount = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'energyAmount':
          result.energyAmount = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'energyFullAmount':
          result.energyFullAmount = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'fatAmount':
          result.fatAmount = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'fatFullAmount':
          result.fatFullAmount = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'fiberAmount':
          result.fiberAmount = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'fiberFullAmount':
          result.fiberFullAmount = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'modifiers':
          result.modifiers.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    GGetProductData_getProduct_products_sizes_modifiers)
              ]))! as BuiltList<Object?>);
          break;
        case 'groupModifiers':
          result.groupModifiers.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    GGetProductData_getProduct_products_sizes_groupModifiers)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetProductData_getProduct_products_sizes_parentGroupSerializer
    implements
        StructuredSerializer<
            GGetProductData_getProduct_products_sizes_parentGroup> {
  @override
  final Iterable<Type> types = const [
    GGetProductData_getProduct_products_sizes_parentGroup,
    _$GGetProductData_getProduct_products_sizes_parentGroup
  ];
  @override
  final String wireName =
      'GGetProductData_getProduct_products_sizes_parentGroup';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GGetProductData_getProduct_products_sizes_parentGroup object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GGetProductData_getProduct_products_sizes_parentGroup deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GGetProductData_getProduct_products_sizes_parentGroupBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetProductData_getProduct_products_sizes_imagesSerializer
    implements
        StructuredSerializer<GGetProductData_getProduct_products_sizes_images> {
  @override
  final Iterable<Type> types = const [
    GGetProductData_getProduct_products_sizes_images,
    _$GGetProductData_getProduct_products_sizes_images
  ];
  @override
  final String wireName = 'GGetProductData_getProduct_products_sizes_images';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GGetProductData_getProduct_products_sizes_images object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.imageId;
    if (value != null) {
      result
        ..add('imageId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.imageUrl;
    if (value != null) {
      result
        ..add('imageUrl')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GGetProductData_getProduct_products_sizes_images deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GGetProductData_getProduct_products_sizes_imagesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'imageId':
          result.imageId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'imageUrl':
          result.imageUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetProductData_getProduct_products_sizes_modifiersSerializer
    implements
        StructuredSerializer<
            GGetProductData_getProduct_products_sizes_modifiers> {
  @override
  final Iterable<Type> types = const [
    GGetProductData_getProduct_products_sizes_modifiers,
    _$GGetProductData_getProduct_products_sizes_modifiers
  ];
  @override
  final String wireName = 'GGetProductData_getProduct_products_sizes_modifiers';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GGetProductData_getProduct_products_sizes_modifiers object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'modifierId',
      serializers.serialize(object.modifierId,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.maxAmount;
    if (value != null) {
      result
        ..add('maxAmount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.minAmount;
    if (value != null) {
      result
        ..add('minAmount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.required;
    if (value != null) {
      result
        ..add('required')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.defaultAmount;
    if (value != null) {
      result
        ..add('defaultAmount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.hideIfDefaultAmount;
    if (value != null) {
      result
        ..add('hideIfDefaultAmount')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GGetProductData_getProduct_products_sizes_modifiers deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GGetProductData_getProduct_products_sizes_modifiersBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'maxAmount':
          result.maxAmount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'minAmount':
          result.minAmount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'modifierId':
          result.modifierId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'required':
          result.required = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'defaultAmount':
          result.defaultAmount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'hideIfDefaultAmount':
          result.hideIfDefaultAmount = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetProductData_getProduct_products_sizes_groupModifiersSerializer
    implements
        StructuredSerializer<
            GGetProductData_getProduct_products_sizes_groupModifiers> {
  @override
  final Iterable<Type> types = const [
    GGetProductData_getProduct_products_sizes_groupModifiers,
    _$GGetProductData_getProduct_products_sizes_groupModifiers
  ];
  @override
  final String wireName =
      'GGetProductData_getProduct_products_sizes_groupModifiers';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GGetProductData_getProduct_products_sizes_groupModifiers object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'modifierId',
      serializers.serialize(object.modifierId,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.maxAmount;
    if (value != null) {
      result
        ..add('maxAmount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.minAmount;
    if (value != null) {
      result
        ..add('minAmount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.required;
    if (value != null) {
      result
        ..add('required')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.childModifiers;
    if (value != null) {
      result
        ..add('childModifiers')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  GGetProductData_getProduct_products_sizes_groupModifiers_childModifiers)
            ])));
    }
    value = object.childModifiersHaveMinMaxRestrictions;
    if (value != null) {
      result
        ..add('childModifiersHaveMinMaxRestrictions')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GGetProductData_getProduct_products_sizes_groupModifiers deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GGetProductData_getProduct_products_sizes_groupModifiersBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'maxAmount':
          result.maxAmount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'minAmount':
          result.minAmount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'modifierId':
          result.modifierId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'required':
          result.required = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'childModifiers':
          result.childModifiers.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    GGetProductData_getProduct_products_sizes_groupModifiers_childModifiers)
              ]))! as BuiltList<Object?>);
          break;
        case 'childModifiersHaveMinMaxRestrictions':
          result.childModifiersHaveMinMaxRestrictions = serializers
              .deserialize(value, specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetProductData_getProduct_products_sizes_groupModifiers_childModifiersSerializer
    implements
        StructuredSerializer<
            GGetProductData_getProduct_products_sizes_groupModifiers_childModifiers> {
  @override
  final Iterable<Type> types = const [
    GGetProductData_getProduct_products_sizes_groupModifiers_childModifiers,
    _$GGetProductData_getProduct_products_sizes_groupModifiers_childModifiers
  ];
  @override
  final String wireName =
      'GGetProductData_getProduct_products_sizes_groupModifiers_childModifiers';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      GGetProductData_getProduct_products_sizes_groupModifiers_childModifiers
          object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'modifierId',
      serializers.serialize(object.modifierId,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.maxAmount;
    if (value != null) {
      result
        ..add('maxAmount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.minAmount;
    if (value != null) {
      result
        ..add('minAmount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.required;
    if (value != null) {
      result
        ..add('required')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.defaultAmount;
    if (value != null) {
      result
        ..add('defaultAmount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.hideIfDefaultAmount;
    if (value != null) {
      result
        ..add('hideIfDefaultAmount')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GGetProductData_getProduct_products_sizes_groupModifiers_childModifiers
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GGetProductData_getProduct_products_sizes_groupModifiers_childModifiersBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'maxAmount':
          result.maxAmount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'minAmount':
          result.minAmount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'modifierId':
          result.modifierId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'required':
          result.required = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'defaultAmount':
          result.defaultAmount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'hideIfDefaultAmount':
          result.hideIfDefaultAmount = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetProductData_getProduct_imagesSerializer
    implements StructuredSerializer<GGetProductData_getProduct_images> {
  @override
  final Iterable<Type> types = const [
    GGetProductData_getProduct_images,
    _$GGetProductData_getProduct_images
  ];
  @override
  final String wireName = 'GGetProductData_getProduct_images';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetProductData_getProduct_images object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.imageId;
    if (value != null) {
      result
        ..add('imageId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.imageUrl;
    if (value != null) {
      result
        ..add('imageUrl')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GGetProductData_getProduct_images deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetProductData_getProduct_imagesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'imageId':
          result.imageId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'imageUrl':
          result.imageUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetProductData_getProduct_modifiersSerializer
    implements StructuredSerializer<GGetProductData_getProduct_modifiers> {
  @override
  final Iterable<Type> types = const [
    GGetProductData_getProduct_modifiers,
    _$GGetProductData_getProduct_modifiers
  ];
  @override
  final String wireName = 'GGetProductData_getProduct_modifiers';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetProductData_getProduct_modifiers object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'modifierId',
      serializers.serialize(object.modifierId,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.maxAmount;
    if (value != null) {
      result
        ..add('maxAmount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.minAmount;
    if (value != null) {
      result
        ..add('minAmount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.required;
    if (value != null) {
      result
        ..add('required')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.defaultAmount;
    if (value != null) {
      result
        ..add('defaultAmount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.hideIfDefaultAmount;
    if (value != null) {
      result
        ..add('hideIfDefaultAmount')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GGetProductData_getProduct_modifiers deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetProductData_getProduct_modifiersBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'maxAmount':
          result.maxAmount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'minAmount':
          result.minAmount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'modifierId':
          result.modifierId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'required':
          result.required = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'defaultAmount':
          result.defaultAmount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'hideIfDefaultAmount':
          result.hideIfDefaultAmount = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetProductData_getProduct_groupModifiersSerializer
    implements StructuredSerializer<GGetProductData_getProduct_groupModifiers> {
  @override
  final Iterable<Type> types = const [
    GGetProductData_getProduct_groupModifiers,
    _$GGetProductData_getProduct_groupModifiers
  ];
  @override
  final String wireName = 'GGetProductData_getProduct_groupModifiers';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetProductData_getProduct_groupModifiers object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'modifierId',
      serializers.serialize(object.modifierId,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.maxAmount;
    if (value != null) {
      result
        ..add('maxAmount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.minAmount;
    if (value != null) {
      result
        ..add('minAmount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.required;
    if (value != null) {
      result
        ..add('required')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.childModifiers;
    if (value != null) {
      result
        ..add('childModifiers')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  GGetProductData_getProduct_groupModifiers_childModifiers)
            ])));
    }
    value = object.childModifiersHaveMinMaxRestrictions;
    if (value != null) {
      result
        ..add('childModifiersHaveMinMaxRestrictions')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GGetProductData_getProduct_groupModifiers deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetProductData_getProduct_groupModifiersBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'maxAmount':
          result.maxAmount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'minAmount':
          result.minAmount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'modifierId':
          result.modifierId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'required':
          result.required = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'childModifiers':
          result.childModifiers.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    GGetProductData_getProduct_groupModifiers_childModifiers)
              ]))! as BuiltList<Object?>);
          break;
        case 'childModifiersHaveMinMaxRestrictions':
          result.childModifiersHaveMinMaxRestrictions = serializers
              .deserialize(value, specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetProductData_getProduct_groupModifiers_childModifiersSerializer
    implements
        StructuredSerializer<
            GGetProductData_getProduct_groupModifiers_childModifiers> {
  @override
  final Iterable<Type> types = const [
    GGetProductData_getProduct_groupModifiers_childModifiers,
    _$GGetProductData_getProduct_groupModifiers_childModifiers
  ];
  @override
  final String wireName =
      'GGetProductData_getProduct_groupModifiers_childModifiers';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GGetProductData_getProduct_groupModifiers_childModifiers object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'modifierId',
      serializers.serialize(object.modifierId,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.maxAmount;
    if (value != null) {
      result
        ..add('maxAmount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.minAmount;
    if (value != null) {
      result
        ..add('minAmount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.required;
    if (value != null) {
      result
        ..add('required')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.defaultAmount;
    if (value != null) {
      result
        ..add('defaultAmount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.hideIfDefaultAmount;
    if (value != null) {
      result
        ..add('hideIfDefaultAmount')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  GGetProductData_getProduct_groupModifiers_childModifiers deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GGetProductData_getProduct_groupModifiers_childModifiersBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'maxAmount':
          result.maxAmount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'minAmount':
          result.minAmount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'modifierId':
          result.modifierId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'required':
          result.required = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'defaultAmount':
          result.defaultAmount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'hideIfDefaultAmount':
          result.hideIfDefaultAmount = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetProductData extends GGetProductData {
  @override
  final String G__typename;
  @override
  final GGetProductData_getProduct? getProduct;

  factory _$GGetProductData([void Function(GGetProductDataBuilder)? updates]) =>
      (new GGetProductDataBuilder()..update(updates)).build();

  _$GGetProductData._({required this.G__typename, this.getProduct})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGetProductData', 'G__typename');
  }

  @override
  GGetProductData rebuild(void Function(GGetProductDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetProductDataBuilder toBuilder() =>
      new GGetProductDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetProductData &&
        G__typename == other.G__typename &&
        getProduct == other.getProduct;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), getProduct.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetProductData')
          ..add('G__typename', G__typename)
          ..add('getProduct', getProduct))
        .toString();
  }
}

class GGetProductDataBuilder
    implements Builder<GGetProductData, GGetProductDataBuilder> {
  _$GGetProductData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GGetProductData_getProductBuilder? _getProduct;
  GGetProductData_getProductBuilder get getProduct =>
      _$this._getProduct ??= new GGetProductData_getProductBuilder();
  set getProduct(GGetProductData_getProductBuilder? getProduct) =>
      _$this._getProduct = getProduct;

  GGetProductDataBuilder() {
    GGetProductData._initializeBuilder(this);
  }

  GGetProductDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _getProduct = $v.getProduct?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetProductData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetProductData;
  }

  @override
  void update(void Function(GGetProductDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetProductData build() {
    _$GGetProductData _$result;
    try {
      _$result = _$v ??
          new _$GGetProductData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GGetProductData', 'G__typename'),
              getProduct: _getProduct?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'getProduct';
        _getProduct?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GGetProductData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetProductData_getProduct extends GGetProductData_getProduct {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String? parentGroupId;
  @override
  final String? groupId;
  @override
  final GGetProductData_getProduct_parentGroup? parentGroup;
  @override
  final GGetProductData_getProduct_group? group;
  @override
  final String? productCategoryId;
  @override
  final GGetProductData_getProduct_category? category;
  @override
  final BuiltList<GGetProductData_getProduct_products_sizes>? products_sizes;
  @override
  final String? additionalInfo;
  @override
  final String name;
  @override
  final String code;
  @override
  final String? description;
  @override
  final String? seoDescription;
  @override
  final String? seoKeywords;
  @override
  final String? seoText;
  @override
  final String? seoTitle;
  @override
  final bool? isDeleted;
  @override
  final BuiltList<String>? tags;
  @override
  final BuiltList<GGetProductData_getProduct_images>? images;
  @override
  final bool? isIncludedInMenu;
  @override
  final int? order;
  @override
  final bool? doNotPrintInCheque;
  @override
  final String? carbohydrateAmount;
  @override
  final String? carbohydrateFullAmount;
  @override
  final String? energyAmount;
  @override
  final String? energyFullAmount;
  @override
  final String? fatAmount;
  @override
  final String? fatFullAmount;
  @override
  final String? fiberAmount;
  @override
  final String? fiberFullAmount;
  @override
  final String? measureUnit;
  @override
  final String? price;
  @override
  final bool? useBalanceForSell;
  @override
  final String? weight;
  @override
  final BuiltList<GGetProductData_getProduct_modifiers>? modifiers;
  @override
  final BuiltList<GGetProductData_getProduct_groupModifiers>? groupModifiers;

  factory _$GGetProductData_getProduct(
          [void Function(GGetProductData_getProductBuilder)? updates]) =>
      (new GGetProductData_getProductBuilder()..update(updates)).build();

  _$GGetProductData_getProduct._(
      {required this.G__typename,
      required this.id,
      this.parentGroupId,
      this.groupId,
      this.parentGroup,
      this.group,
      this.productCategoryId,
      this.category,
      this.products_sizes,
      this.additionalInfo,
      required this.name,
      required this.code,
      this.description,
      this.seoDescription,
      this.seoKeywords,
      this.seoText,
      this.seoTitle,
      this.isDeleted,
      this.tags,
      this.images,
      this.isIncludedInMenu,
      this.order,
      this.doNotPrintInCheque,
      this.carbohydrateAmount,
      this.carbohydrateFullAmount,
      this.energyAmount,
      this.energyFullAmount,
      this.fatAmount,
      this.fatFullAmount,
      this.fiberAmount,
      this.fiberFullAmount,
      this.measureUnit,
      this.price,
      this.useBalanceForSell,
      this.weight,
      this.modifiers,
      this.groupModifiers})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGetProductData_getProduct', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GGetProductData_getProduct', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, 'GGetProductData_getProduct', 'name');
    BuiltValueNullFieldError.checkNotNull(
        code, 'GGetProductData_getProduct', 'code');
  }

  @override
  GGetProductData_getProduct rebuild(
          void Function(GGetProductData_getProductBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetProductData_getProductBuilder toBuilder() =>
      new GGetProductData_getProductBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetProductData_getProduct &&
        G__typename == other.G__typename &&
        id == other.id &&
        parentGroupId == other.parentGroupId &&
        groupId == other.groupId &&
        parentGroup == other.parentGroup &&
        group == other.group &&
        productCategoryId == other.productCategoryId &&
        category == other.category &&
        products_sizes == other.products_sizes &&
        additionalInfo == other.additionalInfo &&
        name == other.name &&
        code == other.code &&
        description == other.description &&
        seoDescription == other.seoDescription &&
        seoKeywords == other.seoKeywords &&
        seoText == other.seoText &&
        seoTitle == other.seoTitle &&
        isDeleted == other.isDeleted &&
        tags == other.tags &&
        images == other.images &&
        isIncludedInMenu == other.isIncludedInMenu &&
        order == other.order &&
        doNotPrintInCheque == other.doNotPrintInCheque &&
        carbohydrateAmount == other.carbohydrateAmount &&
        carbohydrateFullAmount == other.carbohydrateFullAmount &&
        energyAmount == other.energyAmount &&
        energyFullAmount == other.energyFullAmount &&
        fatAmount == other.fatAmount &&
        fatFullAmount == other.fatFullAmount &&
        fiberAmount == other.fiberAmount &&
        fiberFullAmount == other.fiberFullAmount &&
        measureUnit == other.measureUnit &&
        price == other.price &&
        useBalanceForSell == other.useBalanceForSell &&
        weight == other.weight &&
        modifiers == other.modifiers &&
        groupModifiers == other.groupModifiers;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc(0, G__typename.hashCode), id.hashCode), parentGroupId.hashCode), groupId.hashCode), parentGroup.hashCode), group.hashCode), productCategoryId.hashCode), category.hashCode), products_sizes.hashCode), additionalInfo.hashCode), name.hashCode), code.hashCode), description.hashCode), seoDescription.hashCode), seoKeywords.hashCode), seoText.hashCode), seoTitle.hashCode), isDeleted.hashCode),
                                                                                tags.hashCode),
                                                                            images.hashCode),
                                                                        isIncludedInMenu.hashCode),
                                                                    order.hashCode),
                                                                doNotPrintInCheque.hashCode),
                                                            carbohydrateAmount.hashCode),
                                                        carbohydrateFullAmount.hashCode),
                                                    energyAmount.hashCode),
                                                energyFullAmount.hashCode),
                                            fatAmount.hashCode),
                                        fatFullAmount.hashCode),
                                    fiberAmount.hashCode),
                                fiberFullAmount.hashCode),
                            measureUnit.hashCode),
                        price.hashCode),
                    useBalanceForSell.hashCode),
                weight.hashCode),
            modifiers.hashCode),
        groupModifiers.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetProductData_getProduct')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('parentGroupId', parentGroupId)
          ..add('groupId', groupId)
          ..add('parentGroup', parentGroup)
          ..add('group', group)
          ..add('productCategoryId', productCategoryId)
          ..add('category', category)
          ..add('products_sizes', products_sizes)
          ..add('additionalInfo', additionalInfo)
          ..add('name', name)
          ..add('code', code)
          ..add('description', description)
          ..add('seoDescription', seoDescription)
          ..add('seoKeywords', seoKeywords)
          ..add('seoText', seoText)
          ..add('seoTitle', seoTitle)
          ..add('isDeleted', isDeleted)
          ..add('tags', tags)
          ..add('images', images)
          ..add('isIncludedInMenu', isIncludedInMenu)
          ..add('order', order)
          ..add('doNotPrintInCheque', doNotPrintInCheque)
          ..add('carbohydrateAmount', carbohydrateAmount)
          ..add('carbohydrateFullAmount', carbohydrateFullAmount)
          ..add('energyAmount', energyAmount)
          ..add('energyFullAmount', energyFullAmount)
          ..add('fatAmount', fatAmount)
          ..add('fatFullAmount', fatFullAmount)
          ..add('fiberAmount', fiberAmount)
          ..add('fiberFullAmount', fiberFullAmount)
          ..add('measureUnit', measureUnit)
          ..add('price', price)
          ..add('useBalanceForSell', useBalanceForSell)
          ..add('weight', weight)
          ..add('modifiers', modifiers)
          ..add('groupModifiers', groupModifiers))
        .toString();
  }
}

class GGetProductData_getProductBuilder
    implements
        Builder<GGetProductData_getProduct, GGetProductData_getProductBuilder> {
  _$GGetProductData_getProduct? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _parentGroupId;
  String? get parentGroupId => _$this._parentGroupId;
  set parentGroupId(String? parentGroupId) =>
      _$this._parentGroupId = parentGroupId;

  String? _groupId;
  String? get groupId => _$this._groupId;
  set groupId(String? groupId) => _$this._groupId = groupId;

  GGetProductData_getProduct_parentGroupBuilder? _parentGroup;
  GGetProductData_getProduct_parentGroupBuilder get parentGroup =>
      _$this._parentGroup ??=
          new GGetProductData_getProduct_parentGroupBuilder();
  set parentGroup(GGetProductData_getProduct_parentGroupBuilder? parentGroup) =>
      _$this._parentGroup = parentGroup;

  GGetProductData_getProduct_groupBuilder? _group;
  GGetProductData_getProduct_groupBuilder get group =>
      _$this._group ??= new GGetProductData_getProduct_groupBuilder();
  set group(GGetProductData_getProduct_groupBuilder? group) =>
      _$this._group = group;

  String? _productCategoryId;
  String? get productCategoryId => _$this._productCategoryId;
  set productCategoryId(String? productCategoryId) =>
      _$this._productCategoryId = productCategoryId;

  GGetProductData_getProduct_categoryBuilder? _category;
  GGetProductData_getProduct_categoryBuilder get category =>
      _$this._category ??= new GGetProductData_getProduct_categoryBuilder();
  set category(GGetProductData_getProduct_categoryBuilder? category) =>
      _$this._category = category;

  ListBuilder<GGetProductData_getProduct_products_sizes>? _products_sizes;
  ListBuilder<GGetProductData_getProduct_products_sizes> get products_sizes =>
      _$this._products_sizes ??=
          new ListBuilder<GGetProductData_getProduct_products_sizes>();
  set products_sizes(
          ListBuilder<GGetProductData_getProduct_products_sizes>?
              products_sizes) =>
      _$this._products_sizes = products_sizes;

  String? _additionalInfo;
  String? get additionalInfo => _$this._additionalInfo;
  set additionalInfo(String? additionalInfo) =>
      _$this._additionalInfo = additionalInfo;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _seoDescription;
  String? get seoDescription => _$this._seoDescription;
  set seoDescription(String? seoDescription) =>
      _$this._seoDescription = seoDescription;

  String? _seoKeywords;
  String? get seoKeywords => _$this._seoKeywords;
  set seoKeywords(String? seoKeywords) => _$this._seoKeywords = seoKeywords;

  String? _seoText;
  String? get seoText => _$this._seoText;
  set seoText(String? seoText) => _$this._seoText = seoText;

  String? _seoTitle;
  String? get seoTitle => _$this._seoTitle;
  set seoTitle(String? seoTitle) => _$this._seoTitle = seoTitle;

  bool? _isDeleted;
  bool? get isDeleted => _$this._isDeleted;
  set isDeleted(bool? isDeleted) => _$this._isDeleted = isDeleted;

  ListBuilder<String>? _tags;
  ListBuilder<String> get tags => _$this._tags ??= new ListBuilder<String>();
  set tags(ListBuilder<String>? tags) => _$this._tags = tags;

  ListBuilder<GGetProductData_getProduct_images>? _images;
  ListBuilder<GGetProductData_getProduct_images> get images =>
      _$this._images ??= new ListBuilder<GGetProductData_getProduct_images>();
  set images(ListBuilder<GGetProductData_getProduct_images>? images) =>
      _$this._images = images;

  bool? _isIncludedInMenu;
  bool? get isIncludedInMenu => _$this._isIncludedInMenu;
  set isIncludedInMenu(bool? isIncludedInMenu) =>
      _$this._isIncludedInMenu = isIncludedInMenu;

  int? _order;
  int? get order => _$this._order;
  set order(int? order) => _$this._order = order;

  bool? _doNotPrintInCheque;
  bool? get doNotPrintInCheque => _$this._doNotPrintInCheque;
  set doNotPrintInCheque(bool? doNotPrintInCheque) =>
      _$this._doNotPrintInCheque = doNotPrintInCheque;

  String? _carbohydrateAmount;
  String? get carbohydrateAmount => _$this._carbohydrateAmount;
  set carbohydrateAmount(String? carbohydrateAmount) =>
      _$this._carbohydrateAmount = carbohydrateAmount;

  String? _carbohydrateFullAmount;
  String? get carbohydrateFullAmount => _$this._carbohydrateFullAmount;
  set carbohydrateFullAmount(String? carbohydrateFullAmount) =>
      _$this._carbohydrateFullAmount = carbohydrateFullAmount;

  String? _energyAmount;
  String? get energyAmount => _$this._energyAmount;
  set energyAmount(String? energyAmount) => _$this._energyAmount = energyAmount;

  String? _energyFullAmount;
  String? get energyFullAmount => _$this._energyFullAmount;
  set energyFullAmount(String? energyFullAmount) =>
      _$this._energyFullAmount = energyFullAmount;

  String? _fatAmount;
  String? get fatAmount => _$this._fatAmount;
  set fatAmount(String? fatAmount) => _$this._fatAmount = fatAmount;

  String? _fatFullAmount;
  String? get fatFullAmount => _$this._fatFullAmount;
  set fatFullAmount(String? fatFullAmount) =>
      _$this._fatFullAmount = fatFullAmount;

  String? _fiberAmount;
  String? get fiberAmount => _$this._fiberAmount;
  set fiberAmount(String? fiberAmount) => _$this._fiberAmount = fiberAmount;

  String? _fiberFullAmount;
  String? get fiberFullAmount => _$this._fiberFullAmount;
  set fiberFullAmount(String? fiberFullAmount) =>
      _$this._fiberFullAmount = fiberFullAmount;

  String? _measureUnit;
  String? get measureUnit => _$this._measureUnit;
  set measureUnit(String? measureUnit) => _$this._measureUnit = measureUnit;

  String? _price;
  String? get price => _$this._price;
  set price(String? price) => _$this._price = price;

  bool? _useBalanceForSell;
  bool? get useBalanceForSell => _$this._useBalanceForSell;
  set useBalanceForSell(bool? useBalanceForSell) =>
      _$this._useBalanceForSell = useBalanceForSell;

  String? _weight;
  String? get weight => _$this._weight;
  set weight(String? weight) => _$this._weight = weight;

  ListBuilder<GGetProductData_getProduct_modifiers>? _modifiers;
  ListBuilder<GGetProductData_getProduct_modifiers> get modifiers =>
      _$this._modifiers ??=
          new ListBuilder<GGetProductData_getProduct_modifiers>();
  set modifiers(ListBuilder<GGetProductData_getProduct_modifiers>? modifiers) =>
      _$this._modifiers = modifiers;

  ListBuilder<GGetProductData_getProduct_groupModifiers>? _groupModifiers;
  ListBuilder<GGetProductData_getProduct_groupModifiers> get groupModifiers =>
      _$this._groupModifiers ??=
          new ListBuilder<GGetProductData_getProduct_groupModifiers>();
  set groupModifiers(
          ListBuilder<GGetProductData_getProduct_groupModifiers>?
              groupModifiers) =>
      _$this._groupModifiers = groupModifiers;

  GGetProductData_getProductBuilder() {
    GGetProductData_getProduct._initializeBuilder(this);
  }

  GGetProductData_getProductBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _parentGroupId = $v.parentGroupId;
      _groupId = $v.groupId;
      _parentGroup = $v.parentGroup?.toBuilder();
      _group = $v.group?.toBuilder();
      _productCategoryId = $v.productCategoryId;
      _category = $v.category?.toBuilder();
      _products_sizes = $v.products_sizes?.toBuilder();
      _additionalInfo = $v.additionalInfo;
      _name = $v.name;
      _code = $v.code;
      _description = $v.description;
      _seoDescription = $v.seoDescription;
      _seoKeywords = $v.seoKeywords;
      _seoText = $v.seoText;
      _seoTitle = $v.seoTitle;
      _isDeleted = $v.isDeleted;
      _tags = $v.tags?.toBuilder();
      _images = $v.images?.toBuilder();
      _isIncludedInMenu = $v.isIncludedInMenu;
      _order = $v.order;
      _doNotPrintInCheque = $v.doNotPrintInCheque;
      _carbohydrateAmount = $v.carbohydrateAmount;
      _carbohydrateFullAmount = $v.carbohydrateFullAmount;
      _energyAmount = $v.energyAmount;
      _energyFullAmount = $v.energyFullAmount;
      _fatAmount = $v.fatAmount;
      _fatFullAmount = $v.fatFullAmount;
      _fiberAmount = $v.fiberAmount;
      _fiberFullAmount = $v.fiberFullAmount;
      _measureUnit = $v.measureUnit;
      _price = $v.price;
      _useBalanceForSell = $v.useBalanceForSell;
      _weight = $v.weight;
      _modifiers = $v.modifiers?.toBuilder();
      _groupModifiers = $v.groupModifiers?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetProductData_getProduct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetProductData_getProduct;
  }

  @override
  void update(void Function(GGetProductData_getProductBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetProductData_getProduct build() {
    _$GGetProductData_getProduct _$result;
    try {
      _$result = _$v ??
          new _$GGetProductData_getProduct._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GGetProductData_getProduct', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, 'GGetProductData_getProduct', 'id'),
              parentGroupId: parentGroupId,
              groupId: groupId,
              parentGroup: _parentGroup?.build(),
              group: _group?.build(),
              productCategoryId: productCategoryId,
              category: _category?.build(),
              products_sizes: _products_sizes?.build(),
              additionalInfo: additionalInfo,
              name: BuiltValueNullFieldError.checkNotNull(
                  name, 'GGetProductData_getProduct', 'name'),
              code: BuiltValueNullFieldError.checkNotNull(
                  code, 'GGetProductData_getProduct', 'code'),
              description: description,
              seoDescription: seoDescription,
              seoKeywords: seoKeywords,
              seoText: seoText,
              seoTitle: seoTitle,
              isDeleted: isDeleted,
              tags: _tags?.build(),
              images: _images?.build(),
              isIncludedInMenu: isIncludedInMenu,
              order: order,
              doNotPrintInCheque: doNotPrintInCheque,
              carbohydrateAmount: carbohydrateAmount,
              carbohydrateFullAmount: carbohydrateFullAmount,
              energyAmount: energyAmount,
              energyFullAmount: energyFullAmount,
              fatAmount: fatAmount,
              fatFullAmount: fatFullAmount,
              fiberAmount: fiberAmount,
              fiberFullAmount: fiberFullAmount,
              measureUnit: measureUnit,
              price: price,
              useBalanceForSell: useBalanceForSell,
              weight: weight,
              modifiers: _modifiers?.build(),
              groupModifiers: _groupModifiers?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'parentGroup';
        _parentGroup?.build();
        _$failedField = 'group';
        _group?.build();

        _$failedField = 'category';
        _category?.build();
        _$failedField = 'products_sizes';
        _products_sizes?.build();

        _$failedField = 'tags';
        _tags?.build();
        _$failedField = 'images';
        _images?.build();

        _$failedField = 'modifiers';
        _modifiers?.build();
        _$failedField = 'groupModifiers';
        _groupModifiers?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GGetProductData_getProduct', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetProductData_getProduct_parentGroup
    extends GGetProductData_getProduct_parentGroup {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String? parentGroup;
  @override
  final String? additionalInfo;
  @override
  final String name;
  @override
  final String? description;

  factory _$GGetProductData_getProduct_parentGroup(
          [void Function(GGetProductData_getProduct_parentGroupBuilder)?
              updates]) =>
      (new GGetProductData_getProduct_parentGroupBuilder()..update(updates))
          .build();

  _$GGetProductData_getProduct_parentGroup._(
      {required this.G__typename,
      required this.id,
      this.parentGroup,
      this.additionalInfo,
      required this.name,
      this.description})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGetProductData_getProduct_parentGroup', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GGetProductData_getProduct_parentGroup', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, 'GGetProductData_getProduct_parentGroup', 'name');
  }

  @override
  GGetProductData_getProduct_parentGroup rebuild(
          void Function(GGetProductData_getProduct_parentGroupBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetProductData_getProduct_parentGroupBuilder toBuilder() =>
      new GGetProductData_getProduct_parentGroupBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetProductData_getProduct_parentGroup &&
        G__typename == other.G__typename &&
        id == other.id &&
        parentGroup == other.parentGroup &&
        additionalInfo == other.additionalInfo &&
        name == other.name &&
        description == other.description;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, G__typename.hashCode), id.hashCode),
                    parentGroup.hashCode),
                additionalInfo.hashCode),
            name.hashCode),
        description.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GGetProductData_getProduct_parentGroup')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('parentGroup', parentGroup)
          ..add('additionalInfo', additionalInfo)
          ..add('name', name)
          ..add('description', description))
        .toString();
  }
}

class GGetProductData_getProduct_parentGroupBuilder
    implements
        Builder<GGetProductData_getProduct_parentGroup,
            GGetProductData_getProduct_parentGroupBuilder> {
  _$GGetProductData_getProduct_parentGroup? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _parentGroup;
  String? get parentGroup => _$this._parentGroup;
  set parentGroup(String? parentGroup) => _$this._parentGroup = parentGroup;

  String? _additionalInfo;
  String? get additionalInfo => _$this._additionalInfo;
  set additionalInfo(String? additionalInfo) =>
      _$this._additionalInfo = additionalInfo;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  GGetProductData_getProduct_parentGroupBuilder() {
    GGetProductData_getProduct_parentGroup._initializeBuilder(this);
  }

  GGetProductData_getProduct_parentGroupBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _parentGroup = $v.parentGroup;
      _additionalInfo = $v.additionalInfo;
      _name = $v.name;
      _description = $v.description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetProductData_getProduct_parentGroup other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetProductData_getProduct_parentGroup;
  }

  @override
  void update(
      void Function(GGetProductData_getProduct_parentGroupBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetProductData_getProduct_parentGroup build() {
    final _$result = _$v ??
        new _$GGetProductData_getProduct_parentGroup._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                'GGetProductData_getProduct_parentGroup', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'GGetProductData_getProduct_parentGroup', 'id'),
            parentGroup: parentGroup,
            additionalInfo: additionalInfo,
            name: BuiltValueNullFieldError.checkNotNull(
                name, 'GGetProductData_getProduct_parentGroup', 'name'),
            description: description);
    replace(_$result);
    return _$result;
  }
}

class _$GGetProductData_getProduct_group
    extends GGetProductData_getProduct_group {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String? parentGroup;
  @override
  final String? additionalInfo;
  @override
  final String name;
  @override
  final String? description;

  factory _$GGetProductData_getProduct_group(
          [void Function(GGetProductData_getProduct_groupBuilder)? updates]) =>
      (new GGetProductData_getProduct_groupBuilder()..update(updates)).build();

  _$GGetProductData_getProduct_group._(
      {required this.G__typename,
      required this.id,
      this.parentGroup,
      this.additionalInfo,
      required this.name,
      this.description})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGetProductData_getProduct_group', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GGetProductData_getProduct_group', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, 'GGetProductData_getProduct_group', 'name');
  }

  @override
  GGetProductData_getProduct_group rebuild(
          void Function(GGetProductData_getProduct_groupBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetProductData_getProduct_groupBuilder toBuilder() =>
      new GGetProductData_getProduct_groupBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetProductData_getProduct_group &&
        G__typename == other.G__typename &&
        id == other.id &&
        parentGroup == other.parentGroup &&
        additionalInfo == other.additionalInfo &&
        name == other.name &&
        description == other.description;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, G__typename.hashCode), id.hashCode),
                    parentGroup.hashCode),
                additionalInfo.hashCode),
            name.hashCode),
        description.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetProductData_getProduct_group')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('parentGroup', parentGroup)
          ..add('additionalInfo', additionalInfo)
          ..add('name', name)
          ..add('description', description))
        .toString();
  }
}

class GGetProductData_getProduct_groupBuilder
    implements
        Builder<GGetProductData_getProduct_group,
            GGetProductData_getProduct_groupBuilder> {
  _$GGetProductData_getProduct_group? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _parentGroup;
  String? get parentGroup => _$this._parentGroup;
  set parentGroup(String? parentGroup) => _$this._parentGroup = parentGroup;

  String? _additionalInfo;
  String? get additionalInfo => _$this._additionalInfo;
  set additionalInfo(String? additionalInfo) =>
      _$this._additionalInfo = additionalInfo;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  GGetProductData_getProduct_groupBuilder() {
    GGetProductData_getProduct_group._initializeBuilder(this);
  }

  GGetProductData_getProduct_groupBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _parentGroup = $v.parentGroup;
      _additionalInfo = $v.additionalInfo;
      _name = $v.name;
      _description = $v.description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetProductData_getProduct_group other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetProductData_getProduct_group;
  }

  @override
  void update(void Function(GGetProductData_getProduct_groupBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetProductData_getProduct_group build() {
    final _$result = _$v ??
        new _$GGetProductData_getProduct_group._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, 'GGetProductData_getProduct_group', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'GGetProductData_getProduct_group', 'id'),
            parentGroup: parentGroup,
            additionalInfo: additionalInfo,
            name: BuiltValueNullFieldError.checkNotNull(
                name, 'GGetProductData_getProduct_group', 'name'),
            description: description);
    replace(_$result);
    return _$result;
  }
}

class _$GGetProductData_getProduct_category
    extends GGetProductData_getProduct_category {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String name;

  factory _$GGetProductData_getProduct_category(
          [void Function(GGetProductData_getProduct_categoryBuilder)?
              updates]) =>
      (new GGetProductData_getProduct_categoryBuilder()..update(updates))
          .build();

  _$GGetProductData_getProduct_category._(
      {required this.G__typename, required this.id, required this.name})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGetProductData_getProduct_category', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GGetProductData_getProduct_category', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, 'GGetProductData_getProduct_category', 'name');
  }

  @override
  GGetProductData_getProduct_category rebuild(
          void Function(GGetProductData_getProduct_categoryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetProductData_getProduct_categoryBuilder toBuilder() =>
      new GGetProductData_getProduct_categoryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetProductData_getProduct_category &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, G__typename.hashCode), id.hashCode), name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetProductData_getProduct_category')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class GGetProductData_getProduct_categoryBuilder
    implements
        Builder<GGetProductData_getProduct_category,
            GGetProductData_getProduct_categoryBuilder> {
  _$GGetProductData_getProduct_category? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GGetProductData_getProduct_categoryBuilder() {
    GGetProductData_getProduct_category._initializeBuilder(this);
  }

  GGetProductData_getProduct_categoryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetProductData_getProduct_category other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetProductData_getProduct_category;
  }

  @override
  void update(
      void Function(GGetProductData_getProduct_categoryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetProductData_getProduct_category build() {
    final _$result = _$v ??
        new _$GGetProductData_getProduct_category._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                'GGetProductData_getProduct_category', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'GGetProductData_getProduct_category', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, 'GGetProductData_getProduct_category', 'name'));
    replace(_$result);
    return _$result;
  }
}

class _$GGetProductData_getProduct_products_sizes
    extends GGetProductData_getProduct_products_sizes {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String name;
  @override
  final String? additionalInfo;
  @override
  final String? description;
  @override
  final GGetProductData_getProduct_products_sizes_parentGroup? parentGroup;
  @override
  final BuiltList<GGetProductData_getProduct_products_sizes_images>? images;
  @override
  final String? price;
  @override
  final String? weight;
  @override
  final String? carbohydrateAmount;
  @override
  final String? carbohydrateFullAmount;
  @override
  final String? energyAmount;
  @override
  final String? energyFullAmount;
  @override
  final String? fatAmount;
  @override
  final String? fatFullAmount;
  @override
  final String? fiberAmount;
  @override
  final String? fiberFullAmount;
  @override
  final BuiltList<GGetProductData_getProduct_products_sizes_modifiers>?
      modifiers;
  @override
  final BuiltList<GGetProductData_getProduct_products_sizes_groupModifiers>?
      groupModifiers;

  factory _$GGetProductData_getProduct_products_sizes(
          [void Function(GGetProductData_getProduct_products_sizesBuilder)?
              updates]) =>
      (new GGetProductData_getProduct_products_sizesBuilder()..update(updates))
          .build();

  _$GGetProductData_getProduct_products_sizes._(
      {required this.G__typename,
      required this.id,
      required this.name,
      this.additionalInfo,
      this.description,
      this.parentGroup,
      this.images,
      this.price,
      this.weight,
      this.carbohydrateAmount,
      this.carbohydrateFullAmount,
      this.energyAmount,
      this.energyFullAmount,
      this.fatAmount,
      this.fatFullAmount,
      this.fiberAmount,
      this.fiberFullAmount,
      this.modifiers,
      this.groupModifiers})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        'GGetProductData_getProduct_products_sizes', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GGetProductData_getProduct_products_sizes', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, 'GGetProductData_getProduct_products_sizes', 'name');
  }

  @override
  GGetProductData_getProduct_products_sizes rebuild(
          void Function(GGetProductData_getProduct_products_sizesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetProductData_getProduct_products_sizesBuilder toBuilder() =>
      new GGetProductData_getProduct_products_sizesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetProductData_getProduct_products_sizes &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name &&
        additionalInfo == other.additionalInfo &&
        description == other.description &&
        parentGroup == other.parentGroup &&
        images == other.images &&
        price == other.price &&
        weight == other.weight &&
        carbohydrateAmount == other.carbohydrateAmount &&
        carbohydrateFullAmount == other.carbohydrateFullAmount &&
        energyAmount == other.energyAmount &&
        energyFullAmount == other.energyFullAmount &&
        fatAmount == other.fatAmount &&
        fatFullAmount == other.fatFullAmount &&
        fiberAmount == other.fiberAmount &&
        fiberFullAmount == other.fiberFullAmount &&
        modifiers == other.modifiers &&
        groupModifiers == other.groupModifiers;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc(
                                                                                0,
                                                                                G__typename
                                                                                    .hashCode),
                                                                            id
                                                                                .hashCode),
                                                                        name
                                                                            .hashCode),
                                                                    additionalInfo
                                                                        .hashCode),
                                                                description
                                                                    .hashCode),
                                                            parentGroup
                                                                .hashCode),
                                                        images.hashCode),
                                                    price.hashCode),
                                                weight.hashCode),
                                            carbohydrateAmount.hashCode),
                                        carbohydrateFullAmount.hashCode),
                                    energyAmount.hashCode),
                                energyFullAmount.hashCode),
                            fatAmount.hashCode),
                        fatFullAmount.hashCode),
                    fiberAmount.hashCode),
                fiberFullAmount.hashCode),
            modifiers.hashCode),
        groupModifiers.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GGetProductData_getProduct_products_sizes')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name)
          ..add('additionalInfo', additionalInfo)
          ..add('description', description)
          ..add('parentGroup', parentGroup)
          ..add('images', images)
          ..add('price', price)
          ..add('weight', weight)
          ..add('carbohydrateAmount', carbohydrateAmount)
          ..add('carbohydrateFullAmount', carbohydrateFullAmount)
          ..add('energyAmount', energyAmount)
          ..add('energyFullAmount', energyFullAmount)
          ..add('fatAmount', fatAmount)
          ..add('fatFullAmount', fatFullAmount)
          ..add('fiberAmount', fiberAmount)
          ..add('fiberFullAmount', fiberFullAmount)
          ..add('modifiers', modifiers)
          ..add('groupModifiers', groupModifiers))
        .toString();
  }
}

class GGetProductData_getProduct_products_sizesBuilder
    implements
        Builder<GGetProductData_getProduct_products_sizes,
            GGetProductData_getProduct_products_sizesBuilder> {
  _$GGetProductData_getProduct_products_sizes? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _additionalInfo;
  String? get additionalInfo => _$this._additionalInfo;
  set additionalInfo(String? additionalInfo) =>
      _$this._additionalInfo = additionalInfo;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  GGetProductData_getProduct_products_sizes_parentGroupBuilder? _parentGroup;
  GGetProductData_getProduct_products_sizes_parentGroupBuilder
      get parentGroup => _$this._parentGroup ??=
          new GGetProductData_getProduct_products_sizes_parentGroupBuilder();
  set parentGroup(
          GGetProductData_getProduct_products_sizes_parentGroupBuilder?
              parentGroup) =>
      _$this._parentGroup = parentGroup;

  ListBuilder<GGetProductData_getProduct_products_sizes_images>? _images;
  ListBuilder<GGetProductData_getProduct_products_sizes_images> get images =>
      _$this._images ??=
          new ListBuilder<GGetProductData_getProduct_products_sizes_images>();
  set images(
          ListBuilder<GGetProductData_getProduct_products_sizes_images>?
              images) =>
      _$this._images = images;

  String? _price;
  String? get price => _$this._price;
  set price(String? price) => _$this._price = price;

  String? _weight;
  String? get weight => _$this._weight;
  set weight(String? weight) => _$this._weight = weight;

  String? _carbohydrateAmount;
  String? get carbohydrateAmount => _$this._carbohydrateAmount;
  set carbohydrateAmount(String? carbohydrateAmount) =>
      _$this._carbohydrateAmount = carbohydrateAmount;

  String? _carbohydrateFullAmount;
  String? get carbohydrateFullAmount => _$this._carbohydrateFullAmount;
  set carbohydrateFullAmount(String? carbohydrateFullAmount) =>
      _$this._carbohydrateFullAmount = carbohydrateFullAmount;

  String? _energyAmount;
  String? get energyAmount => _$this._energyAmount;
  set energyAmount(String? energyAmount) => _$this._energyAmount = energyAmount;

  String? _energyFullAmount;
  String? get energyFullAmount => _$this._energyFullAmount;
  set energyFullAmount(String? energyFullAmount) =>
      _$this._energyFullAmount = energyFullAmount;

  String? _fatAmount;
  String? get fatAmount => _$this._fatAmount;
  set fatAmount(String? fatAmount) => _$this._fatAmount = fatAmount;

  String? _fatFullAmount;
  String? get fatFullAmount => _$this._fatFullAmount;
  set fatFullAmount(String? fatFullAmount) =>
      _$this._fatFullAmount = fatFullAmount;

  String? _fiberAmount;
  String? get fiberAmount => _$this._fiberAmount;
  set fiberAmount(String? fiberAmount) => _$this._fiberAmount = fiberAmount;

  String? _fiberFullAmount;
  String? get fiberFullAmount => _$this._fiberFullAmount;
  set fiberFullAmount(String? fiberFullAmount) =>
      _$this._fiberFullAmount = fiberFullAmount;

  ListBuilder<GGetProductData_getProduct_products_sizes_modifiers>? _modifiers;
  ListBuilder<GGetProductData_getProduct_products_sizes_modifiers>
      get modifiers => _$this._modifiers ??= new ListBuilder<
          GGetProductData_getProduct_products_sizes_modifiers>();
  set modifiers(
          ListBuilder<GGetProductData_getProduct_products_sizes_modifiers>?
              modifiers) =>
      _$this._modifiers = modifiers;

  ListBuilder<GGetProductData_getProduct_products_sizes_groupModifiers>?
      _groupModifiers;
  ListBuilder<GGetProductData_getProduct_products_sizes_groupModifiers>
      get groupModifiers => _$this._groupModifiers ??= new ListBuilder<
          GGetProductData_getProduct_products_sizes_groupModifiers>();
  set groupModifiers(
          ListBuilder<GGetProductData_getProduct_products_sizes_groupModifiers>?
              groupModifiers) =>
      _$this._groupModifiers = groupModifiers;

  GGetProductData_getProduct_products_sizesBuilder() {
    GGetProductData_getProduct_products_sizes._initializeBuilder(this);
  }

  GGetProductData_getProduct_products_sizesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _additionalInfo = $v.additionalInfo;
      _description = $v.description;
      _parentGroup = $v.parentGroup?.toBuilder();
      _images = $v.images?.toBuilder();
      _price = $v.price;
      _weight = $v.weight;
      _carbohydrateAmount = $v.carbohydrateAmount;
      _carbohydrateFullAmount = $v.carbohydrateFullAmount;
      _energyAmount = $v.energyAmount;
      _energyFullAmount = $v.energyFullAmount;
      _fatAmount = $v.fatAmount;
      _fatFullAmount = $v.fatFullAmount;
      _fiberAmount = $v.fiberAmount;
      _fiberFullAmount = $v.fiberFullAmount;
      _modifiers = $v.modifiers?.toBuilder();
      _groupModifiers = $v.groupModifiers?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetProductData_getProduct_products_sizes other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetProductData_getProduct_products_sizes;
  }

  @override
  void update(
      void Function(GGetProductData_getProduct_products_sizesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetProductData_getProduct_products_sizes build() {
    _$GGetProductData_getProduct_products_sizes _$result;
    try {
      _$result = _$v ??
          new _$GGetProductData_getProduct_products_sizes._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  'GGetProductData_getProduct_products_sizes', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, 'GGetProductData_getProduct_products_sizes', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, 'GGetProductData_getProduct_products_sizes', 'name'),
              additionalInfo: additionalInfo,
              description: description,
              parentGroup: _parentGroup?.build(),
              images: _images?.build(),
              price: price,
              weight: weight,
              carbohydrateAmount: carbohydrateAmount,
              carbohydrateFullAmount: carbohydrateFullAmount,
              energyAmount: energyAmount,
              energyFullAmount: energyFullAmount,
              fatAmount: fatAmount,
              fatFullAmount: fatFullAmount,
              fiberAmount: fiberAmount,
              fiberFullAmount: fiberFullAmount,
              modifiers: _modifiers?.build(),
              groupModifiers: _groupModifiers?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'parentGroup';
        _parentGroup?.build();
        _$failedField = 'images';
        _images?.build();

        _$failedField = 'modifiers';
        _modifiers?.build();
        _$failedField = 'groupModifiers';
        _groupModifiers?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GGetProductData_getProduct_products_sizes',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetProductData_getProduct_products_sizes_parentGroup
    extends GGetProductData_getProduct_products_sizes_parentGroup {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String name;

  factory _$GGetProductData_getProduct_products_sizes_parentGroup(
          [void Function(
                  GGetProductData_getProduct_products_sizes_parentGroupBuilder)?
              updates]) =>
      (new GGetProductData_getProduct_products_sizes_parentGroupBuilder()
            ..update(updates))
          .build();

  _$GGetProductData_getProduct_products_sizes_parentGroup._(
      {required this.G__typename, required this.id, required this.name})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        'GGetProductData_getProduct_products_sizes_parentGroup', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GGetProductData_getProduct_products_sizes_parentGroup', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, 'GGetProductData_getProduct_products_sizes_parentGroup', 'name');
  }

  @override
  GGetProductData_getProduct_products_sizes_parentGroup rebuild(
          void Function(
                  GGetProductData_getProduct_products_sizes_parentGroupBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetProductData_getProduct_products_sizes_parentGroupBuilder toBuilder() =>
      new GGetProductData_getProduct_products_sizes_parentGroupBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetProductData_getProduct_products_sizes_parentGroup &&
        G__typename == other.G__typename &&
        id == other.id &&
        name == other.name;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, G__typename.hashCode), id.hashCode), name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GGetProductData_getProduct_products_sizes_parentGroup')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class GGetProductData_getProduct_products_sizes_parentGroupBuilder
    implements
        Builder<GGetProductData_getProduct_products_sizes_parentGroup,
            GGetProductData_getProduct_products_sizes_parentGroupBuilder> {
  _$GGetProductData_getProduct_products_sizes_parentGroup? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GGetProductData_getProduct_products_sizes_parentGroupBuilder() {
    GGetProductData_getProduct_products_sizes_parentGroup._initializeBuilder(
        this);
  }

  GGetProductData_getProduct_products_sizes_parentGroupBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetProductData_getProduct_products_sizes_parentGroup other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetProductData_getProduct_products_sizes_parentGroup;
  }

  @override
  void update(
      void Function(
              GGetProductData_getProduct_products_sizes_parentGroupBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetProductData_getProduct_products_sizes_parentGroup build() {
    final _$result = _$v ??
        new _$GGetProductData_getProduct_products_sizes_parentGroup._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                'GGetProductData_getProduct_products_sizes_parentGroup',
                'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(id,
                'GGetProductData_getProduct_products_sizes_parentGroup', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name,
                'GGetProductData_getProduct_products_sizes_parentGroup',
                'name'));
    replace(_$result);
    return _$result;
  }
}

class _$GGetProductData_getProduct_products_sizes_images
    extends GGetProductData_getProduct_products_sizes_images {
  @override
  final String G__typename;
  @override
  final String? imageId;
  @override
  final String? imageUrl;

  factory _$GGetProductData_getProduct_products_sizes_images(
          [void Function(
                  GGetProductData_getProduct_products_sizes_imagesBuilder)?
              updates]) =>
      (new GGetProductData_getProduct_products_sizes_imagesBuilder()
            ..update(updates))
          .build();

  _$GGetProductData_getProduct_products_sizes_images._(
      {required this.G__typename, this.imageId, this.imageUrl})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        'GGetProductData_getProduct_products_sizes_images', 'G__typename');
  }

  @override
  GGetProductData_getProduct_products_sizes_images rebuild(
          void Function(GGetProductData_getProduct_products_sizes_imagesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetProductData_getProduct_products_sizes_imagesBuilder toBuilder() =>
      new GGetProductData_getProduct_products_sizes_imagesBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetProductData_getProduct_products_sizes_images &&
        G__typename == other.G__typename &&
        imageId == other.imageId &&
        imageUrl == other.imageUrl;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, G__typename.hashCode), imageId.hashCode),
        imageUrl.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GGetProductData_getProduct_products_sizes_images')
          ..add('G__typename', G__typename)
          ..add('imageId', imageId)
          ..add('imageUrl', imageUrl))
        .toString();
  }
}

class GGetProductData_getProduct_products_sizes_imagesBuilder
    implements
        Builder<GGetProductData_getProduct_products_sizes_images,
            GGetProductData_getProduct_products_sizes_imagesBuilder> {
  _$GGetProductData_getProduct_products_sizes_images? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _imageId;
  String? get imageId => _$this._imageId;
  set imageId(String? imageId) => _$this._imageId = imageId;

  String? _imageUrl;
  String? get imageUrl => _$this._imageUrl;
  set imageUrl(String? imageUrl) => _$this._imageUrl = imageUrl;

  GGetProductData_getProduct_products_sizes_imagesBuilder() {
    GGetProductData_getProduct_products_sizes_images._initializeBuilder(this);
  }

  GGetProductData_getProduct_products_sizes_imagesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _imageId = $v.imageId;
      _imageUrl = $v.imageUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetProductData_getProduct_products_sizes_images other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetProductData_getProduct_products_sizes_images;
  }

  @override
  void update(
      void Function(GGetProductData_getProduct_products_sizes_imagesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetProductData_getProduct_products_sizes_images build() {
    final _$result = _$v ??
        new _$GGetProductData_getProduct_products_sizes_images._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                'GGetProductData_getProduct_products_sizes_images',
                'G__typename'),
            imageId: imageId,
            imageUrl: imageUrl);
    replace(_$result);
    return _$result;
  }
}

class _$GGetProductData_getProduct_products_sizes_modifiers
    extends GGetProductData_getProduct_products_sizes_modifiers {
  @override
  final String G__typename;
  @override
  final int? maxAmount;
  @override
  final int? minAmount;
  @override
  final String modifierId;
  @override
  final bool? required;
  @override
  final int? defaultAmount;
  @override
  final bool? hideIfDefaultAmount;

  factory _$GGetProductData_getProduct_products_sizes_modifiers(
          [void Function(
                  GGetProductData_getProduct_products_sizes_modifiersBuilder)?
              updates]) =>
      (new GGetProductData_getProduct_products_sizes_modifiersBuilder()
            ..update(updates))
          .build();

  _$GGetProductData_getProduct_products_sizes_modifiers._(
      {required this.G__typename,
      this.maxAmount,
      this.minAmount,
      required this.modifierId,
      this.required,
      this.defaultAmount,
      this.hideIfDefaultAmount})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        'GGetProductData_getProduct_products_sizes_modifiers', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(modifierId,
        'GGetProductData_getProduct_products_sizes_modifiers', 'modifierId');
  }

  @override
  GGetProductData_getProduct_products_sizes_modifiers rebuild(
          void Function(
                  GGetProductData_getProduct_products_sizes_modifiersBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetProductData_getProduct_products_sizes_modifiersBuilder toBuilder() =>
      new GGetProductData_getProduct_products_sizes_modifiersBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetProductData_getProduct_products_sizes_modifiers &&
        G__typename == other.G__typename &&
        maxAmount == other.maxAmount &&
        minAmount == other.minAmount &&
        modifierId == other.modifierId &&
        required == other.required &&
        defaultAmount == other.defaultAmount &&
        hideIfDefaultAmount == other.hideIfDefaultAmount;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, G__typename.hashCode), maxAmount.hashCode),
                        minAmount.hashCode),
                    modifierId.hashCode),
                required.hashCode),
            defaultAmount.hashCode),
        hideIfDefaultAmount.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GGetProductData_getProduct_products_sizes_modifiers')
          ..add('G__typename', G__typename)
          ..add('maxAmount', maxAmount)
          ..add('minAmount', minAmount)
          ..add('modifierId', modifierId)
          ..add('required', required)
          ..add('defaultAmount', defaultAmount)
          ..add('hideIfDefaultAmount', hideIfDefaultAmount))
        .toString();
  }
}

class GGetProductData_getProduct_products_sizes_modifiersBuilder
    implements
        Builder<GGetProductData_getProduct_products_sizes_modifiers,
            GGetProductData_getProduct_products_sizes_modifiersBuilder> {
  _$GGetProductData_getProduct_products_sizes_modifiers? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _maxAmount;
  int? get maxAmount => _$this._maxAmount;
  set maxAmount(int? maxAmount) => _$this._maxAmount = maxAmount;

  int? _minAmount;
  int? get minAmount => _$this._minAmount;
  set minAmount(int? minAmount) => _$this._minAmount = minAmount;

  String? _modifierId;
  String? get modifierId => _$this._modifierId;
  set modifierId(String? modifierId) => _$this._modifierId = modifierId;

  bool? _required;
  bool? get required => _$this._required;
  set required(bool? required) => _$this._required = required;

  int? _defaultAmount;
  int? get defaultAmount => _$this._defaultAmount;
  set defaultAmount(int? defaultAmount) =>
      _$this._defaultAmount = defaultAmount;

  bool? _hideIfDefaultAmount;
  bool? get hideIfDefaultAmount => _$this._hideIfDefaultAmount;
  set hideIfDefaultAmount(bool? hideIfDefaultAmount) =>
      _$this._hideIfDefaultAmount = hideIfDefaultAmount;

  GGetProductData_getProduct_products_sizes_modifiersBuilder() {
    GGetProductData_getProduct_products_sizes_modifiers._initializeBuilder(
        this);
  }

  GGetProductData_getProduct_products_sizes_modifiersBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _maxAmount = $v.maxAmount;
      _minAmount = $v.minAmount;
      _modifierId = $v.modifierId;
      _required = $v.required;
      _defaultAmount = $v.defaultAmount;
      _hideIfDefaultAmount = $v.hideIfDefaultAmount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetProductData_getProduct_products_sizes_modifiers other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetProductData_getProduct_products_sizes_modifiers;
  }

  @override
  void update(
      void Function(GGetProductData_getProduct_products_sizes_modifiersBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetProductData_getProduct_products_sizes_modifiers build() {
    final _$result = _$v ??
        new _$GGetProductData_getProduct_products_sizes_modifiers._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                'GGetProductData_getProduct_products_sizes_modifiers',
                'G__typename'),
            maxAmount: maxAmount,
            minAmount: minAmount,
            modifierId: BuiltValueNullFieldError.checkNotNull(
                modifierId,
                'GGetProductData_getProduct_products_sizes_modifiers',
                'modifierId'),
            required: required,
            defaultAmount: defaultAmount,
            hideIfDefaultAmount: hideIfDefaultAmount);
    replace(_$result);
    return _$result;
  }
}

class _$GGetProductData_getProduct_products_sizes_groupModifiers
    extends GGetProductData_getProduct_products_sizes_groupModifiers {
  @override
  final String G__typename;
  @override
  final int? maxAmount;
  @override
  final int? minAmount;
  @override
  final String modifierId;
  @override
  final bool? required;
  @override
  final BuiltList<
          GGetProductData_getProduct_products_sizes_groupModifiers_childModifiers>?
      childModifiers;
  @override
  final bool? childModifiersHaveMinMaxRestrictions;

  factory _$GGetProductData_getProduct_products_sizes_groupModifiers(
          [void Function(
                  GGetProductData_getProduct_products_sizes_groupModifiersBuilder)?
              updates]) =>
      (new GGetProductData_getProduct_products_sizes_groupModifiersBuilder()
            ..update(updates))
          .build();

  _$GGetProductData_getProduct_products_sizes_groupModifiers._(
      {required this.G__typename,
      this.maxAmount,
      this.minAmount,
      required this.modifierId,
      this.required,
      this.childModifiers,
      this.childModifiersHaveMinMaxRestrictions})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        'GGetProductData_getProduct_products_sizes_groupModifiers',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        modifierId,
        'GGetProductData_getProduct_products_sizes_groupModifiers',
        'modifierId');
  }

  @override
  GGetProductData_getProduct_products_sizes_groupModifiers rebuild(
          void Function(
                  GGetProductData_getProduct_products_sizes_groupModifiersBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetProductData_getProduct_products_sizes_groupModifiersBuilder toBuilder() =>
      new GGetProductData_getProduct_products_sizes_groupModifiersBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetProductData_getProduct_products_sizes_groupModifiers &&
        G__typename == other.G__typename &&
        maxAmount == other.maxAmount &&
        minAmount == other.minAmount &&
        modifierId == other.modifierId &&
        required == other.required &&
        childModifiers == other.childModifiers &&
        childModifiersHaveMinMaxRestrictions ==
            other.childModifiersHaveMinMaxRestrictions;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, G__typename.hashCode), maxAmount.hashCode),
                        minAmount.hashCode),
                    modifierId.hashCode),
                required.hashCode),
            childModifiers.hashCode),
        childModifiersHaveMinMaxRestrictions.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GGetProductData_getProduct_products_sizes_groupModifiers')
          ..add('G__typename', G__typename)
          ..add('maxAmount', maxAmount)
          ..add('minAmount', minAmount)
          ..add('modifierId', modifierId)
          ..add('required', required)
          ..add('childModifiers', childModifiers)
          ..add('childModifiersHaveMinMaxRestrictions',
              childModifiersHaveMinMaxRestrictions))
        .toString();
  }
}

class GGetProductData_getProduct_products_sizes_groupModifiersBuilder
    implements
        Builder<GGetProductData_getProduct_products_sizes_groupModifiers,
            GGetProductData_getProduct_products_sizes_groupModifiersBuilder> {
  _$GGetProductData_getProduct_products_sizes_groupModifiers? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _maxAmount;
  int? get maxAmount => _$this._maxAmount;
  set maxAmount(int? maxAmount) => _$this._maxAmount = maxAmount;

  int? _minAmount;
  int? get minAmount => _$this._minAmount;
  set minAmount(int? minAmount) => _$this._minAmount = minAmount;

  String? _modifierId;
  String? get modifierId => _$this._modifierId;
  set modifierId(String? modifierId) => _$this._modifierId = modifierId;

  bool? _required;
  bool? get required => _$this._required;
  set required(bool? required) => _$this._required = required;

  ListBuilder<
          GGetProductData_getProduct_products_sizes_groupModifiers_childModifiers>?
      _childModifiers;
  ListBuilder<
          GGetProductData_getProduct_products_sizes_groupModifiers_childModifiers>
      get childModifiers => _$this._childModifiers ??= new ListBuilder<
          GGetProductData_getProduct_products_sizes_groupModifiers_childModifiers>();
  set childModifiers(
          ListBuilder<
                  GGetProductData_getProduct_products_sizes_groupModifiers_childModifiers>?
              childModifiers) =>
      _$this._childModifiers = childModifiers;

  bool? _childModifiersHaveMinMaxRestrictions;
  bool? get childModifiersHaveMinMaxRestrictions =>
      _$this._childModifiersHaveMinMaxRestrictions;
  set childModifiersHaveMinMaxRestrictions(
          bool? childModifiersHaveMinMaxRestrictions) =>
      _$this._childModifiersHaveMinMaxRestrictions =
          childModifiersHaveMinMaxRestrictions;

  GGetProductData_getProduct_products_sizes_groupModifiersBuilder() {
    GGetProductData_getProduct_products_sizes_groupModifiers._initializeBuilder(
        this);
  }

  GGetProductData_getProduct_products_sizes_groupModifiersBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _maxAmount = $v.maxAmount;
      _minAmount = $v.minAmount;
      _modifierId = $v.modifierId;
      _required = $v.required;
      _childModifiers = $v.childModifiers?.toBuilder();
      _childModifiersHaveMinMaxRestrictions =
          $v.childModifiersHaveMinMaxRestrictions;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetProductData_getProduct_products_sizes_groupModifiers other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetProductData_getProduct_products_sizes_groupModifiers;
  }

  @override
  void update(
      void Function(
              GGetProductData_getProduct_products_sizes_groupModifiersBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetProductData_getProduct_products_sizes_groupModifiers build() {
    _$GGetProductData_getProduct_products_sizes_groupModifiers _$result;
    try {
      _$result = _$v ??
          new _$GGetProductData_getProduct_products_sizes_groupModifiers._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  'GGetProductData_getProduct_products_sizes_groupModifiers',
                  'G__typename'),
              maxAmount: maxAmount,
              minAmount: minAmount,
              modifierId: BuiltValueNullFieldError.checkNotNull(
                  modifierId,
                  'GGetProductData_getProduct_products_sizes_groupModifiers',
                  'modifierId'),
              required: required,
              childModifiers: _childModifiers?.build(),
              childModifiersHaveMinMaxRestrictions:
                  childModifiersHaveMinMaxRestrictions);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'childModifiers';
        _childModifiers?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GGetProductData_getProduct_products_sizes_groupModifiers',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetProductData_getProduct_products_sizes_groupModifiers_childModifiers
    extends GGetProductData_getProduct_products_sizes_groupModifiers_childModifiers {
  @override
  final String G__typename;
  @override
  final int? maxAmount;
  @override
  final int? minAmount;
  @override
  final String modifierId;
  @override
  final bool? required;
  @override
  final int? defaultAmount;
  @override
  final bool? hideIfDefaultAmount;

  factory _$GGetProductData_getProduct_products_sizes_groupModifiers_childModifiers(
          [void Function(
                  GGetProductData_getProduct_products_sizes_groupModifiers_childModifiersBuilder)?
              updates]) =>
      (new GGetProductData_getProduct_products_sizes_groupModifiers_childModifiersBuilder()
            ..update(updates))
          .build();

  _$GGetProductData_getProduct_products_sizes_groupModifiers_childModifiers._(
      {required this.G__typename,
      this.maxAmount,
      this.minAmount,
      required this.modifierId,
      this.required,
      this.defaultAmount,
      this.hideIfDefaultAmount})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        'GGetProductData_getProduct_products_sizes_groupModifiers_childModifiers',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        modifierId,
        'GGetProductData_getProduct_products_sizes_groupModifiers_childModifiers',
        'modifierId');
  }

  @override
  GGetProductData_getProduct_products_sizes_groupModifiers_childModifiers rebuild(
          void Function(
                  GGetProductData_getProduct_products_sizes_groupModifiers_childModifiersBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetProductData_getProduct_products_sizes_groupModifiers_childModifiersBuilder
      toBuilder() =>
          new GGetProductData_getProduct_products_sizes_groupModifiers_childModifiersBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GGetProductData_getProduct_products_sizes_groupModifiers_childModifiers &&
        G__typename == other.G__typename &&
        maxAmount == other.maxAmount &&
        minAmount == other.minAmount &&
        modifierId == other.modifierId &&
        required == other.required &&
        defaultAmount == other.defaultAmount &&
        hideIfDefaultAmount == other.hideIfDefaultAmount;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, G__typename.hashCode), maxAmount.hashCode),
                        minAmount.hashCode),
                    modifierId.hashCode),
                required.hashCode),
            defaultAmount.hashCode),
        hideIfDefaultAmount.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GGetProductData_getProduct_products_sizes_groupModifiers_childModifiers')
          ..add('G__typename', G__typename)
          ..add('maxAmount', maxAmount)
          ..add('minAmount', minAmount)
          ..add('modifierId', modifierId)
          ..add('required', required)
          ..add('defaultAmount', defaultAmount)
          ..add('hideIfDefaultAmount', hideIfDefaultAmount))
        .toString();
  }
}

class GGetProductData_getProduct_products_sizes_groupModifiers_childModifiersBuilder
    implements
        Builder<
            GGetProductData_getProduct_products_sizes_groupModifiers_childModifiers,
            GGetProductData_getProduct_products_sizes_groupModifiers_childModifiersBuilder> {
  _$GGetProductData_getProduct_products_sizes_groupModifiers_childModifiers?
      _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _maxAmount;
  int? get maxAmount => _$this._maxAmount;
  set maxAmount(int? maxAmount) => _$this._maxAmount = maxAmount;

  int? _minAmount;
  int? get minAmount => _$this._minAmount;
  set minAmount(int? minAmount) => _$this._minAmount = minAmount;

  String? _modifierId;
  String? get modifierId => _$this._modifierId;
  set modifierId(String? modifierId) => _$this._modifierId = modifierId;

  bool? _required;
  bool? get required => _$this._required;
  set required(bool? required) => _$this._required = required;

  int? _defaultAmount;
  int? get defaultAmount => _$this._defaultAmount;
  set defaultAmount(int? defaultAmount) =>
      _$this._defaultAmount = defaultAmount;

  bool? _hideIfDefaultAmount;
  bool? get hideIfDefaultAmount => _$this._hideIfDefaultAmount;
  set hideIfDefaultAmount(bool? hideIfDefaultAmount) =>
      _$this._hideIfDefaultAmount = hideIfDefaultAmount;

  GGetProductData_getProduct_products_sizes_groupModifiers_childModifiersBuilder() {
    GGetProductData_getProduct_products_sizes_groupModifiers_childModifiers
        ._initializeBuilder(this);
  }

  GGetProductData_getProduct_products_sizes_groupModifiers_childModifiersBuilder
      get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _maxAmount = $v.maxAmount;
      _minAmount = $v.minAmount;
      _modifierId = $v.modifierId;
      _required = $v.required;
      _defaultAmount = $v.defaultAmount;
      _hideIfDefaultAmount = $v.hideIfDefaultAmount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(
      GGetProductData_getProduct_products_sizes_groupModifiers_childModifiers
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GGetProductData_getProduct_products_sizes_groupModifiers_childModifiers;
  }

  @override
  void update(
      void Function(
              GGetProductData_getProduct_products_sizes_groupModifiers_childModifiersBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetProductData_getProduct_products_sizes_groupModifiers_childModifiers
      build() {
    final _$result = _$v ??
        new _$GGetProductData_getProduct_products_sizes_groupModifiers_childModifiers
                ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                'GGetProductData_getProduct_products_sizes_groupModifiers_childModifiers',
                'G__typename'),
            maxAmount: maxAmount,
            minAmount: minAmount,
            modifierId: BuiltValueNullFieldError.checkNotNull(
                modifierId,
                'GGetProductData_getProduct_products_sizes_groupModifiers_childModifiers',
                'modifierId'),
            required: required,
            defaultAmount: defaultAmount,
            hideIfDefaultAmount: hideIfDefaultAmount);
    replace(_$result);
    return _$result;
  }
}

class _$GGetProductData_getProduct_images
    extends GGetProductData_getProduct_images {
  @override
  final String G__typename;
  @override
  final String? imageId;
  @override
  final String? imageUrl;

  factory _$GGetProductData_getProduct_images(
          [void Function(GGetProductData_getProduct_imagesBuilder)? updates]) =>
      (new GGetProductData_getProduct_imagesBuilder()..update(updates)).build();

  _$GGetProductData_getProduct_images._(
      {required this.G__typename, this.imageId, this.imageUrl})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGetProductData_getProduct_images', 'G__typename');
  }

  @override
  GGetProductData_getProduct_images rebuild(
          void Function(GGetProductData_getProduct_imagesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetProductData_getProduct_imagesBuilder toBuilder() =>
      new GGetProductData_getProduct_imagesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetProductData_getProduct_images &&
        G__typename == other.G__typename &&
        imageId == other.imageId &&
        imageUrl == other.imageUrl;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, G__typename.hashCode), imageId.hashCode),
        imageUrl.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetProductData_getProduct_images')
          ..add('G__typename', G__typename)
          ..add('imageId', imageId)
          ..add('imageUrl', imageUrl))
        .toString();
  }
}

class GGetProductData_getProduct_imagesBuilder
    implements
        Builder<GGetProductData_getProduct_images,
            GGetProductData_getProduct_imagesBuilder> {
  _$GGetProductData_getProduct_images? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _imageId;
  String? get imageId => _$this._imageId;
  set imageId(String? imageId) => _$this._imageId = imageId;

  String? _imageUrl;
  String? get imageUrl => _$this._imageUrl;
  set imageUrl(String? imageUrl) => _$this._imageUrl = imageUrl;

  GGetProductData_getProduct_imagesBuilder() {
    GGetProductData_getProduct_images._initializeBuilder(this);
  }

  GGetProductData_getProduct_imagesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _imageId = $v.imageId;
      _imageUrl = $v.imageUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetProductData_getProduct_images other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetProductData_getProduct_images;
  }

  @override
  void update(
      void Function(GGetProductData_getProduct_imagesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetProductData_getProduct_images build() {
    final _$result = _$v ??
        new _$GGetProductData_getProduct_images._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                'GGetProductData_getProduct_images', 'G__typename'),
            imageId: imageId,
            imageUrl: imageUrl);
    replace(_$result);
    return _$result;
  }
}

class _$GGetProductData_getProduct_modifiers
    extends GGetProductData_getProduct_modifiers {
  @override
  final String G__typename;
  @override
  final int? maxAmount;
  @override
  final int? minAmount;
  @override
  final String modifierId;
  @override
  final bool? required;
  @override
  final int? defaultAmount;
  @override
  final bool? hideIfDefaultAmount;

  factory _$GGetProductData_getProduct_modifiers(
          [void Function(GGetProductData_getProduct_modifiersBuilder)?
              updates]) =>
      (new GGetProductData_getProduct_modifiersBuilder()..update(updates))
          .build();

  _$GGetProductData_getProduct_modifiers._(
      {required this.G__typename,
      this.maxAmount,
      this.minAmount,
      required this.modifierId,
      this.required,
      this.defaultAmount,
      this.hideIfDefaultAmount})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGetProductData_getProduct_modifiers', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        modifierId, 'GGetProductData_getProduct_modifiers', 'modifierId');
  }

  @override
  GGetProductData_getProduct_modifiers rebuild(
          void Function(GGetProductData_getProduct_modifiersBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetProductData_getProduct_modifiersBuilder toBuilder() =>
      new GGetProductData_getProduct_modifiersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetProductData_getProduct_modifiers &&
        G__typename == other.G__typename &&
        maxAmount == other.maxAmount &&
        minAmount == other.minAmount &&
        modifierId == other.modifierId &&
        required == other.required &&
        defaultAmount == other.defaultAmount &&
        hideIfDefaultAmount == other.hideIfDefaultAmount;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, G__typename.hashCode), maxAmount.hashCode),
                        minAmount.hashCode),
                    modifierId.hashCode),
                required.hashCode),
            defaultAmount.hashCode),
        hideIfDefaultAmount.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetProductData_getProduct_modifiers')
          ..add('G__typename', G__typename)
          ..add('maxAmount', maxAmount)
          ..add('minAmount', minAmount)
          ..add('modifierId', modifierId)
          ..add('required', required)
          ..add('defaultAmount', defaultAmount)
          ..add('hideIfDefaultAmount', hideIfDefaultAmount))
        .toString();
  }
}

class GGetProductData_getProduct_modifiersBuilder
    implements
        Builder<GGetProductData_getProduct_modifiers,
            GGetProductData_getProduct_modifiersBuilder> {
  _$GGetProductData_getProduct_modifiers? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _maxAmount;
  int? get maxAmount => _$this._maxAmount;
  set maxAmount(int? maxAmount) => _$this._maxAmount = maxAmount;

  int? _minAmount;
  int? get minAmount => _$this._minAmount;
  set minAmount(int? minAmount) => _$this._minAmount = minAmount;

  String? _modifierId;
  String? get modifierId => _$this._modifierId;
  set modifierId(String? modifierId) => _$this._modifierId = modifierId;

  bool? _required;
  bool? get required => _$this._required;
  set required(bool? required) => _$this._required = required;

  int? _defaultAmount;
  int? get defaultAmount => _$this._defaultAmount;
  set defaultAmount(int? defaultAmount) =>
      _$this._defaultAmount = defaultAmount;

  bool? _hideIfDefaultAmount;
  bool? get hideIfDefaultAmount => _$this._hideIfDefaultAmount;
  set hideIfDefaultAmount(bool? hideIfDefaultAmount) =>
      _$this._hideIfDefaultAmount = hideIfDefaultAmount;

  GGetProductData_getProduct_modifiersBuilder() {
    GGetProductData_getProduct_modifiers._initializeBuilder(this);
  }

  GGetProductData_getProduct_modifiersBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _maxAmount = $v.maxAmount;
      _minAmount = $v.minAmount;
      _modifierId = $v.modifierId;
      _required = $v.required;
      _defaultAmount = $v.defaultAmount;
      _hideIfDefaultAmount = $v.hideIfDefaultAmount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetProductData_getProduct_modifiers other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetProductData_getProduct_modifiers;
  }

  @override
  void update(
      void Function(GGetProductData_getProduct_modifiersBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetProductData_getProduct_modifiers build() {
    final _$result = _$v ??
        new _$GGetProductData_getProduct_modifiers._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                'GGetProductData_getProduct_modifiers', 'G__typename'),
            maxAmount: maxAmount,
            minAmount: minAmount,
            modifierId: BuiltValueNullFieldError.checkNotNull(modifierId,
                'GGetProductData_getProduct_modifiers', 'modifierId'),
            required: required,
            defaultAmount: defaultAmount,
            hideIfDefaultAmount: hideIfDefaultAmount);
    replace(_$result);
    return _$result;
  }
}

class _$GGetProductData_getProduct_groupModifiers
    extends GGetProductData_getProduct_groupModifiers {
  @override
  final String G__typename;
  @override
  final int? maxAmount;
  @override
  final int? minAmount;
  @override
  final String modifierId;
  @override
  final bool? required;
  @override
  final BuiltList<GGetProductData_getProduct_groupModifiers_childModifiers>?
      childModifiers;
  @override
  final bool? childModifiersHaveMinMaxRestrictions;

  factory _$GGetProductData_getProduct_groupModifiers(
          [void Function(GGetProductData_getProduct_groupModifiersBuilder)?
              updates]) =>
      (new GGetProductData_getProduct_groupModifiersBuilder()..update(updates))
          .build();

  _$GGetProductData_getProduct_groupModifiers._(
      {required this.G__typename,
      this.maxAmount,
      this.minAmount,
      required this.modifierId,
      this.required,
      this.childModifiers,
      this.childModifiersHaveMinMaxRestrictions})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        'GGetProductData_getProduct_groupModifiers', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        modifierId, 'GGetProductData_getProduct_groupModifiers', 'modifierId');
  }

  @override
  GGetProductData_getProduct_groupModifiers rebuild(
          void Function(GGetProductData_getProduct_groupModifiersBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetProductData_getProduct_groupModifiersBuilder toBuilder() =>
      new GGetProductData_getProduct_groupModifiersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetProductData_getProduct_groupModifiers &&
        G__typename == other.G__typename &&
        maxAmount == other.maxAmount &&
        minAmount == other.minAmount &&
        modifierId == other.modifierId &&
        required == other.required &&
        childModifiers == other.childModifiers &&
        childModifiersHaveMinMaxRestrictions ==
            other.childModifiersHaveMinMaxRestrictions;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, G__typename.hashCode), maxAmount.hashCode),
                        minAmount.hashCode),
                    modifierId.hashCode),
                required.hashCode),
            childModifiers.hashCode),
        childModifiersHaveMinMaxRestrictions.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GGetProductData_getProduct_groupModifiers')
          ..add('G__typename', G__typename)
          ..add('maxAmount', maxAmount)
          ..add('minAmount', minAmount)
          ..add('modifierId', modifierId)
          ..add('required', required)
          ..add('childModifiers', childModifiers)
          ..add('childModifiersHaveMinMaxRestrictions',
              childModifiersHaveMinMaxRestrictions))
        .toString();
  }
}

class GGetProductData_getProduct_groupModifiersBuilder
    implements
        Builder<GGetProductData_getProduct_groupModifiers,
            GGetProductData_getProduct_groupModifiersBuilder> {
  _$GGetProductData_getProduct_groupModifiers? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _maxAmount;
  int? get maxAmount => _$this._maxAmount;
  set maxAmount(int? maxAmount) => _$this._maxAmount = maxAmount;

  int? _minAmount;
  int? get minAmount => _$this._minAmount;
  set minAmount(int? minAmount) => _$this._minAmount = minAmount;

  String? _modifierId;
  String? get modifierId => _$this._modifierId;
  set modifierId(String? modifierId) => _$this._modifierId = modifierId;

  bool? _required;
  bool? get required => _$this._required;
  set required(bool? required) => _$this._required = required;

  ListBuilder<GGetProductData_getProduct_groupModifiers_childModifiers>?
      _childModifiers;
  ListBuilder<GGetProductData_getProduct_groupModifiers_childModifiers>
      get childModifiers => _$this._childModifiers ??= new ListBuilder<
          GGetProductData_getProduct_groupModifiers_childModifiers>();
  set childModifiers(
          ListBuilder<GGetProductData_getProduct_groupModifiers_childModifiers>?
              childModifiers) =>
      _$this._childModifiers = childModifiers;

  bool? _childModifiersHaveMinMaxRestrictions;
  bool? get childModifiersHaveMinMaxRestrictions =>
      _$this._childModifiersHaveMinMaxRestrictions;
  set childModifiersHaveMinMaxRestrictions(
          bool? childModifiersHaveMinMaxRestrictions) =>
      _$this._childModifiersHaveMinMaxRestrictions =
          childModifiersHaveMinMaxRestrictions;

  GGetProductData_getProduct_groupModifiersBuilder() {
    GGetProductData_getProduct_groupModifiers._initializeBuilder(this);
  }

  GGetProductData_getProduct_groupModifiersBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _maxAmount = $v.maxAmount;
      _minAmount = $v.minAmount;
      _modifierId = $v.modifierId;
      _required = $v.required;
      _childModifiers = $v.childModifiers?.toBuilder();
      _childModifiersHaveMinMaxRestrictions =
          $v.childModifiersHaveMinMaxRestrictions;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetProductData_getProduct_groupModifiers other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetProductData_getProduct_groupModifiers;
  }

  @override
  void update(
      void Function(GGetProductData_getProduct_groupModifiersBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetProductData_getProduct_groupModifiers build() {
    _$GGetProductData_getProduct_groupModifiers _$result;
    try {
      _$result = _$v ??
          new _$GGetProductData_getProduct_groupModifiers._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  'GGetProductData_getProduct_groupModifiers', 'G__typename'),
              maxAmount: maxAmount,
              minAmount: minAmount,
              modifierId: BuiltValueNullFieldError.checkNotNull(modifierId,
                  'GGetProductData_getProduct_groupModifiers', 'modifierId'),
              required: required,
              childModifiers: _childModifiers?.build(),
              childModifiersHaveMinMaxRestrictions:
                  childModifiersHaveMinMaxRestrictions);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'childModifiers';
        _childModifiers?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GGetProductData_getProduct_groupModifiers',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetProductData_getProduct_groupModifiers_childModifiers
    extends GGetProductData_getProduct_groupModifiers_childModifiers {
  @override
  final String G__typename;
  @override
  final int? maxAmount;
  @override
  final int? minAmount;
  @override
  final String modifierId;
  @override
  final bool? required;
  @override
  final int? defaultAmount;
  @override
  final bool? hideIfDefaultAmount;

  factory _$GGetProductData_getProduct_groupModifiers_childModifiers(
          [void Function(
                  GGetProductData_getProduct_groupModifiers_childModifiersBuilder)?
              updates]) =>
      (new GGetProductData_getProduct_groupModifiers_childModifiersBuilder()
            ..update(updates))
          .build();

  _$GGetProductData_getProduct_groupModifiers_childModifiers._(
      {required this.G__typename,
      this.maxAmount,
      this.minAmount,
      required this.modifierId,
      this.required,
      this.defaultAmount,
      this.hideIfDefaultAmount})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        'GGetProductData_getProduct_groupModifiers_childModifiers',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        modifierId,
        'GGetProductData_getProduct_groupModifiers_childModifiers',
        'modifierId');
  }

  @override
  GGetProductData_getProduct_groupModifiers_childModifiers rebuild(
          void Function(
                  GGetProductData_getProduct_groupModifiers_childModifiersBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetProductData_getProduct_groupModifiers_childModifiersBuilder toBuilder() =>
      new GGetProductData_getProduct_groupModifiers_childModifiersBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetProductData_getProduct_groupModifiers_childModifiers &&
        G__typename == other.G__typename &&
        maxAmount == other.maxAmount &&
        minAmount == other.minAmount &&
        modifierId == other.modifierId &&
        required == other.required &&
        defaultAmount == other.defaultAmount &&
        hideIfDefaultAmount == other.hideIfDefaultAmount;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, G__typename.hashCode), maxAmount.hashCode),
                        minAmount.hashCode),
                    modifierId.hashCode),
                required.hashCode),
            defaultAmount.hashCode),
        hideIfDefaultAmount.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GGetProductData_getProduct_groupModifiers_childModifiers')
          ..add('G__typename', G__typename)
          ..add('maxAmount', maxAmount)
          ..add('minAmount', minAmount)
          ..add('modifierId', modifierId)
          ..add('required', required)
          ..add('defaultAmount', defaultAmount)
          ..add('hideIfDefaultAmount', hideIfDefaultAmount))
        .toString();
  }
}

class GGetProductData_getProduct_groupModifiers_childModifiersBuilder
    implements
        Builder<GGetProductData_getProduct_groupModifiers_childModifiers,
            GGetProductData_getProduct_groupModifiers_childModifiersBuilder> {
  _$GGetProductData_getProduct_groupModifiers_childModifiers? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _maxAmount;
  int? get maxAmount => _$this._maxAmount;
  set maxAmount(int? maxAmount) => _$this._maxAmount = maxAmount;

  int? _minAmount;
  int? get minAmount => _$this._minAmount;
  set minAmount(int? minAmount) => _$this._minAmount = minAmount;

  String? _modifierId;
  String? get modifierId => _$this._modifierId;
  set modifierId(String? modifierId) => _$this._modifierId = modifierId;

  bool? _required;
  bool? get required => _$this._required;
  set required(bool? required) => _$this._required = required;

  int? _defaultAmount;
  int? get defaultAmount => _$this._defaultAmount;
  set defaultAmount(int? defaultAmount) =>
      _$this._defaultAmount = defaultAmount;

  bool? _hideIfDefaultAmount;
  bool? get hideIfDefaultAmount => _$this._hideIfDefaultAmount;
  set hideIfDefaultAmount(bool? hideIfDefaultAmount) =>
      _$this._hideIfDefaultAmount = hideIfDefaultAmount;

  GGetProductData_getProduct_groupModifiers_childModifiersBuilder() {
    GGetProductData_getProduct_groupModifiers_childModifiers._initializeBuilder(
        this);
  }

  GGetProductData_getProduct_groupModifiers_childModifiersBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _maxAmount = $v.maxAmount;
      _minAmount = $v.minAmount;
      _modifierId = $v.modifierId;
      _required = $v.required;
      _defaultAmount = $v.defaultAmount;
      _hideIfDefaultAmount = $v.hideIfDefaultAmount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetProductData_getProduct_groupModifiers_childModifiers other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetProductData_getProduct_groupModifiers_childModifiers;
  }

  @override
  void update(
      void Function(
              GGetProductData_getProduct_groupModifiers_childModifiersBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetProductData_getProduct_groupModifiers_childModifiers build() {
    final _$result = _$v ??
        new _$GGetProductData_getProduct_groupModifiers_childModifiers._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                'GGetProductData_getProduct_groupModifiers_childModifiers',
                'G__typename'),
            maxAmount: maxAmount,
            minAmount: minAmount,
            modifierId: BuiltValueNullFieldError.checkNotNull(
                modifierId,
                'GGetProductData_getProduct_groupModifiers_childModifiers',
                'modifierId'),
            required: required,
            defaultAmount: defaultAmount,
            hideIfDefaultAmount: hideIfDefaultAmount);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
