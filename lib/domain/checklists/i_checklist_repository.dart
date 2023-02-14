import 'package:dartz/dartz.dart';
import 'package:success_check/domain/checklists/checklist.dart';

import 'package:success_check/domain/checklists/checklist_failure.dart';

abstract class IChecklistRepository {
  Stream<Either<ChecklistFailure, List<Checklist>>> watchAll();
  Stream<Either<ChecklistFailure, List<Checklist>>> watchUncompleted();
  Future<Either<ChecklistFailure, Unit>> create(Checklist checklist);
  Future<Either<ChecklistFailure, Unit>> update(Checklist checklist);
  Future<Either<ChecklistFailure, Unit>> delete(Checklist checklist);
}
