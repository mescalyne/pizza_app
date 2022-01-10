// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:gql_code_builder/src/serializers/default_scalar_serializer.dart'
    as _i1;
import 'package:toto_mobile/src/core/data/network/models/serializers.gql.dart'
    as _i2;

part 'toto.schema.schema.gql.g.dart';

abstract class GDateTime implements Built<GDateTime, GDateTimeBuilder> {
  GDateTime._();

  factory GDateTime([String? value]) =>
      _$GDateTime((b) => value != null ? (b..value = value) : b);

  String get value;
  @BuiltValueSerializer(custom: true)
  static Serializer<GDateTime> get serializer =>
      _i1.DefaultScalarSerializer<GDateTime>(
          (Object serialized) => GDateTime((serialized as String?)));
}

class GTypeFile extends EnumClass {
  const GTypeFile._(String name) : super(name);

  static const GTypeFile IMAGE = _$gTypeFileIMAGE;

  static const GTypeFile VIDEO = _$gTypeFileVIDEO;

  static const GTypeFile TEXT = _$gTypeFileTEXT;

  static const GTypeFile AUDIO = _$gTypeFileAUDIO;

  static Serializer<GTypeFile> get serializer => _$gTypeFileSerializer;
  static BuiltSet<GTypeFile> get values => _$gTypeFileValues;
  static GTypeFile valueOf(String name) => _$gTypeFileValueOf(name);
}

abstract class GJsonData implements Built<GJsonData, GJsonDataBuilder> {
  GJsonData._();

  factory GJsonData([String? value]) =>
      _$GJsonData((b) => value != null ? (b..value = value) : b);

  String get value;
  @BuiltValueSerializer(custom: true)
  static Serializer<GJsonData> get serializer =>
      _i1.DefaultScalarSerializer<GJsonData>(
          (Object serialized) => GJsonData((serialized as String?)));
}

class GSocialNetworkIcon extends EnumClass {
  const GSocialNetworkIcon._(String name) : super(name);

  static const GSocialNetworkIcon ICON_FACEBOOK =
      _$gSocialNetworkIconICON_FACEBOOK;

  static const GSocialNetworkIcon ICON_VK = _$gSocialNetworkIconICON_VK;

  static const GSocialNetworkIcon ICON_INSTAGRAM =
      _$gSocialNetworkIconICON_INSTAGRAM;

  static const GSocialNetworkIcon ICON_OK = _$gSocialNetworkIconICON_OK;

  static Serializer<GSocialNetworkIcon> get serializer =>
      _$gSocialNetworkIconSerializer;
  static BuiltSet<GSocialNetworkIcon> get values => _$gSocialNetworkIconValues;
  static GSocialNetworkIcon valueOf(String name) =>
      _$gSocialNetworkIconValueOf(name);
}

class GProductType extends EnumClass {
  const GProductType._(String name) : super(name);

  static const GProductType DISH_TYPE = _$gProductTypeDISH_TYPE;

  static const GProductType MODIFIER_TYPE = _$gProductTypeMODIFIER_TYPE;

  static Serializer<GProductType> get serializer => _$gProductTypeSerializer;
  static BuiltSet<GProductType> get values => _$gProductTypeValues;
  static GProductType valueOf(String name) => _$gProductTypeValueOf(name);
}

abstract class GProductFiltersInput
    implements Built<GProductFiltersInput, GProductFiltersInputBuilder> {
  GProductFiltersInput._();

  factory GProductFiltersInput(
          [Function(GProductFiltersInputBuilder b) updates]) =
      _$GProductFiltersInput;

  BuiltList<String>? get ids;
  String? get search;
  String? get parentGroupId;
  String? get productCategoryId;
  String? get groupId;
  BuiltList<String>? get tags;
  GProductType? get type;
  bool? get notIncludedInMenu;
  bool? get withNotVisible;
  bool? get withRemoved;
  BuiltList<String>? get terminals;
  int? get restaurant;
  static Serializer<GProductFiltersInput> get serializer =>
      _$gProductFiltersInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GProductFiltersInput.serializer, this)
          as Map<String, dynamic>);
  static GProductFiltersInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GProductFiltersInput.serializer, json);
}

abstract class GGroupFiltersInput
    implements Built<GGroupFiltersInput, GGroupFiltersInputBuilder> {
  GGroupFiltersInput._();

  factory GGroupFiltersInput([Function(GGroupFiltersInputBuilder b) updates]) =
      _$GGroupFiltersInput;

  BuiltList<String>? get ids;
  String? get search;
  BuiltList<String>? get tags;
  bool? get notIncludedInMenu;
  bool? get withNotVisible;
  static Serializer<GGroupFiltersInput> get serializer =>
      _$gGroupFiltersInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GGroupFiltersInput.serializer, this)
          as Map<String, dynamic>);
  static GGroupFiltersInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GGroupFiltersInput.serializer, json);
}

class GCartOrderStatus extends EnumClass {
  const GCartOrderStatus._(String name) : super(name);

  static const GCartOrderStatus NULL_CART_STATUS =
      _$gCartOrderStatusNULL_CART_STATUS;

  static const GCartOrderStatus NEW_CART_STATUS =
      _$gCartOrderStatusNEW_CART_STATUS;

  static const GCartOrderStatus AWAITING_DELIVERY_CART_STATUS =
      _$gCartOrderStatusAWAITING_DELIVERY_CART_STATUS;

  static const GCartOrderStatus ON_THE_WAY_CART_STATUS =
      _$gCartOrderStatusON_THE_WAY_CART_STATUS;

  static const GCartOrderStatus CLOSED_CART_STATUS =
      _$gCartOrderStatusCLOSED_CART_STATUS;

  static const GCartOrderStatus CANCELLED_CART_STATUS =
      _$gCartOrderStatusCANCELLED_CART_STATUS;

  static const GCartOrderStatus DELIVERED_CART_STATUS =
      _$gCartOrderStatusDELIVERED_CART_STATUS;

  static const GCartOrderStatus NOT_CONFIRMED_CART_STATUS =
      _$gCartOrderStatusNOT_CONFIRMED_CART_STATUS;

  static const GCartOrderStatus IN_PROGRESS_CART_STATUS =
      _$gCartOrderStatusIN_PROGRESS_CART_STATUS;

  static const GCartOrderStatus DONE = _$gCartOrderStatusDONE;

  static Serializer<GCartOrderStatus> get serializer =>
      _$gCartOrderStatusSerializer;
  static BuiltSet<GCartOrderStatus> get values => _$gCartOrderStatusValues;
  static GCartOrderStatus valueOf(String name) =>
      _$gCartOrderStatusValueOf(name);
}

