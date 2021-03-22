import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

import 'model/recent_pic_model.dart';

abstract class StartScreenEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class TapAddImageEvent extends StartScreenEvent {}

class PicImageEvent extends StartScreenEvent {
  PicImageEvent({this.picModel});

  final RecentPicModel picModel;
}


class SelectImageEvent extends StartScreenEvent {
  SelectImageEvent({this.picModel});

  final RecentPicModel picModel;
}

//OLD
class StartDateSelectEvent extends StartScreenEvent {
  StartDateSelectEvent({@required this.date});

  final DateTime date;

  @override
  List<Object> get props => [date];
}

class FinishDateSelectEvent extends StartScreenEvent {
  FinishDateSelectEvent({@required this.date});

  final DateTime date;

  @override
  List<Object> get props => [date];
}

class WaterChangeEvent extends StartScreenEvent {
  WaterChangeEvent({@required this.value});

  final double value;

  @override
  List<Object> get props => [value];
}

class DeleteFastEvent extends StartScreenEvent {}

class ChangeWeightEvent extends StartScreenEvent {
  ChangeWeightEvent({this.value});

  final double value;
}

class ChangeWaterEvent extends StartScreenEvent {
  ChangeWaterEvent({this.value});

  final double value;
}
