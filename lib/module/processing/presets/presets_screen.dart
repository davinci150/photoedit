import 'package:flutter/material.dart';

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
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.all(
            Radius.circular(2),
          ),
        ),
        height: 68,
        width: 60,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Image.asset(
            image,
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
        SizedBox(
          height: 60,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              const Editor(
                  image: 'assets/original_filter_image.png',
                  textFilter: 'Original',
                  color: Colors.grey,
                  isSelected: true),
              const SizedBox(
                width: 12,
              ),
              const Editor(
                  image: 'assets/fresh_filter_image.png',
                  textFilter: 'Fresh',
                  color: Colors.orange,
                  isSelected: true),
              const SizedBox(
                width: 12,
              ),
              const Editor(
                  image: 'assets/vintage_filter_image.png',
                  textFilter: 'Vintage',
                  color: Colors.red,
                  isSelected: true),
              const SizedBox(
                width: 12,
              ),
              const Editor(
                  image: 'assets/mood_filter_image.png',
                  textFilter: 'Mood',
                  color: Colors.green,
                  isSelected: true),
              const SizedBox(
                width: 12,
              ),
              const Editor(
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
