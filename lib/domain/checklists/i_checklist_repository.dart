import 'package:dartz/dartz.dart';
import 'package:listzen/domain/checklists/checklist.dart';

import 'package:listzen/domain/checklists/checklist_failure.dart';

abstract class IChecklistRepository {
  Stream<Either<ChecklistFailure, List<Checklist>>> watchAll();
  Stream<Either<ChecklistFailure, List<Checklist>>> watchUncompleted();
  Future<Either<ChecklistFailure, Unit>> create(Checklist checklist);
  Future<Either<ChecklistFailure, Unit>> update(Checklist checklist);
  Future<Either<ChecklistFailure, Unit>> delete(Checklist checklist);
  Future<Either<ChecklistFailure, Unit>> deleteAll();
}
