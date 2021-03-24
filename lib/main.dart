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
    return const MaterialApp(
      title: 'Exciter',
      home: SplashScreen(),
    );
  }
}
