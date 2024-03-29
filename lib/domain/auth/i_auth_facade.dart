import 'package:dartz/dartz.dart';
import 'package:listzen/domain/auth/auth_failure.dart';
import 'package:listzen/domain/auth/user.dart';
import 'package:listzen/domain/auth/value_objects.dart';

abstract class IAuthFacade {
  Option<User> getSignedInUser();
  Stream<User?> authStateChanges();
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });
  Future<Either<AuthFailure, Unit>> signInWithGoogle();
  Future<Either<AuthFailure, Unit>> signInWithApple();
  Future<void> signOut();
  Future<Either<AuthFailure, Unit>> getResetPasswordEmail({
    required EmailAddress emailAddress,
  });
  Future<Either<AuthFailure, Unit>> deleteAccount();
  Future<Either<AuthFailure, Unit>> reauthenticateWithPassword({
    required Password password,
  });
  Future<Either<AuthFailure, Unit>> reauthenticateWithGoogle();
  Future<Either<AuthFailure, Unit>> reauthenticateWithApple();
}
