import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:success_check/domain/auth/value_objects.dart';

import 'package:success_check/domain/checklists/item.dart';
import 'package:success_check/domain/checklists/value_objects.dart';

part 'item_presentation_classes.freezed.dart';

class FormItems extends ValueNotifier<List<ItemPrimitive>> {
  FormItems() : super(<ItemPrimitive>[]);
}

@freezed
abstract class ItemPrimitive implements _$ItemPrimitive {
  const ItemPrimitive._();

  const factory ItemPrimitive({
    required UniqueId id,
    required String name,
    required bool done,
  }) = _ItemPrimitive;

  factory ItemPrimitive.empty() => ItemPrimitive(
        id: UniqueId(),
        name: '',
        done: false,
      );

  factory ItemPrimitive.fromDomain(Item item) {
    return ItemPrimitive(
      id: item.id,
      name: item.name.getOrCrash(),
      done: item.done,
    );
  }

  Item toDomain() {
    return Item(
      id: id,
      name: ItemName(name),
      done: done,
    );
  }
}
