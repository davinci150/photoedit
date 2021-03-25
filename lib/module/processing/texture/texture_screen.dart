/*import 'package:flutter/material.dart';

class TextureScreen extends StatefulWidget {
  const TextureScreen({Key key}) : super(key: key);

  @override
  _TextureScreenState createState() => _TextureScreenState();
}

class _TextureScreenState extends State<TextureScreen> {
  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('TextureScreen'));
  }
}*/
import 'package:flutter/material.dart';

import '../../../my_flutter_app_icons.dart';

class TextureScreen extends StatefulWidget {
  const TextureScreen({
    Key key,
  }) : super(key: key);

  @override
  _TextureScreen createState() => _TextureScreen();
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

class _TextureScreen extends State<TextureScreen> {
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
                    textFilter: 'None',
                    color: Color(0xFF959595),
                    isSelected: false),
                SizedBox(
                  width: 12,
                ),
                Editor(
                    textFilter: 'Dust 01',
                    color: Color(0xFF0F0F0F),
                    isSelected: false),
                SizedBox(
                  width: 12,
                ),
                Editor(
                    textFilter: 'Dust 02',
                    color: Color(0xFF0F0F0F),
                    isSelected: true),
                SizedBox(
                  width: 12,
                ),
                Editor(
                    textFilter: 'Dust 03',
                    color: Color(0xFF0F0F0F),
                    isSelected: true),
                SizedBox(
                  width: 12,
                ),
                Editor(
                    textFilter: 'Dust 04',
                    color: Color(0xFF0F0F0F),
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
