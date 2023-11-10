import 'package:injectable/injectable.dart';
import 'package:listzen/infrastructure/checklists/sqlite/sqlite_structure.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

@injectable
class SqliteDatabase {
  static final SqliteDatabase _instance = SqliteDatabase.internal();

  factory SqliteDatabase() => _instance;

  Database? _database;

  SqliteDatabase.internal();

  Future<Database> get instanse async {
    _database ??= await initDatabase();
    return _database!;
  }

  Future<Database> initDatabase() async {
    final path = join(await getDatabasesPath(), dbName);

    //TODO remove line
    //deleteDatabase(path);

    final database =
        await openDatabase(path, version: 1, onCreate: _createDatabase);
    return database;
  }

  Future _createDatabase(Database db, int newVersion) async {
    await db.execute('''
      CREATE TABLE ${Table.checklists.name} 
      (${Column.id.name} ${Column.id.type}, 
      ${Column.name.name} ${Column.name.type},
      ${Column.color.name} ${Column.color.type},
      ${Column.created.name} ${Column.created.type})
      ''');
    await db.execute('''
      CREATE TABLE ${Table.items.name} 
      (${Column.id.name} ${Column.id.type}, 
      ${Column.rowid.name} ${Column.rowid.type},
      ${Column.name.name} ${Column.name.type},
      ${Column.done.name} ${Column.done.type},
      ${Column.checklistid.name} ${Column.checklistid.type})
      ''');
  }

  Future<void> createChecklist(String name) {
    return _database!.execute("INSERT INTO checklists (name) VALUES ($name)");
  }
}
