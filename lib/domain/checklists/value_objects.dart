import 'package:dartz/dartz.dart';
import 'package:listzen/domain/core/failures.dart';
import 'package:listzen/domain/core/value_objects.dart';
import 'package:listzen/domain/core/value_validators.dart';

class ChecklistName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxString = 300;

  factory ChecklistName(String input) {
    return ChecklistName._(
      validateMaxStringLength(input, maxString).flatMap(validateStringNotEmpty),
    );
  }

  ChecklistName._(this.value);
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

  bool isEmpty() {
    return value.fold(
      (f) => f.maybeMap(
        empty: (_) => true,
        orElse: () => false,
      ),
      (r) => false,
    );
  }
}
