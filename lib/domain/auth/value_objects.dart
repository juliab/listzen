import 'package:dartz/dartz.dart';
import 'package:listzen/domain/core/failures.dart';
import 'package:listzen/domain/core/value_objects.dart';
import 'package:listzen/domain/core/value_validators.dart';
import 'package:uuid/uuid.dart';

class EmailAddress extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String input) {
    return EmailAddress._(validateEmailAddress(input));
  }

  const EmailAddress._(this.value);
}

class Password extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Password(String input) {
    return Password._(
      validatePassword(input),
    );
  }

  const Password._(this.value);
}

class ConfirmPassword extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory ConfirmPassword(String confirmPassword, String originalPassword) {
    return ConfirmPassword._(
      validateConfirmPassword(confirmPassword, originalPassword),
    );
  }

  const ConfirmPassword._(this.value);
}

class UniqueId extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory UniqueId() {
    return UniqueId._(
      Right(
        const Uuid().v1(),
      ),
    );
  }

  factory UniqueId.fromUniqueString(String uniqueId) {
    return UniqueId._(
      Right(uniqueId),
    );
  }

  const UniqueId._(this.value);
}
