import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/service/database/dao/recent_pic_dao.dart';
import '../../core/service/image_picker/image_picker.dart';
import '../../core/service/router/router.dart';
import 'model/recent_pic_model.dart';
import 'start_screen_event.dart';
import 'start_screen_state.dart';

class SaveFastingBloc extends Bloc<StartScreenEvent, StartScreenState> {
  SaveFastingBloc({
    @required this.recentPicModelDao,
    @required this.router,
    @required this.imagePicker,
  }) : super(const StartScreenState()) {
    recentPicModelDao.filterRecentPic().then((value) {
      _fileList = value;
      add(StartEvent(fileList: _fileList));
    });
  }

  List<RecentPicModel> _fileList = [];
  final RouterI router;
  final ImagePickerServiceI imagePicker;
  final RecentPicDaoI recentPicModelDao;

  void getFile() {
    imagePicker.pickImage().then((File file) {
      final String filePath = file.uri.path;

      add(PicImageEvent(
          picModel: RecentPicModel(isSelected: true, path: filePath)));
    });
  }

  @override
  Stream<StartScreenState> mapEventToState(StartScreenEvent event) async* {
    if (event is StartEvent) {
      yield state.copyWith(fileList: _fileList, count: _fileList.length);
    }
    //
    else if (event is TapAddImageEvent) {
      getFile();
    }
    //
    else if (event is PicImageEvent) {
      bool _ifExist = false;
      _fileList.forEach((RecentPicModel element) {
        if (element.path.compareTo(event.picModel.path) == 1) {
          _ifExist = true;
        }
      });
      _ifExist = false;

      if (!_ifExist) {
        _setAllPicUnselected();

        final RecentPicModel model =
            RecentPicModel(path: event.picModel.path, isSelected: true);
        _saveRecentPic(model);
        _fileList.add(model);
      }
      yield state.copyWith(fileList: _fileList, count: _fileList.length);
    }
    //
    else if (event is SelectImageEvent) {
      final List<RecentPicModel> list = [];

      _fileList.forEach((element) {
        if (element.path == event.picModel.path) {
          list.add(element.copyWith(isSelected: true));

          final int index = _fileList.indexOf(element);
          _fileList[index] = element.copyWith(isSelected: true);
          _saveRecentPic(element.copyWith(isSelected: true));

        } else {
          list.add(element.copyWith(isSelected: false));
          _saveRecentPic(element.copyWith(isSelected: false));
        }
      });
      _fileList = list;
      yield state.copyWith(fileList: _fileList, count: _fileList.length);
    }
  }

  void _setAllPicUnselected() {
    final List<RecentPicModel> list = [];
    _fileList.forEach((RecentPicModel element) {
      element = element.copyWith(isSelected: false);
      list.add(element);
    });
    _fileList = list;
  }

  @override
  Future<void> close() {
    return super.close();
  }

  void _saveRecentPic(RecentPicModel model) {
    recentPicModelDao.saveRecentPic(model).then((value) => null);
  }
}
