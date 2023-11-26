import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:listzen/domain/checklists/checklist.dart';
import 'package:listzen/domain/checklists/checklist_failure.dart';
import 'package:listzen/domain/checklists/i_checklist_repository.dart';
import 'package:listzen/infrastructure/checklists/firebase/firebase_checklist_repository.dart';
import 'package:listzen/infrastructure/checklists/sqlite/sqlite_checklist_repository.dart';

@LazySingleton(as: IChecklistRepository)
class ChecklistRepositorySwitcher implements IChecklistRepository {
  late IChecklistRepository _currentRepository;
  final SqliteChecklistRepository _sqliteRepository;
  final FirebaseChecklistRepository _firebaseRepository;

  ChecklistRepositorySwitcher(
    this._sqliteRepository,
    this._firebaseRepository,
  ) {
    _firebaseRepository.isAvailable().listen((available) {
      _currentRepository = available ? _firebaseRepository : _sqliteRepository;
    });
  }

  @override
  Future<Either<ChecklistFailure, Unit>> deleteAll() {
    return _currentRepository.deleteAll();
  }

  @override
  Future<Either<ChecklistFailure, Unit>> update(Checklist checklist) {
    return _currentRepository.update(checklist);
  }

  @override
  Future<Either<ChecklistFailure, Unit>> create(Checklist checklist) {
    return _currentRepository.create(checklist);
  }

  @override
  Future<Either<ChecklistFailure, Unit>> delete(Checklist checklist) {
    return _currentRepository.delete(checklist);
  }

  @override
  Stream<Either<ChecklistFailure, List<Checklist>>> watchAll() {
    return _currentRepository.watchAll();
  }

  @override
  Future<Either<ChecklistFailure, List<Checklist>>> getAll() {
    return _currentRepository.getAll();
  }
}
