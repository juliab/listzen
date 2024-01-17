import 'package:injectable/injectable.dart';
import 'package:listzen/infrastructure/checklists/sqlite/sqlite_database.dart';

@module
abstract class SqliteInjectableModule {
  @lazySingleton
  SqliteDatabase get database => SqliteDatabase();
}
