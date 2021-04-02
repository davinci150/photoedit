import 'package:flutter/material.dart';

import '../../my_flutter_app_icons.dart';
import 'editor/editor_screen.dart';

class ListEditWidget extends StatelessWidget {
  const ListEditWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
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
    );
  }
}
