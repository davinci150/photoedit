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
                backgroundColor: const Color(0xFFF6F7F8),
                radius: 24,
                child: Icon(
                  iconFilter,
                  size: 20,
                  color: Theme.of(context).primaryIconTheme.color,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _EditorScreen extends State<EditorScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: Container(
                // color: Colors.grey,
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
