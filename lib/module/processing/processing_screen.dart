import 'package:flutter/material.dart';

import '../../my_flutter_app_icons.dart';
import '../presentation/fonts.dart';
import 'editor/editor_screen.dart';
import 'frames/frames.dart';
import 'presets/presets_screen.dart';
import 'texture/texture_screen.dart';
import 'video/video_screen.dart';

class ProcessingScreen extends StatefulWidget {
  const ProcessingScreen({
    Key key,
    this.selelectedTab,
    this.isBottomToolbarVisible,
  }) : super(key: key);
  final int selelectedTab;
  final bool isBottomToolbarVisible;
  @override
  _StartScreen createState() => _StartScreen();
}

class _StartScreen extends State<ProcessingScreen> {
  int _selectedPage = 0;

  bool isBottomToolbarVisible = true;

  @override
  void initState() {
    _selectedPage = widget.selelectedTab;
    super.initState();
  }

  final List<RecentTab> _children = [
    RecentTab(title: 'Presets', tabWidget: const PresetsScreen()),
    RecentTab(
        title: 'Edit',
        tabWidget:
            EditorScreen(onShowHideBottomToolbar: showHideBottomToolbar)),
    RecentTab(title: 'Textures', tabWidget: const TextureScreen()),
    RecentTab(title: 'Frames', tabWidget: const FramesScreen()),
    RecentTab(
        title: 'Video Effects',
        tabWidget: const VideoScreen(

            //onShowHideBottomToolbar

            ))
  ];

  void showHideBottomToolbar(bool isVisible) {
    setState(() {
      isBottomToolbarVisible = isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.chevron_left,
                color: Theme.of(context).primaryIconTheme.color),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text(
            _children[_selectedPage].title,
            style: const TextStyle(
                fontSize: 17,
                fontFamily: AppFonts.sfPro,
                fontWeight: FontWeight.w400),
          ),
          actions: [
            //TEST BUTTON
            IconButton(
                icon: const Icon(Icons.add_circle),
                onPressed: () {
                  setState(
                      () => isBottomToolbarVisible = !isBottomToolbarVisible);
                }),
            //TEST BUTTON
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.only(right: 20),
              child: Text(
                'Save',
                style: TextStyle(
                    color: Theme.of(context).accentColor,
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    fontFamily: AppFonts.sfPro),
              ),
            ),
          ]),
      bottomNavigationBar: isBottomToolbarVisible
          ? BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              selectedIconTheme: const IconThemeData(size: 24),
              selectedFontSize: 0,
              unselectedFontSize: 0,
              elevation: 0,
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(
                    MyFlutterApp.presetsIcon,
                    color: _selectedPage == 0
                        ? Theme.of(context).accentColor
                        : Theme.of(context).primaryIconTheme.color,
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    MyFlutterApp.editIcon,
                    color: _selectedPage == 1
                        ? Theme.of(context).accentColor
                        : Theme.of(context).primaryIconTheme.color,
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    MyFlutterApp.texturesIcon,
                    color: _selectedPage == 2
                        ? Theme.of(context).accentColor
                        : Theme.of(context).primaryIconTheme.color,
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    MyFlutterApp.framesIcon,
                    color: _selectedPage == 3
                        ? Theme.of(context).accentColor
                        : Theme.of(context).primaryIconTheme.color,
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    MyFlutterApp.videoIcon,
                    color: _selectedPage == 4
                        ? Theme.of(context).accentColor
                        : Theme.of(context).primaryIconTheme.color,
                  ),
                  label: '',
                ),
              ],
              currentIndex: _selectedPage,
              selectedItemColor: Theme.of(context).accentColor,
              onTap: _onItemTapped,
            )
          : const SizedBox.shrink(),
      body: _children[_selectedPage].tabWidget,
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedPage = index;
    });
  }
}

class RecentTab {
  RecentTab({this.title, this.tabWidget});

  final String title;
  final Widget tabWidget;
}
