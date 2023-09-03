import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:listzen/domain/auth/value_objects.dart';
import 'package:listzen/domain/checklists/value_objects.dart';
import 'package:listzen/domain/core/failures.dart';

part 'item.freezed.dart';

@freezed
class Item with _$Item {
  const Item._();

  const factory Item({
    required UniqueId id,
    required ItemName name,
    required bool done,
    @Default(false) bool isNew,
  }) = _Item;

  factory Item.empty() => Item(
        id: UniqueId(),
        name: ItemName(''),
        done: false,
        isNew: true,
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return name.value.fold((f) => some(f), (_) => none());
  }
}
