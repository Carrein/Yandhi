import 'package:flutter/material.dart';
import 'package:yandhi/globals/config.dart';
import 'package:yandhi/pages/scroll_page.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Config.skyBlue,
        accentColor: Config.darkBlue,
        appBarTheme: AppBarTheme(color: Config.skyBlue),
        scaffoldBackgroundColor: Config.offBlue,
        fontFamily: 'Dosis',
      ),
      home: ScrollPage(),
    ),
  );
}
