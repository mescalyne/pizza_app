// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cartItem_modifier_fragment.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GCartItemModifierFragmentData>
    _$gCartItemModifierFragmentDataSerializer =
    new _$GCartItemModifierFragmentDataSerializer();
Serializer<GCartItemModifierFragmentData_product>
    _$gCartItemModifierFragmentDataProductSerializer =
    new _$GCartItemModifierFragmentData_productSerializer();
Serializer<GCartItemModifierFragmentData_product_parentGroup>
    _$gCartItemModifierFragmentDataProductParentGroupSerializer =
    new _$GCartItemModifierFragmentData_product_parentGroupSerializer();
Serializer<GCartItemModifierFragmentData_product_group>
    _$gCartItemModifierFragmentDataProductGroupSerializer =
    new _$GCartItemModifierFragmentData_product_groupSerializer();
Serializer<GCartItemModifierFragmentData_product_category>
    _$gCartItemModifierFragmentDataProductCategorySerializer =
    new _$GCartItemModifierFragmentData_product_categorySerializer();
Serializer<GCartItemModifierFragmentData_product_products_sizes>
    _$gCartItemModifierFragmentDataProductProductsSizesSerializer =
    new _$GCartItemModifierFragmentData_product_products_sizesSerializer();
Serializer<GCartItemModifierFragmentData_product_products_sizes_parentGroup>
    _$gCartItemModifierFragmentDataProductProductsSizesParentGroupSerializer =
    new _$GCartItemModifierFragmentData_product_products_sizes_parentGroupSerializer();
Serializer<GCartItemModifierFragmentData_product_products_sizes_images>
    _$gCartItemModifierFragmentDataProductProductsSizesImagesSerializer =
    new _$GCartItemModifierFragmentData_product_products_sizes_imagesSerializer();
Serializer<GCartItemModifierFragmentData_product_products_sizes_modifiers>
    _$gCartItemModifierFragmentDataProductProductsSizesModifiersSerializer =
    new _$GCartItemModifierFragmentData_product_products_sizes_modifiersSerializer();
Serializer<GCartItemModifierFragmentData_product_products_sizes_groupModifiers>
    _$gCartItemModifierFragmentDataProductProductsSizesGroupModifiersSerializer =
    new _$GCartItemModifierFragmentData_product_products_sizes_groupModifiersSerializer();
Serializer<
        GCartItemModifierFragmentData_product_products_sizes_groupModifiers_childModifiers>
    _$gCartItemModifierFragmentDataProductProductsSizesGroupModifiersChildModifiersSerializer =
    new _$GCartItemModifierFragmentData_product_products_sizes_groupModifiers_childModifiersSerializer();
Serializer<GCartItemModifierFragmentData_product_images>
    _$gCartItemModifierFragmentDataProductImagesSerializer =
    new _$GCartItemModifierFragmentData_product_imagesSerializer();
Serializer<GCartItemModifierFragmentData_product_modifiers>
    _$gCartItemModifierFragmentDataProductModifiersSerializer =
    new _$GCartItemModifierFragmentData_product_modifiersSerializer();
Serializer<GCartItemModifierFragmentData_product_groupModifiers>
    _$gCartItemModifierFragmentDataProductGroupModifiersSerializer =
    new _$GCartItemModifierFragmentData_product_groupModifiersSerializer();
Serializer<GCartItemModifierFragmentData_product_groupModifiers_childModifiers>
    _$gCartItemModifierFragmentDataProductGroupModifiersChildModifiersSerializer =
    new _$GCartItemModifierFragmentData_product_groupModifiers_childModifiersSerializer();

