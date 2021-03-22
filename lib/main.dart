import 'package:flutter/material.dart';

import 'core/di/service_locator.dart';
import 'module/home_screan/start_screen.dart';
import 'presets_screen.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // ignore: unnecessary_parenthesis
      title: ('Exciter'),
      //home: PresetsScreen(),
      home: StartScreenNew(),
    );
  }
}
