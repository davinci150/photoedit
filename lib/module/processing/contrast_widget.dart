import 'package:flutter/material.dart';

import '../presentation/fonts.dart';

class Contrast extends StatefulWidget {
  @override
  _Contrast createState() => _Contrast();
}

class _Contrast extends State<Contrast> {
  //void sliderChanged(double value) {}
  var _value = 0.0;
  //double currentSliderValue = 0;
  String textWidget = '';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 46, bottom: 27, right: 46),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            _value.round().toString(),
            style: TextStyle(
              fontSize: 14,
              fontFamily: AppFonts.sfPro,
              color: Theme.of(context).primaryIconTheme.color,
            ),
          ),
          SliderTheme(
            data: SliderTheme.of(context).copyWith(
              thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 13),
              trackShape: CustomTrackShape(),
              trackHeight: 3.0,
              thumbColor: const Color(0xFF2B83EC),

              //overlayShape: const RoundSliderOverlayShape(overlayRadius: 0.0),
            ),
            child: Slider(
              value: _value,
              activeColor: const Color(0xFF2B83EC),
              inactiveColor:
                  WidgetsBinding.instance.window.platformBrightness ==
                          Brightness.light
                      ? const Color(0xFFEAEAEA)
                      : const Color(0xFF313131),

              min: -50,
              max: 50,
              divisions: 100,
              //label: _value.round().toString(),
              onChanged: (double value) {
                setState(() {
                  _value = value;
                });
              },
            ),
          ),
          const SizedBox(height: 25),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //mainAxisSize: MainAxisSize.max,
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.clear,
                    color: WidgetsBinding.instance.window.platformBrightness ==
                            Brightness.light
                        ? const Color(0xFFCACACA)
                        : const Color(0xFF646464),
                    size: 25),
                Text(
                  //'Contrast',
                  textWidget,
                  style: TextStyle(
                      fontSize: 17.0,
                      color: Theme.of(context).primaryIconTheme.color,
                      fontWeight: FontWeight.w400,
                      fontFamily: AppFonts.sfPro),
                ),
                const Icon(Icons.check, color: Color(0xFF2B83EC), size: 25)
              ]),
        ],
      ),
    );
  }
}

class CustomTrackShape extends RoundedRectSliderTrackShape {
  @override
  Rect getPreferredRect({
    @required RenderBox parentBox,
    Offset offset = Offset.zero,
    @required SliderThemeData sliderTheme,
    bool isEnabled = false,
    bool isDiscrete = false,
  }) {
    final double trackHeight = sliderTheme.trackHeight;
    final double trackLeft = offset.dx;
    final double trackTop =
        offset.dy + (parentBox.size.height - trackHeight) / 2;
    final double trackWidth = parentBox.size.width;
    return Rect.fromLTWH(trackLeft, trackTop, trackWidth, trackHeight);
  }
}
