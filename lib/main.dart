import 'package:livedata_app/controllers/authentication_controller.dart';
import 'network/config/http_config.dart';
import 'router/app_router.dart';
import 'package:easy_localization/easy_localization.dart';
import 'dart:io';
import 'config/http_overrides.dart';
import 'ui/core/flex/flex_utils.dart';
import 'config/instance_config.dart';
import 'controllers/theme_controller.dart';
import 'ui/resources/themes/themes_night.dart';
import 'ui/resources/themes/themes.dart';
import 'storage/storage.dart';
import 'config/ui_config.dart';
import 'events/bus_events.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await EasyLocalization.ensureInitialized();
  HttpOverrides.global = AppHttpOverrides();
  await AppStorage.storageConfig();
  ThemeController().init();
  AuthenticationController.getUser();

  await httpConfig();
  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('en', 'US'), Locale('ar', 'SA')],
      path: 'assets/localization',
      fallbackLocale: const Locale('en', 'US'),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    uiConfig();
    calcFlexSize(context);

    // change Material-App current theme
    eventBus.on<ThemeChangedEvent>().listen((_) => setState(() {}));

    // hide soft keyboard when (non-context class) emit event
    eventBus.on<SoftKeyboardEvent>().listen((_) => hideSoftKeyboard(context));

    _handleUnauthorizedEvent();
  }

  /// logOut
  _handleUnauthorizedEvent() {
    eventBus.on<UnauthorizedEvent>().listen((event) async {
      if (appRouter.current.name != Login.name) {
        await AuthenticationController.logOut();
        appRouter.replaceAll([const Login()]);
      }
    });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () => hideSoftKeyboard(context),
      child: MaterialApp.router(
        routerDelegate: appRouter.delegate(),
        routeInformationParser: appRouter.defaultRouteParser(),
        themeMode: findInstance<ThemeController>().themeMode.value,
        theme: lightTheme,
        darkTheme: darkTheme,
        locale: context.locale,
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
