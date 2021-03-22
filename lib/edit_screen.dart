import 'package:flutter/material.dart';

class EditScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 500,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
              height: 60, width: 100, child: const Icon(Icons.access_alarm)),
          Container(
            height: 60,
            width: 100,
            child: const Icon(Icons.accessibility_rounded),
          ),
          Container(
            height: 60,
            width: 100,
            child: const Icon(Icons.access_alarm),
          ),
          Container(
            height: 60,
            width: 100,
            child: const Icon(Icons.ac_unit),
          ),
          Container(
            height: 60,
            width: 100,
            child: const Icon(Icons.hail),
          ),
          Container(
            height: 60,
            width: 100,
            child: const Icon(Icons.home),
          ),
        ],
      ),
    );
  }
}
