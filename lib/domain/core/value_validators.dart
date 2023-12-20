import 'package:dartz/dartz.dart';

import 'package:listzen/domain/core/failures.dart';

const emailRegex =
    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]'
    r'{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]'
    r'{2,}))$';

const passwordRegex =
    r'^(?=.*[A-Za-z])(?=.*\d)(?=.*[!@#$%^&*])[A-Za-z\d!@#$%^&*]{6,}$';

Either<ValueFailure<String>, String> validateMaxStringLength(
  String input,
  int maxLength,
) {
  if (input.length > maxLength) {
    return left(
        ValueFailure.exceedingLength(failedValue: input, max: maxLength));
  }
  return right(input);
}

Either<ValueFailure<String>, String> validateStringNotEmpty(String input) {
  if (input.isEmpty) {
    return left(ValueFailure.empty(failedValue: input));
  }
  return right(input);
}

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  if (input.isEmpty) {
    return left(ValueFailure.empty(failedValue: input));
  }
  if (!RegExp(emailRegex).hasMatch(input)) {
    return left(ValueFailure.invalidEmail(failedValue: input));
  }
  return right(input);
}

Either<ValueFailure<String>, String> validatePassword(String input) {
  if (input.isEmpty) {
    return left(ValueFailure.empty(failedValue: input));
  }
  if (!RegExp(passwordRegex).hasMatch(input)) {
    return left(ValueFailure.insecurePassword(failedValue: input));
  }
  return right(input);
}

Either<ValueFailure<String>, String> validateConfirmPassword(
    String confirmPassword, String originalPassword) {
  if (confirmPassword.isEmpty) {
    return left(ValueFailure.empty(failedValue: confirmPassword));
  }
  if (confirmPassword != originalPassword) {
    return left(ValueFailure.passwordsDontMatch(failedValue: confirmPassword));
  }
  return right(confirmPassword);
}
