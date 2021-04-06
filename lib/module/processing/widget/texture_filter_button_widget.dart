import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../my_flutter_app_icons.dart';
import 'list_texture_widget.dart';

class FilterTextureButtonWidget extends StatelessWidget {
  const FilterTextureButtonWidget(
      {Key key, @required this.filterTexture, @required this.onTap})
      : super(key: key);

  final FilterTextureButtonModel filterTexture;
  final void Function(FilterTextureButtonModel model) onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(onTap: () {
                  onTap(filterTexture);
                },
          child: Stack(children: <Widget>[
        Image.asset(
          filterTexture.image,
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
              color: filterTexture.color,
            ),
            padding: const EdgeInsets.all(0.0),
            alignment: Alignment.center,
            width: 60,
            height: 18.0,
            child: Text(
              filterTexture.name,
              style: const TextStyle(
                  fontSize: 14.0, color: Colors.white, fontFamily: 'SF-Pro'),
            ),
          ),
        ),
Visibility(
          visible: filterTexture.isSelected,
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
}
