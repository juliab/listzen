import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:listzen/domain/checklists/checklist.dart';
import 'package:listzen/domain/checklists/checklist_failure.dart';
import 'package:listzen/domain/checklists/i_checklist_repository.dart';
import 'package:listzen/infrastructure/checklists/firebase/firebase_checklist_dtos.dart';
import 'package:listzen/infrastructure/checklists/firebase/firestore_helpers.dart';
import 'package:rxdart/rxdart.dart';

@lazySingleton
class FirebaseChecklistRepository implements IChecklistRepository {
  final FirebaseFirestore _firestore;
  final FirebaseAuth _firebaseAuth;

  FirebaseChecklistRepository(this._firestore, this._firebaseAuth);

  @override
  Stream<Either<ChecklistFailure, List<Checklist>>> watchAll() async* {
    final userDoc = _firestore.userDocument();

    yield* userDoc.checklistCollection
        .snapshots()
        .map(
          (snapshot) => right<ChecklistFailure, List<Checklist>>(
            snapshot.docs
                .map(
                  (doc) => FirebaseChecklistDto.fromFirestore(
                    doc as DocumentSnapshot<Map<String, dynamic>>,
                  ).toDomain(),
                )
                .toList(),
          ),
        )
        .onErrorReturnWith((e, st) {
      if (e is FirebaseException && e.code.contains('permission-denied')) {
        return left(const ChecklistFailure.insufficientPermissions());
      } else {
        return left(const ChecklistFailure.unexpected());
      }
    });
  }

  @override
  Future<Either<ChecklistFailure, Unit>> create(Checklist checklist) async {
    try {
      final userDoc = _firestore.userDocument();
      final checklistDto = FirebaseChecklistDto.fromDomain(checklist);

      await userDoc.checklistCollection
          .doc(checklistDto.id)
          .set(checklistDto.toJson());

      return right(unit);
    } on FirebaseException catch (e) {
      if (e.code.contains('permission-denied')) {
        return left(const ChecklistFailure.insufficientPermissions());
      } else {
        return left(const ChecklistFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<ChecklistFailure, Unit>> update(Checklist checklist) async {
    try {
      final userDoc = _firestore.userDocument();
      final checklistDto = FirebaseChecklistDto.fromDomain(checklist);

      await userDoc.checklistCollection
          .doc(checklistDto.id)
          .update(checklistDto.toJson());

      return right(unit);
    } on FirebaseException catch (e) {
      if (e.code.contains('permission-denied')) {
        return left(const ChecklistFailure.insufficientPermissions());
      } else if (e.code.contains('not-found')) {
        return left(const ChecklistFailure.unableToAccess());
      } else {
        return left(const ChecklistFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<ChecklistFailure, Unit>> delete(Checklist checklist) async {
    try {
      final userDoc = _firestore.userDocument();
      final checklistId = checklist.id.getOrCrash();

      await userDoc.checklistCollection.doc(checklistId).delete();

      return right(unit);
    } on FirebaseException catch (e) {
      if (e.code.contains('permission-denied')) {
        return left(const ChecklistFailure.insufficientPermissions());
      } else if (e.code.contains('not-found')) {
        return left(const ChecklistFailure.unableToAccess());
      } else {
        return left(const ChecklistFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<ChecklistFailure, Unit>> deleteAll() async {
    try {
      final userDoc = _firestore.userDocument();

      await userDoc.checklistCollection.get().then((snapshot) {
        for (final ds in snapshot.docs) {
          ds.reference.delete();
        }
      });

      return right(unit);
    } on FirebaseException catch (e) {
      if (e.code.contains('permission-denied')) {
        return left(const ChecklistFailure.insufficientPermissions());
      } else if (e.code.contains('not-found')) {
        return left(const ChecklistFailure.unableToAccess());
      } else {
        return left(const ChecklistFailure.unexpected());
      }
    }
  }

  @override
  bool isAvailable() {
    return _firebaseAuth.currentUser != null;
  }
}