class GCartPaymentStatus extends EnumClass {
  const GCartPaymentStatus._(String name) : super(name);

  static const GCartPaymentStatus NULL = _$gCartPaymentStatusNULL;

  static const GCartPaymentStatus NEW = _$gCartPaymentStatusNEW;

  static const GCartPaymentStatus PAYED = _$gCartPaymentStatusPAYED;

  static const GCartPaymentStatus REFUNDED = _$gCartPaymentStatusREFUNDED;

  static Serializer<GCartPaymentStatus> get serializer =>
      _$gCartPaymentStatusSerializer;
  static BuiltSet<GCartPaymentStatus> get values => _$gCartPaymentStatusValues;
  static GCartPaymentStatus valueOf(String name) =>
      _$gCartPaymentStatusValueOf(name);
}

class GCartPaymentType extends EnumClass {
  const GCartPaymentType._(String name) : super(name);

  static const GCartPaymentType CASH_PAYMENT_TYPE =
      _$gCartPaymentTypeCASH_PAYMENT_TYPE;

  static const GCartPaymentType CARD_PAYMENT_TYPE =
      _$gCartPaymentTypeCARD_PAYMENT_TYPE;

  static const GCartPaymentType CARD_EXTERNAL_PAYMENT_TYPE =
      _$gCartPaymentTypeCARD_EXTERNAL_PAYMENT_TYPE;

  static Serializer<GCartPaymentType> get serializer =>
      _$gCartPaymentTypeSerializer;
  static BuiltSet<GCartPaymentType> get values => _$gCartPaymentTypeValues;
  static GCartPaymentType valueOf(String name) =>
      _$gCartPaymentTypeValueOf(name);
}

class GWeekdays extends EnumClass {
  const GWeekdays._(String name) : super(name);

  static const GWeekdays SUNDAY = _$gWeekdaysSUNDAY;

  static const GWeekdays MONDAY = _$gWeekdaysMONDAY;

  static const GWeekdays TUESDAY = _$gWeekdaysTUESDAY;

  static const GWeekdays WEDNESDAY = _$gWeekdaysWEDNESDAY;

  static const GWeekdays THURSDAY = _$gWeekdaysTHURSDAY;

  static const GWeekdays FRIDAY = _$gWeekdaysFRIDAY;

  static const GWeekdays SATURDAY = _$gWeekdaysSATURDAY;

  static Serializer<GWeekdays> get serializer => _$gWeekdaysSerializer;
  static BuiltSet<GWeekdays> get values => _$gWeekdaysValues;
  static GWeekdays valueOf(String name) => _$gWeekdaysValueOf(name);
}

abstract class GCartFiltersInput
    implements Built<GCartFiltersInput, GCartFiltersInputBuilder> {
  GCartFiltersInput._();

  factory GCartFiltersInput([Function(GCartFiltersInputBuilder b) updates]) =
      _$GCartFiltersInput;

  GCartPaymentStatus? get payment_status;
  GCartOrderStatus? get order_status;
  bool? get not_done_status;
  static Serializer<GCartFiltersInput> get serializer =>
      _$gCartFiltersInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GCartFiltersInput.serializer, this)
          as Map<String, dynamic>);
  static GCartFiltersInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GCartFiltersInput.serializer, json);
}

abstract class GPaginateInput
    implements Built<GPaginateInput, GPaginateInputBuilder> {
  GPaginateInput._();

  factory GPaginateInput([Function(GPaginateInputBuilder b) updates]) =
      _$GPaginateInput;

  int? get perPage;
  int? get page;
  static Serializer<GPaginateInput> get serializer =>
      _$gPaginateInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GPaginateInput.serializer, this)
          as Map<String, dynamic>);
  static GPaginateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GPaginateInput.serializer, json);
}

abstract class GAdminLogFiltersInput
    implements Built<GAdminLogFiltersInput, GAdminLogFiltersInputBuilder> {
  GAdminLogFiltersInput._();

  factory GAdminLogFiltersInput(
          [Function(GAdminLogFiltersInputBuilder b) updates]) =
      _$GAdminLogFiltersInput;

  GLogGroup? get group;
  String? get search;
  static Serializer<GAdminLogFiltersInput> get serializer =>
      _$gAdminLogFiltersInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GAdminLogFiltersInput.serializer, this)
          as Map<String, dynamic>);
  static GAdminLogFiltersInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GAdminLogFiltersInput.serializer, json);
}

class GLogGroup extends EnumClass {
  const GLogGroup._(String name) : super(name);

  static const GLogGroup ERROR = _$gLogGroupERROR;

  static const GLogGroup NOTIFY = _$gLogGroupNOTIFY;

  static const GLogGroup DEFAULT = _$gLogGroupDEFAULT;

  static Serializer<GLogGroup> get serializer => _$gLogGroupSerializer;
  static BuiltSet<GLogGroup> get values => _$gLogGroupValues;
  static GLogGroup valueOf(String name) => _$gLogGroupValueOf(name);
}

abstract class GSortInput implements Built<GSortInput, GSortInputBuilder> {
  GSortInput._();

  factory GSortInput([Function(GSortInputBuilder b) updates]) = _$GSortInput;

  @BuiltValueField(wireName: '_field')
  String? get G_field;
  @BuiltValueField(wireName: '_type')
  GSortType? get G_type;
  static Serializer<GSortInput> get serializer => _$gSortInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GSortInput.serializer, this)
          as Map<String, dynamic>);
  static GSortInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GSortInput.serializer, json);
}

class GSortType extends EnumClass {
  const GSortType._(String name) : super(name);

  static const GSortType ASC = _$gSortTypeASC;

  static const GSortType DESC = _$gSortTypeDESC;

  static Serializer<GSortType> get serializer => _$gSortTypeSerializer;
  static BuiltSet<GSortType> get values => _$gSortTypeValues;
  static GSortType valueOf(String name) => _$gSortTypeValueOf(name);
}

abstract class GUploadFileInput
    implements Built<GUploadFileInput, GUploadFileInputBuilder> {
  GUploadFileInput._();

  factory GUploadFileInput([Function(GUploadFileInputBuilder b) updates]) =
      _$GUploadFileInput;

  GUpload get file;
  GUpload? get thumbnail;
  int? get author;
  String? get description;
  static Serializer<GUploadFileInput> get serializer =>
      _$gUploadFileInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GUploadFileInput.serializer, this)
          as Map<String, dynamic>);
  static GUploadFileInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GUploadFileInput.serializer, json);
}

