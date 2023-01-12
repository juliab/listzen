import 'package:firebase_auth/firebase_auth.dart';
import 'package:success_check/domain/auth/user.dart' as sc;
import 'package:success_check/domain/auth/value_objects.dart';

extension FirebaseUserDomainX on User {
  sc.User toDomain() {
    return sc.User(id: UniqueId.fromUniqueString(uid));
  }
}
