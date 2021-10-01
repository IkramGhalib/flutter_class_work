import 'package:sqflite/sqflite.dart';

import 'model.dart';
import 'package:path/path.dart';


class DBHelper {
  Future<Database> initDB() async {
    final path = await getDatabasesPath();
    return openDatabase(join(path, 'Mydatabase.db'),
        onCreate: (database, verison) async {
      await database.execute("""
        CREATE TABLE student(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        name TEXT NOT NULL,
        fathername TEXT NOT NULL
        )
        """);
    }, version: 1);
  }

  Future<bool> insert(DatabaseModel database) async {
    final Database db = await initDB();
    db.insert("student", database.toMap());
    return true;
  }

  Future<List<DatabaseModel>> showData() async {
    final Database db = await initDB();
    final List<Map<String, Object?>> datas = await db.query("student");
    return datas.map((e) => DatabaseModel.fromMap(e)).toList();
  }

  Future<void> update(DatabaseModel databaseModel, int id) async {
    final Database db = await initDB();
    await db.update("student", databaseModel.toMap(),
        where: "id=?", whereArgs: [id]);
  }

  Future<void> delete(int id) async {
    final Database db = await initDB();
    await db.delete("student", where: "id=?", whereArgs: [id]);
  }
}
