import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:listzen/domain/checklists/checklist.dart';
import 'package:listzen/domain/checklists/checklist_failure.dart';
import 'package:listzen/domain/checklists/i_checklist_repository.dart';
import 'package:listzen/infrastructure/checklists/firebase/firebase_checklist_repository.dart';
import 'package:listzen/infrastructure/checklists/sqlite/sqlite_checklist_repository.dart';

@LazySingleton(as: IChecklistRepository)
class ChecklistRepositorySwitcher implements IChecklistRepository {
  final SqliteChecklistRepository _sqliteRepository;
  final FirebaseChecklistRepository _firebaseRepository;

  ChecklistRepositorySwitcher(
    this._sqliteRepository,
    this._firebaseRepository,
  );

  IChecklistRepository _getCurrentRepository() {
    return _firebaseRepository.isAvailable()
        ? _firebaseRepository
        : _sqliteRepository;
  }

  @override
  bool isAvailable() {
    return true;
  }

  @override
  Future<Either<ChecklistFailure, Unit>> deleteAll() {
    return _getCurrentRepository().deleteAll();
  }

  @override
  Future<Either<ChecklistFailure, Unit>> update(Checklist checklist) {
    return _getCurrentRepository().update(checklist);
  }

  @override
  Future<Either<ChecklistFailure, Unit>> create(Checklist checklist) {
    return _getCurrentRepository().create(checklist);
  }

  @override
  Future<Either<ChecklistFailure, Unit>> delete(Checklist checklist) {
    return _getCurrentRepository().delete(checklist);
  }

  @override
  Stream<Either<ChecklistFailure, List<Checklist>>> watchAll() {
    return _getCurrentRepository().watchAll();
  }

  @override
  Future<Either<ChecklistFailure, List<Checklist>>> getAll() {
    return _getCurrentRepository().getAll();
  }
}
