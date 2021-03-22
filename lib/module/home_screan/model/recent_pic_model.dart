import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

class RecentPicModel{
  const RecentPicModel({@required this.path, @required this.isSelected});

  final bool isSelected;
  final String path;

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
