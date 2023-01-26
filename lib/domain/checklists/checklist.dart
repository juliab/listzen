import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:success_check/domain/auth/value_objects.dart';
import 'package:success_check/domain/checklists/item.dart';
import 'package:success_check/domain/checklists/value_objects.dart';
import 'package:success_check/domain/core/failures.dart';

part 'checklist.freezed.dart';

@freezed
abstract class CheckList with _$CheckList {
  const CheckList._();

  const factory CheckList({
    required UniqueId id,
    required CheckListName name,
    required List<Item> items,
  }) = _CheckList;

  factory CheckList.empty() => CheckList(
        id: UniqueId(),
        name: CheckListName(''),
        items: [],
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return name.failureOrUnit
        .andThen(
          // check all checklist items for failures
          items
              .map((item) => item.failureOption)
              // If we can't get the first element that is ValueFailure,
              // this means that the list is valid.
              .firstWhere((e) => e.isSome(), orElse: () => none())
              .fold(
                () => right(unit),
                (f) => left(f),
              ),
        )
        .fold((f) => some(f), (_) => none());
  }
}
