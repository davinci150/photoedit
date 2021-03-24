import 'package:exciter/module/presentation/fonts.dart';
import 'package:flutter/material.dart';

import '../../../my_flutter_app_icons.dart';

/*class EditorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: Container()),
        SizedBox(
          height: 60,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Container(
                height: 60,
                width: 80,
                child: const Icon(MyFlutterApp.colourIcon),
              ),
              Container(
                height: 60,
                width: 80,
                child: const Icon(MyFlutterApp.lightIcon),
              ),
              Container(
                height: 60,
                width: 80,
                child: const Icon(MyFlutterApp.contrastIcon),
              ),
              Container(
                height: 60,
                width: 80,
                child: const Icon(MyFlutterApp.shadowsIcon),
              ),
              Container(
                height: 60,
                width: 80,
                child: const Icon(MyFlutterApp.saturationIcon),
              ),
              Container(
                  height: 60,
                  width: 80,
                  child: const Icon(MyFlutterApp.temperatureIcon)),
            ],
          ),
        ),
        const SizedBox(
          height: 16,
        )
      ],
    );
  }
}*/
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
                style:
                    const TextStyle(fontSize: 14.0, fontFamily: AppFonts.sfPro),
              ),
            ],
          ),
          SizedBox(
            height: 6,
          ),
          Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.grey,
                radius: 24,
                child: Icon(
                  iconFilter,
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
          height: 70,
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
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
          height: 16,
        )
      ],
    );
  }
}
