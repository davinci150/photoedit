import 'package:flutter/material.dart';

import 'edit_text_widget.dart';
import 'slider_widget.dart';

class FilterSliderWidget extends StatefulWidget {
  const FilterSliderWidget({
    Key key,
    this.editText,
    @required this.onAsseptDeclineButtonClick,
  }) : super(key: key);
  final String editText;
  final void Function(bool isAssept) onAsseptDeclineButtonClick;
  @override
  _EditBottomWidget createState() => _EditBottomWidget();
}

class _EditBottomWidget extends State<FilterSliderWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SliderWidget(
          valueSlider: 50,
          valueListener: (value) {
            print(value);
          },
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
