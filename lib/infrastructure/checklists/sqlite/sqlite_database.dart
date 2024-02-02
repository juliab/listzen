import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:listzen/domain/checklists/checklist_color.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

part 'sqlite_database.g.dart';

class Checklists extends Table {
  TextColumn get id => text()();
  TextColumn get name => text()();
  TextColumn get color => textEnum<ChecklistColor>()();
  TextColumn get items => text()();
  DateTimeColumn get createdAt =>
      dateTime().withDefault(Constant(DateTime(2000)))();
  DateTimeColumn get updatedAt => dateTime()();
}

class Items extends Table {
  TextColumn get id => text()();
  TextColumn get name => text()();
  BoolColumn get done => boolean()();
}

@DriftDatabase(tables: [Checklists, Items])
class SqliteDatabase extends _$SqliteDatabase {
  SqliteDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 2;

  @override
  MigrationStrategy get migration {
    return MigrationStrategy(
      onCreate: (Migrator m) async {
        await m.createAll();
      },
      onUpgrade: (Migrator m, int from, int to) async {
        if (from < 2) {
          await m.addColumn(checklists, checklists.createdAt);
        }
      },
      beforeOpen: (details) async {
        if (details.hadUpgrade) {
          for (final checklist in await getAllChecklists()) {
            (update(checklists)..where((c) => c.id.equals(checklist.id))).write(
              ChecklistsCompanion(
                createdAt: Value(checklist.updatedAt),
              ),
            );
          }
        }
      },
    );
  }

  Stream<List<Checklist>> watchChecklistsOrderedByCreation() {
    return (select(checklists)
          ..orderBy([(checklists) => OrderingTerm.desc(checklists.createdAt)]))
        .watch();
  }

  Future<List<Checklist>> getAllChecklists() {
    return select(checklists).get();
  }

  Future<void> createChecklist(ChecklistsCompanion checklist) {
    return into(checklists).insert(
      checklist.copyWith(
        createdAt: Value(DateTime.now()),
      ),
    );
  }

  Future<void> deleteChecklist(String checklistId) {
    return (delete(checklists)..where((c) => c.id.equals(checklistId))).go();
  }

  Future<void> deleteAll() {
    return delete(checklists).go();
  }

  Future<void> updateChecklist(ChecklistsCompanion checklist) {
    return (update(checklists)..where((c) => c.id.equals(checklist.id.value)))
        .write(checklist.copyWith(createdAt: const Value.absent()));
  }
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return NativeDatabase.createInBackground(file);
  });
}
