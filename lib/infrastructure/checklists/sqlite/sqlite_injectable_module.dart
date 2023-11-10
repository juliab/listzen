import 'package:injectable/injectable.dart';
import 'package:listzen/infrastructure/checklists/sqlite/sqlite_database.dart';
import 'package:sqflite/sqflite.dart';

@module
abstract class SqliteInjectableModule {
  @preResolve
  Future<Database> get database => SqliteDatabase().instanse;
}
