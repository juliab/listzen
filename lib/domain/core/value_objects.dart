import 'package:dartz/dartz.dart';
import 'package:listzen/domain/core/errors.dart';

import 'package:listzen/domain/core/failures.dart';

abstract class ValueObject<T> {
  const ValueObject();
  Either<ValueFailure<T>, T> get value;

  /// Throws [UnexpectedValueError] containing the [ValueFailure]
  T getOrCrash() {
    return value.fold((l) => throw UnexpectedValueError(l), id);
  }

  bool isValid() => value.isRight();

  bool isEmpty() => value == left(const ValueFailure.empty(failedValue: ""));

  Either<ValueFailure<dynamic>, Unit> get failureOrUnit {
    return value.fold((f) => left(f), (_) => right(unit));
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is ValueObject<T> && o.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Value($value)';

  T get beforeValidation {
    return value.fold((f) => f.failedValue, (v) => v);
  }
}
