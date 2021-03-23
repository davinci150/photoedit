import 'package:equatable/equatable.dart';

import 'model/recent_pic_model.dart';

class FilePickerState extends Equatable {
  const FilePickerState({this.fileList, this.count});

  final List<RecentPicModel> fileList;
  final int count;

  @override
  List<Object> get props => [fileList, count];

  FilePickerState copyWith({
    List<RecentPicModel> fileList,
    int count,
  }) {
    if ((fileList == null || identical(fileList, this.fileList)) &&
        (count == null || identical(count, this.count))) {
      return this;
    }

    return FilePickerState(
      fileList: fileList ?? this.fileList,
      count: count ?? this.count,
    );
  }
}
