import 'dart:math';

import 'package:flutter/material.dart';

import '../../presentation/fonts.dart';


class SliderWidget extends StatefulWidget {
  const SliderWidget({
    Key key,
    @required this.sliderValueListener,
    @required this.startValue,
    @required this.endValue,
    @required this.defaultValue,
  }) : super(key: key);

  
  final void Function(double value) sliderValueListener;
  final double startValue;
  final double endValue;
  final double defaultValue;

  @override
  _SliderWidgetState createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  double defaultValue;
 @override
  void initState() {
    defaultValue = widget.defaultValue;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          
          defaultValue.toDouble().toStringAsFixed(2),
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
            value: defaultValue,
            activeColor: const Color(0xFF2B83EC),
            inactiveColor: WidgetsBinding.instance.window.platformBrightness ==
                    Brightness.light
                ? const Color(0xFFEAEAEA)
                : const Color(0xFF313131),

            min: widget.startValue,
            max: widget.endValue,
            divisions: 100,
            
            onChanged: (double value) {
              widget.sliderValueListener(value);
              setState(() {
                defaultValue = value;
              });
            },
          ),
        ),
      ],
    );
  }
}
