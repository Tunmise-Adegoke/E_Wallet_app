


import 'package:e_wallet_app/widget/constants.dart';
import 'package:flutter/material.dart';

class MyTheme {
  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.grey[900],
    colorScheme: ColorScheme.dark(),
    primaryColor: Colors.black,
    primaryColorBrightness: Brightness.dark,
  );
  static final lightTheme = ThemeData(
    primaryColor: Colors.white,
    scaffoldBackgroundColor: Colors.white,
    primaryColorBrightness: Brightness.light,
    colorScheme: ColorScheme.dark(),
  );
}