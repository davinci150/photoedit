import 'package:flutter/material.dart';

import '../../my_flutter_app_icons.dart';
import '../about/about_screen.dart';
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

  final List<Widget> _children = [
    const PresetsScreen(),
    EditorScreen(),
    const TextureScreen(),
    const VideoScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text(
            'Recent',
            style: TextStyle(
                color: Colors.black, fontSize: 17, fontFamily: 'SF-Pro'),
          ),
          leading: Builder(builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.error_outline,
                color: Colors.black,
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
                icon: const Icon(
                  Icons.add,
                  color: Colors.blue,
                ),
                onPressed: () {
                  //_bloc.add(TapAddImageEvent());
                }),
          ]),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedIconTheme: const IconThemeData(size: 24),
        selectedFontSize: 0,
        unselectedFontSize: 0,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              MyFlutterApp.presetsIcon,
              color: Colors.black,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              MyFlutterApp.editIcon,
              color: Colors.black,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              MyFlutterApp.texturesIcon,
              color: Colors.black,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              MyFlutterApp.videoIcon,
              color: Colors.black,
            ),
            label: '',
          ),
        ],
        currentIndex: _selectedPage,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
      body: _children[_selectedPage],
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedPage = index;
    });
  }
}
