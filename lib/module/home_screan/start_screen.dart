import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../../home_screen.dart';
import '../../my_flutter_app_icons.dart';
import 'model/recent_pic_model.dart';
import 'start_screen_bloc.dart';
import 'start_screen_event.dart';
import 'start_screen_state.dart';

class StartScreenNew extends StatefulWidget {
  const StartScreenNew({Key key}) : super(key: key);

  @override
  _StartScreen createState() => _StartScreen();
}

class _StartScreen extends State<StartScreenNew> {
  int _selectedIndex = 0;
  SaveFastingBloc _bloc;

  @override
  void initState() {
    _bloc = GetIt.I<SaveFastingBloc>();
    super.initState();
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
                    Icons.add,
                    color: Colors.blue,
                  ),
                  onPressed: () {
                    _bloc.add(TapAddImageEvent());
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
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.blue,
          onTap: _onItemTapped,
        ),
        body: StreamBuilder<StartScreenState>(
            stream: _bloc.stream,
            builder: (context, snapshot) {
              if (snapshot.data == null) {
                return const SizedBox.shrink();
              }
              return Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.all(16),
                  child: Wrap(
                    spacing: 10,
                    runSpacing: 10,
                    children: snapshot.data.fileList.map(_mapFiles).toList(),
                  ));
            }));
  }

  Widget _mapFiles(RecentPicModel pic) {
    return InkWell(
      onTap: () {
        _bloc.add(SelectImageEvent(picModel: pic));
      },
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(
          width: 3,
          color: pic.isSelected ? const Color(0xFF2B83EC) : Colors.transparent,
        )),
        height: 132,
        width: 100,
        child: Image.file(File(pic.path)),
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
