/*import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../my_flutter_app_icons.dart';
import 'list_video_widget.dart';

class FilterVideoButtonWidget extends StatelessWidget {
  const FilterVideoButtonWidget(
      {Key key, @required this.filterVideo, @required this.onTap})
      : super(key: key);

  final FilterVideoButtonModel filterVideo;
  final void Function(FilterVideoButtonModel model) onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(onTap: () {
                  onTap(filterVideo);
                },
          child: Stack(children: <Widget>[
        Image.asset(
          filterVideo.image,
          fit: BoxFit.fill,
          width: 60.0,
          height: 68.0,
        ),
        Container(
          padding: const EdgeInsets.all(0.0),
          alignment: Alignment.bottomCenter,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(3),
                  bottomRight: Radius.circular(3)),
              color: filterVideo.color,
            ),
            padding: const EdgeInsets.all(0.0),
            alignment: Alignment.center,
            width: 60,
            height: 18.0,
            child: Text(
              filterVideo.name,
              style: const TextStyle(
                  fontSize: 14.0, color: Colors.white, fontFamily: 'SF-Pro'),
            ),
          ),
        ),
Visibility(
          visible: filterVideo.isSelected,
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
        ]),
    );
  }
}*/
