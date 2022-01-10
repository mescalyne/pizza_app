import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:toto_mobile/src/core/domain/entities/cart.dart';
import 'package:toto_mobile/src/core/domain/entities/edit_cart.dart';
import 'package:toto_mobile/src/core/domain/entities/restaurant.dart';
import 'package:toto_mobile/src/core/domain/usecases/cart.dart';
import 'package:toto_mobile/src/core/domain/usecases/profile/current_user.dart';
import 'package:toto_mobile/src/core/domain/usecases/restaurant.dart';
import 'package:toto_mobile/src/core/presentation/router/bloc/bloc.dart';
import 'package:toto_mobile/src/core/presentation/router/bloc/event.dart';
import 'package:toto_mobile/src/core/presentation/screens/login/bloc/login.dart';
import 'package:toto_mobile/src/core/presentation/screens/ordering/bloc/event.dart';
import 'package:toto_mobile/src/core/presentation/screens/ordering/bloc/state.dart';
import 'package:toto_mobile/src/utils/validator.dart';

typedef OrderingEventHandler = Stream<OrderingState>;

@Injectable()
class OrderingBloc extends Bloc<OrderingEvent, OrderingState> {
  final RouterEventSink _routerEventSink;
  final GetMyCartUseCase _myCartUseCase;
  final CurrentUserUseCase _userUseCase;
  final CurrentUserUseCase _authUseCase;
  final EditCartUseCase _editCartUseCase;
  final GetRestaurantUseCase _getRestaurantUseCase;
  StreamSubscription? _authWatcher;
  Timer? timerPersonCountSend;

  // mok data данные для определения статичных данных сейчас(потом должны уйти на бэк)
  final WatchRestaurantIdUseCase _watchRestaurantIdUseCase;
  int _restaurantId = 2;
  bool isSelfService = true;
  String? terminalId;

  OrderingBloc(
    this._routerEventSink,
    this._myCartUseCase,
    this._authUseCase,
    this._userUseCase,
    this._editCartUseCase,
    this._getRestaurantUseCase,
    this._watchRestaurantIdUseCase,
  ) : super(OrderingState()) {
    //для определения текущего ресторана.
    _watchRestaurantIdUseCase.restaurantId().listen(
      (restaurantId) {
        _restaurantId = restaurantId;
      },
    );

    add(Init());
  }

  @override
  Stream<OrderingState> mapEventToState(OrderingEvent event) => event.when(
        init: _init,
        errorLoaded: _errorLoaded,
        openAuthorization: _onOpenAuthorization,
        onLoadWithGuest: _onLoadWithGuest,
        onButtonPayment: _onButtonPayment,
        onSendComment: _onSendComment,
        onButtonCancel: _onButtonCancel,
        onChangeCustomer: _onChangeCustomer,
        onOpenTimeModal: _onOpenTimeModal,
        onChangeDate: _onChangeDate,
        onSendChangedDate: _onSendChangedDate,
        onChangePersonCount: _onChangePersonCount,
      );

  OrderingEventHandler _init() async* {
    yield state.copyWith(currentState: OrderingStatus.loading);

    _authWatcher = _authUseCase.watch().listen((event) {
      add(OnLoadWithGuest(event));
    });
  }

  OrderingEventHandler _errorLoaded() async* {
    _routerEventSink.add(RouterEvent.pop());
  }

