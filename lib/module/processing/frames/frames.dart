import 'package:flutter/material.dart';
import '../../presentation/fonts.dart';

class FramesScreen extends StatefulWidget {
  const FramesScreen({
    Key key,
  }) : super(key: key);

  @override
  _FramesScreen createState() => _FramesScreen();
}

class Editor extends StatelessWidget {
  const Editor({
    Key key,
    this.iconFilter,
    this.textFilter,
  }) : super(key: key);

  final String iconFilter;
  final String textFilter;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                iconFilter,
                fit: BoxFit.fill,
                width: 48.0,
                height: 48.0,
                color: Theme.of(context).primaryIconTheme.color,
              ),
            ],
          ),
          const SizedBox(
            height: 6,
          ),
          Row(
            children: [
              Text(
                textFilter,
                style: const TextStyle(
                    fontSize: 12.0,
                    fontFamily: AppFonts.sfPro,
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _FramesScreen extends State<FramesScreen> {
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
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const <Widget>[
                Editor(
                  textFilter: 'Original',
                  iconFilter: 'assets/original_frames_image.png',
                ),
                SizedBox(
                  width: 12,
                ),
                Editor(
                  iconFilter: 'assets/super_8_frames_image.png',
                  textFilter: 'Super 8',
                ),
                SizedBox(
                  width: 12,
                ),
                Editor(
                  iconFilter: 'assets/8mm_frames_image.png',
                  textFilter: '8mm',
                ),
                SizedBox(
                  width: 12,
                ),
                Editor(
                  iconFilter: 'assets/softy_frames_image.png',
                  textFilter: 'Softy',
                ),
                SizedBox(
                  width: 12,
                ),
                Editor(
                  iconFilter: 'assets/borderline_frames_image.png',
                  textFilter: 'Borderline',
                ),
                SizedBox(
                  width: 12,
                ),
                Editor(
                  iconFilter: 'assets/classic_frames_image.png',
                  textFilter: 'Classic',
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 24,
        )
      ],
    );
  }
}
