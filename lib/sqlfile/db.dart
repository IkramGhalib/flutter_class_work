import 'package:sqflite/sqflite.dart';

import 'model.dart';

class DB {
  Future<Database> initDB() async {
    final path = getDatabasesPath();
    return openDatabase(
      join(path, 'Mydatabase.db'),
      onCreate: (database, verison) async {
        await database.execute("""
        CREATE TABLE student(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        title TEXT NOT NULL,
        subtitle TEXT NOT NULL
        )
        """);
      },
      version: 1
      );
      
  }

  Future<bool>insertData(DatabseModel databaseModel) async{
     final Database db = await initDB();
    db.insert("student", databaseModel.toMap());
    return true;
  }
  }
