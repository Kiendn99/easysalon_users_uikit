import 'dart:ui';

import 'package:easysalon_users_app/_shared/intl/generated/l10n.dart';
import 'package:easysalon_users_app/_shared/services/services.dart';
import 'package:easysalon_users_app/presentation/home/home.dart';
import 'package:easysalon_users_app/presentation/login/screen/login_screen.dart';
import 'package:easysalon_users_app/presentation/settings/settings_screen.dart';
import 'package:easysalon_users_app/presentation/template/screen/template_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../routes.dart';

class _Contants {
  static const String languageVietName = 'vi';
  static const String countryVietName = 'VN';
  static const String languageEnglish = 'en';
  static const String countryEnglish = 'US';
  static const String defaultLanguage = 'defaultLanguage';
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      useInheritedMediaQuery: true,
      builder: (context, child) => MaterialApp(
        builder: (context, widget) => MediaQuery(
          // Ngan chan font chu thay doi theo font chu He thong
          data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
          child: widget!,
        ),
        key: key,
        debugShowCheckedModeBanner: false,
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        locale: AppPref.isCheckLocale == _Contants.defaultLanguage
            ? window.locale
            : AppPref.isCheckLocale == _Contants.languageVietName
                ? Locale(_Contants.languageVietName, _Contants.countryVietName)
                : Locale(_Contants.languageEnglish, _Contants.countryEnglish),
        home: LoginScreen(),
        onGenerateRoute: (settings) => createPage(settings),
        theme: ThemeData(),
      ),
    );
  }

  createPage(settings) {
    var createPage = appRoutes(settings.arguments)[settings.name];
    if (createPage != null) {
      return createPage();
    }
    return null;
  }
}