abstract class GUpload implements Built<GUpload, GUploadBuilder> {
  GUpload._();

  factory GUpload([String? value]) =>
      _$GUpload((b) => value != null ? (b..value = value) : b);

  String get value;
  @BuiltValueSerializer(custom: true)
  static Serializer<GUpload> get serializer =>
      _i1.DefaultScalarSerializer<GUpload>(
          (Object serialized) => GUpload((serialized as String?)));
}

abstract class GUpdateUserInput
    implements Built<GUpdateUserInput, GUpdateUserInputBuilder> {
  GUpdateUserInput._();

  factory GUpdateUserInput([Function(GUpdateUserInputBuilder b) updates]) =
      _$GUpdateUserInput;

  int? get city_id;
  String get name;
  String? get surname;
  String? get middle_name;
  String? get email;
  String? get date_of_birth;
  static Serializer<GUpdateUserInput> get serializer =>
      _$gUpdateUserInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GUpdateUserInput.serializer, this)
          as Map<String, dynamic>);
  static GUpdateUserInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GUpdateUserInput.serializer, json);
}

abstract class GCreateDeliveryAddressInput
    implements
        Built<GCreateDeliveryAddressInput, GCreateDeliveryAddressInputBuilder> {
  GCreateDeliveryAddressInput._();

  factory GCreateDeliveryAddressInput(
          [Function(GCreateDeliveryAddressInputBuilder b) updates]) =
      _$GCreateDeliveryAddressInput;

  String get city_name;
  String get street;
  String get home;
  String? get housing;
  String? get apartment;
  String? get comment;
  double get latitude;
  double get longitude;
  static Serializer<GCreateDeliveryAddressInput> get serializer =>
      _$gCreateDeliveryAddressInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
      GCreateDeliveryAddressInput.serializer, this) as Map<String, dynamic>);
  static GCreateDeliveryAddressInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GCreateDeliveryAddressInput.serializer, json);
}

abstract class GUpdateDeliveryAddressInput
    implements
        Built<GUpdateDeliveryAddressInput, GUpdateDeliveryAddressInputBuilder> {
  GUpdateDeliveryAddressInput._();

  factory GUpdateDeliveryAddressInput(
          [Function(GUpdateDeliveryAddressInputBuilder b) updates]) =
      _$GUpdateDeliveryAddressInput;

  int get id;
  int get city_id;
  String? get city_name;
  String get street;
  String get home;
  String? get housing;
  String? get apartment;
  String? get comment;
  double get latitude;
  double get longitude;
  static Serializer<GUpdateDeliveryAddressInput> get serializer =>
      _$gUpdateDeliveryAddressInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
      GUpdateDeliveryAddressInput.serializer, this) as Map<String, dynamic>);
  static GUpdateDeliveryAddressInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GUpdateDeliveryAddressInput.serializer, json);
}

abstract class GaddItemToCartInput
    implements Built<GaddItemToCartInput, GaddItemToCartInputBuilder> {
  GaddItemToCartInput._();

  factory GaddItemToCartInput(
      [Function(GaddItemToCartInputBuilder b) updates]) = _$GaddItemToCartInput;

  String get product_id;
  int get amount;
  String? get name;
  String? get code;
  BuiltList<GcartItemModifierInput>? get modifiers;
  static Serializer<GaddItemToCartInput> get serializer =>
      _$gaddItemToCartInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GaddItemToCartInput.serializer, this)
          as Map<String, dynamic>);
  static GaddItemToCartInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GaddItemToCartInput.serializer, json);
}

abstract class GcartItemModifierInput
    implements Built<GcartItemModifierInput, GcartItemModifierInputBuilder> {
  GcartItemModifierInput._();

  factory GcartItemModifierInput(
          [Function(GcartItemModifierInputBuilder b) updates]) =
      _$GcartItemModifierInput;

  String get product_id;
  int get amount;
  String? get name;
  String? get group_id;
  String? get group_name;
  static Serializer<GcartItemModifierInput> get serializer =>
      _$gcartItemModifierInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GcartItemModifierInput.serializer, this)
          as Map<String, dynamic>);
  static GcartItemModifierInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GcartItemModifierInput.serializer, json);
}

abstract class GaddItemsToCartInput
    implements Built<GaddItemsToCartInput, GaddItemsToCartInputBuilder> {
  GaddItemsToCartInput._();

  factory GaddItemsToCartInput(
          [Function(GaddItemsToCartInputBuilder b) updates]) =
      _$GaddItemsToCartInput;

  BuiltList<GaddItemToCartInput>? get items;
  static Serializer<GaddItemsToCartInput> get serializer =>
      _$gaddItemsToCartInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GaddItemsToCartInput.serializer, this)
          as Map<String, dynamic>);
  static GaddItemsToCartInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GaddItemsToCartInput.serializer, json);
}

abstract class GaddModifiersToCartItemInput
    implements
        Built<GaddModifiersToCartItemInput,
            GaddModifiersToCartItemInputBuilder> {
  GaddModifiersToCartItemInput._();

  factory GaddModifiersToCartItemInput(
          [Function(GaddModifiersToCartItemInputBuilder b) updates]) =
      _$GaddModifiersToCartItemInput;

  int get cart_item_id;
  BuiltList<GcartItemModifierInput>? get modifiers;
  static Serializer<GaddModifiersToCartItemInput> get serializer =>
      _$gaddModifiersToCartItemInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
      GaddModifiersToCartItemInput.serializer, this) as Map<String, dynamic>);
  static GaddModifiersToCartItemInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GaddModifiersToCartItemInput.serializer, json);
}

abstract class GeditModifierCartItemInput
    implements
        Built<GeditModifierCartItemInput, GeditModifierCartItemInputBuilder> {
  GeditModifierCartItemInput._();

  factory GeditModifierCartItemInput(
          [Function(GeditModifierCartItemInputBuilder b) updates]) =
      _$GeditModifierCartItemInput;

  int get cart_item_id;
  int get cart_item_modifier_id;
  GcartItemModifierUpdateInput? get modifier;
  static Serializer<GeditModifierCartItemInput> get serializer =>
      _$geditModifierCartItemInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
      GeditModifierCartItemInput.serializer, this) as Map<String, dynamic>);
  static GeditModifierCartItemInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GeditModifierCartItemInput.serializer, json);
}

