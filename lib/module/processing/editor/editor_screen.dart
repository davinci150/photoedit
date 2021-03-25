import 'package:exciter/module/processing/contrast_widget.dart';
import 'package:flutter/material.dart';

import '../../../my_flutter_app_icons.dart';
import '../../presentation/fonts.dart';

class EditorScreen extends StatefulWidget {
  const EditorScreen({
    Key key,
  }) : super(key: key);

  @override
  _EditorScreen createState() => _EditorScreen();
}

class Editor extends StatelessWidget {
  const Editor({
    Key key,
    this.textFilter,
    this.iconFilter,
  }) : super(key: key);

  final IconData iconFilter;
  final String textFilter;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                textFilter,
                style: const TextStyle(
                    fontSize: 12.0,
                    fontFamily: AppFonts.sfPro,
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
          const SizedBox(
            height: 6,
          ),
          Row(
            children: [
              CircleAvatar(
                backgroundColor:
                    WidgetsBinding.instance.window.platformBrightness ==
                            Brightness.light
                        ? const Color(0xFFF6F7F8)
                        : const Color(0xFF212121),
                radius: 24,
                child: Icon(
                  iconFilter,
                  size: 20,
                  color: WidgetsBinding.instance.window.platformBrightness ==
                          Brightness.light
                      ? Colors.black
                      : Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

void sliderChanged(double value) {}
double _currentSliderValue = 0;

class _EditorScreen extends State<EditorScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: Container(
          color: Colors.grey,
          child:
              Contrast(), /*Padding(
            padding: const EdgeInsets.only(left: 46, bottom: 27, right: 46),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Slider(
                    value: _currentSliderValue,
                    activeColor: Color(0xFF2B83EC),
                    inactiveColor: Color(0xFF313131),
                    min: -100,
                    max: 100,
                    divisions: 100,
                    label: _currentSliderValue.round().toString(),
                    onChanged: (value) {
                      setState(() {
                        _currentSliderValue = value;
                      });
                    }),
                SizedBox(height: 20),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //mainAxisSize: MainAxisSize.max,
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      const Icon(Icons.clear,
                          color: Color(0xFF646464), size: 25),
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
          ),*/
        )),
        const SizedBox(
          height: 16,
        ),
        SizedBox(
          height: 72,
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const <Widget>[
                Editor(
                  textFilter: 'Color',
                  iconFilter: MyFlutterApp.colourIcon,
                ),
                SizedBox(
                  width: 12,
                ),
                Editor(
                  iconFilter: MyFlutterApp.lightIcon,
                  textFilter: 'Light',
                ),
                SizedBox(
                  width: 12,
                ),
                Editor(
                  iconFilter: MyFlutterApp.contrastIcon,
                  textFilter: 'Contrast',
                ),
                SizedBox(
                  width: 12,
                ),
                Editor(
                  iconFilter: MyFlutterApp.shadowsIcon,
                  textFilter: 'Shadows',
                ),
                SizedBox(
                  width: 12,
                ),
                Editor(
                  iconFilter: MyFlutterApp.saturationIcon,
                  textFilter: 'Saturation',
                ),
                SizedBox(
                  width: 12,
                ),
                Editor(
                  iconFilter: MyFlutterApp.temperatureIcon,
                  textFilter: 'Temperature',
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 24,
        )
      ],
    );
  }
}
