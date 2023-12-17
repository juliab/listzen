import 'package:dartz/dartz.dart';

import 'package:listzen/domain/core/failures.dart';

Either<ValueFailure<String>, String> validateMaxStringLength(
  String input,
  int maxLength,
) {
  if (input.length <= maxLength) {
    return right(input);
  }
  return left(ValueFailure.exceedingLength(failedValue: input, max: maxLength));
}

Either<ValueFailure<String>, String> validateStringNotEmpty(String input) {
  if (input.isNotEmpty) {
    return right(input);
  }
  return left(ValueFailure.empty(failedValue: input));
}

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  final email = validateStringNotEmpty(input);
  if (email.isLeft()) {
    return email;
  }
  const emailRegex =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  if (RegExp(emailRegex).hasMatch(input)) {
    return right(input);
  }
  return left(ValueFailure.invalidEmail(failedValue: input));
}

Either<ValueFailure<String>, String> validatePassword(String input) {
  final password = validateStringNotEmpty(input);
  if (password.isLeft()) {
    return password;
  }

  const passwordRegex =
      r"""^(?=.*[A-Za-z])(?=.*\d)(?=.*[!@#$%^&*])[A-Za-z\d!@#$%^&*]{6,}$""";
  if (RegExp(passwordRegex).hasMatch(input)) {
    return right(input);
  }
  return left(ValueFailure.insecurePassword(failedValue: input));
}

Either<ValueFailure<String>, String> validateConfirmPassword(
    String confirmPassword, String originalPassword) {
  final password = validateStringNotEmpty(confirmPassword);
  if (password.isLeft()) {
    return password;
  }
  if (confirmPassword != originalPassword) {
    return left(ValueFailure.passwordsDontMatch(failedValue: confirmPassword));
  }
  return right(confirmPassword);
}
