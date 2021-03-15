import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'my_flutter_app_icons.dart';

class StartScreen extends StatefulWidget {
  StartScreen({Key key}) : super(key: key);
  //static const String _title = 'Flutter Code Sample';
  @override
  _StartScreen createState() => _StartScreen();
}

class _StartScreen extends State<StartScreen> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

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
                          builder: (context) => HomeScreen()));
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
        /*body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),*/
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
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 500,
                  width: 500,
                  child: GridView.count(
                    crossAxisSpacing: 10,
                    crossAxisCount: 3,
                    children: List<Widget>.generate(5, (index) {
                      return GridTile(
                        child: Card(
                          color: Colors.amber,
                        ),
                      );
                    }),
                  ),
                ),
              ]),
        ));
  }
}
