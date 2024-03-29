import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:listzen/domain/checklists/checklist.dart';
import 'package:listzen/domain/checklists/checklist_failure.dart';
import 'package:listzen/domain/checklists/i_checklist_repository.dart';
import 'package:listzen/infrastructure/checklists/sqlite/sqlite_database.dart'
    as d;
import 'package:listzen/infrastructure/checklists/sqlite/sqlite_helpers.dart';
import 'package:rxdart/rxdart.dart';

@lazySingleton
class SqliteChecklistRepository implements IChecklistRepository {
  final d.SqliteDatabase _database;

  SqliteChecklistRepository(this._database);

  @override
  Stream<Either<ChecklistFailure, List<Checklist>>> watchAll() async* {
    final streamTransformer = StreamTransformer<List<d.Checklist>,
            Either<ChecklistFailure, List<Checklist>>>.fromBind(
        transformStreamToDomain);

    yield* _database
        .watchChecklistsOrderedByCreation()
        .transform(streamTransformer)
        .onErrorReturn(
          left(const ChecklistFailure.databaseError()),
        );
  }

  @override
  Future<Either<ChecklistFailure, List<Checklist>>> getAll() async {
    try {
      final checklists = (await _database.getAllChecklists())
          .map((checklist) => toDomain(checklist))
          .toList();
      return right(checklists);
    } on Exception catch (_) {
      return left(const ChecklistFailure.databaseError());
    }
  }

  @override
  Future<Either<ChecklistFailure, Unit>> create(Checklist checklist) async {
    try {
      await _database.createChecklist(checklistDomainToCompanion(checklist));
      return right(unit);
    } on Exception catch (_) {
      return left(const ChecklistFailure.databaseError());
    }
  }

  @override
  Future<Either<ChecklistFailure, Unit>> update(Checklist checklist) async {
    try {
      await _database.updateChecklist(checklistDomainToCompanion(checklist));
      return right(unit);
    } on Exception catch (_) {
      return left(const ChecklistFailure.databaseError());
    }
  }

  @override
  Future<Either<ChecklistFailure, Unit>> delete(Checklist checklist) async {
    try {
      await _database.deleteChecklist(checklist.id.getOrCrash());
      return right(unit);
    } on Exception catch (_) {
      return left(const ChecklistFailure.databaseError());
    }
  }

  @override
  Future<Either<ChecklistFailure, Unit>> deleteAll() async {
    try {
      await _database.deleteAll();
      return right(unit);
    } on Exception catch (_) {
      return left(const ChecklistFailure.databaseError());
    }
  }
}
