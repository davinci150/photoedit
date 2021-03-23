import 'dart:io';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DBHelper {
  static Database _database;
  static const String customerTable = 'customer';
  static const String userTable = 'user';
  static const String userLoginTable = 'userLoginTable';
  static const String loginUserDomainInfo = 'loginUserDomainInfo';
  static const String searchHintTable = 'search_hint_table';
  static const String localeTable = 'locale_table';
  static const String requestTable = 'requestTable';

  Future<Database> get database async {
    if (_database != null) return _database;

    // ignore: join_return_with_assignment
    _database = await initDB();
    return _database;
  }

  Future<Database> initDB() async {
    final Directory documentsDirectory =
        await getApplicationDocumentsDirectory();
    final String path = join(documentsDirectory.path, 'db3.db');

    return openDatabase(path, version: 1, onOpen: (db) {},
        onCreate: (Database db, int version) async {

      await db.execute(
          'CREATE TABLE $userLoginTable (path TEXT PRIMARY KEY,isSelected INTEGER)');
    });
  }
}
