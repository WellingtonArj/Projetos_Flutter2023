import 'package:flutter/material.dart';

ThemeData lightTheme() {
  return ThemeData(
      colorScheme: const ColorScheme.dark(
          primary: Colors.black, secondary: Colors.white24),
      brightness: Brightness.dark,
      appBarTheme: const AppBarTheme(color: Colors.white12),
      scaffoldBackgroundColor: Colors.grey[700]
      //paramos aqui
    );
}
