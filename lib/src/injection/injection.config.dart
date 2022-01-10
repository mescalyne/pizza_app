// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:graphql/client.dart' as _i4;
import 'package:injectable/injectable.dart' as _i2;

import '../core/data/network/service/auth.dart' as _i5;
import '../core/data/network/service/cart.dart' as _i25;
import '../core/data/network/service/current_user.dart' as _i16;
import '../core/data/network/service/delivery_address.dart' as _i9;
import '../core/data/network/service/feedback/get_feedback_options.dart'
    as _i17;
import '../core/data/network/service/feedback/send_feedback.dart' as _i31;
import '../core/data/network/service/get_archived_carts.dart' as _i3;
import '../core/data/network/service/get_cart.dart' as _i6;
import '../core/data/network/service/get_contacts.dart' as _i7;
import '../core/data/network/service/get_page.dart' as _i26;
import '../core/data/network/service/get_restaurant.dart' as _i18;
import '../core/data/network/service/get_unique_pages.dart' as _i19;
import '../core/data/network/service/get_user.dart' as _i20;
import '../core/data/network/service/home_items.dart' as _i21;
import '../core/data/network/service/menu_items.dart' as _i23;
import '../core/data/network/service/payment/payment.dart' as _i28;
import '../core/data/network/service/update_my_profile.dart' as _i38;
import '../core/data/repository/auth.dart' as _i44;
import '../core/data/repository/auth_status.dart' as _i66;
import '../core/data/repository/auth_storage/auth_storage.dart' as _i45;
import '../core/data/repository/cart.dart' as _i43;
import '../core/data/repository/current_user.dart' as _i46;
import '../core/data/repository/delivery/delivery_address.dart' as _i10;
import '../core/data/repository/delivery/delivery_detail.dart' as _i11;
import '../core/data/repository/delivery/delivery_progress.dart' as _i13;
import '../core/data/repository/feedback/feedback_options.dart' as _i48;
import '../core/data/repository/feedback/send_feedback.dart' as _i32;
import '../core/data/repository/home_items.dart' as _i22;
import '../core/data/repository/menu_items.dart' as _i24;
import '../core/data/repository/payment.dart' as _i29;
import '../core/data/repository/profile/contacts.dart' as _i8;
import '../core/data/repository/profile/page.dart' as _i27;
import '../core/data/repository/profile/unique_pages.dart' as _i37;
import '../core/data/repository/restaurant.dart' as _i30;
import '../core/data/repository/test.dart' as _i35;
import '../core/data/storage/user.dart' as _i39;
import '../core/domain/usecases/auth/authPhone.dart' as _i65;
import '../core/domain/usecases/auth/requestPhoneCode.dart' as _i61;
import '../core/domain/usecases/cart.dart' as _i42;
import '../core/domain/usecases/cities.dart' as _i41;
import '../core/domain/usecases/delivery.dart' as _i14;
import '../core/domain/usecases/delivery_address.dart' as _i15;
import '../core/domain/usecases/delivery_detail.dart' as _i12;
import '../core/domain/usecases/feedback.dart' as _i49;
import '../core/domain/usecases/get_product.dart' as _i53;
import '../core/domain/usecases/menu.dart' as _i51;
import '../core/domain/usecases/payment.dart' as _i59;
import '../core/domain/usecases/profile/contacts.dart' as _i50;
import '../core/domain/usecases/profile/current_user.dart' as _i70;
import '../core/domain/usecases/profile/more.dart' as _i57;
import '../core/domain/usecases/profile/more_detail.dart' as _i52;
import '../core/domain/usecases/profile/update_profile.dart' as _i63;
import '../core/domain/usecases/restaurant.dart' as _i40;
import '../core/domain/usecases/test.dart' as _i36;
import '../core/presentation/router/bloc/bloc.dart' as _i34;
import '../core/presentation/screens/addition/bloc/bloc.dart' as _i64;
import '../core/presentation/screens/bucket/bloc/bloc.dart' as _i67;
import '../core/presentation/screens/cities/bloc/bloc.dart' as _i68;
import '../core/presentation/screens/contacts/bloc/bloc.dart' as _i69;
import '../core/presentation/screens/delivery/bloc/bloc.dart' as _i71;
import '../core/presentation/screens/delivery_address/bloc/bloc.dart' as _i47;
import '../core/presentation/screens/home/bloc/bloc.dart' as _i54;
import '../core/presentation/screens/login/bloc/bloc.dart' as _i72;
import '../core/presentation/screens/menu/bloc/bloc.dart' as _i55;
import '../core/presentation/screens/more/bloc/bloc.dart' as _i73;
import '../core/presentation/screens/more_detail/bloc/bloc.dart' as _i56;
import '../core/presentation/screens/order_detail/bloc/bloc.dart' as _i74;
import '../core/presentation/screens/order_estimation/bloc/bloc.dart' as _i58;
import '../core/presentation/screens/ordering/bloc/bloc.dart' as _i75;
import '../core/presentation/screens/orders/bloc/bloc.dart' as _i76;
import '../core/presentation/screens/payment/bloc/bloc.dart' as _i77;
import '../core/presentation/screens/pickup/bloc/bloc.dart' as _i60;
import '../core/presentation/screens/restaurants_new/bloc/bloc.dart' as _i62;
import '../core/presentation/screens/sets/bloc/bloc.dart' as _i78;
import '../core/presentation/screens/splash/bloc/bloc.dart' as _i33;
import '../core/presentation/screens/userpage/bloc/bloc.dart'
    as _i79; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.ArchivedCartsApi>(
      () => _i3.ArchivedCartsApiImpl(get<_i4.GraphQLClient>()));
  gh.factory<_i5.AuthApi>(() => _i5.AuthApiImpl(get<_i4.GraphQLClient>()));
  gh.factory<_i6.CartApi>(() => _i6.CartApiImpl(get<_i4.GraphQLClient>()));
  gh.factory<_i7.ContactApi>(
      () => _i7.ContactApiImpl(get<_i4.GraphQLClient>()));
  gh.factory<_i8.ContactsRepository>(
      () => _i8.ContactsRepositoryImpl(get<_i7.ContactApi>()));
  gh.factory<_i9.DeliveryAddressApi>(
      () => _i9.DeliveryAddressApiImpl(get<_i4.GraphQLClient>()));
  gh.factory<_i10.DeliveryAddressRepository>(
      () => _i10.DeliveryAddressRepositoryImpl(get<_i9.DeliveryAddressApi>()));
  gh.factory<_i11.DeliveryDetailRepository>(
      () => _i11.DeliveryDetailRepositoryImpl(get<_i6.CartApi>()));
  gh.factory<_i12.DeliveryDetailUseCase>(
      () => _i12.DeliveryUseCaseImpl(get<_i11.DeliveryDetailRepository>()));
  gh.factory<_i13.DeliveryProgressRepository>(
      () => _i13.DeliveryProgressRepositoryImpl(get<_i3.ArchivedCartsApi>()));
  gh.factory<_i14.DeliveryUseCase>(
      () => _i14.DeliveryUseCaseImpl(get<_i13.DeliveryProgressRepository>()));
  gh.factory<_i15.GetAllDeliveryAddressesUseCase>(() =>
      _i15.GetAllDeliveryAddressesUseCaseImpl(
          get<_i10.DeliveryAddressRepository>()));
  gh.factory<_i16.GetCurrentUserApi>(
      () => _i16.GetCurrentUserApiImpl(get<_i4.GraphQLClient>()));
  gh.factory<_i17.GetFeedbackOptionsApi>(
      () => _i17.GetFeedbackOptionsApiImpl(get<_i4.GraphQLClient>()));
  gh.factory<_i18.GetRestaurantApi>(
      () => _i18.GetRestaurantApiImpl(get<_i4.GraphQLClient>()));
  gh.factory<_i19.GetUniquePagesApi>(
      () => _i19.GetUniquePagesApiImpl(get<_i4.GraphQLClient>()));
  gh.factory<_i20.GetUserApi>(
      () => _i20.GetUserApiImpl(get<_i4.GraphQLClient>()));
  gh.factory<_i21.HomeApi>(() => _i21.HomeApiImpl(get<_i4.GraphQLClient>()));
  gh.factory<_i22.HomeItemsRepository>(
      () => _i22.HomeItemsRepositoryImpl(get<_i21.HomeApi>()));
  gh.factory<_i23.MenuApi>(() => _i23.MenuApiImpl(get<_i4.GraphQLClient>()));
  gh.factory<_i24.MenuItemsRepository>(
      () => _i24.MenuItemsRepositoryImpl(get<_i23.MenuApi>()));
  gh.factory<_i25.MyCartApi>(() => _i25.CartApiImpl(get<_i4.GraphQLClient>()));
  gh.factory<_i26.PageApi>(() => _i26.PageApiImpl(get<_i4.GraphQLClient>()));
  gh.factory<_i27.PageRepository>(
      () => _i27.PageRepositoryImpl(get<_i26.PageApi>()));
  gh.factory<_i28.PaymentApi>(
      () => _i28.PaymentApiImpl(get<_i4.GraphQLClient>()));
  gh.factory<_i29.PaymentRepository>(
      () => _i29.PaymentRepositoryImpl(get<_i28.PaymentApi>()));
  gh.factory<_i30.RestaurantRepository>(
      () => _i30.RestaurantRepositoryImpl(get<_i18.GetRestaurantApi>()));
  gh.factory<_i31.SendFeedbackApi>(
      () => _i31.SendFeedbackApiImpl(get<_i4.GraphQLClient>()));
  gh.factory<_i32.SendFeedbackRepository>(
      () => _i32.SendFeedbackRepositoryImpl(get<_i31.SendFeedbackApi>()));
  gh.factory<_i33.StartBloc>(() => _i33.StartBloc(get<_i34.RouterEventSink>()));
  gh.factory<_i35.TestRepository>(
      () => _i35.TestRepositoryImpl(get<_i20.GetUserApi>()));
  gh.factory<_i36.TestUseCase>(
      () => _i36.TestUseCaseImpl(get<_i35.TestRepository>()));
  gh.factory<_i37.UniquePagesRepository>(
      () => _i37.UniquePagesRepositoryImpl(get<_i19.GetUniquePagesApi>()));
  gh.factory<_i38.UpdateMyProfileApi>(
      () => _i38.UpdateMyProfileApiImpl(get<_i4.GraphQLClient>()));
  gh.factory<_i39.UserStorage>(() => _i39.AuthStorageHive());
  gh.factory<_i40.WatchAllRestaurantsUseCase>(() =>
      _i40.WatchAllRestaurantsUseCaseImpl(
          get<_i30.RestarauntWatchableRepository>()));
  gh.factory<_i41.WatchCitiesUseCase>(
      () => _i41.WatchCitiesUseCaseImpl(get<_i22.HomeWatchableRepository>()));
  gh.factory<_i41.WatchCityIdUseCase>(
      () => _i41.WatchCityIdUseCaseImpl(get<_i22.HomeWatchableRepository>()));
  gh.factory<_i42.WatchCountItemInCartAllUseCase>(() =>
      _i42.WatchCountItemInCartAllUseCaseImpl(
          get<_i43.CartWatchableRepository>()));
  gh.factory<_i42.WatchCountItemInCartUseCase>(() =>
      _i42.WatchCountItemInCartUseCaseImpl(
          get<_i43.CartWatchableRepository>()));
  gh.factory<_i40.WatchDeliveryAddressUseCase>(() =>
      _i40.DeliveryAddressWatchableUseCaseImpl(
          get<_i30.RestarauntWatchableRepository>()));
  gh.factory<_i15.WatchDeliveryAddressesUseCase>(() =>
      _i15.WatchDeliveryAddressesUseCaseImpl(
          get<_i10.DeliveryWatchableRepository>()));
  gh.factory<_i40.WatchPickUpAddressUseCase>(() =>
      _i40.PickUpAddressWatchableUseCaseImpl(
          get<_i30.RestarauntWatchableRepository>()));
  gh.factory<_i40.WatchRestaurantIdUseCase>(() =>
      _i40.WatchRestaurantIdUseCaseImpl(
          get<_i30.RestarauntWatchableRepository>()));
  gh.factory<_i44.AuthRepository>(() =>
      _i44.AuthRepositoryImpl(get<_i5.AuthApi>(), get<_i39.UserStorage>()));
  gh.lazySingleton<_i45.AuthStorageWatcherRepository>(
      () => _i45.AuthStorageWatcherRepository(get<_i39.UserStorage>()));
  gh.factory<_i43.CartRepository>(() =>
      _i43.CartRepositoryImpl(get<_i25.MyCartApi>(), get<_i23.MenuApi>()));
  gh.factory<_i41.ChangeCityUseCase>(
      () => _i41.ChangeCityIdUseCaseImpl(get<_i22.HomeWatchableRepository>()));
  gh.factory<_i42.ChangeCurrentDeliveryAddressUseCase>(() =>
      _i42.ChangeCurrentDeliveryAddressUseCaseImpl(get<_i43.CartRepository>()));
  gh.factory<_i40.ChangeDeliveryAddressUseCase>(() =>
      _i40.ChangeDeliveryAddressUseCaseImpl(
          get<_i30.RestarauntWatchableRepository>()));
  gh.factory<_i15.ChangeDeliveryAddressesUseCase>(() =>
      _i15.ChangeDeliveryAddressesUseCaseImpl(
          get<_i10.DeliveryWatchableRepository>()));
  gh.factory<_i40.ChangeRestaurantIdUseCase>(() =>
      _i40.ChangeRestaurantIdUseCaseImpl(
          get<_i30.RestarauntWatchableRepository>()));
  gh.factory<_i40.ChangeRestaurantPickUpAddressUseCase>(() =>
      _i40.ChangeRestaurantPickUpUseCaseImpl(
          get<_i30.RestarauntWatchableRepository>()));
  gh.factory<_i15.CreateDeliveryAddressUseCase>(() =>
      _i15.CreateDeliveryAddressUseCaseImpl(
          get<_i10.DeliveryAddressRepository>()));
  gh.factory<_i46.CurrentUserRepository>(() => _i46.CurrentUserRepositoryImpl(
      get<_i16.GetCurrentUserApi>(), get<_i38.UpdateMyProfileApi>()));
  gh.factory<_i15.DeleteDeliveryAddressUseCase>(() =>
      _i15.DeleteDeliveryAddressUseCaseImpl(
          get<_i10.DeliveryAddressRepository>()));
  gh.factory<_i47.DeliveryAddressBloc>(() => _i47.DeliveryAddressBloc(
      get<_i15.GetAllDeliveryAddressesUseCase>(),
      get<_i15.DeleteDeliveryAddressUseCase>()));
  gh.factory<_i42.EditCartItemUseCase>(
      () => _i42.EditCartItemUseCaseImpl(get<_i43.CartRepository>()));
  gh.factory<_i42.EditCartUseCase>(
      () => _i42.EditCartUseCaseImpl(get<_i43.CartRepository>()));
  gh.factory<_i48.FeedbackOptionsRepository>(() =>
      _i48.FeedbackOptionsRepositoryImpl(get<_i17.GetFeedbackOptionsApi>()));
  gh.factory<_i49.FeedbackUseCase>(() => _i49.FeedbackUseCaseImpl(
      get<_i32.SendFeedbackRepository>(),
      get<_i48.FeedbackOptionsRepository>()));
  gh.factory<_i40.FindNearestRestaurantUseCase>(() =>
      _i40.FindNearestRestaurantUseCaseImpl(get<_i30.RestaurantRepository>()));
  gh.factory<_i40.GetAllRestaurantsInCityUseCase>(() =>
      _i40.GetAllRestaurantsInCityUseCaseImpl(get<_i30.RestaurantRepository>(),
          get<_i30.RestarauntWatchableRepository>()));
  gh.factory<_i41.GetCitiesUseCase>(() => _i41.GetCitiesUseCaseImpl(
      get<_i22.HomeItemsRepository>(), get<_i22.HomeWatchableRepository>()));
  gh.factory<_i50.GetContactsUseCase>(() => _i50.GetContactsUseCaseCaseImpl(
      get<_i8.ContactsRepository>(), get<_i41.WatchCityIdUseCase>()));
  gh.factory<_i51.GetGroupUseCase>(
      () => _i51.GetGroupImpl(get<_i24.MenuItemsRepository>()));
  gh.factory<_i51.GetGroupsByIdsUseCase>(
      () => _i51.GetGroupsByIdsImpl(get<_i24.MenuItemsRepository>()));
  gh.factory<_i51.GetGroupsUseCase>(
      () => _i51.GetGroupdsImpl(get<_i24.MenuItemsRepository>()));
  gh.factory<_i51.GetMarketingCompaignsUseCase>(
      () => _i51.GetMarketingCompaignsImpl(get<_i24.MenuItemsRepository>()));
  gh.factory<_i42.GetMyCartUseCase>(
      () => _i42.GetMyCartUseCaseImpl(get<_i43.CartRepository>()));
  gh.factory<_i52.GetPageDetailUseCase>(() => _i52.GetPageDetailUseCaseImpl(
      get<_i27.PageRepository>(), get<_i41.WatchCityIdUseCase>()));
  gh.factory<_i53.GetProductByIdUseCase>(
      () => _i53.GetProductByIdUseCaseImpl(get<_i43.CartRepository>()));
  gh.factory<_i53.GetProductByIdsUseCase>(
      () => _i53.GetProductByIdsUseCaseImpl(get<_i43.CartRepository>()));
  gh.factory<_i51.GetProductsByParentGroupIdUseCase>(() =>
      _i51.GetProductsByParentGrouptIdUseCaseImpl(
          get<_i24.MenuItemsRepository>()));
  gh.factory<_i51.GetProductsUseCase>(
      () => _i51.GetProductsUseCaseImpl(get<_i24.MenuItemsRepository>()));
  gh.factory<_i42.GetRecommendedProductsForCartUseCase>(() =>
      _i42.GetRecommendedProductsForCartUseCaseImpl(
          get<_i43.CartRepository>()));
  gh.factory<_i40.GetRestaurantUseCase>(
      () => _i40.GetRestaurantUseCaseImpl(get<_i30.RestaurantRepository>()));
  gh.factoryParam<_i54.HomeBloc, _i34.RouterBloc?, dynamic>((routerBloc, _) =>
      _i54.HomeBloc(
          routerBloc,
          get<_i41.WatchCitiesUseCase>(),
          get<_i41.GetCitiesUseCase>(),
          get<_i41.ChangeCityUseCase>(),
          get<_i41.WatchCityIdUseCase>(),
          get<_i42.WatchCountItemInCartAllUseCase>()));
  gh.factory<_i55.MenuBloc>(() => _i55.MenuBloc(
      get<_i51.GetMarketingCompaignsUseCase>(),
      get<_i34.RouterEventSink>(),
      get<_i51.GetProductsUseCase>(),
      get<_i51.GetGroupsUseCase>(),
      get<_i40.WatchDeliveryAddressUseCase>(),
      get<_i40.WatchPickUpAddressUseCase>(),
      get<_i42.WatchCountItemInCartUseCase>(),
      get<_i42.GetMyCartUseCase>()));
  gh.factoryParam<_i56.MoreDetailBloc, String?, String?>((screenType, slug) =>
      _i56.MoreDetailBloc(screenType, slug, get<_i34.RouterEventSink>(),
          get<_i52.GetPageDetailUseCase>()));
  gh.factory<_i57.MoreUseCase>(
      () => _i57.MoreUseCaseImpl(get<_i37.UniquePagesRepository>()));
  gh.factoryParam<_i58.OrderEstimationBloc, int?, dynamic>((orderId, _) =>
      _i58.OrderEstimationBloc(
          orderId, get<_i34.RouterEventSink>(), get<_i49.FeedbackUseCase>()));
  gh.factory<_i59.PaymentUseCase>(() => _i59.PaymentUseCaseUseCaseImpl(
      get<_i43.CartRepository>(),
      get<_i46.CurrentUserRepository>(),
      get<_i29.PaymentRepository>()));
  gh.factory<_i60.PickUpBloc>(() => _i60.PickUpBloc(
      get<_i40.WatchDeliveryAddressUseCase>(),
      get<_i40.WatchAllRestaurantsUseCase>(),
      get<_i40.GetAllRestaurantsInCityUseCase>(),
      get<_i40.WatchPickUpAddressUseCase>(),
      get<_i40.ChangeRestaurantPickUpAddressUseCase>()));
  gh.factory<_i42.RemoveCartUseCase>(
      () => _i42.RemoveCartUseCaseImpl(get<_i43.CartRepository>()));
  gh.factory<_i42.RemoveItemUseCase>(
      () => _i42.RemoveItemUseCaseImpl(get<_i43.CartRepository>()));
  gh.factory<_i61.RequestPhoneCodeUseCase>(
      () => _i61.RequestPhoneCodeUseCaseImpl(get<_i44.AuthRepository>()));
  gh.factory<_i62.RestaurantNewBloc>(() => _i62.RestaurantNewBloc(
      get<_i41.WatchCitiesUseCase>(),
      get<_i40.WatchPickUpAddressUseCase>(),
      get<_i40.WatchAllRestaurantsUseCase>(),
      get<_i40.ChangeRestaurantPickUpAddressUseCase>(),
      get<_i41.WatchCityIdUseCase>(),
      get<_i40.ChangeRestaurantIdUseCase>()));
  gh.factory<_i42.SetPromoUseCase>(
      () => _i42.SetPromoUseCaseImpl(get<_i43.CartRepository>()));
  gh.factory<_i63.UpdateProfileUseCase>(
      () => _i63.UpdateProfileUseCaseImpl(get<_i46.CurrentUserRepository>()));
  gh.factory<_i42.AddItemToCartUseCase>(
      () => _i42.AddItemToCartUseCaseImpl(get<_i43.CartRepository>()));
  gh.factory<_i42.AddItemsToCartUseCase>(
      () => _i42.AddItemsToCartUseCaseImpl(get<_i43.CartRepository>()));
  gh.factoryParam<_i64.AdditionBloc, String?, dynamic>((productId, _) =>
      _i64.AdditionBloc(
          productId,
          get<_i34.RouterEventSink>(),
          get<_i53.GetProductByIdUseCase>(),
          get<_i53.GetProductByIdsUseCase>(),
          get<_i42.AddItemsToCartUseCase>(),
          get<_i51.GetGroupsByIdsUseCase>(),
          get<_i51.GetProductsByParentGroupIdUseCase>(),
          get<_i42.WatchCountItemInCartUseCase>()));
  gh.factory<_i65.AuthPhoneUseCase>(
      () => _i65.AuthPhoneUseCaseImpl(get<_i44.AuthRepository>()));
  gh.factory<_i66.AuthStateRepository>(() =>
      _i66.AuthStateRepositoryImpl(get<_i45.AuthStorageWatcherRepository>()));
  gh.factoryParam<_i67.BucketBloc, Function?, dynamic>((_backToHome, _) =>
      _i67.BucketBloc(
          get<_i34.RouterEventSink>(),
          get<_i42.GetMyCartUseCase>(),
          get<_i42.RemoveItemUseCase>(),
          get<_i42.EditCartItemUseCase>(),
          get<_i42.SetPromoUseCase>(),
          get<_i40.WatchDeliveryAddressUseCase>(),
          get<_i42.GetRecommendedProductsForCartUseCase>(),
          get<_i42.AddItemToCartUseCase>(),
          get<_i42.ChangeCurrentDeliveryAddressUseCase>(),
          get<_i42.RemoveCartUseCase>(),
          get<_i42.WatchCountItemInCartUseCase>(),
          _backToHome));
  gh.factory<_i68.CitiesBloc>(() => _i68.CitiesBloc(
      get<_i40.FindNearestRestaurantUseCase>(),
      get<_i40.ChangeRestaurantPickUpAddressUseCase>(),
      get<_i40.ChangeDeliveryAddressUseCase>(),
      get<_i40.GetAllRestaurantsInCityUseCase>(),
      get<_i34.RouterEventSink>(),
      get<_i41.GetCitiesUseCase>(),
      get<_i41.WatchCityIdUseCase>(),
      get<_i41.ChangeCityUseCase>()));
  gh.factory<_i69.ContactsBloc>(() => _i69.ContactsBloc(
      get<_i34.RouterEventSink>(), get<_i50.GetContactsUseCase>()));
  gh.factory<_i70.CurrentUserUseCase>(() => _i70.CurrentUserUseCaseImpl(
      get<_i46.CurrentUserRepository>(),
      get<_i44.AuthRepository>(),
      get<_i66.AuthStateRepository>()));
  gh.factory<_i71.DeliveryBloc>(() => _i71.DeliveryBloc(
      get<_i40.FindNearestRestaurantUseCase>(),
      get<_i40.ChangeRestaurantPickUpAddressUseCase>(),
      get<_i40.ChangeDeliveryAddressUseCase>(),
      get<_i15.CreateDeliveryAddressUseCase>(),
      get<_i15.GetAllDeliveryAddressesUseCase>(),
      get<_i40.WatchDeliveryAddressUseCase>()));
  gh.factory<_i72.LoginBloc>(() => _i72.LoginBloc(get<_i65.AuthPhoneUseCase>(),
      get<_i61.RequestPhoneCodeUseCase>(), get<_i34.RouterEventSink>()));
  gh.factory<_i73.MoreBloc>(() => _i73.MoreBloc(get<_i34.RouterEventSink>(),
      get<_i70.CurrentUserUseCase>(), get<_i57.MoreUseCase>()));
  gh.factoryParam<_i74.OrderDetailBloc, int?, dynamic>((orderId, _) =>
      _i74.OrderDetailBloc(
          orderId,
          get<_i42.RemoveCartUseCase>(),
          get<_i34.RouterEventSink>(),
          get<_i42.AddItemsToCartUseCase>(),
          get<_i12.DeliveryDetailUseCase>()));
  gh.factory<_i75.OrderingBloc>(() => _i75.OrderingBloc(
      get<_i34.RouterEventSink>(),
      get<_i42.GetMyCartUseCase>(),
      get<_i70.CurrentUserUseCase>(),
      get<_i70.CurrentUserUseCase>(),
      get<_i42.EditCartUseCase>(),
      get<_i40.GetRestaurantUseCase>(),
      get<_i40.WatchRestaurantIdUseCase>()));
  gh.factory<_i76.OrdersBloc>(() => _i76.OrdersBloc(get<_i34.RouterEventSink>(),
      get<_i14.DeliveryUseCase>(), get<_i70.CurrentUserUseCase>()));
  gh.factory<_i77.PaymentBloc>(() => _i77.PaymentBloc(
      get<_i34.RouterEventSink>(), get<_i59.PaymentUseCase>()));
  gh.factoryParam<_i78.SetsBloc, String?, bool?>((setId, visibleButtonAdd) =>
      _i78.SetsBloc(
          setId,
          visibleButtonAdd,
          get<_i42.AddItemToCartUseCase>(),
          get<_i34.RouterEventSink>(),
          get<_i53.GetProductByIdUseCase>(),
          get<_i42.WatchCountItemInCartUseCase>()));
  gh.factory<_i79.UserpageBloc>(() => _i79.UserpageBloc(
      get<_i70.CurrentUserUseCase>(),
      get<_i63.UpdateProfileUseCase>(),
      get<_i34.RouterEventSink>()));
  gh.singleton<_i43.CartWatchableRepository>(_i43.CartWatchableRepository());
  gh.singleton<_i10.DeliveryWatchableRepository>(
      _i10.DeliveryWatchableRepository());
  gh.singleton<_i22.HomeWatchableRepository>(_i22.HomeWatchableRepository());
  gh.singleton<_i30.RestarauntWatchableRepository>(
      _i30.RestarauntWatchableRepository());
  gh.singleton<_i34.RouterEventSink>(_i34.RouterBloc());
  return get;
}
