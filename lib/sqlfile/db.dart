import 'package:sqflite/sqflite.dart';

import 'model.dart';

class DBHelper {
  Future<Database> initDB() async {
    final path = getDatabasesPath();
    return openDatabase(join(path, 'Mydatabase.db'),
        onCreate: (database, verison) async {
      await database.execute("""
        CREATE TABLE student(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        title TEXT NOT NULL,
        subtitle TEXT NOT NULL
        )
        """);
    }, version: 1);
  }

  Future<bool> insertData(DatabaseModel databaseModel) async {
    final Database db = await initDB();
    db.insert("student", databaseModel.toMap());
    return true;
  }

  Future<List<DatabaseModel>> showData() async {
    final Database db = await initDB();
    final List<Map<String, Object?>> adt = await db.query("student");
    return adt.map((e) => DatabaseModel.fromMap(e)).toList();
  }

   Future<void> update(DatabaseModel databaseModel, int id) async {
    final Database db = await initDB();
    await db.update("student", databaseModel.toMap(), where: "id=?", whereArgs: [id]);
  }
   Future<void> delete(int id) async {
    final Database db = await initDB();
    await db.delete("student", where: "id=?", whereArgs: [id]);
  }

}