  OrderingEventHandler _onLoadWithGuest(bool? isGuest) async* {
    if (isGuest == false) {
      yield state.copyWith(currentState: OrderingStatus.loading);
      var restData = await _getRestaurantUseCase(_restaurantId);
      //var data = await _myCartUseCase(); вернуть потом вместо следующего ->
      //начало определния ресторана
      if (restData.isSuccess && restData.value != null) {
        terminalId = (isSelfService)
            ? restData.value!.terminalKitchen
            : restData.value!.terminalDelivery;
      }
      var data = await _editCartUseCase(EditCartDto(
        terminalId: terminalId,
        isSelfService: isSelfService,
      ));
      //конец
      if ((data.isSuccess) && (data.value != null)) {
        CartDto _myCart = data.value!;
        if (_myCart.customerName == null || _myCart.customerPhone == null) {
          var user = await _userUseCase.getUser();
          if (user?.isFailure == true || user!.value == null) {
            yield state.copyWith(currentState: OrderingStatus.error);
            return;
          }
          yield state.copyWith(
            customerName: user.value!.name,
            customerPhone: user.value!.telephone,
            nameValidation:
                (user.value!.name != null) ? FormFieldValidation.valid : null,
            phoneValidation: (user.value!.telephone != null)
                ? FormFieldValidation.valid
                : null,
          );
        }
        yield state.copyWith(
          isSelfService: _myCart.isSelfService,
          myCart: _myCart,
          personCount: _myCart.personsCount,
          customerName: _myCart.customerName,
          customerPhone: _myCart.customerPhone,
          comment: _myCart.comment,
        );
        List<DateTime?>? newListTimes = _createListDateTimes();
        if (newListTimes != null && newListTimes.length > 0) {
          if (newListTimes.first != null) {
            newListTimes = null;
          }
        }
        yield state.copyWith(
          currentState: OrderingStatus.success,
          dateTimes: newListTimes,
        );
      } else {
        yield state.copyWith(currentState: OrderingStatus.error);
      }
    } else {
      yield state.copyWith(currentState: OrderingStatus.unauthorized);
    }
  }

  OrderingEventHandler _onOpenAuthorization() async* {
    _routerEventSink.add(RouterEvent.toLogin());
  }

  OrderingEventHandler _onButtonPayment() async* {
    if (state.dateTimes[state.changeDate] != null) {
      //Если осталось меньше часа до выбранного времени заказа, выбираеться время "Как можно скорей"
      if (state.dateTimes[state.changeDate]!
              .difference(DateTime.now())
              .inMinutes <
          60) {
        this.state.dateTimes[0] = null;
        yield state.copyWith(changeDate: 0);
      }
    }
    yield state.copyWith(currentState: OrderingStatus.loading);
    var data = await _editCartUseCase(EditCartDto(
      customerName: state.customerName,
      customerPhone: state.customerPhone,
      date: state.dateTimes[state.changeDate],
      personsCount: state.personCount,
      comment: state.comment,
    ));
    if ((data.isSuccess) && (data.value != null)) {
      yield state.copyWith(currentState: OrderingStatus.success);
      _routerEventSink.add(RouterEvent.toPayment());
    } else {
      yield state.copyWith(currentState: OrderingStatus.error);
    }
  }

  OrderingEventHandler _onSendComment(String comment) async* {
    yield state.copyWith(comment: comment);
  }

  OrderingEventHandler _onButtonCancel() async* {
    _routerEventSink.add(RouterEvent.pop());
  }

  OrderingEventHandler _onChangeCustomer(String name, String phone) async* {
    bool validate = true;
    if (!StaticValidators.userNameValidator(name)) {
      yield state.copyWith(nameValidation: FormFieldValidation.invalid);
      validate = false;
    } else {
      validate = true;
      yield state.copyWith(
        nameValidation: FormFieldValidation.valid,
        customerName: name,
      );
    }
    final parsedPhone = PatternParser.parseMaskPhoneNumberToDefault(phone);
    if (!StaticValidators.phoneNumberValidator(parsedPhone)) {
      yield state.copyWith(phoneValidation: FormFieldValidation.invalid);
      validate = false;
    } else {
      validate = true;
      yield state.copyWith(
        phoneValidation: FormFieldValidation.valid,
        customerPhone: phone,
      );
    }
    if (validate) {
      yield state.copyWith(
        closingModal: true,
      );
    }
  }

  OrderingEventHandler _onChangeDate(int index) async* {
    yield state.copyWith(changeDate: index, scrollingListDate: true);
  }

  OrderingEventHandler _onSendChangedDate() async* {
    yield state.copyWith(closingModal: true, scrollingListDate: false);
  }

  OrderingEventHandler _onOpenTimeModal() async* {
    yield state.copyWith(loadingTimesList: true, scrollingListDate: false);
    List<DateTime?>? newListTimes = _createListDateTimes();
    if (newListTimes == null) {
      await Future.delayed(Duration(seconds: 1));
      yield state.copyWith(closingModal: true);
      yield state.copyWith(currentState: OrderingStatus.error);
    } else {
      yield state.copyWith(
        dateTimes: newListTimes,
        loadingTimesList: false,
      );
      await Future.delayed(Duration(milliseconds: 100));
      //Ждем пока отрисуется и отправляем прокрутку до выбранного элемента
      yield state.copyWith(scrollingListDate: true);
    }
  }

