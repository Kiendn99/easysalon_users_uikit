import 'package:easysalon_users_app/_shared/configs/themes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '_shared/services/services.dart';
import 'presentation/app/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await StorageManager.initListener();
  await AppPref.initListener();
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider<ThemeNotifier>.value(
        value: ThemeNotifier(lightTheme: lightTheme, darkTheme: darkTheme)),
    // ChangeNotifierProvider<LayoutNotifier>.value(value: LayoutNotifier())
  ], child: MyApp()));
}
