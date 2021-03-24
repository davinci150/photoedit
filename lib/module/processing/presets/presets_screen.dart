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
    return Container(
        decoration: const BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.all(
            Radius.circular(2),
          ),
        ),
        height: 80,
        width: 60,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Image.asset(
            image,

          ),
          Visibility(
            visible: isSelected,
            child: const Padding(
                padding: EdgeInsets.only(
                  bottom: 22,
                  left: 30,
                ),
                child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 12,
                    child: Icon(
                      MyFlutterApp.lockIcon,
                    ))),
          ),
          Container(
            width: 60,
            height: 18,
            color: color,
            child: Center(
              child: Text(
                textFilter,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 12
                ),
              ),
            ),
          ),
        ]));
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
            children: const <Widget> [
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