abstract class GcartItemModifierUpdateInput
    implements
        Built<GcartItemModifierUpdateInput,
            GcartItemModifierUpdateInputBuilder> {
  GcartItemModifierUpdateInput._();

  factory GcartItemModifierUpdateInput(
          [Function(GcartItemModifierUpdateInputBuilder b) updates]) =
      _$GcartItemModifierUpdateInput;

  String? get name;
  int? get amount;
  String? get group_id;
  String? get group_name;
  static Serializer<GcartItemModifierUpdateInput> get serializer =>
      _$gcartItemModifierUpdateInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
      GcartItemModifierUpdateInput.serializer, this) as Map<String, dynamic>);
  static GcartItemModifierUpdateInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GcartItemModifierUpdateInput.serializer, json);
}

abstract class GeditCartItemInput
    implements Built<GeditCartItemInput, GeditCartItemInputBuilder> {
  GeditCartItemInput._();

  factory GeditCartItemInput([Function(GeditCartItemInputBuilder b) updates]) =
      _$GeditCartItemInput;

  int get cart_item_id;
  String? get name;
  int? get amount;
  BuiltList<GcartItemModifierInput>? get modifiers;
  static Serializer<GeditCartItemInput> get serializer =>
      _$geditCartItemInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GeditCartItemInput.serializer, this)
          as Map<String, dynamic>);
  static GeditCartItemInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GeditCartItemInput.serializer, json);
}

abstract class GeditCartInput
    implements Built<GeditCartInput, GeditCartInputBuilder> {
  GeditCartInput._();

  factory GeditCartInput([Function(GeditCartInputBuilder b) updates]) =
      _$GeditCartInput;

  String? get terminal_id;
  int? get address_id;
  bool? get is_self_service;
  String? get coupon;
  GCartPaymentType? get payment_type;
  int? get change_from;
  int? get bonus_sum;
  int? get persons_count;
  GDateTime? get date;
  String? get customer_name;
  String? get customer_phone;
  String? get comment;
  bool? get locked;
  static Serializer<GeditCartInput> get serializer =>
      _$geditCartInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GeditCartInput.serializer, this)
          as Map<String, dynamic>);
  static GeditCartInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GeditCartInput.serializer, json);
}

abstract class GCreateOrderFeedbackInput
    implements
        Built<GCreateOrderFeedbackInput, GCreateOrderFeedbackInputBuilder> {
  GCreateOrderFeedbackInput._();

  factory GCreateOrderFeedbackInput(
          [Function(GCreateOrderFeedbackInputBuilder b) updates]) =
      _$GCreateOrderFeedbackInput;

  int get cart_id;
  BuiltList<GOptionInput>? get options;
  String? get comment;
  int get mark;
  static Serializer<GCreateOrderFeedbackInput> get serializer =>
      _$gCreateOrderFeedbackInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GCreateOrderFeedbackInput.serializer, this)
          as Map<String, dynamic>);
  static GCreateOrderFeedbackInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GCreateOrderFeedbackInput.serializer, json);
}

abstract class GOptionInput
    implements Built<GOptionInput, GOptionInputBuilder> {
  GOptionInput._();

  factory GOptionInput([Function(GOptionInputBuilder b) updates]) =
      _$GOptionInput;

  int get option_id;
  bool get mark;
  static Serializer<GOptionInput> get serializer => _$gOptionInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GOptionInput.serializer, this)
          as Map<String, dynamic>);
  static GOptionInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GOptionInput.serializer, json);
}

abstract class GAdminUpdateProductInput
    implements
        Built<GAdminUpdateProductInput, GAdminUpdateProductInputBuilder> {
  GAdminUpdateProductInput._();

  factory GAdminUpdateProductInput(
          [Function(GAdminUpdateProductInputBuilder b) updates]) =
      _$GAdminUpdateProductInput;

  int? get id;
  String? get name;
  String? get description;
  BuiltList<String>? get tags;
  bool? get is_visible;
  static Serializer<GAdminUpdateProductInput> get serializer =>
      _$gAdminUpdateProductInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GAdminUpdateProductInput.serializer, this)
          as Map<String, dynamic>);
  static GAdminUpdateProductInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GAdminUpdateProductInput.serializer, json);
}

abstract class GAdminUpdateGroupInput
    implements Built<GAdminUpdateGroupInput, GAdminUpdateGroupInputBuilder> {
  GAdminUpdateGroupInput._();

  factory GAdminUpdateGroupInput(
          [Function(GAdminUpdateGroupInputBuilder b) updates]) =
      _$GAdminUpdateGroupInput;

  int? get id;
  String? get name;
  String? get description;
  BuiltList<String>? get tags;
  bool? get is_visible;
  static Serializer<GAdminUpdateGroupInput> get serializer =>
      _$gAdminUpdateGroupInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GAdminUpdateGroupInput.serializer, this)
          as Map<String, dynamic>);
  static GAdminUpdateGroupInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GAdminUpdateGroupInput.serializer, json);
}

abstract class GAdminScheduleInput
    implements Built<GAdminScheduleInput, GAdminScheduleInputBuilder> {
  GAdminScheduleInput._();

  factory GAdminScheduleInput(
      [Function(GAdminScheduleInputBuilder b) updates]) = _$GAdminScheduleInput;

  GWeekdays? get weekday;
  String? get time;
  static Serializer<GAdminScheduleInput> get serializer =>
      _$gAdminScheduleInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GAdminScheduleInput.serializer, this)
          as Map<String, dynamic>);
  static GAdminScheduleInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GAdminScheduleInput.serializer, json);
}

abstract class GAdminCreateMarketingCampaignInput
    implements
        Built<GAdminCreateMarketingCampaignInput,
            GAdminCreateMarketingCampaignInputBuilder> {
  GAdminCreateMarketingCampaignInput._();

  factory GAdminCreateMarketingCampaignInput(
          [Function(GAdminCreateMarketingCampaignInputBuilder b) updates]) =
      _$GAdminCreateMarketingCampaignInput;

  String get name;
  String get description;
  int? get image_id;
  DateTime? get period_from;
  DateTime? get period_to;
  bool? get active;
  static Serializer<GAdminCreateMarketingCampaignInput> get serializer =>
      _$gAdminCreateMarketingCampaignInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers
          .serializeWith(GAdminCreateMarketingCampaignInput.serializer, this)
      as Map<String, dynamic>);
  static GAdminCreateMarketingCampaignInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GAdminCreateMarketingCampaignInput.serializer, json);
}

