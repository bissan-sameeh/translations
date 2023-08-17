import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

import 'Screens/splash_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(EasyLocalization(
    supportedLocales: const [
      Locale('en'),
      Locale('tr'),
      Locale('ar'),
    ],
    path: 'assets/language',
    fallbackLocale: const Locale('en'),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Easy localization",
      supportedLocales: context.supportedLocales,
      localizationsDelegates: context.localizationDelegates,
      locale: context.locale,
      home: SplashScreen(),
    );
  }
}
