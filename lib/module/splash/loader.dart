import 'package:flutter/material.dart';

import '../home_screan/start_screen.dart';

class LoaderScreen extends StatefulWidget {
  const LoaderScreen({Key key}) : super(key: key);

  @override
  _LoaderState createState() => _LoaderState();
}

class _LoaderState extends State<LoaderScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(milliseconds: 2000), () {
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
      backgroundColor: Colors.white,
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.only(bottom: 100),
        child: SizedBox(
          width: 210,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'assets/ex.png',
                width: 47,
                height: 82,
              ),
              const SizedBox(
                height: 10,
              ),
              Image.asset(
                'assets/exciter_img.png',
                height: 68,
              ),
              const SizedBox(
                height: 30,
              ),
              const LinearProgressIndicator(
                backgroundColor: Colors.grey,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
