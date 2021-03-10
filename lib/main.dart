import 'package:flutter/material.dart';
import 'loader.dart';
//import 'package:static_analyze_av/static_analyze_av.dart';
//import 'home_screen.dart';

void main() => runApp(MyApp());

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // ignore: unnecessary_parenthesis
      title: ('Exciter'),
      home: LoaderScreen(),
    );
  }
}