abstract class GAdminUpdateMarketingCampaignInput
    implements
        Built<GAdminUpdateMarketingCampaignInput,
            GAdminUpdateMarketingCampaignInputBuilder> {
  GAdminUpdateMarketingCampaignInput._();

  factory GAdminUpdateMarketingCampaignInput(
          [Function(GAdminUpdateMarketingCampaignInputBuilder b) updates]) =
      _$GAdminUpdateMarketingCampaignInput;

  String get name;
  String get description;
  int? get image_id;
  DateTime? get period_from;
  DateTime? get period_to;
  bool? get active;
  static Serializer<GAdminUpdateMarketingCampaignInput> get serializer =>
      _$gAdminUpdateMarketingCampaignInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers
          .serializeWith(GAdminUpdateMarketingCampaignInput.serializer, this)
      as Map<String, dynamic>);
  static GAdminUpdateMarketingCampaignInput? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GAdminUpdateMarketingCampaignInput.serializer, json);
}

abstract class GAdminCreatePageInput
    implements Built<GAdminCreatePageInput, GAdminCreatePageInputBuilder> {
  GAdminCreatePageInput._();

  factory GAdminCreatePageInput(
          [Function(GAdminCreatePageInputBuilder b) updates]) =
      _$GAdminCreatePageInput;

  String? get slug;
  String get title;
  int? get city_id;
  static Serializer<GAdminCreatePageInput> get serializer =>
      _$gAdminCreatePageInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GAdminCreatePageInput.serializer, this)
          as Map<String, dynamic>);
  static GAdminCreatePageInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GAdminCreatePageInput.serializer, json);
}

abstract class GAdminUpdatePageInput
    implements Built<GAdminUpdatePageInput, GAdminUpdatePageInputBuilder> {
  GAdminUpdatePageInput._();

  factory GAdminUpdatePageInput(
          [Function(GAdminUpdatePageInputBuilder b) updates]) =
      _$GAdminUpdatePageInput;

  int get id;
  String? get slug;
  String? get title;
  int? get city_id;
  int? get seo_id;
  BuiltList<int>? get content_ids;
  static Serializer<GAdminUpdatePageInput> get serializer =>
      _$gAdminUpdatePageInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GAdminUpdatePageInput.serializer, this)
          as Map<String, dynamic>);
  static GAdminUpdatePageInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GAdminUpdatePageInput.serializer, json);
}

abstract class GAdminCreatePageContentInput
    implements
        Built<GAdminCreatePageContentInput,
            GAdminCreatePageContentInputBuilder> {
  GAdminCreatePageContentInput._();

  factory GAdminCreatePageContentInput(
          [Function(GAdminCreatePageContentInputBuilder b) updates]) =
      _$GAdminCreatePageContentInput;

  String? get data;
  int get page_id;
  int get order;
  static Serializer<GAdminCreatePageContentInput> get serializer =>
      _$gAdminCreatePageContentInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
      GAdminCreatePageContentInput.serializer, this) as Map<String, dynamic>);
  static GAdminCreatePageContentInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GAdminCreatePageContentInput.serializer, json);
}

abstract class GAdminUpdatePageContentInput
    implements
        Built<GAdminUpdatePageContentInput,
            GAdminUpdatePageContentInputBuilder> {
  GAdminUpdatePageContentInput._();

  factory GAdminUpdatePageContentInput(
          [Function(GAdminUpdatePageContentInputBuilder b) updates]) =
      _$GAdminUpdatePageContentInput;

  int get id;
  String get data;
  int get order;
  static Serializer<GAdminUpdatePageContentInput> get serializer =>
      _$gAdminUpdatePageContentInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
      GAdminUpdatePageContentInput.serializer, this) as Map<String, dynamic>);
  static GAdminUpdatePageContentInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GAdminUpdatePageContentInput.serializer, json);
}

abstract class GAdminCreatePageSeoInput
    implements
        Built<GAdminCreatePageSeoInput, GAdminCreatePageSeoInputBuilder> {
  GAdminCreatePageSeoInput._();

  factory GAdminCreatePageSeoInput(
          [Function(GAdminCreatePageSeoInputBuilder b) updates]) =
      _$GAdminCreatePageSeoInput;

  String? get title;
  String? get description;
  String? get image;
  String? get keywords;
  String? get noindex;
  static Serializer<GAdminCreatePageSeoInput> get serializer =>
      _$gAdminCreatePageSeoInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GAdminCreatePageSeoInput.serializer, this)
          as Map<String, dynamic>);
  static GAdminCreatePageSeoInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GAdminCreatePageSeoInput.serializer, json);
}

abstract class GAdminUpdatePageSeoInput
    implements
        Built<GAdminUpdatePageSeoInput, GAdminUpdatePageSeoInputBuilder> {
  GAdminUpdatePageSeoInput._();

  factory GAdminUpdatePageSeoInput(
          [Function(GAdminUpdatePageSeoInputBuilder b) updates]) =
      _$GAdminUpdatePageSeoInput;

  String get id;
  String? get title;
  String? get description;
  String? get image;
  String? get keywords;
  String? get noindex;
  static Serializer<GAdminUpdatePageSeoInput> get serializer =>
      _$gAdminUpdatePageSeoInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GAdminUpdatePageSeoInput.serializer, this)
          as Map<String, dynamic>);
  static GAdminUpdatePageSeoInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GAdminUpdatePageSeoInput.serializer, json);
}

abstract class GadminCreateCityInput
    implements Built<GadminCreateCityInput, GadminCreateCityInputBuilder> {
  GadminCreateCityInput._();

  factory GadminCreateCityInput(
          [Function(GadminCreateCityInputBuilder b) updates]) =
      _$GadminCreateCityInput;

  String get name;
  String? get prefix;
  String? get postal_code;
  String? get city_type;
  bool? get available;
  double? get latitude;
  double? get longitude;
  static Serializer<GadminCreateCityInput> get serializer =>
      _$gadminCreateCityInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GadminCreateCityInput.serializer, this)
          as Map<String, dynamic>);
  static GadminCreateCityInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GadminCreateCityInput.serializer, json);
}

abstract class GadminUpdateCityInput
    implements Built<GadminUpdateCityInput, GadminUpdateCityInputBuilder> {
  GadminUpdateCityInput._();

  factory GadminUpdateCityInput(
          [Function(GadminUpdateCityInputBuilder b) updates]) =
      _$GadminUpdateCityInput;

  String get name;
  String? get prefix;
  String? get postal_code;
  String? get city_type;
  bool? get available;
  double? get latitude;
  double? get longitude;
  static Serializer<GadminUpdateCityInput> get serializer =>
      _$gadminUpdateCityInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GadminUpdateCityInput.serializer, this)
          as Map<String, dynamic>);
  static GadminUpdateCityInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GadminUpdateCityInput.serializer, json);
}

