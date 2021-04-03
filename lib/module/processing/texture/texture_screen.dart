import 'package:flutter/material.dart';
import '../widget/edit_text_widget.dart';
import '../widget/editor_widget.dart';
import '../widget/slider_widget.dart';

class TextureScreen extends StatefulWidget {
  const TextureScreen({
    Key key,
  }) : super(key: key);

  @override
  _TextureScreen createState() => _TextureScreen();
}

class _TextureScreen extends State<TextureScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
          //const Contrast(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 29),
            child: SliderWidget(
              valueSlider: -50.0,
              valueListener: (value) {
                print(value);
              },
            ),
          ),
          const SizedBox(height: 25),
          const EditTextWidget(
            editText: 'Dust 01',
          ),
        ])),
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
                    textFilter: 'None',
                    color: Color(0xFF959595),
                    isSelected: false),
                SizedBox(
                  width: 12,
                ),
                Editor(
                    image: 'assets/dust_1_textures_image.png',
                    textFilter: 'Dust 01',
                    color: Color(0xFF0F0F0F),
                    isSelected: false),
                SizedBox(
                  width: 12,
                ),
                Editor(
                    image: 'assets/dust_2_textures_image.png',
                    textFilter: 'Dust 02',
                    color: Color(0xFF0F0F0F),
                    isSelected: true),
                SizedBox(
                  width: 12,
                ),
                Editor(
                    image: 'assets/dust_3_textures_image.png',
                    textFilter: 'Dust 03',
                    color: Color(0xFF0F0F0F),
                    isSelected: true),
                SizedBox(
                  width: 12,
                ),
                Editor(
                    image: 'assets/dust_4_textures_image.png',
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
