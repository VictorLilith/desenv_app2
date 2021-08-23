import 'package:flutter/material.dart';

ThemeData estilo() {
  ThemeData base = ThemeData.dark();
  return base.copyWith(
    primaryColor: Colors.grey,
    colorScheme: ColorScheme.dark(),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: Colors.orange[600],
        foregroundColor: Colors.white,
        hoverColor: Colors.orange),
  );
}