abstract class GadminCreateCompanyEntityInput
    implements
        Built<GadminCreateCompanyEntityInput,
            GadminCreateCompanyEntityInputBuilder> {
  GadminCreateCompanyEntityInput._();

  factory GadminCreateCompanyEntityInput(
          [Function(GadminCreateCompanyEntityInputBuilder b) updates]) =
      _$GadminCreateCompanyEntityInput;

  String get name;
  String? get info;
  String? get inn;
  String? get bank_name;
  String? get bank_settlement_account;
  String? get bank_correspondent_account;
  String? get bik;
  static Serializer<GadminCreateCompanyEntityInput> get serializer =>
      _$gadminCreateCompanyEntityInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
      GadminCreateCompanyEntityInput.serializer, this) as Map<String, dynamic>);
  static GadminCreateCompanyEntityInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GadminCreateCompanyEntityInput.serializer, json);
}

abstract class GadminUpdateCompanyEntityInput
    implements
        Built<GadminUpdateCompanyEntityInput,
            GadminUpdateCompanyEntityInputBuilder> {
  GadminUpdateCompanyEntityInput._();

  factory GadminUpdateCompanyEntityInput(
          [Function(GadminUpdateCompanyEntityInputBuilder b) updates]) =
      _$GadminUpdateCompanyEntityInput;

  String get name;
  String? get info;
  String? get inn;
  String? get bank_name;
  String? get bank_settlement_account;
  String? get bank_correspondent_account;
  String? get bik;
  static Serializer<GadminUpdateCompanyEntityInput> get serializer =>
      _$gadminUpdateCompanyEntityInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
      GadminUpdateCompanyEntityInput.serializer, this) as Map<String, dynamic>);
  static GadminUpdateCompanyEntityInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GadminUpdateCompanyEntityInput.serializer, json);
}

abstract class GadminCreateRestaurantInput
    implements
        Built<GadminCreateRestaurantInput, GadminCreateRestaurantInputBuilder> {
  GadminCreateRestaurantInput._();

  factory GadminCreateRestaurantInput(
          [Function(GadminCreateRestaurantInputBuilder b) updates]) =
      _$GadminCreateRestaurantInput;

  String get name;
  String? get address;
  int? get terminal_kitchen_id;
  int? get terminal_delivery_id;
  int? get city_id;
  String? get latitude;
  String? get longitude;
  String? get open_at;
  String? get close_at;
  static Serializer<GadminCreateRestaurantInput> get serializer =>
      _$gadminCreateRestaurantInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
      GadminCreateRestaurantInput.serializer, this) as Map<String, dynamic>);
  static GadminCreateRestaurantInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GadminCreateRestaurantInput.serializer, json);
}

abstract class GadminUpdateRestaurantInput
    implements
        Built<GadminUpdateRestaurantInput, GadminUpdateRestaurantInputBuilder> {
  GadminUpdateRestaurantInput._();

  factory GadminUpdateRestaurantInput(
          [Function(GadminUpdateRestaurantInputBuilder b) updates]) =
      _$GadminUpdateRestaurantInput;

  String get id;
  String? get name;
  String? get address;
  int? get terminal_kitchen_id;
  int? get terminal_delivery_id;
  int? get city_id;
  String? get latitude;
  String? get longitude;
  BuiltList<GScheduleRestaurantInput>? get schedule_restaurant;
  BuiltList<GScheduleRestaurantInput>? get schedule_delivery;
  static Serializer<GadminUpdateRestaurantInput> get serializer =>
      _$gadminUpdateRestaurantInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
      GadminUpdateRestaurantInput.serializer, this) as Map<String, dynamic>);
  static GadminUpdateRestaurantInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GadminUpdateRestaurantInput.serializer, json);
}

abstract class GScheduleRestaurantInput
    implements
        Built<GScheduleRestaurantInput, GScheduleRestaurantInputBuilder> {
  GScheduleRestaurantInput._();

  factory GScheduleRestaurantInput(
          [Function(GScheduleRestaurantInputBuilder b) updates]) =
      _$GScheduleRestaurantInput;

  GWeekdays? get weekday;
  String? get open_at;
  String? get close_at;
  static Serializer<GScheduleRestaurantInput> get serializer =>
      _$gScheduleRestaurantInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GScheduleRestaurantInput.serializer, this)
          as Map<String, dynamic>);
  static GScheduleRestaurantInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GScheduleRestaurantInput.serializer, json);
}

abstract class GadminCreateTerminalInput
    implements
        Built<GadminCreateTerminalInput, GadminCreateTerminalInputBuilder> {
  GadminCreateTerminalInput._();

  factory GadminCreateTerminalInput(
          [Function(GadminCreateTerminalInputBuilder b) updates]) =
      _$GadminCreateTerminalInput;

  String get terminal_id;
  int get company_entity_id;
  static Serializer<GadminCreateTerminalInput> get serializer =>
      _$gadminCreateTerminalInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GadminCreateTerminalInput.serializer, this)
          as Map<String, dynamic>);
  static GadminCreateTerminalInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GadminCreateTerminalInput.serializer, json);
}

abstract class GadminUpdateTerminalInput
    implements
        Built<GadminUpdateTerminalInput, GadminUpdateTerminalInputBuilder> {
  GadminUpdateTerminalInput._();

  factory GadminUpdateTerminalInput(
          [Function(GadminUpdateTerminalInputBuilder b) updates]) =
      _$GadminUpdateTerminalInput;

  String? get terminal_id;
  int? get company_entity_id;
  static Serializer<GadminUpdateTerminalInput> get serializer =>
      _$gadminUpdateTerminalInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GadminUpdateTerminalInput.serializer, this)
          as Map<String, dynamic>);
  static GadminUpdateTerminalInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GadminUpdateTerminalInput.serializer, json);
}

abstract class GAdminCreateFeedbackOptionInput
    implements
        Built<GAdminCreateFeedbackOptionInput,
            GAdminCreateFeedbackOptionInputBuilder> {
  GAdminCreateFeedbackOptionInput._();

  factory GAdminCreateFeedbackOptionInput(
          [Function(GAdminCreateFeedbackOptionInputBuilder b) updates]) =
      _$GAdminCreateFeedbackOptionInput;

  String get type;
  String get text;
  int get file_id;
  static Serializer<GAdminCreateFeedbackOptionInput> get serializer =>
      _$gAdminCreateFeedbackOptionInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers
          .serializeWith(GAdminCreateFeedbackOptionInput.serializer, this)
      as Map<String, dynamic>);
  static GAdminCreateFeedbackOptionInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GAdminCreateFeedbackOptionInput.serializer, json);
}

