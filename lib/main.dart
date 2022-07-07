import 'package:e_wallet_app/Auth/main_page.dart';
import 'package:e_wallet_app/Auth/get_started.dart';
import 'package:e_wallet_app/screens/home.dart';
import 'package:e_wallet_app/screens/sign_in.dart';
import 'package:e_wallet_app/screens/sign_up.dart';
import 'package:e_wallet_app/screens/splash_screen.dart';
import 'package:e_wallet_app/utils/themes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

final navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme,
      darkTheme: MyTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
