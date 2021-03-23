import 'package:exciter/my_flutter_app_icons.dart';
import 'package:flutter/material.dart';

class EditorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: Container()),
        SizedBox(
          height: 60,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Container(
                height: 60,
                width: 80,
                child: const Icon(MyFlutterApp.colourIcon),
              ),
              Container(
                height: 60,
                width: 80,
                child: const Icon(MyFlutterApp.lightIcon),
              ),
              Container(
                height: 60,
                width: 80,
                child: const Icon(MyFlutterApp.contrastIcon),
              ),
              Container(
                height: 60,
                width: 80,
                child: const Icon(MyFlutterApp.shadowsIcon),
              ),
              Container(
                height: 60,
                width: 80,
                child: const Icon(MyFlutterApp.saturationIcon),
              ),
              Container(
                  height: 60,
                  width: 80,
                  child: const Icon(MyFlutterApp.temperatureIcon)),
            ],
          ),
        ),
        const SizedBox(
          height: 16,
        )
      ],
    );
  }
}
