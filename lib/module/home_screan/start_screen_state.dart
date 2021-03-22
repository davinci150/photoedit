import 'package:equatable/equatable.dart';

import 'model/recent_pic_model.dart';

class StartScreenState extends Equatable {
  const StartScreenState({this.fileList, this.count});

  final List<RecentPicModel> fileList;
  final int count;

  @override
  List<Object> get props => [fileList, count];

  StartScreenState copyWith({
    List<RecentPicModel> fileList,
    int count,
  }) {
    if ((fileList == null || identical(fileList, this.fileList)) &&
        (count == null || identical(count, this.count))) {
      return this;
    }

    return StartScreenState(
      fileList: fileList ?? this.fileList,
      count: count ?? this.count,
    );
  }
}
