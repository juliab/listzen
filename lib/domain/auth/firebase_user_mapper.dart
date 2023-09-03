import 'package:firebase_auth/firebase_auth.dart';
import 'package:listzen/domain/auth/user.dart' as sc;
import 'package:listzen/domain/auth/value_objects.dart';

extension FirebaseUserDomainX on User {
  sc.User toDomain() {
    return sc.User(id: UniqueId.fromUniqueString(uid));
  }
}
