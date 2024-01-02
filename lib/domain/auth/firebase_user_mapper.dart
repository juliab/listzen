import 'package:firebase_auth/firebase_auth.dart';
import 'package:listzen/domain/auth/user.dart' as sc;
import 'package:listzen/domain/auth/value_objects.dart';

extension FirebaseUserDomainX on User {
  sc.User toDomain() {
    // if user signed in anonymously email will be empty
    return sc.User(
      id: UniqueId.fromUniqueString(uid),
      email: providerData.first.email ?? '',
      provider: _getAuthProvider(providerData.first.providerId),
    );
  }

  sc.AuthProvider _getAuthProvider(String providerId) {
    switch (providerId) {
      case 'google.com':
        return sc.AuthProvider.google;
      case 'apple.com':
        return sc.AuthProvider.apple;
      default:
        return sc.AuthProvider.email;
    }
  }
}
