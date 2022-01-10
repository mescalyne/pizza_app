// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_size_fragment.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GProductsSizesFragmentData> _$gProductsSizesFragmentDataSerializer =
    new _$GProductsSizesFragmentDataSerializer();
Serializer<GProductsSizesFragmentData_parentGroup>
    _$gProductsSizesFragmentDataParentGroupSerializer =
    new _$GProductsSizesFragmentData_parentGroupSerializer();
Serializer<GProductsSizesFragmentData_images>
    _$gProductsSizesFragmentDataImagesSerializer =
    new _$GProductsSizesFragmentData_imagesSerializer();
Serializer<GProductsSizesFragmentData_modifiers>
    _$gProductsSizesFragmentDataModifiersSerializer =
    new _$GProductsSizesFragmentData_modifiersSerializer();
Serializer<GProductsSizesFragmentData_groupModifiers>
    _$gProductsSizesFragmentDataGroupModifiersSerializer =
    new _$GProductsSizesFragmentData_groupModifiersSerializer();
Serializer<GProductsSizesFragmentData_groupModifiers_childModifiers>
    _$gProductsSizesFragmentDataGroupModifiersChildModifiersSerializer =
    new _$GProductsSizesFragmentData_groupModifiers_childModifiersSerializer();

class _$GProductsSizesFragmentDataSerializer
    implements StructuredSerializer<GProductsSizesFragmentData> {
  @override
  final Iterable<Type> types = const [
    GProductsSizesFragmentData,
    _$GProductsSizesFragmentData
  ];
  @override
  final String wireName = 'GProductsSizesFragmentData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GProductsSizesFragmentData object,
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
            specifiedType:
                const FullType(GProductsSizesFragmentData_parentGroup)));
    }
    value = object.images;
    if (value != null) {
      result
        ..add('images')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList,
                const [const FullType(GProductsSizesFragmentData_images)])));
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
            specifiedType: const FullType(BuiltList,
                const [const FullType(GProductsSizesFragmentData_modifiers)])));
    }
    value = object.groupModifiers;
    if (value != null) {
      result
        ..add('groupModifiers')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(GProductsSizesFragmentData_groupModifiers)
            ])));
    }
    return result;
  }

  @override
  GProductsSizesFragmentData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GProductsSizesFragmentDataBuilder();

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
                  specifiedType:
                      const FullType(GProductsSizesFragmentData_parentGroup))!
              as GProductsSizesFragmentData_parentGroup);
          break;
        case 'images':
          result.images.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GProductsSizesFragmentData_images)
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
                const FullType(GProductsSizesFragmentData_modifiers)
              ]))! as BuiltList<Object?>);
          break;
        case 'groupModifiers':
          result.groupModifiers.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GProductsSizesFragmentData_groupModifiers)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GProductsSizesFragmentData_parentGroupSerializer
    implements StructuredSerializer<GProductsSizesFragmentData_parentGroup> {
  @override
  final Iterable<Type> types = const [
    GProductsSizesFragmentData_parentGroup,
    _$GProductsSizesFragmentData_parentGroup
  ];
  @override
  final String wireName = 'GProductsSizesFragmentData_parentGroup';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GProductsSizesFragmentData_parentGroup object,
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
  GProductsSizesFragmentData_parentGroup deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GProductsSizesFragmentData_parentGroupBuilder();

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

class _$GProductsSizesFragmentData_imagesSerializer
    implements StructuredSerializer<GProductsSizesFragmentData_images> {
  @override
  final Iterable<Type> types = const [
    GProductsSizesFragmentData_images,
    _$GProductsSizesFragmentData_images
  ];
  @override
  final String wireName = 'GProductsSizesFragmentData_images';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GProductsSizesFragmentData_images object,
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
  GProductsSizesFragmentData_images deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GProductsSizesFragmentData_imagesBuilder();

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

class _$GProductsSizesFragmentData_modifiersSerializer
    implements StructuredSerializer<GProductsSizesFragmentData_modifiers> {
  @override
  final Iterable<Type> types = const [
    GProductsSizesFragmentData_modifiers,
    _$GProductsSizesFragmentData_modifiers
  ];
  @override
  final String wireName = 'GProductsSizesFragmentData_modifiers';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GProductsSizesFragmentData_modifiers object,
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
  GProductsSizesFragmentData_modifiers deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GProductsSizesFragmentData_modifiersBuilder();

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

class _$GProductsSizesFragmentData_groupModifiersSerializer
    implements StructuredSerializer<GProductsSizesFragmentData_groupModifiers> {
  @override
  final Iterable<Type> types = const [
    GProductsSizesFragmentData_groupModifiers,
    _$GProductsSizesFragmentData_groupModifiers
  ];
  @override
  final String wireName = 'GProductsSizesFragmentData_groupModifiers';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GProductsSizesFragmentData_groupModifiers object,
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
                  GProductsSizesFragmentData_groupModifiers_childModifiers)
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
  GProductsSizesFragmentData_groupModifiers deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GProductsSizesFragmentData_groupModifiersBuilder();

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
                    GProductsSizesFragmentData_groupModifiers_childModifiers)
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

class _$GProductsSizesFragmentData_groupModifiers_childModifiersSerializer
    implements
        StructuredSerializer<
            GProductsSizesFragmentData_groupModifiers_childModifiers> {
  @override
  final Iterable<Type> types = const [
    GProductsSizesFragmentData_groupModifiers_childModifiers,
    _$GProductsSizesFragmentData_groupModifiers_childModifiers
  ];
  @override
  final String wireName =
      'GProductsSizesFragmentData_groupModifiers_childModifiers';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GProductsSizesFragmentData_groupModifiers_childModifiers object,
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
  GProductsSizesFragmentData_groupModifiers_childModifiers deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GProductsSizesFragmentData_groupModifiers_childModifiersBuilder();

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

class _$GProductsSizesFragmentData extends GProductsSizesFragmentData {
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
  final GProductsSizesFragmentData_parentGroup? parentGroup;
  @override
  final BuiltList<GProductsSizesFragmentData_images>? images;
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
  final BuiltList<GProductsSizesFragmentData_modifiers>? modifiers;
  @override
  final BuiltList<GProductsSizesFragmentData_groupModifiers>? groupModifiers;

  factory _$GProductsSizesFragmentData(
          [void Function(GProductsSizesFragmentDataBuilder)? updates]) =>
      (new GProductsSizesFragmentDataBuilder()..update(updates)).build();

  _$GProductsSizesFragmentData._(
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
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GProductsSizesFragmentData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GProductsSizesFragmentData', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, 'GProductsSizesFragmentData', 'name');
  }

  @override
  GProductsSizesFragmentData rebuild(
          void Function(GProductsSizesFragmentDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GProductsSizesFragmentDataBuilder toBuilder() =>
      new GProductsSizesFragmentDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GProductsSizesFragmentData &&
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
    return (newBuiltValueToStringHelper('GProductsSizesFragmentData')
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

class GProductsSizesFragmentDataBuilder
    implements
        Builder<GProductsSizesFragmentData, GProductsSizesFragmentDataBuilder> {
  _$GProductsSizesFragmentData? _$v;

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

  GProductsSizesFragmentData_parentGroupBuilder? _parentGroup;
  GProductsSizesFragmentData_parentGroupBuilder get parentGroup =>
      _$this._parentGroup ??=
          new GProductsSizesFragmentData_parentGroupBuilder();
  set parentGroup(GProductsSizesFragmentData_parentGroupBuilder? parentGroup) =>
      _$this._parentGroup = parentGroup;

  ListBuilder<GProductsSizesFragmentData_images>? _images;
  ListBuilder<GProductsSizesFragmentData_images> get images =>
      _$this._images ??= new ListBuilder<GProductsSizesFragmentData_images>();
  set images(ListBuilder<GProductsSizesFragmentData_images>? images) =>
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

  ListBuilder<GProductsSizesFragmentData_modifiers>? _modifiers;
  ListBuilder<GProductsSizesFragmentData_modifiers> get modifiers =>
      _$this._modifiers ??=
          new ListBuilder<GProductsSizesFragmentData_modifiers>();
  set modifiers(ListBuilder<GProductsSizesFragmentData_modifiers>? modifiers) =>
      _$this._modifiers = modifiers;

  ListBuilder<GProductsSizesFragmentData_groupModifiers>? _groupModifiers;
  ListBuilder<GProductsSizesFragmentData_groupModifiers> get groupModifiers =>
      _$this._groupModifiers ??=
          new ListBuilder<GProductsSizesFragmentData_groupModifiers>();
  set groupModifiers(
          ListBuilder<GProductsSizesFragmentData_groupModifiers>?
              groupModifiers) =>
      _$this._groupModifiers = groupModifiers;

  GProductsSizesFragmentDataBuilder() {
    GProductsSizesFragmentData._initializeBuilder(this);
  }

  GProductsSizesFragmentDataBuilder get _$this {
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
  void replace(GProductsSizesFragmentData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GProductsSizesFragmentData;
  }

  @override
  void update(void Function(GProductsSizesFragmentDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GProductsSizesFragmentData build() {
    _$GProductsSizesFragmentData _$result;
    try {
      _$result = _$v ??
          new _$GProductsSizesFragmentData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GProductsSizesFragmentData', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, 'GProductsSizesFragmentData', 'id'),
              name: BuiltValueNullFieldError.checkNotNull(
                  name, 'GProductsSizesFragmentData', 'name'),
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
            'GProductsSizesFragmentData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GProductsSizesFragmentData_parentGroup
    extends GProductsSizesFragmentData_parentGroup {
  @override
  final String G__typename;
  @override
  final String id;
  @override
  final String name;

  factory _$GProductsSizesFragmentData_parentGroup(
          [void Function(GProductsSizesFragmentData_parentGroupBuilder)?
              updates]) =>
      (new GProductsSizesFragmentData_parentGroupBuilder()..update(updates))
          .build();

  _$GProductsSizesFragmentData_parentGroup._(
      {required this.G__typename, required this.id, required this.name})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GProductsSizesFragmentData_parentGroup', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GProductsSizesFragmentData_parentGroup', 'id');
    BuiltValueNullFieldError.checkNotNull(
        name, 'GProductsSizesFragmentData_parentGroup', 'name');
  }

  @override
  GProductsSizesFragmentData_parentGroup rebuild(
          void Function(GProductsSizesFragmentData_parentGroupBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GProductsSizesFragmentData_parentGroupBuilder toBuilder() =>
      new GProductsSizesFragmentData_parentGroupBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GProductsSizesFragmentData_parentGroup &&
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
            'GProductsSizesFragmentData_parentGroup')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class GProductsSizesFragmentData_parentGroupBuilder
    implements
        Builder<GProductsSizesFragmentData_parentGroup,
            GProductsSizesFragmentData_parentGroupBuilder> {
  _$GProductsSizesFragmentData_parentGroup? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GProductsSizesFragmentData_parentGroupBuilder() {
    GProductsSizesFragmentData_parentGroup._initializeBuilder(this);
  }

  GProductsSizesFragmentData_parentGroupBuilder get _$this {
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
  void replace(GProductsSizesFragmentData_parentGroup other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GProductsSizesFragmentData_parentGroup;
  }

  @override
  void update(
      void Function(GProductsSizesFragmentData_parentGroupBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GProductsSizesFragmentData_parentGroup build() {
    final _$result = _$v ??
        new _$GProductsSizesFragmentData_parentGroup._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                'GProductsSizesFragmentData_parentGroup', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'GProductsSizesFragmentData_parentGroup', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, 'GProductsSizesFragmentData_parentGroup', 'name'));
    replace(_$result);
    return _$result;
  }
}

class _$GProductsSizesFragmentData_images
    extends GProductsSizesFragmentData_images {
  @override
  final String G__typename;
  @override
  final String? imageId;
  @override
  final String? imageUrl;

  factory _$GProductsSizesFragmentData_images(
          [void Function(GProductsSizesFragmentData_imagesBuilder)? updates]) =>
      (new GProductsSizesFragmentData_imagesBuilder()..update(updates)).build();

  _$GProductsSizesFragmentData_images._(
      {required this.G__typename, this.imageId, this.imageUrl})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GProductsSizesFragmentData_images', 'G__typename');
  }

  @override
  GProductsSizesFragmentData_images rebuild(
          void Function(GProductsSizesFragmentData_imagesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GProductsSizesFragmentData_imagesBuilder toBuilder() =>
      new GProductsSizesFragmentData_imagesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GProductsSizesFragmentData_images &&
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
    return (newBuiltValueToStringHelper('GProductsSizesFragmentData_images')
          ..add('G__typename', G__typename)
          ..add('imageId', imageId)
          ..add('imageUrl', imageUrl))
        .toString();
  }
}

class GProductsSizesFragmentData_imagesBuilder
    implements
        Builder<GProductsSizesFragmentData_images,
            GProductsSizesFragmentData_imagesBuilder> {
  _$GProductsSizesFragmentData_images? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _imageId;
  String? get imageId => _$this._imageId;
  set imageId(String? imageId) => _$this._imageId = imageId;

  String? _imageUrl;
  String? get imageUrl => _$this._imageUrl;
  set imageUrl(String? imageUrl) => _$this._imageUrl = imageUrl;

  GProductsSizesFragmentData_imagesBuilder() {
    GProductsSizesFragmentData_images._initializeBuilder(this);
  }

  GProductsSizesFragmentData_imagesBuilder get _$this {
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
  void replace(GProductsSizesFragmentData_images other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GProductsSizesFragmentData_images;
  }

  @override
  void update(
      void Function(GProductsSizesFragmentData_imagesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GProductsSizesFragmentData_images build() {
    final _$result = _$v ??
        new _$GProductsSizesFragmentData_images._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                'GProductsSizesFragmentData_images', 'G__typename'),
            imageId: imageId,
            imageUrl: imageUrl);
    replace(_$result);
    return _$result;
  }
}

class _$GProductsSizesFragmentData_modifiers
    extends GProductsSizesFragmentData_modifiers {
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

  factory _$GProductsSizesFragmentData_modifiers(
          [void Function(GProductsSizesFragmentData_modifiersBuilder)?
              updates]) =>
      (new GProductsSizesFragmentData_modifiersBuilder()..update(updates))
          .build();

  _$GProductsSizesFragmentData_modifiers._(
      {required this.G__typename,
      this.maxAmount,
      this.minAmount,
      required this.modifierId,
      this.required,
      this.defaultAmount,
      this.hideIfDefaultAmount})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GProductsSizesFragmentData_modifiers', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        modifierId, 'GProductsSizesFragmentData_modifiers', 'modifierId');
  }

  @override
  GProductsSizesFragmentData_modifiers rebuild(
          void Function(GProductsSizesFragmentData_modifiersBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GProductsSizesFragmentData_modifiersBuilder toBuilder() =>
      new GProductsSizesFragmentData_modifiersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GProductsSizesFragmentData_modifiers &&
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
    return (newBuiltValueToStringHelper('GProductsSizesFragmentData_modifiers')
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

class GProductsSizesFragmentData_modifiersBuilder
    implements
        Builder<GProductsSizesFragmentData_modifiers,
            GProductsSizesFragmentData_modifiersBuilder> {
  _$GProductsSizesFragmentData_modifiers? _$v;

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

  GProductsSizesFragmentData_modifiersBuilder() {
    GProductsSizesFragmentData_modifiers._initializeBuilder(this);
  }

  GProductsSizesFragmentData_modifiersBuilder get _$this {
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
  void replace(GProductsSizesFragmentData_modifiers other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GProductsSizesFragmentData_modifiers;
  }

  @override
  void update(
      void Function(GProductsSizesFragmentData_modifiersBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GProductsSizesFragmentData_modifiers build() {
    final _$result = _$v ??
        new _$GProductsSizesFragmentData_modifiers._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                'GProductsSizesFragmentData_modifiers', 'G__typename'),
            maxAmount: maxAmount,
            minAmount: minAmount,
            modifierId: BuiltValueNullFieldError.checkNotNull(modifierId,
                'GProductsSizesFragmentData_modifiers', 'modifierId'),
            required: required,
            defaultAmount: defaultAmount,
            hideIfDefaultAmount: hideIfDefaultAmount);
    replace(_$result);
    return _$result;
  }
}

class _$GProductsSizesFragmentData_groupModifiers
    extends GProductsSizesFragmentData_groupModifiers {
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
  final BuiltList<GProductsSizesFragmentData_groupModifiers_childModifiers>?
      childModifiers;
  @override
  final bool? childModifiersHaveMinMaxRestrictions;

  factory _$GProductsSizesFragmentData_groupModifiers(
          [void Function(GProductsSizesFragmentData_groupModifiersBuilder)?
              updates]) =>
      (new GProductsSizesFragmentData_groupModifiersBuilder()..update(updates))
          .build();

  _$GProductsSizesFragmentData_groupModifiers._(
      {required this.G__typename,
      this.maxAmount,
      this.minAmount,
      required this.modifierId,
      this.required,
      this.childModifiers,
      this.childModifiersHaveMinMaxRestrictions})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        'GProductsSizesFragmentData_groupModifiers', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        modifierId, 'GProductsSizesFragmentData_groupModifiers', 'modifierId');
  }

  @override
  GProductsSizesFragmentData_groupModifiers rebuild(
          void Function(GProductsSizesFragmentData_groupModifiersBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GProductsSizesFragmentData_groupModifiersBuilder toBuilder() =>
      new GProductsSizesFragmentData_groupModifiersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GProductsSizesFragmentData_groupModifiers &&
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
            'GProductsSizesFragmentData_groupModifiers')
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

class GProductsSizesFragmentData_groupModifiersBuilder
    implements
        Builder<GProductsSizesFragmentData_groupModifiers,
            GProductsSizesFragmentData_groupModifiersBuilder> {
  _$GProductsSizesFragmentData_groupModifiers? _$v;

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

  ListBuilder<GProductsSizesFragmentData_groupModifiers_childModifiers>?
      _childModifiers;
  ListBuilder<GProductsSizesFragmentData_groupModifiers_childModifiers>
      get childModifiers => _$this._childModifiers ??= new ListBuilder<
          GProductsSizesFragmentData_groupModifiers_childModifiers>();
  set childModifiers(
          ListBuilder<GProductsSizesFragmentData_groupModifiers_childModifiers>?
              childModifiers) =>
      _$this._childModifiers = childModifiers;

  bool? _childModifiersHaveMinMaxRestrictions;
  bool? get childModifiersHaveMinMaxRestrictions =>
      _$this._childModifiersHaveMinMaxRestrictions;
  set childModifiersHaveMinMaxRestrictions(
          bool? childModifiersHaveMinMaxRestrictions) =>
      _$this._childModifiersHaveMinMaxRestrictions =
          childModifiersHaveMinMaxRestrictions;

  GProductsSizesFragmentData_groupModifiersBuilder() {
    GProductsSizesFragmentData_groupModifiers._initializeBuilder(this);
  }

  GProductsSizesFragmentData_groupModifiersBuilder get _$this {
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
  void replace(GProductsSizesFragmentData_groupModifiers other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GProductsSizesFragmentData_groupModifiers;
  }

  @override
  void update(
      void Function(GProductsSizesFragmentData_groupModifiersBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GProductsSizesFragmentData_groupModifiers build() {
    _$GProductsSizesFragmentData_groupModifiers _$result;
    try {
      _$result = _$v ??
          new _$GProductsSizesFragmentData_groupModifiers._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  'GProductsSizesFragmentData_groupModifiers', 'G__typename'),
              maxAmount: maxAmount,
              minAmount: minAmount,
              modifierId: BuiltValueNullFieldError.checkNotNull(modifierId,
                  'GProductsSizesFragmentData_groupModifiers', 'modifierId'),
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
            'GProductsSizesFragmentData_groupModifiers',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GProductsSizesFragmentData_groupModifiers_childModifiers
    extends GProductsSizesFragmentData_groupModifiers_childModifiers {
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

  factory _$GProductsSizesFragmentData_groupModifiers_childModifiers(
          [void Function(
                  GProductsSizesFragmentData_groupModifiers_childModifiersBuilder)?
              updates]) =>
      (new GProductsSizesFragmentData_groupModifiers_childModifiersBuilder()
            ..update(updates))
          .build();

  _$GProductsSizesFragmentData_groupModifiers_childModifiers._(
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
        'GProductsSizesFragmentData_groupModifiers_childModifiers',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        modifierId,
        'GProductsSizesFragmentData_groupModifiers_childModifiers',
        'modifierId');
  }

  @override
  GProductsSizesFragmentData_groupModifiers_childModifiers rebuild(
          void Function(
                  GProductsSizesFragmentData_groupModifiers_childModifiersBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GProductsSizesFragmentData_groupModifiers_childModifiersBuilder toBuilder() =>
      new GProductsSizesFragmentData_groupModifiers_childModifiersBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GProductsSizesFragmentData_groupModifiers_childModifiers &&
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
            'GProductsSizesFragmentData_groupModifiers_childModifiers')
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

class GProductsSizesFragmentData_groupModifiers_childModifiersBuilder
    implements
        Builder<GProductsSizesFragmentData_groupModifiers_childModifiers,
            GProductsSizesFragmentData_groupModifiers_childModifiersBuilder> {
  _$GProductsSizesFragmentData_groupModifiers_childModifiers? _$v;

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

  GProductsSizesFragmentData_groupModifiers_childModifiersBuilder() {
    GProductsSizesFragmentData_groupModifiers_childModifiers._initializeBuilder(
        this);
  }

  GProductsSizesFragmentData_groupModifiers_childModifiersBuilder get _$this {
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
  void replace(GProductsSizesFragmentData_groupModifiers_childModifiers other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GProductsSizesFragmentData_groupModifiers_childModifiers;
  }

  @override
  void update(
      void Function(
              GProductsSizesFragmentData_groupModifiers_childModifiersBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GProductsSizesFragmentData_groupModifiers_childModifiers build() {
    final _$result = _$v ??
        new _$GProductsSizesFragmentData_groupModifiers_childModifiers._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                'GProductsSizesFragmentData_groupModifiers_childModifiers',
                'G__typename'),
            maxAmount: maxAmount,
            minAmount: minAmount,
            modifierId: BuiltValueNullFieldError.checkNotNull(
                modifierId,
                'GProductsSizesFragmentData_groupModifiers_childModifiers',
                'modifierId'),
            required: required,
            defaultAmount: defaultAmount,
            hideIfDefaultAmount: hideIfDefaultAmount);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
