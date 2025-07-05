import 'package:app_weather/common/constants/routes.dart';
import 'package:app_weather/common/event/event_bus_mixin.dart';
import 'package:app_weather/common/utils/navigator_utils.dart';
import 'package:app_weather/modules/home/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import '../common/theme/index.dart';
import '../di/injection.dart';
import '../generated/l10n.dart';
import 'package:app_weather/modules/home/bloc/home_posts_cubit.dart';

class App extends StatefulWidget with EventBusMixin {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: const Locale("en"),
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      themeMode: ThemeMode.light,
      theme: ThemeApp.lightTheme,
      darkTheme: ThemeApp.darkTheme,
      initialRoute: kMainRoute,
      navigatorKey: NavigatorUtils.instance.navigatorKey,
      routes: {
        kMainRoute: (tcontext) => BlocProvider(
              create: (_) => getIt<HomePostsCubit>(),
              child: const HomeScreen(),
            ),
      },
    );
  }
}
