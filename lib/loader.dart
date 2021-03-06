import 'package:flutter/material.dart';
import 'start_screen.dart';
//import 'home_screen.dart';

class LoaderScreen extends StatefulWidget {
  //LoaderScreen(Alignment center);
  const LoaderScreen({Key key}) : super(key: key);

  @override
  _LoaderState createState() => _LoaderState();
}

class _LoaderState extends State<LoaderScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(milliseconds: 5000), () {
      //Navigator.pushNamed(context, HomeScreen());
      //Navigator.of(context).pushNamed(HomeScreen);
      Navigator.push<dynamic>(context,
          MaterialPageRoute<dynamic>(builder: (context) => StartScreen()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      //padding: EdgeInsets.only(left: 130, right: 130, top: 356),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 140),
        child: SizedBox(
          width: 210,
          child: Column(
            //width: MediaQuery.of(context).size.width * 0.9,
            mainAxisAlignment: MainAxisAlignment.center,
            //mainAxisSize: MainAxisSize.min,
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
                'assets/exciter1.png',
                width: 211,
                height: 75,
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
