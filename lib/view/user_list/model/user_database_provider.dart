
 import 'package:sqflite/sqflite.dart';

class UserDatabaseProvider {
  String _userDatabaseName="user";
  String userTableName="user";
  int _version=1;
   late Database database;


  Future <void> open() async{
     database=await openDatabase(
      _userDatabaseName,
      version:_version,
      onCreate:(db, version) {
        db.execute("CREATE TABLE $userTableName ( id INTEGER PRIMARY KEY AUTOINCREMENT, name VARCHAR(20), hint TEXT )",
        
        
        );
      },
       
     );
   }
 }