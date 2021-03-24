import 'package:flutter/material.dart';

import '../../my_flutter_app_icons.dart';
import '../about/about_screen.dart';
import '../presentation/fonts.dart';
import 'editor/editor_screen.dart';
import 'presets/presets_screen.dart';
import 'texture/texture_screen.dart';
import 'video/video_screen.dart';

class ProcessingScreen extends StatefulWidget {
  const ProcessingScreen({Key key}) : super(key: key);

  @override
  _StartScreen createState() => _StartScreen();
}

class _StartScreen extends State<ProcessingScreen> {
  int _selectedPage = 0;

  @override
  void initState() {
    super.initState();
  }

  final List<RecentTab> _children = [
    RecentTab(title: 'Present', tabWidget: const PresetsScreen()),
    RecentTab(title: 'Edit', tabWidget: EditorScreen()),
    RecentTab(title: 'Textures', tabWidget: const TextureScreen()),
    RecentTab(title: 'Video Effects', tabWidget: const VideoScreen())
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          //backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            _children[_selectedPage].title,
            style: const TextStyle(fontSize: 17, fontFamily: AppFonts.sfPro),
          ),
          leading: Builder(builder: (BuildContext context) {
            return IconButton(
              icon: Icon(
                Icons.error_outline,
                color: Theme.of(context).primaryIconTheme.color,
              ),
              onPressed: () {
                Navigator.push<dynamic>(
                    context,
                    MaterialPageRoute<dynamic>(
                        builder: (context) => const AboutScreen()));
              },
            );
          }),
          actions: [
            IconButton(
              icon: Icon(Icons.add, color: Theme.of(context).accentColor),
              onPressed: () {
                //_bloc.add(TapAddImageEvent());
              },
            ),
          ]),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedIconTheme: const IconThemeData(size: 24),
        selectedFontSize: 0,
        unselectedFontSize: 0,
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
              MyFlutterApp.videoIcon,
              color: _selectedPage == 3
                  ? Theme.of(context).accentColor
                  : Theme.of(context).primaryIconTheme.color,
            ),
            label: '',
          ),
        ],
        currentIndex: _selectedPage,
        selectedItemColor: Theme.of(context).accentColor,
        onTap: _onItemTapped,
      ),
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