abstract class GAdminUpdateFeedbackOptionInput
    implements
        Built<GAdminUpdateFeedbackOptionInput,
            GAdminUpdateFeedbackOptionInputBuilder> {
  GAdminUpdateFeedbackOptionInput._();

  factory GAdminUpdateFeedbackOptionInput(
          [Function(GAdminUpdateFeedbackOptionInputBuilder b) updates]) =
      _$GAdminUpdateFeedbackOptionInput;

  int get id;
  String get type;
  String get text;
  int get file_id;
  static Serializer<GAdminUpdateFeedbackOptionInput> get serializer =>
      _$gAdminUpdateFeedbackOptionInputSerializer;
  Map<String, dynamic> toJson() => (_i2.serializers
          .serializeWith(GAdminUpdateFeedbackOptionInput.serializer, this)
      as Map<String, dynamic>);
  static GAdminUpdateFeedbackOptionInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GAdminUpdateFeedbackOptionInput.serializer, json);
}

abstract class GEmailLoginInput
    implements Built<GEmailLoginInput, GEmailLoginInputBuilder> {
  GEmailLoginInput._();

  factory GEmailLoginInput([Function(GEmailLoginInputBuilder b) updates]) =
      _$GEmailLoginInput;

  String get username;
  String get password;
  bool? get administrator;
  String? get two_factor_code;
  static Serializer<GEmailLoginInput> get serializer =>
      _$gEmailLoginInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GEmailLoginInput.serializer, this)
          as Map<String, dynamic>);
  static GEmailLoginInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GEmailLoginInput.serializer, json);
}

abstract class GEmailRegisterInput
    implements Built<GEmailRegisterInput, GEmailRegisterInputBuilder> {
  GEmailRegisterInput._();

  factory GEmailRegisterInput(
      [Function(GEmailRegisterInputBuilder b) updates]) = _$GEmailRegisterInput;

  String get name;
  String get surname;
  String get email;
  String get password;
  String get password_confirmation;
  static Serializer<GEmailRegisterInput> get serializer =>
      _$gEmailRegisterInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GEmailRegisterInput.serializer, this)
          as Map<String, dynamic>);
  static GEmailRegisterInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GEmailRegisterInput.serializer, json);
}

class GRegisterStatuses extends EnumClass {
  const GRegisterStatuses._(String name) : super(name);

  static const GRegisterStatuses MUST_VERIFY_EMAIL =
      _$gRegisterStatusesMUST_VERIFY_EMAIL;

  static const GRegisterStatuses SUCCESS = _$gRegisterStatusesSUCCESS;

  static Serializer<GRegisterStatuses> get serializer =>
      _$gRegisterStatusesSerializer;
  static BuiltSet<GRegisterStatuses> get values => _$gRegisterStatusesValues;
  static GRegisterStatuses valueOf(String name) =>
      _$gRegisterStatusesValueOf(name);
}

abstract class GPhoneLoginInput
    implements Built<GPhoneLoginInput, GPhoneLoginInputBuilder> {
  GPhoneLoginInput._();

  factory GPhoneLoginInput([Function(GPhoneLoginInputBuilder b) updates]) =
      _$GPhoneLoginInput;

  String get telephone;
  String get code;
  static Serializer<GPhoneLoginInput> get serializer =>
      _$gPhoneLoginInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GPhoneLoginInput.serializer, this)
          as Map<String, dynamic>);
  static GPhoneLoginInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GPhoneLoginInput.serializer, json);
}

abstract class GPhoneRegisterInput
    implements Built<GPhoneRegisterInput, GPhoneRegisterInputBuilder> {
  GPhoneRegisterInput._();

  factory GPhoneRegisterInput(
      [Function(GPhoneRegisterInputBuilder b) updates]) = _$GPhoneRegisterInput;

  String get telephone;
  String get name;
  static Serializer<GPhoneRegisterInput> get serializer =>
      _$gPhoneRegisterInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GPhoneRegisterInput.serializer, this)
          as Map<String, dynamic>);
  static GPhoneRegisterInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GPhoneRegisterInput.serializer, json);
}

abstract class GRefreshTokenInput
    implements Built<GRefreshTokenInput, GRefreshTokenInputBuilder> {
  GRefreshTokenInput._();

  factory GRefreshTokenInput([Function(GRefreshTokenInputBuilder b) updates]) =
      _$GRefreshTokenInput;

  String? get refresh_token;
  static Serializer<GRefreshTokenInput> get serializer =>
      _$gRefreshTokenInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GRefreshTokenInput.serializer, this)
          as Map<String, dynamic>);
  static GRefreshTokenInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GRefreshTokenInput.serializer, json);
}

abstract class GForgotPasswordInput
    implements Built<GForgotPasswordInput, GForgotPasswordInputBuilder> {
  GForgotPasswordInput._();

  factory GForgotPasswordInput(
          [Function(GForgotPasswordInputBuilder b) updates]) =
      _$GForgotPasswordInput;

  String get email;
  static Serializer<GForgotPasswordInput> get serializer =>
      _$gForgotPasswordInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GForgotPasswordInput.serializer, this)
          as Map<String, dynamic>);
  static GForgotPasswordInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GForgotPasswordInput.serializer, json);
}

abstract class GSocialLoginInput
    implements Built<GSocialLoginInput, GSocialLoginInputBuilder> {
  GSocialLoginInput._();

  factory GSocialLoginInput([Function(GSocialLoginInputBuilder b) updates]) =
      _$GSocialLoginInput;

  String get provider;
  String get token;
  static Serializer<GSocialLoginInput> get serializer =>
      _$gSocialLoginInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GSocialLoginInput.serializer, this)
          as Map<String, dynamic>);
  static GSocialLoginInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GSocialLoginInput.serializer, json);
}

abstract class GUpdatePassword
    implements Built<GUpdatePassword, GUpdatePasswordBuilder> {
  GUpdatePassword._();

  factory GUpdatePassword([Function(GUpdatePasswordBuilder b) updates]) =
      _$GUpdatePassword;

  String get old_password;
  String get password;
  String get password_confirmation;
  static Serializer<GUpdatePassword> get serializer =>
      _$gUpdatePasswordSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GUpdatePassword.serializer, this)
          as Map<String, dynamic>);
  static GUpdatePassword? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GUpdatePassword.serializer, json);
}

