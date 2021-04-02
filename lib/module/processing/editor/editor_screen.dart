import 'package:flutter/material.dart';

import '../../../my_flutter_app_icons.dart';
import '../../presentation/fonts.dart';
import '../edit_bottom_widget.dart';
import '../edit_text_widget.dart';

import '../list_edit_widget.dart';
import '../processing_screen.dart';
import '../slider_widget.dart';

class EditorScreen extends StatefulWidget {
  const EditorScreen({
    Key key,
    @required this.onShowHideBottomToolbar,
  }) : super(key: key);
  final void Function(bool isBottomToolvarVisible) onShowBottomToolbar;
  // bool get isBottomToolbarVisible => true;

  @override
  _EditorScreen createState() => _EditorScreen();
}

class Editor extends StatelessWidget {
  const Editor({
    Key key,
    this.textFilter,
    this.iconFilter,
    //  this.isBottomToolbarVisible,
  }) : super(key: key);

  final IconData iconFilter;
  final String textFilter;
  //final bool isBottomToolbarVisible;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Column(
        children: [
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
          const SizedBox(
            height: 6,
          ),
          Row(
            children: [
              InkWell(
                //onTap: showHideBottomToolbar(true),
                child: CircleAvatar(
                  backgroundColor:
                      WidgetsBinding.instance.window.platformBrightness ==
                              Brightness.light
                          ? const Color(0xFFF6F7F8)
                          : const Color(0xFF212121),
                  radius: 24,
                  child: Icon(
                    iconFilter,
                    size: 20,
                    color: WidgetsBinding.instance.window.platformBrightness ==
                            Brightness.light
                        ? Colors.black
                        : Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

/*void sliderChanged(double value) {}
double _currentSliderValue = 0;*/

class _EditorScreen extends State<EditorScreen> {
  bool isBottomToolbarVisible = true;
  void showHideBottomToolbar(bool isVisible) {
    widget.onShowBottomToolbar(!isVisible);

    setState(() {
      isBottomToolbarVisible = isVisible;
    });
  }
  //bool isBool = VisibleBottomBar(isBottomToolbarVisible) as bool;

  // static bool get isBottomToolbarVisible => true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
            icon: const Icon(Icons.add_circle),
            onPressed: () {
              //setState(() => isBottomToolbarVisible);
              showHideBottomToolbar(false);
            }),
        Expanded(
            child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 29),
            child: EditBottomWidget(
              editText: 'Contrast',
              onAsseptDeclineButtonClick: (bool isAssept) {
                showHideBottomToolbar(true);
              },
            ),
          )
        ])),
        const SizedBox(
          height: 16,
        ),
        if (isBottomToolbarVisible != false)
          const SizedBox(
            height: 72,
            child: Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: ListEditWidget()),
          )
        else
          const SizedBox.shrink(),
        const SizedBox(
          height: 24,
        )
      ],
    );
  }
}

class VisibleBottomBar {
  bool isBottomToolbarVisible;
  VisibleBottomBar(this.isBottomToolbarVisible);
}
