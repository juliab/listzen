import 'package:dartz/dartz.dart';
import 'package:success_check/domain/core/failures.dart';
import 'package:success_check/domain/core/value_objects.dart';
import 'package:success_check/domain/core/value_validators.dart';

class CheckListName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxString = 300;

  factory CheckListName(String input) {
    return CheckListName._(
      validateMaxStringLength(input, maxString).flatMap(validateStringNotEmpty),
    );
  }

  CheckListName._(this.value);
}

class ItemName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 300;

  factory ItemName(String input) {
    return ItemName._(
      validateMaxStringLength(input, maxLength).flatMap(validateStringNotEmpty),
    );
  }

  ItemName._(this.value);
}
