import 'package:flutter/material.dart';
import 'loader.dart';
//import 'package:static_analyze_av/static_analyze_av.dart';
//import 'home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ('Recent'),
      home: LoaderScreen(),
    );
  }
}
