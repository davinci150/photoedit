import 'package:flutter/foundation.dart';

class RecentPicModel {
  RecentPicModel({@required this.path, @required this.isSelected});

  RecentPicModel.fromJson(Map<String, dynamic> json) {
    if ((json['isSelected'] as int) == 1) {
      isSelected = true;
    } else {
      isSelected = false;
    }
    isSelected=false;
    path = json['path'] as String;
  }

  bool isSelected;
  String path;

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['isSelected'] = isSelected;
    data['path'] = path;
    return data;
  }

  RecentPicModel copyWith({
    bool isSelected,
    String patch,
  }) {
    if ((isSelected == null || identical(isSelected, this.isSelected)) &&
        (patch == null || identical(patch, path))) {
      return this;
    }

    return RecentPicModel(
      isSelected: isSelected ?? this.isSelected,
      path: patch ?? path,
    );
  }
}
