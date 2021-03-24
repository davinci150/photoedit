import 'package:flutter/material.dart';

import '../../../my_flutter_app_icons.dart';

class PresetsScreen extends StatefulWidget {
  const PresetsScreen({
    Key key,
  }) : super(key: key);

  @override
  _PresetsScreenState createState() => _PresetsScreenState();
}

class Editor extends StatelessWidget {
  const Editor(
      {Key key, this.image, this.textFilter, this.color, this.isSelected})
      : super(key: key);
  final String image;
  final String textFilter;
  final Color color;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Image.asset(
        image,
        fit: BoxFit.fill,
        width: 60.0,
        height: 60.0,
      ),
      Container(
        child: Container(
          child: Text(
            textFilter,
            style: TextStyle(fontSize: 14.0, color: Colors.white),
          ),
          color: color,
          padding: const EdgeInsets.all(0.0),
          alignment: Alignment.center,
          width: 60,
          height: 18.0,
        ),
        padding: const EdgeInsets.all(0.0),
        alignment: Alignment.bottomCenter,
      ),
      Visibility(
        visible: isSelected,
        child: const Padding(
          padding: EdgeInsets.only(
            top: 15,
            left: 30,
          ),
          child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 12,
              child: Icon(
                MyFlutterApp.lockIcon,
              )),
        ),
      )
    ]);
  }
}

class _PresetsScreenState extends State<PresetsScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: Container(
          color: Colors.grey,
        )),
        const SizedBox(
          height: 16,
        ),
        SizedBox(
          height: 60,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: const <Widget>[
              Editor(
                  image: 'assets/original_filter_image.png',
                  textFilter: 'Original',
                  color: Colors.grey,
                  isSelected: false),
              SizedBox(
                width: 12,
              ),
              Editor(
                  image: 'assets/fresh_filter_image.png',
                  textFilter: 'Fresh',
                  color: Colors.orange,
                  isSelected: false),
              SizedBox(
                width: 12,
              ),
              Editor(
                  image: 'assets/vintage_filter_image.png',
                  textFilter: 'Vintage',
                  color: Colors.red,
                  isSelected: false),
              SizedBox(
                width: 12,
              ),
              Editor(
                  image: 'assets/mood_filter_image.png',
                  textFilter: 'Mood',
                  color: Colors.green,
                  isSelected: true),
              SizedBox(
                width: 12,
              ),
              Editor(
                  image: 'assets/natural_filter_image.png',
                  textFilter: 'Natural',
                  color: Colors.green,
                  isSelected: true),
            ],
          ),
        ),
        const SizedBox(
          height: 16,
        )
      ],
    );
  }
}
