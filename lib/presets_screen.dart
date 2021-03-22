import 'package:flutter/material.dart';

class PresetsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.all(
                Radius.circular(2),
              ),
            ),
            height: 68,
            width: 60,
            child: Stack(alignment: Alignment.bottomCenter, children: [
              Image.asset(
                'assets/testImage.png',
              ),
              Container(
                width: 60,
                height: 18,
                color: Colors.grey,
                child: Center(
                  child: Text(
                    'Original',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ])),
        Container(
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.all(
                Radius.circular(2),
              ),
            ),
            height: 68,
            width: 60,
            child: Stack(alignment: Alignment.bottomCenter, children: [
              Image.asset(
                'assets/testImage.png',
              ),
              Container(
                width: 60,
                height: 18,
                color: Colors.orange,
                child: Center(
                  child: Text(
                    'Fresh',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ])),
        Container(
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.all(
                Radius.circular(2),
              ),
            ),
            height: 68,
            width: 60,
            child: Stack(alignment: Alignment.bottomCenter, children: [
              Image.asset(
                'assets/testImage.png',
              ),
              Container(
                width: 60,
                height: 18,
                color: Colors.red,
                child: Center(
                  child: Text(
                    'Vintage',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ])),
        Container(
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.all(
                Radius.circular(2),
              ),
            ),
            height: 68,
            width: 60,
            child: Stack(alignment: Alignment.bottomCenter, children: [
              Image.asset(
                'assets/testImage.png',
              ),
              Container(
                width: 60,
                height: 18,
                color: Colors.green[300],
                child: Center(
                  child: Text(
                    'Mood',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ])),
        Container(
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.all(
                Radius.circular(2),
              ),
            ),
            height: 68,
            width: 60,
            child: Stack(alignment: Alignment.bottomCenter, children: [
              Image.asset(
                'assets/testImage.png',
              ),
              Container(
                width: 60,
                height: 18,
                color: Colors.green,
                child: Center(
                  child: Text(
                    'Natural',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ])),
      ],
    );
  }
}
