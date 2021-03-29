import 'package:flutter/material.dart';

import '../../presentation/fonts.dart';
import '../edit_text_widget.dart';
import '../editor_widget.dart';

class VideoScreen extends StatefulWidget {
  const VideoScreen({
    Key key,
  }) : super(key: key);

  @override
  _VideoScreen createState() => _VideoScreen();
}

var _valueSize = 0.0;
var _valueOpacity = 0.0;

class _VideoScreen extends State<VideoScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(
              bottom: 27,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
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
                      const Spacer(flex: 10),
                      Text(
                        _valueSize.round().toString(),
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: AppFonts.sfPro,
                          color: Theme.of(context).primaryIconTheme.color,
                        ),
                      ),
                      const Spacer(
                        flex: 12,
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
                      value: _valueSize,
                      activeColor: const Color(0xFF2B83EC),
                      inactiveColor:
                          WidgetsBinding.instance.window.platformBrightness ==
                                  Brightness.light
                              ? const Color(0xFFEAEAEA)
                              : const Color(0xFF313131),
                      min: -50,
                      max: 50,
                      divisions: 100,
                      onChanged: (double value) {
                        setState(() {
                          _valueSize = value;
                        });
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 49),
                  child: Row(
                    children: [
                      const Text('Opacity'),
                      const Spacer(flex: 11),
                      Text(
                        _valueOpacity.round().toString(),
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: AppFonts.sfPro,
                          color: Theme.of(context).primaryIconTheme.color,
                        ),
                      ),
                      const Spacer(
                        flex: 16,
                      ),
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
                      value: _valueOpacity,
                      activeColor: const Color(0xFF2B83EC),
                      inactiveColor:
                          WidgetsBinding.instance.window.platformBrightness ==
                                  Brightness.light
                              ? const Color(0xFFEAEAEA)
                              : const Color(0xFF313131),
                      min: -50,
                      max: 50,
                      divisions: 100,
                      onChanged: (double value) {
                        setState(() {
                          _valueOpacity = value;
                        });
                      },
                    ),
                  ),
                ),
                const SizedBox(height: 25),
                const EditTextWidget(
                  editText: 'Vintage',
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        SizedBox(
          height: 60,
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const <Widget>[
                Editor(
                    image: 'assets/original_filter_image.png',
                    textFilter: 'Vintage',
                    color: Color(0xFF4C6FEC),
                    isSelected: false),
                SizedBox(
                  width: 12,
                ),
                Editor(
                    image: 'assets/original_filter_image.png',
                    textFilter: 'Slow Mo',
                    color: Color(0xFFEC904C),
                    isSelected: false),
                SizedBox(
                  width: 12,
                ),
                Editor(
                    image: 'assets/original_filter_image.png',
                    textFilter: 'Glitter',
                    color: Color(0xFFD64CEC),
                    isSelected: true),
                SizedBox(
                  width: 12,
                ),
                Editor(
                    image: 'assets/original_filter_image.png',
                    textFilter: 'Prism',
                    color: Color(0xFFEC4C69),
                    isSelected: true),
                SizedBox(
                  width: 12,
                ),
                Editor(
                    image: 'assets/original_filter_image.png',
                    textFilter: 'Subtitles',
                    color: Color(0xFF304D2E),
                    isSelected: true),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 16,
        )
      ],
    );
  }
}

/*class CustomTrackShape extends RoundedRectSliderTrackShape {
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
}*/
