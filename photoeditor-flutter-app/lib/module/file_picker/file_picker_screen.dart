import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'file_picker_bloc.dart';
import 'file_picker_event.dart';
import 'file_picker_state.dart';
import 'model/recent_pic_model.dart';

class FilePickerScreen extends StatefulWidget {
  const FilePickerScreen({Key key}) : super(key: key);

  @override
  _FilePickerScreen createState() => _FilePickerScreen();
}

class _FilePickerScreen extends State<FilePickerScreen> {
  FilePickerBloc _bloc;

  @override
  void initState() {
    _bloc = GetIt.I<FilePickerBloc>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<FilePickerState>(
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
          color: pic.isSelected ? const Color(0xFF2B83EC) : Colors.transparent,
        )),
        height: 132,
        width: 100,
        child: Image.file(File(pic.path)),
      ),
    );
  }
}
