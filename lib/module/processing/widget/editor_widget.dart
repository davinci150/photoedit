import 'package:flutter/material.dart';
import '../../../my_flutter_app_icons.dart';

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
