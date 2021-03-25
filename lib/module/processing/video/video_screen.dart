import 'package:flutter/material.dart';

import '../../../my_flutter_app_icons.dart';

class VideoScreen extends StatefulWidget {
  const VideoScreen({
    Key key,
  }) : super(key: key);

  @override
  _VideoScreen createState() => _VideoScreen();
}

class Editor extends StatelessWidget {
  const Editor({Key key, this.textFilter, this.color, this.isSelected})
      : super(key: key);

  final String textFilter;
  final Color color;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Image.asset(
        'assets/original_filter_image.png',
        fit: BoxFit.fill,
        width: 60.0,
        height: 60.0,
      ),
      Container(
        padding: const EdgeInsets.all(0.0),
        alignment: Alignment.bottomCenter,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(3),
                bottomRight: Radius.circular(3)),
            color: color,
          ),
          padding: const EdgeInsets.all(0.0),
          alignment: Alignment.center,
          width: 60,
          height: 18.0,
          child: Text(
            textFilter,
            style: const TextStyle(
                fontSize: 14.0, color: Colors.white, fontFamily: 'SF-Pro'),
          ),
        ),
      ),
      Visibility(
        visible: isSelected,
        child: Container(
          width: 60,
          alignment: Alignment.bottomRight,
          padding: const EdgeInsets.only(bottom: 22, right: 4),
          child: const CircleAvatar(
              backgroundColor: Colors.white,
              radius: 8,
              child: Icon(
                MyFlutterApp.lockIcon,
                color: Colors.black,
                size: 16,
              )),
        ),
      )
    ]);
  }
}

class _VideoScreen extends State<VideoScreen> {
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
          height: 60,
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const <Widget>[
                Editor(
                    textFilter: 'Vintage',
                    color: Color(0xFF4C6FEC),
                    isSelected: false),
                SizedBox(
                  width: 12,
                ),
                Editor(
                    textFilter: 'Slow Mo',
                    color: Color(0xFFEC904C),
                    isSelected: false),
                SizedBox(
                  width: 12,
                ),
                Editor(
                    textFilter: 'Glitter',
                    color: Color(0xFFD64CEC),
                    isSelected: true),
                SizedBox(
                  width: 12,
                ),
                Editor(
                    textFilter: 'Prism',
                    color: Color(0xFFEC4C69),
                    isSelected: true),
                SizedBox(
                  width: 12,
                ),
                Editor(
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