class _$GCartItemModifierFragmentDataSerializer
    implements StructuredSerializer<GCartItemModifierFragmentData> {
  @override
  final Iterable<Type> types = const [
    GCartItemModifierFragmentData,
    _$GCartItemModifierFragmentData
  ];
  @override
  final String wireName = 'GCartItemModifierFragmentData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCartItemModifierFragmentData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'type',
      serializers.serialize(object.type, specifiedType: const FullType(String)),
      'product_id',
      serializers.serialize(object.product_id,
          specifiedType: const FullType(String)),
      'product',
      serializers.serialize(object.product,
          specifiedType: const FullType(GCartItemModifierFragmentData_product)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'amount',
      serializers.serialize(object.amount, specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.group_id;
    if (value != null) {
      result
        ..add('group_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.group_name;
    if (value != null) {
      result
        ..add('group_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GCartItemModifierFragmentData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCartItemModifierFragmentDataBuilder();

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
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'product_id':
          result.product_id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'product':
          result.product.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GCartItemModifierFragmentData_product))!
              as GCartItemModifierFragmentData_product);
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'amount':
          result.amount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'group_id':
          result.group_id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'group_name':
          result.group_name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GCartItemModifierFragmentData_productSerializer
    implements StructuredSerializer<GCartItemModifierFragmentData_product> {
  @override
  final Iterable<Type> types = const [
    GCartItemModifierFragmentData_product,
    _$GCartItemModifierFragmentData_product
  ];
  @override
  final String wireName = 'GCartItemModifierFragmentData_product';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCartItemModifierFragmentData_product object,
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
            specifiedType: const FullType(
                GCartItemModifierFragmentData_product_parentGroup)));
    }
    value = object.group;
    if (value != null) {
      result
        ..add('group')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GCartItemModifierFragmentData_product_group)));
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
            specifiedType: const FullType(
                GCartItemModifierFragmentData_product_category)));
    }
    value = object.products_sizes;
    if (value != null) {
      result
        ..add('products_sizes')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  GCartItemModifierFragmentData_product_products_sizes)
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
            specifiedType: const FullType(BuiltList, const [
              const FullType(GCartItemModifierFragmentData_product_images)
            ])));
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
            specifiedType: const FullType(BuiltList, const [
              const FullType(GCartItemModifierFragmentData_product_modifiers)
            ])));
    }
    value = object.groupModifiers;
    if (value != null) {
      result
        ..add('groupModifiers')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  GCartItemModifierFragmentData_product_groupModifiers)
            ])));
    }
    return result;
  }

  @override
  GCartItemModifierFragmentData_product deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCartItemModifierFragmentData_productBuilder();

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
                  specifiedType: const FullType(
                      GCartItemModifierFragmentData_product_parentGroup))!
              as GCartItemModifierFragmentData_product_parentGroup);
          break;
        case 'group':
          result.group.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GCartItemModifierFragmentData_product_group))!
              as GCartItemModifierFragmentData_product_group);
          break;
        case 'productCategoryId':
          result.productCategoryId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'category':
          result.category.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GCartItemModifierFragmentData_product_category))!
              as GCartItemModifierFragmentData_product_category);
          break;
        case 'products_sizes':
          result.products_sizes.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    GCartItemModifierFragmentData_product_products_sizes)
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
                const FullType(GCartItemModifierFragmentData_product_images)
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
                const FullType(GCartItemModifierFragmentData_product_modifiers)
              ]))! as BuiltList<Object?>);
          break;
        case 'groupModifiers':
          result.groupModifiers.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    GCartItemModifierFragmentData_product_groupModifiers)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GCartItemModifierFragmentData_product_parentGroupSerializer
    implements
        StructuredSerializer<
            GCartItemModifierFragmentData_product_parentGroup> {
  @override
  final Iterable<Type> types = const [
    GCartItemModifierFragmentData_product_parentGroup,
    _$GCartItemModifierFragmentData_product_parentGroup
  ];
  @override
  final String wireName = 'GCartItemModifierFragmentData_product_parentGroup';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GCartItemModifierFragmentData_product_parentGroup object,
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
  GCartItemModifierFragmentData_product_parentGroup deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GCartItemModifierFragmentData_product_parentGroupBuilder();

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

class _$GCartItemModifierFragmentData_product_groupSerializer
    implements
        StructuredSerializer<GCartItemModifierFragmentData_product_group> {
  @override
  final Iterable<Type> types = const [
    GCartItemModifierFragmentData_product_group,
    _$GCartItemModifierFragmentData_product_group
  ];
  @override
  final String wireName = 'GCartItemModifierFragmentData_product_group';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GCartItemModifierFragmentData_product_group object,
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
  GCartItemModifierFragmentData_product_group deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCartItemModifierFragmentData_product_groupBuilder();

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

class _$GCartItemModifierFragmentData_product_categorySerializer
    implements
        StructuredSerializer<GCartItemModifierFragmentData_product_category> {
  @override
  final Iterable<Type> types = const [
    GCartItemModifierFragmentData_product_category,
    _$GCartItemModifierFragmentData_product_category
  ];
  @override
  final String wireName = 'GCartItemModifierFragmentData_product_category';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GCartItemModifierFragmentData_product_category object,
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
  GCartItemModifierFragmentData_product_category deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCartItemModifierFragmentData_product_categoryBuilder();

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

class _$GCartItemModifierFragmentData_product_products_sizesSerializer
    implements
        StructuredSerializer<
            GCartItemModifierFragmentData_product_products_sizes> {
  @override
  final Iterable<Type> types = const [
    GCartItemModifierFragmentData_product_products_sizes,
    _$GCartItemModifierFragmentData_product_products_sizes
  ];
  @override
  final String wireName =
      'GCartItemModifierFragmentData_product_products_sizes';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GCartItemModifierFragmentData_product_products_sizes object,
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
                GCartItemModifierFragmentData_product_products_sizes_parentGroup)));
    }
    value = object.images;
    if (value != null) {
      result
        ..add('images')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  GCartItemModifierFragmentData_product_products_sizes_images)
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
                  GCartItemModifierFragmentData_product_products_sizes_modifiers)
            ])));
    }
    value = object.groupModifiers;
    if (value != null) {
      result
        ..add('groupModifiers')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  GCartItemModifierFragmentData_product_products_sizes_groupModifiers)
            ])));
    }
    return result;
  }

  @override
  GCartItemModifierFragmentData_product_products_sizes deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GCartItemModifierFragmentData_product_products_sizesBuilder();

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
                      GCartItemModifierFragmentData_product_products_sizes_parentGroup))!
              as GCartItemModifierFragmentData_product_products_sizes_parentGroup);
          break;
        case 'images':
          result.images.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    GCartItemModifierFragmentData_product_products_sizes_images)
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
                    GCartItemModifierFragmentData_product_products_sizes_modifiers)
              ]))! as BuiltList<Object?>);
          break;
        case 'groupModifiers':
          result.groupModifiers.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    GCartItemModifierFragmentData_product_products_sizes_groupModifiers)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GCartItemModifierFragmentData_product_products_sizes_parentGroupSerializer
    implements
        StructuredSerializer<
            GCartItemModifierFragmentData_product_products_sizes_parentGroup> {
  @override
  final Iterable<Type> types = const [
    GCartItemModifierFragmentData_product_products_sizes_parentGroup,
    _$GCartItemModifierFragmentData_product_products_sizes_parentGroup
  ];
  @override
  final String wireName =
      'GCartItemModifierFragmentData_product_products_sizes_parentGroup';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GCartItemModifierFragmentData_product_products_sizes_parentGroup object,
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
  GCartItemModifierFragmentData_product_products_sizes_parentGroup deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GCartItemModifierFragmentData_product_products_sizes_parentGroupBuilder();

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

class _$GCartItemModifierFragmentData_product_products_sizes_imagesSerializer
    implements
        StructuredSerializer<
            GCartItemModifierFragmentData_product_products_sizes_images> {
  @override
  final Iterable<Type> types = const [
    GCartItemModifierFragmentData_product_products_sizes_images,
    _$GCartItemModifierFragmentData_product_products_sizes_images
  ];
  @override
  final String wireName =
      'GCartItemModifierFragmentData_product_products_sizes_images';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GCartItemModifierFragmentData_product_products_sizes_images object,
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
  GCartItemModifierFragmentData_product_products_sizes_images deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GCartItemModifierFragmentData_product_products_sizes_imagesBuilder();

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

class _$GCartItemModifierFragmentData_product_products_sizes_modifiersSerializer
    implements
        StructuredSerializer<
            GCartItemModifierFragmentData_product_products_sizes_modifiers> {
  @override
  final Iterable<Type> types = const [
    GCartItemModifierFragmentData_product_products_sizes_modifiers,
    _$GCartItemModifierFragmentData_product_products_sizes_modifiers
  ];
  @override
  final String wireName =
      'GCartItemModifierFragmentData_product_products_sizes_modifiers';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GCartItemModifierFragmentData_product_products_sizes_modifiers object,
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
  GCartItemModifierFragmentData_product_products_sizes_modifiers deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GCartItemModifierFragmentData_product_products_sizes_modifiersBuilder();

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

class _$GCartItemModifierFragmentData_product_products_sizes_groupModifiersSerializer
    implements
        StructuredSerializer<
            GCartItemModifierFragmentData_product_products_sizes_groupModifiers> {
  @override
  final Iterable<Type> types = const [
    GCartItemModifierFragmentData_product_products_sizes_groupModifiers,
    _$GCartItemModifierFragmentData_product_products_sizes_groupModifiers
  ];
  @override
  final String wireName =
      'GCartItemModifierFragmentData_product_products_sizes_groupModifiers';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      GCartItemModifierFragmentData_product_products_sizes_groupModifiers
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
    value = object.childModifiers;
    if (value != null) {
      result
        ..add('childModifiers')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  GCartItemModifierFragmentData_product_products_sizes_groupModifiers_childModifiers)
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
  GCartItemModifierFragmentData_product_products_sizes_groupModifiers
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GCartItemModifierFragmentData_product_products_sizes_groupModifiersBuilder();

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
                    GCartItemModifierFragmentData_product_products_sizes_groupModifiers_childModifiers)
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

class _$GCartItemModifierFragmentData_product_products_sizes_groupModifiers_childModifiersSerializer
    implements
        StructuredSerializer<
            GCartItemModifierFragmentData_product_products_sizes_groupModifiers_childModifiers> {
  @override
  final Iterable<Type> types = const [
    GCartItemModifierFragmentData_product_products_sizes_groupModifiers_childModifiers,
    _$GCartItemModifierFragmentData_product_products_sizes_groupModifiers_childModifiers
  ];
  @override
  final String wireName =
      'GCartItemModifierFragmentData_product_products_sizes_groupModifiers_childModifiers';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      GCartItemModifierFragmentData_product_products_sizes_groupModifiers_childModifiers
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
  GCartItemModifierFragmentData_product_products_sizes_groupModifiers_childModifiers
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GCartItemModifierFragmentData_product_products_sizes_groupModifiers_childModifiersBuilder();

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

class _$GCartItemModifierFragmentData_product_imagesSerializer
    implements
        StructuredSerializer<GCartItemModifierFragmentData_product_images> {
  @override
  final Iterable<Type> types = const [
    GCartItemModifierFragmentData_product_images,
    _$GCartItemModifierFragmentData_product_images
  ];
  @override
  final String wireName = 'GCartItemModifierFragmentData_product_images';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GCartItemModifierFragmentData_product_images object,
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
  GCartItemModifierFragmentData_product_images deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCartItemModifierFragmentData_product_imagesBuilder();

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

class _$GCartItemModifierFragmentData_product_modifiersSerializer
    implements
        StructuredSerializer<GCartItemModifierFragmentData_product_modifiers> {
  @override
  final Iterable<Type> types = const [
    GCartItemModifierFragmentData_product_modifiers,
    _$GCartItemModifierFragmentData_product_modifiers
  ];
  @override
  final String wireName = 'GCartItemModifierFragmentData_product_modifiers';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GCartItemModifierFragmentData_product_modifiers object,
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
  GCartItemModifierFragmentData_product_modifiers deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCartItemModifierFragmentData_product_modifiersBuilder();

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

class _$GCartItemModifierFragmentData_product_groupModifiersSerializer
    implements
        StructuredSerializer<
            GCartItemModifierFragmentData_product_groupModifiers> {
  @override
  final Iterable<Type> types = const [
    GCartItemModifierFragmentData_product_groupModifiers,
    _$GCartItemModifierFragmentData_product_groupModifiers
  ];
  @override
  final String wireName =
      'GCartItemModifierFragmentData_product_groupModifiers';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GCartItemModifierFragmentData_product_groupModifiers object,
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
                  GCartItemModifierFragmentData_product_groupModifiers_childModifiers)
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
  GCartItemModifierFragmentData_product_groupModifiers deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GCartItemModifierFragmentData_product_groupModifiersBuilder();

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
                    GCartItemModifierFragmentData_product_groupModifiers_childModifiers)
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

class _$GCartItemModifierFragmentData_product_groupModifiers_childModifiersSerializer
    implements
        StructuredSerializer<
            GCartItemModifierFragmentData_product_groupModifiers_childModifiers> {
  @override
  final Iterable<Type> types = const [
    GCartItemModifierFragmentData_product_groupModifiers_childModifiers,
    _$GCartItemModifierFragmentData_product_groupModifiers_childModifiers
  ];
  @override
  final String wireName =
      'GCartItemModifierFragmentData_product_groupModifiers_childModifiers';

  @override
  Iterable<Object?> serialize(
      Serializers serializers,
      GCartItemModifierFragmentData_product_groupModifiers_childModifiers
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
  GCartItemModifierFragmentData_product_groupModifiers_childModifiers
      deserialize(Serializers serializers, Iterable<Object?> serialized,
          {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GCartItemModifierFragmentData_product_groupModifiers_childModifiersBuilder();

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

class _$GCartItemModifierFragmentData extends GCartItemModifierFragmentData {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String type;
  @override
  final String product_id;
  @override
  final GCartItemModifierFragmentData_product product;
  @override
  final String name;
  @override
  final int amount;
  @override
  final String? group_id;
  @override
  final String? group_name;

  factory _$GCartItemModifierFragmentData(
          [void Function(GCartItemModifierFragmentDataBuilder)? updates]) =>
      (new GCartItemModifierFragmentDataBuilder()..update(updates)).build();

  _$GCartItemModifierFragmentData._(
      {required this.G__typename,
      required this.id,
      required this.type,
      required this.product_id,
      required this.product,
      required this.name,
      required this.amount,
      this.group_id,
      this.group_name})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GCartItemModifierFragmentData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GCartItemModifierFragmentData', 'id');
    BuiltValueNullFieldError.checkNotNull(
        type, 'GCartItemModifierFragmentData', 'type');
    BuiltValueNullFieldError.checkNotNull(
        product_id, 'GCartItemModifierFragmentData', 'product_id');
    BuiltValueNullFieldError.checkNotNull(
        product, 'GCartItemModifierFragmentData', 'product');
    BuiltValueNullFieldError.checkNotNull(
        name, 'GCartItemModifierFragmentData', 'name');
    BuiltValueNullFieldError.checkNotNull(
        amount, 'GCartItemModifierFragmentData', 'amount');
  }

  @override
  GCartItemModifierFragmentData rebuild(
          void Function(GCartItemModifierFragmentDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCartItemModifierFragmentDataBuilder toBuilder() =>
      new GCartItemModifierFragmentDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCartItemModifierFragmentData &&
        G__typename == other.G__typename &&
        id == other.id &&
        type == other.type &&
        product_id == other.product_id &&
        product == other.product &&
        name == other.name &&
        amount == other.amount &&
        group_id == other.group_id &&
        group_name == other.group_name;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, G__typename.hashCode), id.hashCode),
                                type.hashCode),
                            product_id.hashCode),
                        product.hashCode),
                    name.hashCode),
                amount.hashCode),
            group_id.hashCode),
        group_name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GCartItemModifierFragmentData')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('type', type)
          ..add('product_id', product_id)
          ..add('product', product)
          ..add('name', name)
          ..add('amount', amount)
          ..add('group_id', group_id)
          ..add('group_name', group_name))
        .toString();
  }
}

