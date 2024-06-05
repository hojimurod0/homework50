import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppConstants {
  static ThemeMode themeMode = ThemeMode.light;
  static String images = "";
  static Color appBarColor = Color.fromARGB(255, 7, 127, 255);
  static String password = "";
  static double fontSize = 15;
  static Color textColor = Colors.black;

  Future<void> setConstants() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    images = prefs.getString("image") ?? "";
    bool theme = prefs.getBool("theme") ?? false;
    themeMode = theme ? ThemeMode.dark : ThemeMode.light;
  }
}
