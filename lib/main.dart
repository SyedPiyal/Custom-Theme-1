import 'dart:ffi';

import 'package:customtheme1/homeView.dart';
import 'package:flutter/material.dart';

import 'my_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    MyTheme appTheme = MyTheme(isDark: false)
      ..accent1 = Colors.grey
      ..background1 = Colors.black;
    return Provider.value(
      value: appTheme,
      child:MaterialApp(
        title: 'Flutter Demo',
        theme: appTheme.themeData,
        home: HomeView(),
      )
    );
  }
}

