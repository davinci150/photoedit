import 'package:flutter/material.dart';

import '../editor_widget.dart';

class VideoScreen extends StatefulWidget {
  const VideoScreen({
    Key key,
  }) : super(key: key);

  @override
  _VideoScreen createState() => _VideoScreen();
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
                    image: 'assets/original_filter_image.png',
                    textFilter: 'Vintage',
                    color: Color(0xFF4C6FEC),
                    isSelected: false),
                SizedBox(
                  width: 12,
                ),
                Editor(
                    image: 'assets/original_filter_image.png',
                    textFilter: 'Slow Mo',
                    color: Color(0xFFEC904C),
                    isSelected: false),
                SizedBox(
                  width: 12,
                ),
                Editor(
                    image: 'assets/original_filter_image.png',
                    textFilter: 'Glitter',
                    color: Color(0xFFD64CEC),
                    isSelected: true),
                SizedBox(
                  width: 12,
                ),
                Editor(
                    image: 'assets/original_filter_image.png',
                    textFilter: 'Prism',
                    color: Color(0xFFEC4C69),
                    isSelected: true),
                SizedBox(
                  width: 12,
                ),
                Editor(
                    image: 'assets/original_filter_image.png',
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
