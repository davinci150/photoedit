import 'package:flutter/material.dart';

import '../../presentation/fonts.dart';
import '../widget/edit_text_widget.dart';
import '../widget/list_video_widget.dart';

class VideoScreen extends StatefulWidget {
  const VideoScreen({
    Key key,
    @required this.showOrHideBottomToolbar,
  }) : super(key: key);
  final void Function(bool isBottomToolvarVisible) showOrHideBottomToolbar;
  @override
  _VideoScreen createState() => _VideoScreen();
}

/*var _valueSize = 0.0;
var _valueOpacity = 0.0;*/

class _VideoScreen extends State<VideoScreen> {
  FilterVideoButtonModel selectedFilterVideo;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
            Visibility(
              visible: selectedFilterVideo != null,
              child: Column(
                children: [
                  SlidersVideoWidget(
                    endValue: 200,
                    startValue: 0,
                    defaultValue: 100,
                    sliderValueListener: (double value) {
                      debugPrint('slider value = $value');
                    },
                    editText: selectedFilterVideo?.name ?? '',
                    onAsseptDeclineButtonClick: (bool isAssept) {
                      setState(() {
                        selectedFilterVideo = null;
                        widget.showOrHideBottomToolbar(true);
                      });
                    },
                  ),
                  SlidersVideoOpacityWidget(
                    endValue: 200,
                    startValue: 0,
                    defaultValue: 100,
                    sliderValueListener: (double value) {
                      debugPrint('slider value = $value');
                    },
                    editText: selectedFilterVideo?.name ?? '',
                    onAsseptDeclineButtonClick: (bool isAssept) {
                      setState(() {
                        selectedFilterVideo = null;
                        widget.showOrHideBottomToolbar(true);
                      });
                    },
                  ),
                ],
              ),
            ),
          ]),
        ),
        const SizedBox(
          height: 16,
        ),
        if (selectedFilterVideo == null)
          SizedBox(
            height: 72,
            child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: ListVideoWidget(
                  onFilterSelect: (FilterVideoButtonModel modelVideo) {
                    setState(() {
                      selectedFilterVideo = modelVideo;
                      widget.showOrHideBottomToolbar(false);
                    });
                  },
                )),
          )
        else
          const SizedBox.shrink(),
        const SizedBox(
          height: 16,
        )
      ],
    );
  }
}

class SlidersVideoWidget extends StatefulWidget {
  const SlidersVideoWidget(
      {Key key,
      @required this.onAsseptDeclineButtonClick,
      @required this.editText,
      @required this.sliderValueListener,
      @required this.startValue,
      @required this.endValue,
      @required this.defaultValue})
      : super(key: key);
  final String editText;
  final void Function(bool isAssept) onAsseptDeclineButtonClick;
  final void Function(double value) sliderValueListener;
  final double startValue;
  final double endValue;
  final double defaultValue;
  @override
  _SlidersVideoWidgetState createState() => _SlidersVideoWidgetState();
}

class _SlidersVideoWidgetState extends State<SlidersVideoWidget> {
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
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 49),
          child: Row(
            children: [
              Text(
                'Size',
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: AppFonts.sfPro,
                  color: Theme.of(context).primaryIconTheme.color,
                ),
              ),
              const Spacer(flex: 15),
              Text(
                defaultValue.toString(),
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: AppFonts.sfPro,
                  color: Theme.of(context).primaryIconTheme.color,
                ),
              ),
              const Spacer(
                flex: 17,
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 29),
          child: SliderTheme(
            data: const SliderThemeData(
              //trackShape: CustomTrackShape(),
              thumbShape: RoundSliderThumbShape(enabledThumbRadius: 13),
            ),
            child: Slider(
              value: defaultValue,
              activeColor: const Color(0xFF2B83EC),
              inactiveColor:
                  WidgetsBinding.instance.window.platformBrightness ==
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
        ),
      ],
    );
  }
}

class SlidersVideoOpacityWidget extends StatefulWidget {
  const SlidersVideoOpacityWidget(
      {Key key,
      @required this.onAsseptDeclineButtonClick,
      @required this.editText,
      @required this.sliderValueListener,
      @required this.startValue,
      @required this.endValue,
      @required this.defaultValue})
      : super(key: key);
  final String editText;
  final void Function(bool isAssept) onAsseptDeclineButtonClick;
  final void Function(double value) sliderValueListener;
  final double startValue;
  final double endValue;
  final double defaultValue;
  @override
  _SlidersVideoOpacityWidgetState createState() => _SlidersVideoOpacityWidgetState();
}

class _SlidersVideoOpacityWidgetState extends State<SlidersVideoOpacityWidget> {
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
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 49),
          child: Row(
            children: [
              Text(
                'Opacity',
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: AppFonts.sfPro,
                  color: Theme.of(context).primaryIconTheme.color,
                ),
              ),
              const Spacer(flex: 15),
              Text(
                defaultValue.toString(),
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: AppFonts.sfPro,
                  color: Theme.of(context).primaryIconTheme.color,
                ),
              ),
              const Spacer(
                flex: 17,
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 29),
          child: SliderTheme(
            data: const SliderThemeData(
              //trackShape: CustomTrackShape(),
              thumbShape: RoundSliderThumbShape(enabledThumbRadius: 13),
            ),
            child: Slider(
              value: defaultValue,
              activeColor: const Color(0xFF2B83EC),
              inactiveColor:
                  WidgetsBinding.instance.window.platformBrightness ==
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
        ),const SizedBox(height: 0),
                 Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 36),
                   child: EditTextWidget(
                    onAsseptDeclineButtonClick: widget.onAsseptDeclineButtonClick,
          editText: widget.editText,
               ),
                 ) ],);
     
  }
}
