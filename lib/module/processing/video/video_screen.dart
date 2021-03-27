import 'package:flutter/material.dart';

import '../../presentation/fonts.dart';
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
          child: Container(
              // color: Colors.grey,
              child: Padding(
            padding: const EdgeInsets.only(left: 46, bottom: 27, right: 46),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  children: [
                    //Spacer(),
                    Text(
                      'Size',
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: AppFonts.sfPro,
                        color: Theme.of(context).primaryIconTheme.color,
                      ),
                    ),
                    Spacer(flex: 10),
                    Text(
                      _valueSize.round().toString(),
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: AppFonts.sfPro,
                        color: Theme.of(context).primaryIconTheme.color,
                      ),
                    ),
                    Spacer(
                      flex: 12,
                    )
                  ],
                ),
                /*SliderTheme(
                data: SliderThemeData(
                  trackShape: CustomTrackShape(),
                ),
                child: Slider(
                  value: _valueSize,
                  min: -50,
                  max: 50,
                  divisions: 100,
                  onChanged: (double value) {
                    setState(() {
                      _valueSize = value;
                    });
                  },
                ),
              ),*/

                SliderTheme(
                  data: SliderThemeData(
                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 13),
                    trackHeight: 3.0,

                    thumbColor: Color(0xFF2B83EC),

                    //overlayShape: const RoundSliderOverlayShape(overlayRadius: 0.0),
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
                    //label: _value.round().toString(),
                    onChanged: (double value) {
                      setState(() {
                        _valueSize = value;
                      });
                    },
                  ),
                ),
                Row(
                  children: [
                    Text('Opacity'),
                    Spacer(flex: 11),
                    Text(
                      _valueOpacity.round().toString(),
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: AppFonts.sfPro,
                        color: Theme.of(context).primaryIconTheme.color,
                      ),
                    ),
                    Spacer(
                      flex: 16,
                    ),
                  ],
                ),
                SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 13),
                    trackShape: RoundedRectSliderTrackShape(),
                    trackHeight: 3.0,

                    thumbColor: Color(0xFF2B83EC),

                    //overlayShape: const RoundSliderOverlayShape(overlayRadius: 0.0),
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
                    //label: _value.round().toString(),
                    onChanged: (double value) {
                      setState(() {
                        _valueOpacity = value;
                      });
                    },
                  ),
                ),
                /*SliderTheme(
                data: SliderThemeData(
                  trackShape: CustomTrackShape(),
                ),
                child: Slider(
                  value: _valueOpacity,
                  min: -50,
                  max: 50,
                  divisions: 100,
                  onChanged: (double value) {
                    setState(() {
                      _valueOpacity = value;
                    });
                  },
                ),
              ),*/
                const SizedBox(height: 25),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //mainAxisSize: MainAxisSize.max,
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.clear,
                          color: WidgetsBinding
                                      .instance.window.platformBrightness ==
                                  Brightness.light
                              ? const Color(0xFFCACACA)
                              : const Color(0xFF646464),
                          size: 25),
                      Text(
                        'Vintage',
                        style: TextStyle(
                            fontSize: 17.0,
                            color: Theme.of(context).primaryIconTheme.color,
                            fontWeight: FontWeight.w400,
                            fontFamily: AppFonts.sfPro),
                      ),
                      const Icon(Icons.check,
                          color: Color(0xFF2B83EC), size: 25)
                    ]),
              ],
            ),
          )),
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
