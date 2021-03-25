import 'package:flutter/material.dart';

import '../home_screan/start_screen.dart';
import '../presentation/fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  _LoaderState createState() => _LoaderState();
}

class _LoaderState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(milliseconds: 3000), () {
      Navigator.pushReplacement<dynamic, dynamic>(
          context,
          MaterialPageRoute<dynamic>(
              builder: (context) => const StartScreen()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.only(bottom: 100),
        child: SizedBox(
          width: 210,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'assets/ex_image.png',
                width: 47,
                height: 82,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'exciter',
                style: TextStyle(
                    fontSize: 56,
                    fontFamily: AppFonts.montserrat,
                    fontWeight: FontWeight.w300),
              ),
              const SizedBox(
                height: 30,
              ),
              LinearProgressIndicator(
                  backgroundColor: WidgetsBinding.instance.window
                      .platformBrightness ==
                      Brightness.light
                      ? const Color(0xFFF6F7F8)
                      : const Color(0xFF212121),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
