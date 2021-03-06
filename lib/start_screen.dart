import 'package:flutter/material.dart';

import 'home_screen.dart';
import 'my_flutter_app_icons.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({Key key}) : super(key: key);

  @override
  _StartScreen createState() => _StartScreen();
}

class _StartScreen extends State<StartScreen> {
  int _selectedIndex = 0;
  List<String> files = ['', '', '', '', ''];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

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
                          builder: (context) => const HomeScreen()));
                },
              );
            }),
            actions: [
              IconButton(
                  icon: const Icon(
                    Icons.add_circle_outline,
                    color: Colors.black,
                  ),
                  onPressed: () {}),
            ]),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.black,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                MyFlutterApp.CusIcon2,
                color: Colors.black,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                MyFlutterApp.group,
                color: Colors.black,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                MyFlutterApp.vector,
                color: Colors.black,
              ),
              label: '',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.blue,
          onTap: _onItemTapped,
        ),
        body: Container(
          alignment: Alignment.topCenter,
            child: Wrap(
              spacing: 10,
              runSpacing: 10,
              children: files.map(_mapFiles).toList(),
            )));
  }

  Widget _mapFiles(String file) {
    return Container(
      color: Colors.amber,
      height: 132,
      width: 105,
    );
  }
}
