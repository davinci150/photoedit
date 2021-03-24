import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import '../../my_flutter_app_icons.dart';
import '../about/about_screen.dart';
import '../processing/processing_screen.dart';
import 'model/recent_pic_model.dart';
import 'start_screen_bloc.dart';
import 'start_screen_event.dart';
import 'start_screen_state.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({Key key}) : super(key: key);

  @override
  _StartScreen createState() => _StartScreen();
}

class _StartScreen extends State<StartScreen> {
  final int _selectedIndex = 0;
  SaveFastingBloc _bloc;

  @override
  void initState() {
    _bloc = GetIt.I<SaveFastingBloc>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Color _bottomBarIconsColor = Theme.of(context).iconTheme.color;

    return StreamBuilder<StartScreenState>(
        stream: _bloc.stream,
        builder: (context, snapshot) {
          if (snapshot.data == null) {
            return const SizedBox.shrink();
          }

          bool isSelected = false;
          snapshot.data.fileList.forEach((element) {
            if (element.isSelected == true) {
              isSelected = true;
            }
          });

          if (isSelected) {
            _bottomBarIconsColor = Theme.of(context).primaryIconTheme.color;
          } else {
            _bottomBarIconsColor = Theme.of(context).iconTheme.color;
          }
          return Scaffold(
              appBar: AppBar(
                  centerTitle: true,
                  backgroundColor: Colors.white,
                  elevation: 0,
                  title: const Text(
                    'Recent',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontFamily: 'SF-Pro'),
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
                        icon: Icon(
                          Icons.add,
                          color: Theme.of(context).accentColor,
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
                items: <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: Icon(
                      MyFlutterApp.presetsIcon,
                      color: _bottomBarIconsColor,
                    ),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      MyFlutterApp.editIcon,
                      color: _bottomBarIconsColor,
                    ),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      MyFlutterApp.texturesIcon,
                      color: _bottomBarIconsColor,
                    ),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      MyFlutterApp.videoIcon,
                      color: _bottomBarIconsColor,
                    ),
                    label: '',
                  ),
                ],
                currentIndex: _selectedIndex,
                selectedItemColor: Theme.of(context).accentColor,
                onTap: isSelected ? _onItemTapped : null,
              ),
              body: Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.all(16),
                  child: Wrap(
                    spacing: 10,
                    runSpacing: 10,
                    children: snapshot.data.fileList.map(_mapFiles).toList(),
                  )));
        });
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
          color: pic.isSelected
              ? Theme.of(context).accentColor
              : Colors.transparent,
        )),
        height: 132,
        width: 100,
        child: Image.file(File(pic.path)),
      ),
    );
  }

  void _onItemTapped(int index) {
    Navigator.push<dynamic>(
        context,
        MaterialPageRoute<dynamic>(
            builder: (context) => const ProcessingScreen()));
  }
}
