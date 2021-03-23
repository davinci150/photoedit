import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

import 'model/recent_pic_model.dart';

abstract class FilePickerEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class TapAddImageEvent extends FilePickerEvent {}

class PicImageEvent extends FilePickerEvent {
  PicImageEvent({this.picModel});

  final RecentPicModel picModel;
}


class SelectImageEvent extends FilePickerEvent {
  SelectImageEvent({this.picModel});

  final RecentPicModel picModel;
}

//OLD
class StartDateSelectEvent extends FilePickerEvent {
  StartDateSelectEvent({@required this.date});

  final DateTime date;

  @override
  List<Object> get props => [date];
}

class FinishDateSelectEvent extends FilePickerEvent {
  FinishDateSelectEvent({@required this.date});

  final DateTime date;

  @override
  List<Object> get props => [date];
}

class WaterChangeEvent extends FilePickerEvent {
  WaterChangeEvent({@required this.value});

  final double value;

  @override
  List<Object> get props => [value];
}

class DeleteFastEvent extends FilePickerEvent {}

class ChangeWeightEvent extends FilePickerEvent {
  ChangeWeightEvent({this.value});

  final double value;
}

class ChangeWaterEvent extends FilePickerEvent {
  ChangeWaterEvent({this.value});

  final double value;
}
