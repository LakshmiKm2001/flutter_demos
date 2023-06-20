import 'package:sqflite/sqflite.dart' as sql;

class SQLHelper {
  static Future<void> createTables(sql.Database database) async {
    await database.execute("""CREATE TABLE user(
        id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
        name TEXT,
        email TEXT,
        password TEXT ) 
        """);
  }

  static Future<sql.Database> OpenDb() async {
    return sql.openDatabase('datauser.db', version: 1,
        onCreate: (sql.Database db, int version) async {
          await createTables(db);
        });
  }

  static Future<List<Map>> userFound(String name, String emailo) async{
    final db = await SQLHelper.OpenDb();
    final data = await db.rawQuery(
      "SELECT * FROM user WHERE name = '$name' AND email = '$emailo' "
    );
    if(data.isNotEmpty){
      return data;
    }
    return data;
  }

  static Future<int> AddNewUser(String name, String email, String pswd) async {
    final db = await SQLHelper.OpenDb();
    final data = {'name' : name, 'email' : email, 'password' : pswd};
    final id = db.insert('user', data);
    return id;
  }

  static Future<List<Map>> CheckLogin(String usrname, String psword) async {
    final db = await SQLHelper.OpenDb();
    final data = await db.rawQuery(
      "SELECT * FROM user WHERE username = '$usrname' AND password '$psword' ");
    if(data.isNotEmpty) {
      return data;
    }
    return data;
  }
}