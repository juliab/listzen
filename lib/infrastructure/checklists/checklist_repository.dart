import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';
import 'package:success_check/domain/checklists/checklist.dart';
import 'package:success_check/domain/checklists/checklist_failure.dart';
import 'package:success_check/domain/checklists/i_checklist_repository.dart';
import 'package:success_check/infrastructure/checklists/checklist_dtos.dart';
import 'package:success_check/infrastructure/core/firestore_helpers.dart';

@LazySingleton(as: IChecklistRepository)
class ChecklistRepository implements IChecklistRepository {
  final FirebaseFirestore _firestore;

  ChecklistRepository(this._firestore);

  @override
  Stream<Either<ChecklistFailure, List<Checklist>>> watchAll() async* {
    final userDoc = _firestore.userDocument();
    yield* userDoc.checklistCollection
        .orderBy('serverTimeStamp', descending: true)
        .snapshots()
        .map(
          (snapshot) => right<ChecklistFailure, List<Checklist>>(
            snapshot.docs
                .map(
                  (doc) => ChecklistDto.fromFirestore(
                    doc as DocumentSnapshot<Map<String, dynamic>>,
                  ).toDomain(),
                )
                .toList(),
          ),
        )
        .onErrorReturnWith((e, st) {
      if (e is FirebaseException && e.message!.contains('permission-denied')) {
        return left(const ChecklistFailure.insufficientPermissions());
      } else {
        return left(const ChecklistFailure.unexpected());
      }
    });
  }

  @override
  Stream<Either<ChecklistFailure, List<Checklist>>> watchUncompleted() async* {
    final userDoc = _firestore.userDocument();
    yield* userDoc.checklistCollection
        .orderBy('serverTimeStamp', descending: true)
        .snapshots()
        .map(
          (snapshot) => snapshot.docs.map(
            (doc) => ChecklistDto.fromFirestore(
              doc as DocumentSnapshot<Map<String, dynamic>>,
            ).toDomain(),
          ),
        )
        .map(
          (checklists) => right<ChecklistFailure, List<Checklist>>(
            checklists
                .where((checklist) => checklist.items.any((item) => !item.done))
                .toList(),
          ),
        )
        .onErrorReturnWith((e, st) {
      if (e is FirebaseException && e.message!.contains('permission-denied')) {
        return left(const ChecklistFailure.insufficientPermissions());
      } else {
        return left(const ChecklistFailure.unexpected());
      }
    });
  }

  @override
  Future<Either<ChecklistFailure, Unit>> create(Checklist checklist) {
    // TODO: implement create
    throw UnimplementedError();
  }

  @override
  Future<Either<ChecklistFailure, Unit>> delete(Checklist checklist) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<Either<ChecklistFailure, Unit>> update(Checklist checklist) {
    // TODO: implement update
    throw UnimplementedError();
  }
}
