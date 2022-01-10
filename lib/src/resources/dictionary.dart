class TotoDictionary {
  /// Restaraunt screen
  static const nearestRestaurant = 'Ближайший к вам ресторан';
  static const choosePlaceTitle = 'Как будем получать заказ?';
  static const chooseCitiesButton = 'Выбрать';

  /// Delivery screen
  static const inputDeliveryAddress = 'Укажите адрес доставки';
  static const inputPickUpAddress = 'Укажите адрес самовывоза';
  static const chooseDeliveryAddress = 'Выбрать адрес доставки';
  static const chooseDeliveryButtonContinue = 'Продолжить';
  static const addAddress = 'Добавить адрес';
  static const entrance = 'Подъезд';
  static const floor = 'Этаж';
  static const apartment = 'Квартира';
  static const comment = 'Комментарий';
  static const yourComment = 'Ваш комментарий';

  //Drawer
  static const cityChangeAlert = 'При смене города ваша корзина будет очищена';

  ///Menu screen
  static const restaurantPlace = 'В ресторане';
  static const deliveryPlace = 'Доставка';
  static const pickupPlace = 'Самовывоз';
  static const addressTitle = 'Город, улица, дом';

  //Splash screen
  static const specialMenu = 'Подберем меню \n специально для Вас!';
  static const showYourLocation = 'Покажите нам где Вы \n находитесь';
  static const resume = 'Продолжить';

  //Home screen

  static const more = 'Ещё';
  static const restaurants = 'Рестораны';
  static const menu = 'Меню';
  static const bucket = 'Корзина';
  static const delivery = 'Доставка';
  static const discounts = 'Акции';
  static const deliveryAndPayment = 'Доставка и оплата';
  static const supportNumber = '8 800 707-21-23';
  static const supportInfo = 'Звонок бесплатный';
  static const drinks = 'Напиток';
  static const recommend = 'Рекомендация';
  static const discountInCart =
      'При заказе в ресторане через приложение скидка 10%';

  // Contacts screen
  static const callPrice = 'Звонок бесплатный';
  static const rateApp = 'Оценить приложение';
  static const screenTitle = 'Контакты';

  static final authorization = AuthDictionary(
      authorization: 'Авторизация',
      next: 'Продолжить',
      personalInfo:
          'Нажимая “Продолжить” вы соглашаетесь со сбором и обработкой персональных данных',
      login: 'Войти',
      register: 'Зарегистрироваться',
      registration: 'Регистрация',
      yourPhoneNumber: 'Ваш номер телефона',
      codeSended: 'Вам отправили смс с кодом на номер \n',
      loginByPhone: 'Войти по номеру телефона',
      authSuccess: 'Добро пожаловать');

  static final basic = Basic(
      phone: 'Телефон',
      name: 'Имя',
      smsCode: 'Код из СМС',
      resendPhoneCode: 'Отправить повторно',
      phoneNumberMask: '+7');

  static final error = Errors(
      requiredField: 'Обязательное поле',
      error: 'Ошибка',
      tempUnavailable: 'Временно недоступно',
      networkError: 'Ошибка соединения',
      urlOpenError: 'Ошибка открытия ссылки',
      dataError: 'Ошибка получения данных');

  //General
  static const ruble = '₽';
  static const defaultProduct = 'Товар';
  static const makeOrder = 'Сделать заказ';
  static const inputCityOrAddress = 'Введите город или адрес';
  static const defaultImageUrl =
      'https://102922.selcdn.ru/nomenclature_images/fe470000-906b-0025-2b75-08d966355f64/5449e5ed-fcd0-457b-b53f-b5f203679a00.jpg';

  //bucket main page
  static const unauthorizedUser =
      'Для отслеживания заказа, авторизуйтесь в приложении';
  static const emptyBucketText =
      'Ваша корзина пуста, откройте\n\"Меню\" и выберите\nпонравивщийся товар.';
  static const emptyOrdersText =
      'У вас пока нет оформленных\nзаказов, откройте \“Меню\” и\nвыберите понравившийся товар.';
  static const errorBucketText =
      'Что то пошло не так,\nпопробуйте обновить страницу.';
  static const emptyBucketButton = 'Открыть \"Меню\"';
  static const errorBucketButton = 'Обновить';
  static const fullBucketYourOrder = 'Ваш заказ';
  static const fullBucketPromo = 'Промокод';
  static const fullBucketRecomend = 'Рекомендуем попробовать';
  static const fullBucketInputPromo = 'Ввести промокод';
  static const fullBucketAcceptPromo = 'Применить';
  static const fullBucketDiscountSize = 'Скидка по промокоду';
  static const fullBucketTotal = 'К оплате:';
  static const fullBucketInitPayment = 'Оплатить';
  static const fullBucketPrice = 'Оплатить';
  static const fullBucketChekout = 'Оформить заказ';
  static const fullBucketRecommend = 'Добавить к заказу?';
  static const fullBucketDelete = 'УДАЛИТЬ';
  static const fullBucketDots = '...';
  static const fullBucketIncorrectPromo = 'Неверный промокод';

  //user page - main screen
  static const userInfoProfile = 'Профиль';
  static const userInfoAddress = 'АДРЕСА';
  static const userInfoTotonus = 'ТОТОНУСОВ';
  static const userInfoCards = 'КАРТЫ (недоступно)';
  static const userInfoGoAway = 'ВЫЙТИ';
  static const userInfoOrders = 'ЗАКАЗЫ';

  //user page - info screen
  static const userInfoNotSpecifid = 'Нет данных';
  static const userInfoProfileSetting = 'Настройка профиля';
  static const userInfoName = 'Имя';
  static const userInfoNotCorrectDate = 'Не корректная дата рождения';
  static const userInfoBirthDate = 'Дата рождения';
  static const userInfoNotCorrectEmail = 'Некорректный E-mail';
  static const userInfoNotCorrectName = 'Некорректное имя пользователя';
  static const userInfoPleaseInputEmail = 'Пожалуйста введите свой E-mail';
  static const userInfoPleaseInputName = 'Введите имя пользователя';
  static const userInfoPleaseEmail = 'Введите почту';
  static const userInfoContinue = 'Продолжить';
  static const userInfoCansel = 'Отменить';

  //user page - address
  static const userAddressAddMore = 'ДОБАВИТЬ НОВЫЙ АДРЕС';

  //order screen
  static const userOrderTitle = 'Заказы';
  static const userOrderEstimationButton = 'ОЦЕНИТЬ';
  static const userOrderMoreButton = 'ПОДРОБНЕЕ';
  static const userOrderProgressStatusInProgress = 'В ПРОЦЕССЕ';
  static const userOrderProgressStatusDelivered = 'ДОСТАВЛЕН';
  static const userOrderProgressStatusCanceled = 'ОТМЕНËН';

  //order screen - detail
  static const expectedDeliveryTime = 'Ожидаемое время доставки';
  static const expectedDelivered = 'Доставлено';
  static const userOrderDetailTitle = 'Заказ №';
  static const userOrderDetailRepeatButton = 'Повторить заказ';
  static const userOrderDetailEstimateButton = 'Оценить';
  static const userOrderDetailCompositionTitle = 'СОСТАВ ЗАКАЗА';
  static const orderDetailDeliveredStatusAdopted = 'Заказ принят';
  static const orderDetailDeliveredStatusPrepare = 'Готовится';
  static const orderDetailDeliveredStatusGiven = 'Отдан курьеру';
  static const orderDetailDeliveredStatusDelivered = 'Доставлен';
  static const orderDetailDeliveredNonAddress = 'Адрес доставки не указан';
  static const orderDetailRepeatContinueText =
      'Ваша корзина будет очищена, хотите продолжить?';
  static const orderDetailDeliveredDefaultCommentCanceled =
      'Извините, Ваш заказ пришлось отменить. Деньги в Ваш банк поступят в '
      'течение 10 дней, далее срок зачисления на карту определяется банком. '
      'Пожалуйста, повторите заказ по телефону. Звонок бесплатный. ';

  //order screen - estimation
  static const userOrderEstimationTitle = 'Как вам заказ?';
  static const userOrderEstimationDescription1_3 =
      'Расскажите, как нам исправиться и что сделать лучше?';
  static const userOrderEstimationDescription4 =
      'Что нам улучшить, чтобы заслужить 5 звезд?';
  static const userOrderEstimationDescription5 = 'Что особенно понравилось?';
  static const userOrderEstimationCommentHint = 'Оставьте ваш комментарий';
  static const userOrderEstimationButtonSend = 'Отправить отзыв';

  //product card
  static const productNutritionValue = 'ПИЩЕВАЯ ЦЕННОСТЬ';
  static const productNutritionKdj = 'кДж';
  static const productNutritionKkal = 'Ккал';
  static const productNutritionBelki = 'Белки';
  static const productNutritionGiri = 'Жиры';
  static const productNutritionUglev = 'Углеводы';
  static const product100Nutrition = '100 г';
  static const productAllNutrition = 'Всего';
  static const productAdd = 'Добавить';
  static const skipAdd = 'Пропустить';

  static const productAddModifiers = 'Добавить ингредиенты';

  //delivery
  static const deliveryFaster = 'КАК МОЖНО СКОРЕЕ';
  static const deliveryComment = 'Ваш комментарий';
  static const deliveryCheckout = 'Оформление заказа';
  static const deliveryTotalPriceOrder = 'Стоимость заказа';
  static const deliveryDeliveryPriceOrder = 'Доставка';
  static const deliveryCancelAddress = 'Адрес не указан';
  static const deliveryCustomerTitle = 'Кому привезти заказ?';
  static const deliveryCustomerNull = 'Укажите получателя';
  static const deliveryDeliveryTimerTitle = 'Время доставки';
  static const deliveryTimeNoChanged = 'Выберите время доставки';
  static const deliveryButtonPayOrder = 'Оплатить';
  static const deliveryButtonCancelOrder = 'Отменить';
  static const deliveryCountPersons = 'КОЛИЧЕСТВО ПЕРСОН';
  static const deliveryButtonDone = 'Готово';
  static const deliveryCountPersonsComment =
      'Исходя из количества персон, мы укомплектуем ваш заказ';
  static const deliveryCommentAlt = 'КОММЕНТАРИЙ';
  static const deliveryUnauthorizedUser =
      'Для продолжение заказа, авторизуйтесь в приложении';

  //app info
  static const totoInfo = 'ТОТО ПИЦЦА © 2008–2021 Все права защищены';
  static const totoPolitic = 'Политика конфиденциальности';
  static const totoDevelop = 'Разработано в Philgood';

  static String toRubles(String amount) {
    amount = amount.split('').reversed.join();
    amount = amount.replaceAllMapped(
        RegExp(r'.{3}'), (match) => '${match.group(0)} ');
    return amount.split('').reversed.join() + ' ₽';
  }

  static String toShortInfo(String? count, String weight) {
    if (count != null) {
      return '$count шт. / ${(double.parse(weight) * 1000).round()} гр.';
    } else {
      return '${(double.parse(weight) * 1000).round()} гр.';
    }
  }

  static String toDescriptionString(String description) =>
      'Состав: $description';

  // login
  static const userAlreadyExist = 'Пользователь с таким номером уже существует';
  static const phoneValidationError = 'Ошибка валидации телефона';
  static const incorrectPhone = 'Неверный телефон';
  static const incorrectCode = 'Неверный код';
  static const serverError = 'Ошибка сервера';

  // server errors messages
  static const serverUserAlreadyExist = 'This user already exist.';
  static const serverPhoneValidationError = 'Wrong telephone format';
  static const serverIncorrectValidations =
      'The user credentials were incorrect.';

  // payment
  static const useBonusSum = 'Использовать';
  static const payment = 'Оплата';
  static const toKitchen = 'Отправить на кухню';
  static const paymentToMenu = 'Перейти в “Меню"';
  static const paymentRepeatTry = 'Повторить попытку';
  static const paymentIsSuccess = 'Оплата прошла успешно!';
  static const paymentIsFailure = 'Ваша оплата не прошла, повторите попытку.';
  static const orderIsAccept = 'Ваш заказ принят!';
  static const freeDelivery = 'Бесплатно';
  static const bonusPayment = 'Оплата тотонусами';
  static const totalCost = 'Итого к оплате';
  static const choosePaymentType = 'Выберите способ оплаты';
  static const minimumCash = 'Мало';
  static const noCashOut = 'У меня без сдачи';
  static const prepareCashOut = 'С какой суммы подготовить сдачу?';
  static const sum = 'Сумма';

  static const cashType = 'наличными при получении';
  static const externalCartType = 'картой';
  static const cartType = 'картой при получении';
  static const availableBonus = 'Вам доступно';
  static const permittedBonusSum  = 'Тотонусами можно оплатить до 50% заказа,\n1 тотонус = 1 ₽';
  static const totonus = 'Тотоноусов';
  static const scores = 'Баллы';
}

class AuthDictionary {
  final String authorization;
  final String login;
  final String loginByPhone;
  final String register;
  final String registration;
  final String next;
  final String personalInfo;
  final String yourPhoneNumber;
  final String codeSended;
  final String authSuccess;

  AuthDictionary(
      {required this.authorization,
      required this.login,
      required this.register,
      required this.registration,
      required this.loginByPhone,
      required this.next,
      required this.yourPhoneNumber,
      required this.codeSended,
      required this.authSuccess,
      required this.personalInfo});
}

class Basic {
  final String name;
  final String phone;
  final String smsCode;
  final String resendPhoneCode;
  final String phoneNumberMask;

  Basic(
      {required this.name,
      required this.phone,
      required this.smsCode,
      required this.resendPhoneCode,
      required this.phoneNumberMask});
}

class Errors {
  final String requiredField;
  final String error;
  final String tempUnavailable;
  final String networkError;
  final String urlOpenError;
  final String dataError;

  Errors({
    required this.requiredField,
    required this.error,
    required this.tempUnavailable,
    required this.networkError,
    required this.urlOpenError,
    required this.dataError,
  });
}