abstract class GNewPasswordWithCodeInput
    implements
        Built<GNewPasswordWithCodeInput, GNewPasswordWithCodeInputBuilder> {
  GNewPasswordWithCodeInput._();

  factory GNewPasswordWithCodeInput(
          [Function(GNewPasswordWithCodeInputBuilder b) updates]) =
      _$GNewPasswordWithCodeInput;

  String get email;
  String get token;
  String get password;
  String get password_confirmation;
  static Serializer<GNewPasswordWithCodeInput> get serializer =>
      _$gNewPasswordWithCodeInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GNewPasswordWithCodeInput.serializer, this)
          as Map<String, dynamic>);
  static GNewPasswordWithCodeInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers
          .deserializeWith(GNewPasswordWithCodeInput.serializer, json);
}

abstract class GMixed implements Built<GMixed, GMixedBuilder> {
  GMixed._();

  factory GMixed([String? value]) =>
      _$GMixed((b) => value != null ? (b..value = value) : b);

  String get value;
  @BuiltValueSerializer(custom: true)
  static Serializer<GMixed> get serializer =>
      _i1.DefaultScalarSerializer<GMixed>(
          (Object serialized) => GMixed((serialized as String?)));
}

abstract class GJson implements Built<GJson, GJsonBuilder> {
  GJson._();

  factory GJson([String? value]) =>
      _$GJson((b) => value != null ? (b..value = value) : b);

  String get value;
  @BuiltValueSerializer(custom: true)
  static Serializer<GJson> get serializer => _i1.DefaultScalarSerializer<GJson>(
      (Object serialized) => GJson((serialized as String?)));
}

abstract class GRegisterInput
    implements Built<GRegisterInput, GRegisterInputBuilder> {
  GRegisterInput._();

  factory GRegisterInput([Function(GRegisterInputBuilder b) updates]) =
      _$GRegisterInput;

  String get name;
  String get email;
  String get password;
  String get password_confirmation;
  static Serializer<GRegisterInput> get serializer =>
      _$gRegisterInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GRegisterInput.serializer, this)
          as Map<String, dynamic>);
  static GRegisterInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GRegisterInput.serializer, json);
}

abstract class GVerifyEmailInput
    implements Built<GVerifyEmailInput, GVerifyEmailInputBuilder> {
  GVerifyEmailInput._();

  factory GVerifyEmailInput([Function(GVerifyEmailInputBuilder b) updates]) =
      _$GVerifyEmailInput;

  String get token;
  static Serializer<GVerifyEmailInput> get serializer =>
      _$gVerifyEmailInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GVerifyEmailInput.serializer, this)
          as Map<String, dynamic>);
  static GVerifyEmailInput? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GVerifyEmailInput.serializer, json);
}

class GSortOrder extends EnumClass {
  const GSortOrder._(String name) : super(name);

  static const GSortOrder ASC = _$gSortOrderASC;

  static const GSortOrder DESC = _$gSortOrderDESC;

  static Serializer<GSortOrder> get serializer => _$gSortOrderSerializer;
  static BuiltSet<GSortOrder> get values => _$gSortOrderValues;
  static GSortOrder valueOf(String name) => _$gSortOrderValueOf(name);
}

abstract class GOrderByClause
    implements Built<GOrderByClause, GOrderByClauseBuilder> {
  GOrderByClause._();

  factory GOrderByClause([Function(GOrderByClauseBuilder b) updates]) =
      _$GOrderByClause;

  String get field;
  GSortOrder get order;
  static Serializer<GOrderByClause> get serializer =>
      _$gOrderByClauseSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GOrderByClause.serializer, this)
          as Map<String, dynamic>);
  static GOrderByClause? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GOrderByClause.serializer, json);
}

class GTrashed extends EnumClass {
  const GTrashed._(String name) : super(name);

  static const GTrashed ONLY = _$gTrashedONLY;

  static const GTrashed WITH = _$gTrashedWITH;

  static const GTrashed WITHOUT = _$gTrashedWITHOUT;

  static Serializer<GTrashed> get serializer => _$gTrashedSerializer;
  static BuiltSet<GTrashed> get values => _$gTrashedValues;
  static GTrashed valueOf(String name) => _$gTrashedValueOf(name);
}

abstract class GWhereConditions
    implements Built<GWhereConditions, GWhereConditionsBuilder> {
  GWhereConditions._();

  factory GWhereConditions([Function(GWhereConditionsBuilder b) updates]) =
      _$GWhereConditions;

  String? get column;
  GSQLOperator? get operator;
  GMixed? get value;
  BuiltList<GWhereConditions>? get AND;
  BuiltList<GWhereConditions>? get OR;
  static Serializer<GWhereConditions> get serializer =>
      _$gWhereConditionsSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GWhereConditions.serializer, this)
          as Map<String, dynamic>);
  static GWhereConditions? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GWhereConditions.serializer, json);
}

class GSQLOperator extends EnumClass {
  const GSQLOperator._(String name) : super(name);

  static const GSQLOperator EQ = _$gSQLOperatorEQ;

  static const GSQLOperator NEQ = _$gSQLOperatorNEQ;

  static const GSQLOperator GT = _$gSQLOperatorGT;

  static const GSQLOperator GTE = _$gSQLOperatorGTE;

  static const GSQLOperator LT = _$gSQLOperatorLT;

  static const GSQLOperator LTE = _$gSQLOperatorLTE;

  static const GSQLOperator LIKE = _$gSQLOperatorLIKE;

  static const GSQLOperator NOT_LIKE = _$gSQLOperatorNOT_LIKE;

  static const GSQLOperator IN = _$gSQLOperatorIN;

  static const GSQLOperator NOT_IN = _$gSQLOperatorNOT_IN;

  static const GSQLOperator BETWEEN = _$gSQLOperatorBETWEEN;

  static const GSQLOperator NOT_BETWEEN = _$gSQLOperatorNOT_BETWEEN;

  static const GSQLOperator IS_NULL = _$gSQLOperatorIS_NULL;

  static const GSQLOperator IS_NOT_NULL = _$gSQLOperatorIS_NOT_NULL;

  static Serializer<GSQLOperator> get serializer => _$gSQLOperatorSerializer;
  static BuiltSet<GSQLOperator> get values => _$gSQLOperatorValues;
  static GSQLOperator valueOf(String name) => _$gSQLOperatorValueOf(name);
}
