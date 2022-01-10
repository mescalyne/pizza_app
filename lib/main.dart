import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:toto_mobile/src/core/data/storage/user.dart';
import 'package:toto_mobile/src/core/presentation/router/bloc/bloc.dart';
import 'package:toto_mobile/src/core/presentation/router/router.dart';
import 'package:toto_mobile/src/core/presentation/screens/cities/bloc/bloc.dart';
import 'package:toto_mobile/src/core/presentation/screens/home/bloc/bloc.dart';
import 'package:toto_mobile/src/core/presentation/screens/menu/bloc/bloc.dart';
import 'package:toto_mobile/src/core/presentation/screens/more/bloc/bloc.dart';
import 'package:toto_mobile/src/core/presentation/screens/orders/bloc/bloc.dart';
import 'package:toto_mobile/src/core/presentation/screens/restaurants_new/bloc/bloc.dart';
import 'package:toto_mobile/src/core/presentation/screens/splash/bloc/bloc.dart';
import 'package:toto_mobile/src/injection/injection.dart';
import 'package:toto_mobile/src/injection/interceptor.dart';
import 'package:toto_mobile/src/resources/theme.dart';

const baseUrl = 'https://api.toto.miura.tech/graphql';

void main() async {
  await setupApp();
  runApp(MyApp());
}

Future<void> setupApp() async {
  await Hive.initFlutter();
  Hive.registerAdapter(TokenPayloadAdapter());
  Hive.registerAdapter(GeolocationStatusAdapter());
  await Future.wait([AuthStorageHive.init()]);

  await configureInjection(Env.dev);
  await Interceptor().configureNetworkClient(baseUrl: baseUrl);
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('ru', 'RU'),
      ],
      home: BlocProvider<RouterBloc>(
        create: (_) => getIt<RouterEventSink>() as RouterBloc,
        child: MultiBlocProvider(
          providers: [
            BlocProvider<HomeBloc>(
              create: (_) => getIt<HomeBloc>(),
            ),

            BlocProvider<RestaurantNewBloc>(
              create: (_) => getIt<RestaurantNewBloc>(),
            ),
            BlocProvider<OrdersBloc>(
              create: (_) => getIt<OrdersBloc>(),
            ),
            BlocProvider<MenuBloc>(
              create: (_) => getIt<MenuBloc>(),
            ),
            BlocProvider<MoreBloc>(
              create: (_) => getIt<MoreBloc>(),
            ),
            BlocProvider<CitiesBloc>(
              create: (_) => getIt<CitiesBloc>(),
            ),
            BlocProvider<StartBloc>(
              create: (_) => getIt<StartBloc>(),
            ),

            // сюда добавлять блоки основных (верхних) экранов приложения
          ],
          child: Router(
            routerDelegate: AppRouterDelegate(),
            backButtonDispatcher: RootBackButtonDispatcher(),
          ),
        ),
      ),
      theme: ThemeData(
        fontFamily: 'Roboto',
        primaryColor: TotoTheme.primary,
        accentColor: TotoTheme.accent,
        primaryColorLight: TotoTheme.primaryLight,
        primaryColorDark: TotoTheme.primaryDark,
        scaffoldBackgroundColor: TotoTheme.bg,
        cardColor: TotoTheme.surface,
        disabledColor: TotoTheme.primaryLight,
        errorColor: TotoTheme.accent,
        colorScheme: Theme.of(context).colorScheme.copyWith(
              primary: TotoTheme.primary,
              primaryVariant: TotoTheme.primaryDark,
              secondary: TotoTheme.accent,
              secondaryVariant: TotoTheme.accentVariant,
              background: TotoTheme.bg,
              onBackground: TotoTheme.textBase,
              error: TotoTheme.accent,
              brightness: Brightness.light,
              surface: TotoTheme.surface,
              onPrimary: TotoTheme.textLight,
            ),
      ),
    );
  }
}
