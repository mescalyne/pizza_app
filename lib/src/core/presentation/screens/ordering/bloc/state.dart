import 'package:toto_mobile/src/core/domain/entities/cart.dart';
import 'package:toto_mobile/src/core/presentation/screens/login/bloc/login.dart';

class OrderingState {
  OrderingStatus currentState;
  bool isSelfService;
  CartDto? myCart;
  String? customerName;
  String? customerPhone;
  int personCount;
  String? comment;
  FormFieldValidation nameValidation;
  FormFieldValidation phoneValidation;
  bool closingModal;
  List<DateTime?> dateTimes;
  bool loadingTimesList;
  int changeDate;
  bool scrollingListDate;
  int? deliveryPrice;

  OrderingState({
    this.currentState = OrderingStatus.init,
    this.isSelfService = false,
    this.myCart,
    this.customerName,
    this.customerPhone,
    this.personCount = 1,
    this.comment,
    this.nameValidation = FormFieldValidation.invalid,
    this.phoneValidation = FormFieldValidation.invalid,
    this.closingModal = false,
    this.dateTimes = const [],
    this.loadingTimesList = true,
    this.changeDate = 0,
    this.scrollingListDate = false,
    this.deliveryPrice = 200, //MokData, на сервере нет цены доставки
  });

  bool get nameIsValid => nameValidation == FormFieldValidation.valid;

  bool get phoneIsValid => phoneValidation == FormFieldValidation.valid;

  OrderingState copyWith({
    OrderingStatus? currentState,
    bool? isSelfService,
    CartDto? myCart,
    String? customerName,
    String? customerPhone,
    int? personCount,
    String? comment,
    List<DateTime?>? dateTimes,
    int? changeDate,
    FormFieldValidation? nameValidation,
    FormFieldValidation? phoneValidation,
    bool? loadingTimesList,
    bool? closingModal,
    bool? scrollingListDate,
    int? deliveryPrice,
  }) =>
      OrderingState(
        currentState: currentState ?? this.currentState,
        isSelfService: isSelfService ?? this.isSelfService,
        myCart: myCart ?? this.myCart,
        customerName: customerName ?? this.customerName,
        customerPhone: customerPhone ?? this.customerPhone,
        personCount: personCount ?? this.personCount,
        comment: comment ?? this.comment,
        nameValidation: nameValidation ?? this.nameValidation,
        phoneValidation: phoneValidation ?? this.phoneValidation,
        closingModal: closingModal ?? false,
        dateTimes: dateTimes ?? this.dateTimes,
        loadingTimesList: loadingTimesList ?? this.loadingTimesList,
        changeDate: changeDate ?? this.changeDate,
        scrollingListDate: scrollingListDate ?? this.scrollingListDate,
        deliveryPrice: deliveryPrice ?? this.deliveryPrice,
      );
}

enum OrderingStatus { init, loading, unauthorized, success, error }
