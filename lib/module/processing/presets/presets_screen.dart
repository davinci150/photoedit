import 'package:flutter/material.dart';
import '../widget/editor_widget.dart';

class PresetsScreen extends StatefulWidget {
  const PresetsScreen({
    Key key,
  }) : super(key: key);

  @override
  _PresetsScreenState createState() => _PresetsScreenState();
}

class _PresetsScreenState extends State<PresetsScreen> {
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
          height: 72,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const <Widget>[
                Editor(
                    image: 'assets/original_filter_image.png',
                    textFilter: 'Original',
                    color: Color(0xFF959595),
                    isSelected: false),
                SizedBox(
                  width: 12,
                ),
                Editor(
                    image: 'assets/fresh_filter_image.png',
                    textFilter: 'Fresh',
                    color: Color(0xFFEC904C),
                    isSelected: false),
                SizedBox(
                  width: 12,
                ),
                Editor(
                    image: 'assets/vintage_filter_image.png',
                    textFilter: 'Vintage',
                    color: Color(0xFFEC4C4C),
                    isSelected: false),
                SizedBox(
                  width: 12,
                ),
                Editor(
                    image: 'assets/mood_filter_image.png',
                    textFilter: 'Mood',
                    color: Color(0xFF53D13E),
                    isSelected: true),
                SizedBox(
                  width: 12,
                ),
                Editor(
                    image: 'assets/natural_filter_image.png',
                    textFilter: 'Natural',
                    color: Color(0xFF00A843),
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
