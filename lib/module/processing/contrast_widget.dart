import 'package:exciter/module/presentation/fonts.dart';
import 'package:flutter/material.dart';
import '../../my_flutter_app_icons.dart';

// ignore: must_be_immutable
class Contrast extends StatelessWidget {
  Contrast({Key key, this.currentSliderValue}) : super(key: key);
  double currentSliderValue;
  void sliderChanged(double value) {}

  //double currentSliderValue = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 46, bottom: 27, right: 46),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Slider(
              value: currentSliderValue = 0,
              activeColor: Color(0xFF2B83EC),
              inactiveColor: Color(0xFF313131),
              min: -100,
              max: 100,
              divisions: 100,
              label: currentSliderValue.toString(),
              onChanged: (value) {
                setState(() {
                  currentSliderValue = value;
                });
              }),
          SizedBox(height: 20),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //mainAxisSize: MainAxisSize.max,
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const Icon(Icons.clear, color: Color(0xFF646464), size: 25),
                Text(
                  "Contrast",
                  style: TextStyle(
                      fontSize: 17.0,
                      color: Theme.of(context).primaryIconTheme.color,
                      fontWeight: FontWeight.w400,
                      fontFamily: AppFonts.sfPro),
                ),
                const Icon(Icons.check,
                    color: const Color(0xFF2B83EC), size: 25)
              ]),
        ],
      ),
    );
  }

  void setState(Null Function() param0) {}
}
