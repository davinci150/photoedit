import 'package:flutter/material.dart';

import 'edit_text_widget.dart';
import 'slider_widget.dart';

class FilterSliderWidget extends StatefulWidget {
  const FilterSliderWidget({
    Key key,
    this.editText,
    @required this.onAsseptDeclineButtonClick,
    @required this.startValue,
    @required this.endValue,
    @required this.defaultValue,
    @required this.sliderValueListener,
  }) : super(key: key);
  final String editText;
  final void Function(bool isAssept) onAsseptDeclineButtonClick;
  final double startValue;
  final double endValue;
  final double defaultValue;
  final void Function(double value) sliderValueListener;

  @override
  _EditBottomWidget createState() => _EditBottomWidget();
}

class _EditBottomWidget extends State<FilterSliderWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SliderWidget(
          //valueSlider: 50,
          endValue: widget.endValue,
          startValue: widget.startValue,
          defaultValue: widget.defaultValue,
          sliderValueListener: widget.sliderValueListener,
        ),
        const SizedBox(height: 25),
        EditTextWidget(
          onAsseptDeclineButtonClick: widget.onAsseptDeclineButtonClick,
          editText: widget.editText,
        )
      ],
    );
  }
}
