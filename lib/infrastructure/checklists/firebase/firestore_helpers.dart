import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:listzen/domain/auth/i_auth_facade.dart';
import 'package:listzen/domain/core/errors.dart';
import 'package:listzen/injection.dart';

extension FirestoreX on FirebaseFirestore {
  DocumentReference<Map<String, dynamic>> userDocument() {
    final userOption = getIt<IAuthFacade>().getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    return FirebaseFirestore.instance
        .collection('users')
        .doc(user.id.getOrCrash());
  }
}

extension DocumentReferenceX on DocumentReference {
  CollectionReference get checklistCollection => collection('checklists');
}
