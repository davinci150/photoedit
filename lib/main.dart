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
      darkTheme: ThemeData(
        // Define the default brightness and colors.
        brightness: Brightness.dark,

        //active taped elements
        accentColor: const Color(0xFF2B83EC),

        //disable icon
        iconTheme: const IconThemeData(color: Color(0xFF959595)),

        //enable icon
        primaryIconTheme: const IconThemeData(color: Color(0xFF0F0F0F)),

        fontFamily: 'Georgia',
      ),
      theme: ThemeData(
        // Define the default brightness and colors.
        brightness: Brightness.light,

        //active taped elements
        accentColor: const Color(0xFF2B83EC),

        //disable icon
        iconTheme: const IconThemeData(color: Color(0xFF959595)),

        //enable icon
        primaryIconTheme: const IconThemeData(color: Color(0xFF0F0F0F)),

        fontFamily: 'Georgia',
      ),
      title: 'Exciter',
      home: const SplashScreen(),
    );
  }
}
