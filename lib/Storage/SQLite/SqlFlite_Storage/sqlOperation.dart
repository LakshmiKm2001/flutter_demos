import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart' as sql;
import 'package:sqflite/sqlite_api.dart'; 

class SQLHelper{

//create table with name mynotes and column name as title and note
static Future<void> createTables(sql.Database database)async{
  await database.execute("""CREATE TABLE notes(id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
  title TEXT,
  note TEXT,
  createdAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
  )""");
  
}

//create database
static Future<sql.Database> myData() async{
  return sql.openDatabase('mytodo.db',version:1,
  onCreate:(sql.Database database,int version) async{
    await createTables(database);
  });
}

//add datas to notes table inside myNotes.db
static Future<int> createNote(String title, String note) async {
   final db = await SQLHelper.myData(); //to open database
   final data = {'title':title,'note':note};
   final id = await db.insert('note',data,conflictAlgorithm:sql.ConflictAlgorithm.replace);
   return id;
}

//read all data from table
  static Future<List<Map<String,dynamic>>>readNotes() async {
    final db = await SQLHelper.myData(); //to open database
    return db.query('notes',orderBy: 'id');
  }

//read a single value from a table
  static Future<List<Map<String,dynamic>>>readSingleValue(int id) async {
    final db = await SQLHelper.myData(); //to open database
    return db.query('notes',where: 'id=?',whereArgs: [id],limit: 1);
  }

//to update a particular note
  static Future<int> UpdateNote(int id, String titlenew, String notnew) async{
     final db = await SQLHelper.myData(); //to open database
     final newdata={
      'title':titlenew,
      'note':notnew,
      'createdAt':DateTime.now().toString()
      };
     final result = await db.update('notes', newdata,where:"id =?",whereArgs: [id]);
     return result;
  }

  static Future<void> deletenote(int id) async {
    final db = await SQLHelper.myData(); //to open database
    try{
      await db.delete("notes",where: "id = ?",whereArgs: [id]);
    }catch(err){
      debugPrint("Something Went Wrong");
    }
  }

}