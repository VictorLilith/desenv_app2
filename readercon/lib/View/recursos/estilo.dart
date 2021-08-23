import 'package:flutter/material.dart';

ThemeData estilo() {
  ThemeData base = ThemeData.light();
  return base.copyWith(
    primaryColor: Colors.grey[800],
    colorScheme: ColorScheme.light(),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: Colors.blue[600],
        foregroundColor: Colors.white,
        hoverColor: Colors.blue[200]),
  );
}
