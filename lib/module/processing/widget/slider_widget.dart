import 'package:flutter/material.dart';

import '../../presentation/fonts.dart';

class SliderWidget extends StatefulWidget {
  const SliderWidget(
      {Key key, @required this.valueSlider, @required this.valueListener})
      : super(key: key);

  final double valueSlider;
  final void Function(double value) valueListener;

  @override
  _SliderWidgetState createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          widget.valueSlider.round().toString(),
          style: TextStyle(
            fontSize: 14,
            fontFamily: AppFonts.sfPro,
            color: Theme.of(context).primaryIconTheme.color,
          ),
        ),
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
            thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 13),

            trackHeight: 3.0,
            thumbColor: const Color(0xFF2B83EC),

            //overlayShape: const RoundSliderOverlayShape(overlayRadius: 0.0),
          ),
          child: Slider(
            value: widget.valueSlider,
            activeColor: const Color(0xFF2B83EC),
            inactiveColor: WidgetsBinding.instance.window.platformBrightness ==
                    Brightness.light
                ? const Color(0xFFEAEAEA)
                : const Color(0xFF313131),

            min: -50,
            max: 50,
            divisions: 100,
            //label: _value.round().toString(),
            onChanged: (double value) {
              widget.valueListener(value);
              setState(() {
                //widget.valueSlider = value;
              });
            },
          ),
        ),
      ],
    );
  }
}
