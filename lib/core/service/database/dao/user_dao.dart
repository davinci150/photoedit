import 'dart:async';

import '../../../../module/home_screan/model/recent_pic_model.dart';
import '../helper.dart';

class UserDao {
  String tableRecentPic = DBHelper.userLoginTable;

  Future<void> saveRecentPic(RecentPicModel item) async {
    final database = DBHelper().initDB();
    final db = await database;

    final raw = await db.rawInsert(
        'INSERT OR REPLACE Into $tableRecentPic (path,isSelected) VALUES (?,?)',
        <dynamic>[
          item.path,
          if (item.isSelected) 1 else 0,
        ]);
    return raw;
  }

  Future<List<RecentPicModel>> getRecentPic() async {
    final database = DBHelper().initDB();
    final db = await database;

    final List<Map<dynamic, dynamic>> maps = await db.query(tableRecentPic);

    final List<RecentPicModel> list = [];
    if (maps.isNotEmpty) {
      maps.forEach((element) {
        final RecentPicModel itemModel =
            RecentPicModel.fromJson(element as Map<String, dynamic>);
        list.add(itemModel);
      });
    }
    return list;
  }

  Future<void> removeLoginUser() async {
    final database = DBHelper().initDB();
    final db = await database;
    return db.rawQuery('Delete from $tableRecentPic');
  }
}