  OrderingEventHandler _onChangePersonCount(int count) async* {
    yield state.copyWith(
      personCount: count,
    );
    timerSendPersonCount(count);
  }

  Duration _parserTimeToDateTime(
    String time,
  ) {
    var vars = time.split(':');
    return Duration(hours: int.parse(vars[0]), minutes: int.parse(vars[1]));
  }

  List<DateTime?>? _createListDateTimes() {
    if (state.myCart != null && state.myCart!.restaurant != null) {
      RestaurantDto restaurant = state.myCart!.restaurant!;

      List<DateTime?> newList = [];
      DateTime currentDate = DateTime.now();
      Duration openAt;
      Duration closeAt;
      DateTime startTime;
      DateTime closeTime;
      if (state.isSelfService) {
        //самовывоз
        openAt = _parserTimeToDateTime(restaurant.openAt!);
        closeAt = _parserTimeToDateTime(restaurant.closeAt!);
        if (restaurant.isOpen!) {
          newList.add(null);
          // Рестаран открыт, мы добавляем в массив null - как можно скорее
          startTime = DateTime.utc(
            currentDate.year,
            currentDate.month,
            currentDate.day,
            currentDate.hour - openAt.inHours + 1,
            ((openAt.inMinutes ~/ 5) + 1) * 5,
          );
          // ((currentDate.minute ~/ 5) + 1) * 5 это к какому числу округлять минуты время.
          // Текущее время + 1 час, округленное минут в большую сторону.
        } else {
          if (currentDate.hour < openAt.inHours) {
            startTime = DateTime.utc(
              currentDate.year,
              currentDate.month,
              currentDate.day,
              1,
              openAt.inMinutes,
            );
            //Новое время, открытие ресторана сегодня + 1 час
          } else {
            startTime = DateTime.utc(
              currentDate.year,
              currentDate.month,
              currentDate.day + 1,
              1,
              openAt.inMinutes,
            );
            //Новое время, открытие ресторана завтра + 1 час
          }
        }
      } else {
        //доставка
        openAt = _parserTimeToDateTime(restaurant.deliveryOpenAt!);
        closeAt = _parserTimeToDateTime(restaurant.deliveryCloseAt!);
        if (restaurant.isDeliveryOpen!) {
          newList.add(null);
          startTime = DateTime.utc(
            currentDate.year,
            currentDate.month,
            currentDate.day,
            currentDate.hour + 1,
            (((currentDate.minute ~/ 5) + 1) * 5),
          );
          //  (((currentDate.minute ~/ 5) + 1) * 5) это к какому числу округлять минуты время.
          // Текущее время + 1 час, округленное минут в большую сторону.
        } else {
          if (currentDate.hour <= openAt.inHours) {
            startTime = DateTime.utc(
              currentDate.year,
              currentDate.month,
              currentDate.day,
              1,
              openAt.inMinutes,
            );
            //Новое время, открытие ресторана сегодня + 1 час
          } else {
            startTime = DateTime.utc(
              currentDate.year,
              currentDate.month,
              currentDate.day + 1,
              1,
              openAt.inMinutes,
            );
            //Новое время, открытие ресторана завтра + 1 час
          }
        }
      }
      closeTime = DateTime.utc(
        startTime.year,
        startTime.month,
        startTime.day,
        0,
        closeAt.inMinutes - 59, //время - час до закрытия, 59 нужно.
      );
      while (startTime.isBefore(closeTime)) {
        newList.add(startTime);
        startTime = startTime.add(Duration(minutes: 15));
      }
      return newList;
    } else {
      return null;
    }
  }

  void timerSendPersonCount(int count) async {
    const oneSec = Duration(seconds: 2);
    if (timerPersonCountSend != null) {
      timerPersonCountSend?.cancel();
    }
    timerPersonCountSend = await Timer.periodic(oneSec, (timer) async {
      _editCartUseCase(EditCartDto(personsCount: count)).then((data) {
        if (data.isFailure || data.value == null) {
          _errorLoaded();
          add(OnLoadWithGuest(false));
        }
      });
      timer.cancel();
    });
  }

  @override
  Future<void> close() {
    _authWatcher?.cancel();
    return super.close();
  }
}
