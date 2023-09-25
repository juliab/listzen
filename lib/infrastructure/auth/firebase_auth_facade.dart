import 'dart:convert';
import 'dart:math';

import 'package:crypto/crypto.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:listzen/domain/auth/auth_failure.dart';
import 'package:listzen/domain/auth/firebase_user_mapper.dart';
import 'package:listzen/domain/auth/i_auth_facade.dart';
import 'package:listzen/domain/auth/user.dart' as sc;
import 'package:listzen/domain/auth/value_objects.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

@LazySingleton(as: IAuthFacade)
class FirebaseAuthFacade implements IAuthFacade {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;

  FirebaseAuthFacade(this._firebaseAuth, this._googleSignIn);

  @override
  Option<sc.User> getSignedInUser() {
    final User? user = _firebaseAuth.currentUser;
    if (user == null) {
      return none();
    }
    return some(user.toDomain());
  }

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  }) async {
    final emailAddressStr = emailAddress.getOrCrash();
    final passwordStr = password.getOrCrash();
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
        email: emailAddressStr,
        password: passwordStr,
      );
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        return left(const AuthFailure.emailAlreadyInUse());
      }
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  }) async {
    final emailAddressStr = emailAddress.getOrCrash();
    final passwordStr = password.getOrCrash();
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: emailAddressStr,
        password: passwordStr,
      );
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found' || e.code == 'wrong-password') {
        return left(const AuthFailure.invalidEmailAndPasswordCombination());
      }
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() async {
    try {
      final googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        return left(const AuthFailure.cancelledByUser());
      }
      final googleAuthentication = await googleUser.authentication;

      final authCredential = GoogleAuthProvider.credential(
        idToken: googleAuthentication.idToken,
        accessToken: googleAuthentication.accessToken,
      );

      await _firebaseAuth.signInWithCredential(authCredential);
      return right(unit);
    } on FirebaseAuthException catch (_) {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithApple() async {
    final rawNonce = _generateNonce();
    final nonce = _sha256ofString(rawNonce);

    try {
      final appleCredential = await SignInWithApple.getAppleIDCredential(
        scopes: [
          AppleIDAuthorizationScopes.email,
        ],
        nonce: nonce,
      );
      final oauthCredential = OAuthProvider("apple.com").credential(
        idToken: appleCredential.identityToken,
        rawNonce: rawNonce,
      );
      await _firebaseAuth.signInWithCredential(oauthCredential);
      return right(unit);
    } on SignInWithAppleException catch (_) {
      return left(const AuthFailure.serverError());
    }
  }

  String _generateNonce([int length = 32]) {
    const charset =
        '0123456789ABCDEFGHIJKLMNOPQRSTUVXYZabcdefghijklmnopqrstuvwxyz-._';
    final random = Random.secure();
    return List.generate(length, (_) => charset[random.nextInt(charset.length)])
        .join();
  }

  /// Returns the sha256 hash of [input] in hex notation.
  String _sha256ofString(String input) {
    final bytes = utf8.encode(input);
    final digest = sha256.convert(bytes);
    return digest.toString();
  }

  @override
  Future<Either<AuthFailure, Unit>> getResetPasswordEmail(
      {required EmailAddress emailAddress}) async {
    final emailAddressStr = emailAddress.getOrCrash();
    try {
      await _firebaseAuth.sendPasswordResetEmail(
        email: emailAddressStr,
      );
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        return left(const AuthFailure.userNotFound());
      }
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<void> signOut() => Future.wait([
        _googleSignIn.signOut(),
        _firebaseAuth.signOut(),
      ]);

  @override
  Future<Either<AuthFailure, Unit>> deleteAccount() async {
    final User? user = _firebaseAuth.currentUser;
    try {
      await user!.delete();
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'requires-recent-login') {
        return left(const AuthFailure.userRequiresRecentLogin());
      }
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> reauthenticateWithPassword(
      {required Password password}) async {
    final User? user = _firebaseAuth.currentUser;

    if (user == null) {
      return left(const AuthFailure.userUnauthenticated());
    }

    final passwordStr = password.getOrCrash();

    try {
      await user.reauthenticateWithCredential(EmailAuthProvider.credential(
        email: user.email!,
        password: passwordStr,
      ));
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-mismatch' ||
          e.code == 'user-not-found' ||
          e.code == 'wrong-password') {
        return left(const AuthFailure.invalidEmailAndPasswordCombination());
      }
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> reauthenticateWithGoogle() async {
    final User? user = _firebaseAuth.currentUser;
    if (user == null) {
      return left(const AuthFailure.userUnauthenticated());
    }

    try {
      final googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        return left(const AuthFailure.cancelledByUser());
      }
      final googleAuthentication = await googleUser.authentication;

      await user.reauthenticateWithCredential(
          GoogleAuthProvider.credential(idToken: googleAuthentication.idToken));
      return right(unit);
    } on FirebaseAuthException catch (_) {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> reauthenticateWithApple() async {
    final User? user = _firebaseAuth.currentUser;
    if (user == null) {
      return left(const AuthFailure.userUnauthenticated());
    }

    final rawNonce = _generateNonce();
    final nonce = _sha256ofString(rawNonce);

    try {
      final appleCredential = await SignInWithApple.getAppleIDCredential(
        scopes: [
          AppleIDAuthorizationScopes.email,
        ],
        nonce: nonce,
      );
      final oauthCredential = OAuthProvider("apple.com").credential(
        idToken: appleCredential.identityToken,
        rawNonce: rawNonce,
      );
      await user.reauthenticateWithCredential(oauthCredential);
      return right(unit);
    } on SignInWithAppleException catch (_) {
      return left(const AuthFailure.serverError());
    }
  }
}
