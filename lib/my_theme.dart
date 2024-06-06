

import 'package:flutter/material.dart';

class MyTheme {
   late Color background1;
   late Color accent1;
   bool isDark;

  MyTheme( {required this.isDark});

  ThemeData get themeData {
    TextTheme textTheme = (isDark ? ThemeData.dark() : ThemeData.light())
        .textTheme;
    Color? textColor = textTheme.bodyMedium?.color;

    ColorScheme colorScheme = ColorScheme(
        brightness: isDark ? Brightness.dark : Brightness.light,
        primary: accent1,
        onPrimary: Colors.white,
        secondary: accent1,
        onSecondary: Colors.white,
        error: Colors.red,
        onError: Colors.white,
        surface: background1,
        onSurface: textColor ?? accent1);
    var theme = ThemeData.from(colorScheme: colorScheme,textTheme: textTheme).copyWith(buttonTheme: ButtonThemeData(buttonColor: Colors.green));
    return theme;
  }

}