import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:listzen/domain/auth/value_objects.dart';
import 'package:listzen/domain/checklists/checklist_color.dart';
import 'package:listzen/domain/checklists/item.dart';
import 'package:listzen/domain/checklists/value_objects.dart';
import 'package:listzen/domain/core/failures.dart';

part 'checklist.freezed.dart';

@freezed
class Checklist with _$Checklist {
  const Checklist._();

  const factory Checklist({
    required UniqueId id,
    required ChecklistName name,
    required ChecklistColor color,
    required List<Item> items,
  }) = _CheckList;

  factory Checklist.empty() => Checklist(
        id: UniqueId(),
        name: ChecklistName(''),
        color: ChecklistColor.teal,
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

  int getNumberOfCompletedItems() {
    return items.where((item) => item.done).length;
  }

  bool isCompleted() {
    return items.isNotEmpty && items.where((item) => !item.done).isEmpty;
  }
}
