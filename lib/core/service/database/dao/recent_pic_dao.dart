import 'dart:async';
import 'dart:io';

import 'package:flutter/cupertino.dart';

import '../../../../module/home_screan/model/recent_pic_model.dart';
import '../helper.dart';

class RecentPicDao implements RecentPicDaoI {
  String tableRecentPic = DBHelper.userLoginTable;

  @override
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

  @override
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

  @override
  Future<List<RecentPicModel>> filterRecentPic() async {
    final List<RecentPicModel> files = await getRecentPic();
    for (final RecentPicModel element in files) {
      final bool isExist = await _isExist(element.path);
      if (!isExist) {
        await remove(id: element.path);
      }
    }
    return getRecentPic();
  }

  @override
  Future<RecentPicModel> getSelectedPic() async {
    final database = DBHelper().initDB();
    final db = await database;
    final List<Map<String, dynamic>> maps =
        db.query(tableRecentPic, where: 'isSelected = ?', whereArgs: [1])
            as List<Map<String, dynamic>>;

    RecentPicModel itemModel;
    if (maps.isNotEmpty) {
      final Map<String, dynamic> item = maps.first;
      itemModel = RecentPicModel.fromJson(item);
    }
    return itemModel;
  }

  Future<bool> _isExist(String path) async {
    final File file = File(path);
    if (file.existsSync()) {
      return true;
    } else {
      return false;
    }
  }

  @override
  Future<void> remove({@required String id}) async {
    final database = DBHelper().initDB();
    final db = await database;
    return db.delete(tableRecentPic, where: 'path = ?', whereArgs: [id]);
  }
}

abstract class RecentPicDaoI {
  Future<void> saveRecentPic(RecentPicModel item);

  Future<RecentPicModel> getSelectedPic();

  Future<List<RecentPicModel>> getRecentPic();

  Future<void> remove({@required String id});

  Future<List<RecentPicModel>> filterRecentPic();
}
