import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:listzen/domain/checklists/checklist.dart';
import 'package:listzen/domain/checklists/checklist_failure.dart';
import 'package:listzen/domain/checklists/i_checklist_repository.dart';
import 'package:listzen/infrastructure/checklists/sqlite/drift_database.dart'
    as d;
import 'package:listzen/infrastructure/checklists/sqlite/drift_helpers.dart';

@lazySingleton
class DriftChecklistRepository implements IChecklistRepository {
  final database = d.SqliteDatabase();

  DriftChecklistRepository();

  @override
  Stream<Either<ChecklistFailure, List<Checklist>>> watchAll() async* {
    try {
      await for (final _ in database.watchChecklists()) {
        final checklistsList = (await database.getAllChecklists())
            .map((checklist) => toDomain(checklist))
            .toList();
        yield right(checklistsList);
      }
    } on Exception catch (_) {
      yield left(const ChecklistFailure.databaseError());
    }
  }

  @override
  Future<Either<ChecklistFailure, Unit>> create(Checklist checklist) async {
    try {
      await database.createChecklist(checklistDomainToCompanion(checklist));
      return right(unit);
    } on Exception catch (_) {
      return left(const ChecklistFailure.databaseError());
    }
  }

  @override
  Future<Either<ChecklistFailure, Unit>> update(Checklist checklist) async {
    try {
      await database.updateChecklist(checklistDomainToCompanion(checklist));
      return right(unit);
    } on Exception catch (_) {
      return left(const ChecklistFailure.databaseError());
    }
  }

  @override
  Future<Either<ChecklistFailure, Unit>> delete(Checklist checklist) async {
    try {
      await database.deleteChecklist(checklist.id.getOrCrash());
      return right(unit);
    } on Exception catch (_) {
      return left(const ChecklistFailure.databaseError());
    }
  }

  @override
  Future<Either<ChecklistFailure, Unit>> deleteAll() async {
    try {
      await database.deleteAll();
      return right(unit);
    } on Exception catch (_) {
      return left(const ChecklistFailure.databaseError());
    }
  }

  @override
  bool isAvailable() {
    // TODO check if file is available
    return true;
  }
}
