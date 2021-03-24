import 'package:flutter/material.dart';

import 'core/di/service_locator.dart';
import 'module/splash/splash_screan.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme:
          //theme:
          //
          ThemeData(
        // Define the default brightness and colors.
        primaryColor: Colors.black,
        primaryColorBrightness: Brightness.dark,
        primaryColorLight: Colors.black,
        brightness: Brightness.dark,
        primaryColorDark: Colors.black,
        indicatorColor: Colors.white,
        canvasColor: Colors.black,

        //active taped elements
        accentColor: const Color(0xFF2B83EC),
        //disable icon
        iconTheme: const IconThemeData(color: Color(0xFF959595)),
        //enable icon
        primaryIconTheme: const IconThemeData(color: Colors.white),

        fontFamily: 'Georgia',
      ),
      //darkTheme:
      theme:
          //
          ThemeData(
        // Define the default brightness and colors.
        brightness: Brightness.light,
        primaryColor: Colors.white,

        //active taped elements
        accentColor: const Color(0xFF2B83EC),

        //disable icon
        iconTheme: const IconThemeData(color: Color(0xFF959595)),

        //enable icon

        primaryTextTheme:
            TextTheme(headline1: const TextStyle(color: Colors.white)),

        fontFamily: 'Georgia',
      ),
      title: 'Exciter',
      home: const SplashScreen(),
    );
  }
}