class GCartItemModifierFragmentDataBuilder
    implements
        Builder<GCartItemModifierFragmentData,
            GCartItemModifierFragmentDataBuilder> {
  _$GCartItemModifierFragmentData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _product_id;
  String? get product_id => _$this._product_id;
  set product_id(String? product_id) => _$this._product_id = product_id;

  GCartItemModifierFragmentData_productBuilder? _product;
  GCartItemModifierFragmentData_productBuilder get product =>
      _$this._product ??= new GCartItemModifierFragmentData_productBuilder();
  set product(GCartItemModifierFragmentData_productBuilder? product) =>
      _$this._product = product;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  int? _amount;
  int? get amount => _$this._amount;
  set amount(int? amount) => _$this._amount = amount;

  String? _group_id;
  String? get group_id => _$this._group_id;
  set group_id(String? group_id) => _$this._group_id = group_id;

  String? _group_name;
  String? get group_name => _$this._group_name;
  set group_name(String? group_name) => _$this._group_name = group_name;

  GCartItemModifierFragmentDataBuilder() {
    GCartItemModifierFragmentData._initializeBuilder(this);
  }

  GCartItemModifierFragmentDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _type = $v.type;
      _product_id = $v.product_id;
      _product = $v.product.toBuilder();
      _name = $v.name;
      _amount = $v.amount;
      _group_id = $v.group_id;
      _group_name = $v.group_name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCartItemModifierFragmentData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCartItemModifierFragmentData;
  }

  @override
  void update(void Function(GCartItemModifierFragmentDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GCartItemModifierFragmentData build() {
    _$GCartItemModifierFragmentData _$result;
    try {
      _$result = _$v ??
          new _$GCartItemModifierFragmentData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GCartItemModifierFragmentData', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, 'GCartItemModifierFragmentData', 'id'),
              type: BuiltValueNullFieldError.checkNotNull(
                  type, 'GCartItemModifierFragmentData', 'type'),
              product_id: BuiltValueNullFieldError.checkNotNull(
                  product_id, 'GCartItemModifierFragmentData', 'product_id'),
              product: product.build(),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, 'GCartItemModifierFragmentData', 'name'),
              amount: BuiltValueNullFieldError.checkNotNull(
                  amount, 'GCartItemModifierFragmentData', 'amount'),
              group_id: group_id,
              group_name: group_name);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'product';
        product.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GCartItemModifierFragmentData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GCartItemModifierFragmentData_product
    extends GCartItemModifierFragmentData_product {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String? parentGroupId;
  @override
  final String? groupId;
  @override
  final GCartItemModifierFragmentData_product_parentGroup? parentGroup;
  @override
  final GCartItemModifierFragmentData_product_group? group;
  @override
  final String? productCategoryId;
  @override
  final GCartItemModifierFragmentData_product_category? category;
  @override
  final BuiltList<GCartItemModifierFragmentData_product_products_sizes>?
      products_sizes;
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
  final BuiltList<GCartItemModifierFragmentData_product_images>? images;
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
  final BuiltList<GCartItemModifierFragmentData_product_modifiers>? modifiers;
  @override
  final BuiltList<GCartItemModifierFragmentData_product_groupModifiers>?
      groupModifiers;

  factory _$GCartItemModifierFragmentData_product(
          [void Function(GCartItemModifierFragmentData_productBuilder)?
              updates]) =>
      (new GCartItemModifierFragmentData_productBuilder()..update(updates))
          .build();

  _$GCartItemModifierFragmentData_product._(
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
        G__typename, 'GCartItemModifierFragmentData_product', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GCartItemModifierFragmentData_product', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, 'GCartItemModifierFragmentData_product', 'name');
    BuiltValueNullFieldError.checkNotNull(
        code, 'GCartItemModifierFragmentData_product', 'code');
  }

  @override
  GCartItemModifierFragmentData_product rebuild(
          void Function(GCartItemModifierFragmentData_productBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCartItemModifierFragmentData_productBuilder toBuilder() =>
      new GCartItemModifierFragmentData_productBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCartItemModifierFragmentData_product &&
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
    return (newBuiltValueToStringHelper('GCartItemModifierFragmentData_product')
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

class GCartItemModifierFragmentData_productBuilder
    implements
        Builder<GCartItemModifierFragmentData_product,
            GCartItemModifierFragmentData_productBuilder> {
  _$GCartItemModifierFragmentData_product? _$v;

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

  GCartItemModifierFragmentData_product_parentGroupBuilder? _parentGroup;
  GCartItemModifierFragmentData_product_parentGroupBuilder get parentGroup =>
      _$this._parentGroup ??=
          new GCartItemModifierFragmentData_product_parentGroupBuilder();
  set parentGroup(
          GCartItemModifierFragmentData_product_parentGroupBuilder?
              parentGroup) =>
      _$this._parentGroup = parentGroup;

  GCartItemModifierFragmentData_product_groupBuilder? _group;
  GCartItemModifierFragmentData_product_groupBuilder get group =>
      _$this._group ??=
          new GCartItemModifierFragmentData_product_groupBuilder();
  set group(GCartItemModifierFragmentData_product_groupBuilder? group) =>
      _$this._group = group;

  String? _productCategoryId;
  String? get productCategoryId => _$this._productCategoryId;
  set productCategoryId(String? productCategoryId) =>
      _$this._productCategoryId = productCategoryId;

  GCartItemModifierFragmentData_product_categoryBuilder? _category;
  GCartItemModifierFragmentData_product_categoryBuilder get category =>
      _$this._category ??=
          new GCartItemModifierFragmentData_product_categoryBuilder();
  set category(
          GCartItemModifierFragmentData_product_categoryBuilder? category) =>
      _$this._category = category;

  ListBuilder<GCartItemModifierFragmentData_product_products_sizes>?
      _products_sizes;
  ListBuilder<GCartItemModifierFragmentData_product_products_sizes>
      get products_sizes => _$this._products_sizes ??= new ListBuilder<
          GCartItemModifierFragmentData_product_products_sizes>();
  set products_sizes(
          ListBuilder<GCartItemModifierFragmentData_product_products_sizes>?
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

  ListBuilder<GCartItemModifierFragmentData_product_images>? _images;
  ListBuilder<GCartItemModifierFragmentData_product_images> get images =>
      _$this._images ??=
          new ListBuilder<GCartItemModifierFragmentData_product_images>();
  set images(
          ListBuilder<GCartItemModifierFragmentData_product_images>? images) =>
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

  ListBuilder<GCartItemModifierFragmentData_product_modifiers>? _modifiers;
  ListBuilder<GCartItemModifierFragmentData_product_modifiers> get modifiers =>
      _$this._modifiers ??=
          new ListBuilder<GCartItemModifierFragmentData_product_modifiers>();
  set modifiers(
          ListBuilder<GCartItemModifierFragmentData_product_modifiers>?
              modifiers) =>
      _$this._modifiers = modifiers;

  ListBuilder<GCartItemModifierFragmentData_product_groupModifiers>?
      _groupModifiers;
  ListBuilder<GCartItemModifierFragmentData_product_groupModifiers>
      get groupModifiers => _$this._groupModifiers ??= new ListBuilder<
          GCartItemModifierFragmentData_product_groupModifiers>();
  set groupModifiers(
          ListBuilder<GCartItemModifierFragmentData_product_groupModifiers>?
              groupModifiers) =>
      _$this._groupModifiers = groupModifiers;

  GCartItemModifierFragmentData_productBuilder() {
    GCartItemModifierFragmentData_product._initializeBuilder(this);
  }

  GCartItemModifierFragmentData_productBuilder get _$this {
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
  void replace(GCartItemModifierFragmentData_product other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCartItemModifierFragmentData_product;
  }

  @override
  void update(
      void Function(GCartItemModifierFragmentData_productBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GCartItemModifierFragmentData_product build() {
    _$GCartItemModifierFragmentData_product _$result;
    try {
      _$result = _$v ??
          new _$GCartItemModifierFragmentData_product._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  'GCartItemModifierFragmentData_product', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, 'GCartItemModifierFragmentData_product', 'id'),
              parentGroupId: parentGroupId,
              groupId: groupId,
              parentGroup: _parentGroup?.build(),
              group: _group?.build(),
              productCategoryId: productCategoryId,
              category: _category?.build(),
              products_sizes: _products_sizes?.build(),
              additionalInfo: additionalInfo,
              name: BuiltValueNullFieldError.checkNotNull(
                  name, 'GCartItemModifierFragmentData_product', 'name'),
              code: BuiltValueNullFieldError.checkNotNull(
                  code, 'GCartItemModifierFragmentData_product', 'code'),
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
            'GCartItemModifierFragmentData_product',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GCartItemModifierFragmentData_product_parentGroup
    extends GCartItemModifierFragmentData_product_parentGroup {
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

  factory _$GCartItemModifierFragmentData_product_parentGroup(
          [void Function(
                  GCartItemModifierFragmentData_product_parentGroupBuilder)?
              updates]) =>
      (new GCartItemModifierFragmentData_product_parentGroupBuilder()
            ..update(updates))
          .build();

  _$GCartItemModifierFragmentData_product_parentGroup._(
      {required this.G__typename,
      required this.id,
      this.parentGroup,
      this.additionalInfo,
      required this.name,
      this.description})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        'GCartItemModifierFragmentData_product_parentGroup', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GCartItemModifierFragmentData_product_parentGroup', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, 'GCartItemModifierFragmentData_product_parentGroup', 'name');
  }

  @override
  GCartItemModifierFragmentData_product_parentGroup rebuild(
          void Function(
                  GCartItemModifierFragmentData_product_parentGroupBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCartItemModifierFragmentData_product_parentGroupBuilder toBuilder() =>
      new GCartItemModifierFragmentData_product_parentGroupBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCartItemModifierFragmentData_product_parentGroup &&
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
            'GCartItemModifierFragmentData_product_parentGroup')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('parentGroup', parentGroup)
          ..add('additionalInfo', additionalInfo)
          ..add('name', name)
          ..add('description', description))
        .toString();
  }
}

class GCartItemModifierFragmentData_product_parentGroupBuilder
    implements
        Builder<GCartItemModifierFragmentData_product_parentGroup,
            GCartItemModifierFragmentData_product_parentGroupBuilder> {
  _$GCartItemModifierFragmentData_product_parentGroup? _$v;

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

  GCartItemModifierFragmentData_product_parentGroupBuilder() {
    GCartItemModifierFragmentData_product_parentGroup._initializeBuilder(this);
  }

  GCartItemModifierFragmentData_product_parentGroupBuilder get _$this {
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
  void replace(GCartItemModifierFragmentData_product_parentGroup other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCartItemModifierFragmentData_product_parentGroup;
  }

  @override
  void update(
      void Function(GCartItemModifierFragmentData_product_parentGroupBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GCartItemModifierFragmentData_product_parentGroup build() {
    final _$result = _$v ??
        new _$GCartItemModifierFragmentData_product_parentGroup._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                'GCartItemModifierFragmentData_product_parentGroup',
                'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'GCartItemModifierFragmentData_product_parentGroup', 'id'),
            parentGroup: parentGroup,
            additionalInfo: additionalInfo,
            name: BuiltValueNullFieldError.checkNotNull(name,
                'GCartItemModifierFragmentData_product_parentGroup', 'name'),
            description: description);
    replace(_$result);
    return _$result;
  }
}

class _$GCartItemModifierFragmentData_product_group
    extends GCartItemModifierFragmentData_product_group {
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

  factory _$GCartItemModifierFragmentData_product_group(
          [void Function(GCartItemModifierFragmentData_product_groupBuilder)?
              updates]) =>
      (new GCartItemModifierFragmentData_product_groupBuilder()
            ..update(updates))
          .build();

  _$GCartItemModifierFragmentData_product_group._(
      {required this.G__typename,
      required this.id,
      this.parentGroup,
      this.additionalInfo,
      required this.name,
      this.description})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        'GCartItemModifierFragmentData_product_group', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GCartItemModifierFragmentData_product_group', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, 'GCartItemModifierFragmentData_product_group', 'name');
  }

  @override
  GCartItemModifierFragmentData_product_group rebuild(
          void Function(GCartItemModifierFragmentData_product_groupBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCartItemModifierFragmentData_product_groupBuilder toBuilder() =>
      new GCartItemModifierFragmentData_product_groupBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCartItemModifierFragmentData_product_group &&
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
            'GCartItemModifierFragmentData_product_group')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('parentGroup', parentGroup)
          ..add('additionalInfo', additionalInfo)
          ..add('name', name)
          ..add('description', description))
        .toString();
  }
}

class GCartItemModifierFragmentData_product_groupBuilder
    implements
        Builder<GCartItemModifierFragmentData_product_group,
            GCartItemModifierFragmentData_product_groupBuilder> {
  _$GCartItemModifierFragmentData_product_group? _$v;

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

  GCartItemModifierFragmentData_product_groupBuilder() {
    GCartItemModifierFragmentData_product_group._initializeBuilder(this);
  }

  GCartItemModifierFragmentData_product_groupBuilder get _$this {
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
  void replace(GCartItemModifierFragmentData_product_group other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCartItemModifierFragmentData_product_group;
  }

  @override
  void update(
      void Function(GCartItemModifierFragmentData_product_groupBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GCartItemModifierFragmentData_product_group build() {
    final _$result = _$v ??
        new _$GCartItemModifierFragmentData_product_group._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                'GCartItemModifierFragmentData_product_group', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'GCartItemModifierFragmentData_product_group', 'id'),
            parentGroup: parentGroup,
            additionalInfo: additionalInfo,
            name: BuiltValueNullFieldError.checkNotNull(
                name, 'GCartItemModifierFragmentData_product_group', 'name'),
            description: description);
    replace(_$result);
    return _$result;
  }
}

class _$GCartItemModifierFragmentData_product_category
    extends GCartItemModifierFragmentData_product_category {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String name;

  factory _$GCartItemModifierFragmentData_product_category(
          [void Function(GCartItemModifierFragmentData_product_categoryBuilder)?
              updates]) =>
      (new GCartItemModifierFragmentData_product_categoryBuilder()
            ..update(updates))
          .build();

  _$GCartItemModifierFragmentData_product_category._(
      {required this.G__typename, required this.id, required this.name})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        'GCartItemModifierFragmentData_product_category', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GCartItemModifierFragmentData_product_category', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, 'GCartItemModifierFragmentData_product_category', 'name');
  }

  @override
  GCartItemModifierFragmentData_product_category rebuild(
          void Function(GCartItemModifierFragmentData_product_categoryBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCartItemModifierFragmentData_product_categoryBuilder toBuilder() =>
      new GCartItemModifierFragmentData_product_categoryBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCartItemModifierFragmentData_product_category &&
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
            'GCartItemModifierFragmentData_product_category')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class GCartItemModifierFragmentData_product_categoryBuilder
    implements
        Builder<GCartItemModifierFragmentData_product_category,
            GCartItemModifierFragmentData_product_categoryBuilder> {
  _$GCartItemModifierFragmentData_product_category? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GCartItemModifierFragmentData_product_categoryBuilder() {
    GCartItemModifierFragmentData_product_category._initializeBuilder(this);
  }

  GCartItemModifierFragmentData_product_categoryBuilder get _$this {
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
  void replace(GCartItemModifierFragmentData_product_category other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCartItemModifierFragmentData_product_category;
  }

  @override
  void update(
      void Function(GCartItemModifierFragmentData_product_categoryBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GCartItemModifierFragmentData_product_category build() {
    final _$result = _$v ??
        new _$GCartItemModifierFragmentData_product_category._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                'GCartItemModifierFragmentData_product_category',
                'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'GCartItemModifierFragmentData_product_category', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(name,
                'GCartItemModifierFragmentData_product_category', 'name'));
    replace(_$result);
    return _$result;
  }
}

class _$GCartItemModifierFragmentData_product_products_sizes
    extends GCartItemModifierFragmentData_product_products_sizes {
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
  final GCartItemModifierFragmentData_product_products_sizes_parentGroup?
      parentGroup;
  @override
  final BuiltList<GCartItemModifierFragmentData_product_products_sizes_images>?
      images;
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
  final BuiltList<
          GCartItemModifierFragmentData_product_products_sizes_modifiers>?
      modifiers;
  @override
  final BuiltList<
          GCartItemModifierFragmentData_product_products_sizes_groupModifiers>?
      groupModifiers;

  factory _$GCartItemModifierFragmentData_product_products_sizes(
          [void Function(
                  GCartItemModifierFragmentData_product_products_sizesBuilder)?
              updates]) =>
      (new GCartItemModifierFragmentData_product_products_sizesBuilder()
            ..update(updates))
          .build();

  _$GCartItemModifierFragmentData_product_products_sizes._(
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
        'GCartItemModifierFragmentData_product_products_sizes', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GCartItemModifierFragmentData_product_products_sizes', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, 'GCartItemModifierFragmentData_product_products_sizes', 'name');
  }

  @override
  GCartItemModifierFragmentData_product_products_sizes rebuild(
          void Function(
                  GCartItemModifierFragmentData_product_products_sizesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCartItemModifierFragmentData_product_products_sizesBuilder toBuilder() =>
      new GCartItemModifierFragmentData_product_products_sizesBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCartItemModifierFragmentData_product_products_sizes &&
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
            'GCartItemModifierFragmentData_product_products_sizes')
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

class GCartItemModifierFragmentData_product_products_sizesBuilder
    implements
        Builder<GCartItemModifierFragmentData_product_products_sizes,
            GCartItemModifierFragmentData_product_products_sizesBuilder> {
  _$GCartItemModifierFragmentData_product_products_sizes? _$v;

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

  GCartItemModifierFragmentData_product_products_sizes_parentGroupBuilder?
      _parentGroup;
  GCartItemModifierFragmentData_product_products_sizes_parentGroupBuilder
      get parentGroup => _$this._parentGroup ??=
          new GCartItemModifierFragmentData_product_products_sizes_parentGroupBuilder();
  set parentGroup(
          GCartItemModifierFragmentData_product_products_sizes_parentGroupBuilder?
              parentGroup) =>
      _$this._parentGroup = parentGroup;

  ListBuilder<GCartItemModifierFragmentData_product_products_sizes_images>?
      _images;
  ListBuilder<GCartItemModifierFragmentData_product_products_sizes_images>
      get images => _$this._images ??= new ListBuilder<
          GCartItemModifierFragmentData_product_products_sizes_images>();
  set images(
          ListBuilder<
                  GCartItemModifierFragmentData_product_products_sizes_images>?
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

  ListBuilder<GCartItemModifierFragmentData_product_products_sizes_modifiers>?
      _modifiers;
  ListBuilder<GCartItemModifierFragmentData_product_products_sizes_modifiers>
      get modifiers => _$this._modifiers ??= new ListBuilder<
          GCartItemModifierFragmentData_product_products_sizes_modifiers>();
  set modifiers(
          ListBuilder<
                  GCartItemModifierFragmentData_product_products_sizes_modifiers>?
              modifiers) =>
      _$this._modifiers = modifiers;

  ListBuilder<
          GCartItemModifierFragmentData_product_products_sizes_groupModifiers>?
      _groupModifiers;
  ListBuilder<
          GCartItemModifierFragmentData_product_products_sizes_groupModifiers>
      get groupModifiers => _$this._groupModifiers ??= new ListBuilder<
          GCartItemModifierFragmentData_product_products_sizes_groupModifiers>();
  set groupModifiers(
          ListBuilder<
                  GCartItemModifierFragmentData_product_products_sizes_groupModifiers>?
              groupModifiers) =>
      _$this._groupModifiers = groupModifiers;

  GCartItemModifierFragmentData_product_products_sizesBuilder() {
    GCartItemModifierFragmentData_product_products_sizes._initializeBuilder(
        this);
  }

  GCartItemModifierFragmentData_product_products_sizesBuilder get _$this {
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
  void replace(GCartItemModifierFragmentData_product_products_sizes other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCartItemModifierFragmentData_product_products_sizes;
  }

  @override
  void update(
      void Function(
              GCartItemModifierFragmentData_product_products_sizesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GCartItemModifierFragmentData_product_products_sizes build() {
    _$GCartItemModifierFragmentData_product_products_sizes _$result;
    try {
      _$result = _$v ??
          new _$GCartItemModifierFragmentData_product_products_sizes._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  'GCartItemModifierFragmentData_product_products_sizes',
                  'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(id,
                  'GCartItemModifierFragmentData_product_products_sizes', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name,
                  'GCartItemModifierFragmentData_product_products_sizes',
                  'name'),
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
            'GCartItemModifierFragmentData_product_products_sizes',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GCartItemModifierFragmentData_product_products_sizes_parentGroup
    extends GCartItemModifierFragmentData_product_products_sizes_parentGroup {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String name;

  factory _$GCartItemModifierFragmentData_product_products_sizes_parentGroup(
          [void Function(
                  GCartItemModifierFragmentData_product_products_sizes_parentGroupBuilder)?
              updates]) =>
      (new GCartItemModifierFragmentData_product_products_sizes_parentGroupBuilder()
            ..update(updates))
          .build();

  _$GCartItemModifierFragmentData_product_products_sizes_parentGroup._(
      {required this.G__typename, required this.id, required this.name})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        'GCartItemModifierFragmentData_product_products_sizes_parentGroup',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id,
        'GCartItemModifierFragmentData_product_products_sizes_parentGroup',
        'id');
    BuiltValueNullFieldError.checkNotNull(
        name,
        'GCartItemModifierFragmentData_product_products_sizes_parentGroup',
        'name');
  }

  @override
  GCartItemModifierFragmentData_product_products_sizes_parentGroup rebuild(
          void Function(
                  GCartItemModifierFragmentData_product_products_sizes_parentGroupBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCartItemModifierFragmentData_product_products_sizes_parentGroupBuilder
      toBuilder() =>
          new GCartItemModifierFragmentData_product_products_sizes_parentGroupBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GCartItemModifierFragmentData_product_products_sizes_parentGroup &&
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
            'GCartItemModifierFragmentData_product_products_sizes_parentGroup')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class GCartItemModifierFragmentData_product_products_sizes_parentGroupBuilder
    implements
        Builder<
            GCartItemModifierFragmentData_product_products_sizes_parentGroup,
            GCartItemModifierFragmentData_product_products_sizes_parentGroupBuilder> {
  _$GCartItemModifierFragmentData_product_products_sizes_parentGroup? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GCartItemModifierFragmentData_product_products_sizes_parentGroupBuilder() {
    GCartItemModifierFragmentData_product_products_sizes_parentGroup
        ._initializeBuilder(this);
  }

  GCartItemModifierFragmentData_product_products_sizes_parentGroupBuilder
      get _$this {
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
  void replace(
      GCartItemModifierFragmentData_product_products_sizes_parentGroup other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GCartItemModifierFragmentData_product_products_sizes_parentGroup;
  }

  @override
  void update(
      void Function(
              GCartItemModifierFragmentData_product_products_sizes_parentGroupBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GCartItemModifierFragmentData_product_products_sizes_parentGroup build() {
    final _$result = _$v ??
        new _$GCartItemModifierFragmentData_product_products_sizes_parentGroup
                ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                'GCartItemModifierFragmentData_product_products_sizes_parentGroup',
                'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id,
                'GCartItemModifierFragmentData_product_products_sizes_parentGroup',
                'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name,
                'GCartItemModifierFragmentData_product_products_sizes_parentGroup',
                'name'));
    replace(_$result);
    return _$result;
  }
}

class _$GCartItemModifierFragmentData_product_products_sizes_images
    extends GCartItemModifierFragmentData_product_products_sizes_images {
  @override
  final String G__typename;
  @override
  final String? imageId;
  @override
  final String? imageUrl;

  factory _$GCartItemModifierFragmentData_product_products_sizes_images(
          [void Function(
                  GCartItemModifierFragmentData_product_products_sizes_imagesBuilder)?
              updates]) =>
      (new GCartItemModifierFragmentData_product_products_sizes_imagesBuilder()
            ..update(updates))
          .build();

  _$GCartItemModifierFragmentData_product_products_sizes_images._(
      {required this.G__typename, this.imageId, this.imageUrl})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        'GCartItemModifierFragmentData_product_products_sizes_images',
        'G__typename');
  }

  @override
  GCartItemModifierFragmentData_product_products_sizes_images rebuild(
          void Function(
                  GCartItemModifierFragmentData_product_products_sizes_imagesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCartItemModifierFragmentData_product_products_sizes_imagesBuilder
      toBuilder() =>
          new GCartItemModifierFragmentData_product_products_sizes_imagesBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GCartItemModifierFragmentData_product_products_sizes_images &&
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
            'GCartItemModifierFragmentData_product_products_sizes_images')
          ..add('G__typename', G__typename)
          ..add('imageId', imageId)
          ..add('imageUrl', imageUrl))
        .toString();
  }
}

class GCartItemModifierFragmentData_product_products_sizes_imagesBuilder
    implements
        Builder<GCartItemModifierFragmentData_product_products_sizes_images,
            GCartItemModifierFragmentData_product_products_sizes_imagesBuilder> {
  _$GCartItemModifierFragmentData_product_products_sizes_images? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _imageId;
  String? get imageId => _$this._imageId;
  set imageId(String? imageId) => _$this._imageId = imageId;

  String? _imageUrl;
  String? get imageUrl => _$this._imageUrl;
  set imageUrl(String? imageUrl) => _$this._imageUrl = imageUrl;

  GCartItemModifierFragmentData_product_products_sizes_imagesBuilder() {
    GCartItemModifierFragmentData_product_products_sizes_images
        ._initializeBuilder(this);
  }

  GCartItemModifierFragmentData_product_products_sizes_imagesBuilder
      get _$this {
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
  void replace(
      GCartItemModifierFragmentData_product_products_sizes_images other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v =
        other as _$GCartItemModifierFragmentData_product_products_sizes_images;
  }

  @override
  void update(
      void Function(
              GCartItemModifierFragmentData_product_products_sizes_imagesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GCartItemModifierFragmentData_product_products_sizes_images build() {
    final _$result = _$v ??
        new _$GCartItemModifierFragmentData_product_products_sizes_images._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                'GCartItemModifierFragmentData_product_products_sizes_images',
                'G__typename'),
            imageId: imageId,
            imageUrl: imageUrl);
    replace(_$result);
    return _$result;
  }
}

class _$GCartItemModifierFragmentData_product_products_sizes_modifiers
    extends GCartItemModifierFragmentData_product_products_sizes_modifiers {
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

  factory _$GCartItemModifierFragmentData_product_products_sizes_modifiers(
          [void Function(
                  GCartItemModifierFragmentData_product_products_sizes_modifiersBuilder)?
              updates]) =>
      (new GCartItemModifierFragmentData_product_products_sizes_modifiersBuilder()
            ..update(updates))
          .build();

  _$GCartItemModifierFragmentData_product_products_sizes_modifiers._(
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
        'GCartItemModifierFragmentData_product_products_sizes_modifiers',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        modifierId,
        'GCartItemModifierFragmentData_product_products_sizes_modifiers',
        'modifierId');
  }

  @override
  GCartItemModifierFragmentData_product_products_sizes_modifiers rebuild(
          void Function(
                  GCartItemModifierFragmentData_product_products_sizes_modifiersBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCartItemModifierFragmentData_product_products_sizes_modifiersBuilder
      toBuilder() =>
          new GCartItemModifierFragmentData_product_products_sizes_modifiersBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GCartItemModifierFragmentData_product_products_sizes_modifiers &&
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
            'GCartItemModifierFragmentData_product_products_sizes_modifiers')
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

class GCartItemModifierFragmentData_product_products_sizes_modifiersBuilder
    implements
        Builder<GCartItemModifierFragmentData_product_products_sizes_modifiers,
            GCartItemModifierFragmentData_product_products_sizes_modifiersBuilder> {
  _$GCartItemModifierFragmentData_product_products_sizes_modifiers? _$v;

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

  GCartItemModifierFragmentData_product_products_sizes_modifiersBuilder() {
    GCartItemModifierFragmentData_product_products_sizes_modifiers
        ._initializeBuilder(this);
  }

  GCartItemModifierFragmentData_product_products_sizes_modifiersBuilder
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
      GCartItemModifierFragmentData_product_products_sizes_modifiers other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GCartItemModifierFragmentData_product_products_sizes_modifiers;
  }

  @override
  void update(
      void Function(
              GCartItemModifierFragmentData_product_products_sizes_modifiersBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GCartItemModifierFragmentData_product_products_sizes_modifiers build() {
    final _$result = _$v ??
        new _$GCartItemModifierFragmentData_product_products_sizes_modifiers._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                'GCartItemModifierFragmentData_product_products_sizes_modifiers',
                'G__typename'),
            maxAmount: maxAmount,
            minAmount: minAmount,
            modifierId: BuiltValueNullFieldError.checkNotNull(
                modifierId,
                'GCartItemModifierFragmentData_product_products_sizes_modifiers',
                'modifierId'),
            required: required,
            defaultAmount: defaultAmount,
            hideIfDefaultAmount: hideIfDefaultAmount);
    replace(_$result);
    return _$result;
  }
}

class _$GCartItemModifierFragmentData_product_products_sizes_groupModifiers
    extends GCartItemModifierFragmentData_product_products_sizes_groupModifiers {
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
          GCartItemModifierFragmentData_product_products_sizes_groupModifiers_childModifiers>?
      childModifiers;
  @override
  final bool? childModifiersHaveMinMaxRestrictions;

  factory _$GCartItemModifierFragmentData_product_products_sizes_groupModifiers(
          [void Function(
                  GCartItemModifierFragmentData_product_products_sizes_groupModifiersBuilder)?
              updates]) =>
      (new GCartItemModifierFragmentData_product_products_sizes_groupModifiersBuilder()
            ..update(updates))
          .build();

  _$GCartItemModifierFragmentData_product_products_sizes_groupModifiers._(
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
        'GCartItemModifierFragmentData_product_products_sizes_groupModifiers',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        modifierId,
        'GCartItemModifierFragmentData_product_products_sizes_groupModifiers',
        'modifierId');
  }

  @override
  GCartItemModifierFragmentData_product_products_sizes_groupModifiers rebuild(
          void Function(
                  GCartItemModifierFragmentData_product_products_sizes_groupModifiersBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCartItemModifierFragmentData_product_products_sizes_groupModifiersBuilder
      toBuilder() =>
          new GCartItemModifierFragmentData_product_products_sizes_groupModifiersBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GCartItemModifierFragmentData_product_products_sizes_groupModifiers &&
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
            'GCartItemModifierFragmentData_product_products_sizes_groupModifiers')
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

class GCartItemModifierFragmentData_product_products_sizes_groupModifiersBuilder
    implements
        Builder<
            GCartItemModifierFragmentData_product_products_sizes_groupModifiers,
            GCartItemModifierFragmentData_product_products_sizes_groupModifiersBuilder> {
  _$GCartItemModifierFragmentData_product_products_sizes_groupModifiers? _$v;

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
          GCartItemModifierFragmentData_product_products_sizes_groupModifiers_childModifiers>?
      _childModifiers;
  ListBuilder<
          GCartItemModifierFragmentData_product_products_sizes_groupModifiers_childModifiers>
      get childModifiers => _$this._childModifiers ??= new ListBuilder<
          GCartItemModifierFragmentData_product_products_sizes_groupModifiers_childModifiers>();
  set childModifiers(
          ListBuilder<
                  GCartItemModifierFragmentData_product_products_sizes_groupModifiers_childModifiers>?
              childModifiers) =>
      _$this._childModifiers = childModifiers;

  bool? _childModifiersHaveMinMaxRestrictions;
  bool? get childModifiersHaveMinMaxRestrictions =>
      _$this._childModifiersHaveMinMaxRestrictions;
  set childModifiersHaveMinMaxRestrictions(
          bool? childModifiersHaveMinMaxRestrictions) =>
      _$this._childModifiersHaveMinMaxRestrictions =
          childModifiersHaveMinMaxRestrictions;

  GCartItemModifierFragmentData_product_products_sizes_groupModifiersBuilder() {
    GCartItemModifierFragmentData_product_products_sizes_groupModifiers
        ._initializeBuilder(this);
  }

  GCartItemModifierFragmentData_product_products_sizes_groupModifiersBuilder
      get _$this {
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
  void replace(
      GCartItemModifierFragmentData_product_products_sizes_groupModifiers
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GCartItemModifierFragmentData_product_products_sizes_groupModifiers;
  }

  @override
  void update(
      void Function(
              GCartItemModifierFragmentData_product_products_sizes_groupModifiersBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GCartItemModifierFragmentData_product_products_sizes_groupModifiers
      build() {
    _$GCartItemModifierFragmentData_product_products_sizes_groupModifiers
        _$result;
    try {
      _$result = _$v ??
          new _$GCartItemModifierFragmentData_product_products_sizes_groupModifiers
                  ._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  'GCartItemModifierFragmentData_product_products_sizes_groupModifiers',
                  'G__typename'),
              maxAmount: maxAmount,
              minAmount: minAmount,
              modifierId: BuiltValueNullFieldError.checkNotNull(
                  modifierId,
                  'GCartItemModifierFragmentData_product_products_sizes_groupModifiers',
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
            'GCartItemModifierFragmentData_product_products_sizes_groupModifiers',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GCartItemModifierFragmentData_product_products_sizes_groupModifiers_childModifiers
    extends GCartItemModifierFragmentData_product_products_sizes_groupModifiers_childModifiers {
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

  factory _$GCartItemModifierFragmentData_product_products_sizes_groupModifiers_childModifiers(
          [void Function(
                  GCartItemModifierFragmentData_product_products_sizes_groupModifiers_childModifiersBuilder)?
              updates]) =>
      (new GCartItemModifierFragmentData_product_products_sizes_groupModifiers_childModifiersBuilder()
            ..update(updates))
          .build();

  _$GCartItemModifierFragmentData_product_products_sizes_groupModifiers_childModifiers._(
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
        'GCartItemModifierFragmentData_product_products_sizes_groupModifiers_childModifiers',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        modifierId,
        'GCartItemModifierFragmentData_product_products_sizes_groupModifiers_childModifiers',
        'modifierId');
  }

  @override
  GCartItemModifierFragmentData_product_products_sizes_groupModifiers_childModifiers
      rebuild(
              void Function(
                      GCartItemModifierFragmentData_product_products_sizes_groupModifiers_childModifiersBuilder)
                  updates) =>
          (toBuilder()..update(updates)).build();

  @override
  GCartItemModifierFragmentData_product_products_sizes_groupModifiers_childModifiersBuilder
      toBuilder() =>
          new GCartItemModifierFragmentData_product_products_sizes_groupModifiers_childModifiersBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GCartItemModifierFragmentData_product_products_sizes_groupModifiers_childModifiers &&
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
            'GCartItemModifierFragmentData_product_products_sizes_groupModifiers_childModifiers')
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

class GCartItemModifierFragmentData_product_products_sizes_groupModifiers_childModifiersBuilder
    implements
        Builder<
            GCartItemModifierFragmentData_product_products_sizes_groupModifiers_childModifiers,
            GCartItemModifierFragmentData_product_products_sizes_groupModifiers_childModifiersBuilder> {
  _$GCartItemModifierFragmentData_product_products_sizes_groupModifiers_childModifiers?
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

  GCartItemModifierFragmentData_product_products_sizes_groupModifiers_childModifiersBuilder() {
    GCartItemModifierFragmentData_product_products_sizes_groupModifiers_childModifiers
        ._initializeBuilder(this);
  }

  GCartItemModifierFragmentData_product_products_sizes_groupModifiers_childModifiersBuilder
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
      GCartItemModifierFragmentData_product_products_sizes_groupModifiers_childModifiers
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GCartItemModifierFragmentData_product_products_sizes_groupModifiers_childModifiers;
  }

  @override
  void update(
      void Function(
              GCartItemModifierFragmentData_product_products_sizes_groupModifiers_childModifiersBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GCartItemModifierFragmentData_product_products_sizes_groupModifiers_childModifiers
      build() {
    final _$result = _$v ??
        new _$GCartItemModifierFragmentData_product_products_sizes_groupModifiers_childModifiers
                ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                'GCartItemModifierFragmentData_product_products_sizes_groupModifiers_childModifiers',
                'G__typename'),
            maxAmount: maxAmount,
            minAmount: minAmount,
            modifierId: BuiltValueNullFieldError.checkNotNull(
                modifierId,
                'GCartItemModifierFragmentData_product_products_sizes_groupModifiers_childModifiers',
                'modifierId'),
            required: required,
            defaultAmount: defaultAmount,
            hideIfDefaultAmount: hideIfDefaultAmount);
    replace(_$result);
    return _$result;
  }
}

class _$GCartItemModifierFragmentData_product_images
    extends GCartItemModifierFragmentData_product_images {
  @override
  final String G__typename;
  @override
  final String? imageId;
  @override
  final String? imageUrl;

  factory _$GCartItemModifierFragmentData_product_images(
          [void Function(GCartItemModifierFragmentData_product_imagesBuilder)?
              updates]) =>
      (new GCartItemModifierFragmentData_product_imagesBuilder()
            ..update(updates))
          .build();

  _$GCartItemModifierFragmentData_product_images._(
      {required this.G__typename, this.imageId, this.imageUrl})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        'GCartItemModifierFragmentData_product_images', 'G__typename');
  }

  @override
  GCartItemModifierFragmentData_product_images rebuild(
          void Function(GCartItemModifierFragmentData_product_imagesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCartItemModifierFragmentData_product_imagesBuilder toBuilder() =>
      new GCartItemModifierFragmentData_product_imagesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCartItemModifierFragmentData_product_images &&
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
            'GCartItemModifierFragmentData_product_images')
          ..add('G__typename', G__typename)
          ..add('imageId', imageId)
          ..add('imageUrl', imageUrl))
        .toString();
  }
}

class GCartItemModifierFragmentData_product_imagesBuilder
    implements
        Builder<GCartItemModifierFragmentData_product_images,
            GCartItemModifierFragmentData_product_imagesBuilder> {
  _$GCartItemModifierFragmentData_product_images? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _imageId;
  String? get imageId => _$this._imageId;
  set imageId(String? imageId) => _$this._imageId = imageId;

  String? _imageUrl;
  String? get imageUrl => _$this._imageUrl;
  set imageUrl(String? imageUrl) => _$this._imageUrl = imageUrl;

  GCartItemModifierFragmentData_product_imagesBuilder() {
    GCartItemModifierFragmentData_product_images._initializeBuilder(this);
  }

  GCartItemModifierFragmentData_product_imagesBuilder get _$this {
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
  void replace(GCartItemModifierFragmentData_product_images other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCartItemModifierFragmentData_product_images;
  }

  @override
  void update(
      void Function(GCartItemModifierFragmentData_product_imagesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GCartItemModifierFragmentData_product_images build() {
    final _$result = _$v ??
        new _$GCartItemModifierFragmentData_product_images._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                'GCartItemModifierFragmentData_product_images', 'G__typename'),
            imageId: imageId,
            imageUrl: imageUrl);
    replace(_$result);
    return _$result;
  }
}

class _$GCartItemModifierFragmentData_product_modifiers
    extends GCartItemModifierFragmentData_product_modifiers {
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

  factory _$GCartItemModifierFragmentData_product_modifiers(
          [void Function(
                  GCartItemModifierFragmentData_product_modifiersBuilder)?
              updates]) =>
      (new GCartItemModifierFragmentData_product_modifiersBuilder()
            ..update(updates))
          .build();

  _$GCartItemModifierFragmentData_product_modifiers._(
      {required this.G__typename,
      this.maxAmount,
      this.minAmount,
      required this.modifierId,
      this.required,
      this.defaultAmount,
      this.hideIfDefaultAmount})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        'GCartItemModifierFragmentData_product_modifiers', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(modifierId,
        'GCartItemModifierFragmentData_product_modifiers', 'modifierId');
  }

  @override
  GCartItemModifierFragmentData_product_modifiers rebuild(
          void Function(GCartItemModifierFragmentData_product_modifiersBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCartItemModifierFragmentData_product_modifiersBuilder toBuilder() =>
      new GCartItemModifierFragmentData_product_modifiersBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCartItemModifierFragmentData_product_modifiers &&
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
            'GCartItemModifierFragmentData_product_modifiers')
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

class GCartItemModifierFragmentData_product_modifiersBuilder
    implements
        Builder<GCartItemModifierFragmentData_product_modifiers,
            GCartItemModifierFragmentData_product_modifiersBuilder> {
  _$GCartItemModifierFragmentData_product_modifiers? _$v;

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

  GCartItemModifierFragmentData_product_modifiersBuilder() {
    GCartItemModifierFragmentData_product_modifiers._initializeBuilder(this);
  }

  GCartItemModifierFragmentData_product_modifiersBuilder get _$this {
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
  void replace(GCartItemModifierFragmentData_product_modifiers other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCartItemModifierFragmentData_product_modifiers;
  }

  @override
  void update(
      void Function(GCartItemModifierFragmentData_product_modifiersBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GCartItemModifierFragmentData_product_modifiers build() {
    final _$result = _$v ??
        new _$GCartItemModifierFragmentData_product_modifiers._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                'GCartItemModifierFragmentData_product_modifiers',
                'G__typename'),
            maxAmount: maxAmount,
            minAmount: minAmount,
            modifierId: BuiltValueNullFieldError.checkNotNull(
                modifierId,
                'GCartItemModifierFragmentData_product_modifiers',
                'modifierId'),
            required: required,
            defaultAmount: defaultAmount,
            hideIfDefaultAmount: hideIfDefaultAmount);
    replace(_$result);
    return _$result;
  }
}

class _$GCartItemModifierFragmentData_product_groupModifiers
    extends GCartItemModifierFragmentData_product_groupModifiers {
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
          GCartItemModifierFragmentData_product_groupModifiers_childModifiers>?
      childModifiers;
  @override
  final bool? childModifiersHaveMinMaxRestrictions;

  factory _$GCartItemModifierFragmentData_product_groupModifiers(
          [void Function(
                  GCartItemModifierFragmentData_product_groupModifiersBuilder)?
              updates]) =>
      (new GCartItemModifierFragmentData_product_groupModifiersBuilder()
            ..update(updates))
          .build();

  _$GCartItemModifierFragmentData_product_groupModifiers._(
      {required this.G__typename,
      this.maxAmount,
      this.minAmount,
      required this.modifierId,
      this.required,
      this.childModifiers,
      this.childModifiersHaveMinMaxRestrictions})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        'GCartItemModifierFragmentData_product_groupModifiers', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(modifierId,
        'GCartItemModifierFragmentData_product_groupModifiers', 'modifierId');
  }

  @override
  GCartItemModifierFragmentData_product_groupModifiers rebuild(
          void Function(
                  GCartItemModifierFragmentData_product_groupModifiersBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCartItemModifierFragmentData_product_groupModifiersBuilder toBuilder() =>
      new GCartItemModifierFragmentData_product_groupModifiersBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCartItemModifierFragmentData_product_groupModifiers &&
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
            'GCartItemModifierFragmentData_product_groupModifiers')
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

class GCartItemModifierFragmentData_product_groupModifiersBuilder
    implements
        Builder<GCartItemModifierFragmentData_product_groupModifiers,
            GCartItemModifierFragmentData_product_groupModifiersBuilder> {
  _$GCartItemModifierFragmentData_product_groupModifiers? _$v;

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
          GCartItemModifierFragmentData_product_groupModifiers_childModifiers>?
      _childModifiers;
  ListBuilder<
          GCartItemModifierFragmentData_product_groupModifiers_childModifiers>
      get childModifiers => _$this._childModifiers ??= new ListBuilder<
          GCartItemModifierFragmentData_product_groupModifiers_childModifiers>();
  set childModifiers(
          ListBuilder<
                  GCartItemModifierFragmentData_product_groupModifiers_childModifiers>?
              childModifiers) =>
      _$this._childModifiers = childModifiers;

  bool? _childModifiersHaveMinMaxRestrictions;
  bool? get childModifiersHaveMinMaxRestrictions =>
      _$this._childModifiersHaveMinMaxRestrictions;
  set childModifiersHaveMinMaxRestrictions(
          bool? childModifiersHaveMinMaxRestrictions) =>
      _$this._childModifiersHaveMinMaxRestrictions =
          childModifiersHaveMinMaxRestrictions;

  GCartItemModifierFragmentData_product_groupModifiersBuilder() {
    GCartItemModifierFragmentData_product_groupModifiers._initializeBuilder(
        this);
  }

  GCartItemModifierFragmentData_product_groupModifiersBuilder get _$this {
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
  void replace(GCartItemModifierFragmentData_product_groupModifiers other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCartItemModifierFragmentData_product_groupModifiers;
  }

  @override
  void update(
      void Function(
              GCartItemModifierFragmentData_product_groupModifiersBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GCartItemModifierFragmentData_product_groupModifiers build() {
    _$GCartItemModifierFragmentData_product_groupModifiers _$result;
    try {
      _$result = _$v ??
          new _$GCartItemModifierFragmentData_product_groupModifiers._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  'GCartItemModifierFragmentData_product_groupModifiers',
                  'G__typename'),
              maxAmount: maxAmount,
              minAmount: minAmount,
              modifierId: BuiltValueNullFieldError.checkNotNull(
                  modifierId,
                  'GCartItemModifierFragmentData_product_groupModifiers',
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
            'GCartItemModifierFragmentData_product_groupModifiers',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GCartItemModifierFragmentData_product_groupModifiers_childModifiers
    extends GCartItemModifierFragmentData_product_groupModifiers_childModifiers {
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

  factory _$GCartItemModifierFragmentData_product_groupModifiers_childModifiers(
          [void Function(
                  GCartItemModifierFragmentData_product_groupModifiers_childModifiersBuilder)?
              updates]) =>
      (new GCartItemModifierFragmentData_product_groupModifiers_childModifiersBuilder()
            ..update(updates))
          .build();

  _$GCartItemModifierFragmentData_product_groupModifiers_childModifiers._(
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
        'GCartItemModifierFragmentData_product_groupModifiers_childModifiers',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        modifierId,
        'GCartItemModifierFragmentData_product_groupModifiers_childModifiers',
        'modifierId');
  }

  @override
  GCartItemModifierFragmentData_product_groupModifiers_childModifiers rebuild(
          void Function(
                  GCartItemModifierFragmentData_product_groupModifiers_childModifiersBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCartItemModifierFragmentData_product_groupModifiers_childModifiersBuilder
      toBuilder() =>
          new GCartItemModifierFragmentData_product_groupModifiers_childModifiersBuilder()
            ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other
            is GCartItemModifierFragmentData_product_groupModifiers_childModifiers &&
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
            'GCartItemModifierFragmentData_product_groupModifiers_childModifiers')
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

class GCartItemModifierFragmentData_product_groupModifiers_childModifiersBuilder
    implements
        Builder<
            GCartItemModifierFragmentData_product_groupModifiers_childModifiers,
            GCartItemModifierFragmentData_product_groupModifiers_childModifiersBuilder> {
  _$GCartItemModifierFragmentData_product_groupModifiers_childModifiers? _$v;

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

  GCartItemModifierFragmentData_product_groupModifiers_childModifiersBuilder() {
    GCartItemModifierFragmentData_product_groupModifiers_childModifiers
        ._initializeBuilder(this);
  }

  GCartItemModifierFragmentData_product_groupModifiers_childModifiersBuilder
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
      GCartItemModifierFragmentData_product_groupModifiers_childModifiers
          other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other
        as _$GCartItemModifierFragmentData_product_groupModifiers_childModifiers;
  }

  @override
  void update(
      void Function(
              GCartItemModifierFragmentData_product_groupModifiers_childModifiersBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GCartItemModifierFragmentData_product_groupModifiers_childModifiers
      build() {
    final _$result = _$v ??
        new _$GCartItemModifierFragmentData_product_groupModifiers_childModifiers
                ._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                'GCartItemModifierFragmentData_product_groupModifiers_childModifiers',
                'G__typename'),
            maxAmount: maxAmount,
            minAmount: minAmount,
            modifierId: BuiltValueNullFieldError.checkNotNull(
                modifierId,
                'GCartItemModifierFragmentData_product_groupModifiers_childModifiers',
                'modifierId'),
            required: required,
            defaultAmount: defaultAmount,
            hideIfDefaultAmount: hideIfDefaultAmount);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
