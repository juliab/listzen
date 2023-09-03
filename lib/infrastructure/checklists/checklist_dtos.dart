import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:listzen/domain/auth/auth_failure.dart';
import 'package:listzen/domain/auth/value_objects.dart';
import 'package:listzen/domain/checklists/card_color.dart';
import 'package:listzen/domain/checklists/checklist.dart';
import 'package:listzen/domain/checklists/item.dart';
import 'package:listzen/domain/checklists/value_objects.dart';

part 'checklist_dtos.freezed.dart';
part 'checklist_dtos.g.dart';

@freezed
abstract class ChecklistDto implements _$ChecklistDto {
  const ChecklistDto._();

  const factory ChecklistDto({
    required String id,
    required String name,
    required String color,
    required List<ItemDto> items,
    @ServerTimeStampConverter() required FieldValue serverTimeStamp,
  }) = _ChecklistDto;

  factory ChecklistDto.fromDomain(Checklist checklist) {
    return ChecklistDto(
      id: checklist.id.getOrCrash(),
      name: checklist.name.getOrCrash(),
      color: checklist.color.name,
      items: checklist.items.map((item) => ItemDto.fromDomain(item)).toList(),
      serverTimeStamp: FieldValue.serverTimestamp(),
    );
  }

  Checklist toDomain() {
    return Checklist(
      id: UniqueId.fromUniqueString(id),
      name: ChecklistName(name),
      color: ChecklistColor.values.byName(color),
      items: items.map((itemDto) => itemDto.toDomain()).toList(),
    );
  }

  factory ChecklistDto.fromJson(Map<String, dynamic> json) =>
      _$ChecklistDtoFromJson(json);

  factory ChecklistDto.fromFirestore(
    DocumentSnapshot<Map<String, dynamic>> doc,
  ) {
    if (doc.data() == null) {
      throw const ServerError();
    }
    final json = doc.data()?..putIfAbsent('id', () => doc.id);
    return ChecklistDto.fromJson(json!);
  }
}

class ServerTimeStampConverter implements JsonConverter<FieldValue, dynamic> {
  const ServerTimeStampConverter();

  @override
  FieldValue fromJson(dynamic json) {
    return FieldValue.serverTimestamp();
  }

  @override
  Object toJson(FieldValue fieldValue) {
    return fieldValue;
  }
}

@freezed
abstract class ItemDto implements _$ItemDto {
  const ItemDto._();

  const factory ItemDto({
    required String id,
    required String name,
    required bool done,
  }) = _ItemDto;

  factory ItemDto.fromDomain(Item item) {
    return ItemDto(
      id: item.id.getOrCrash(),
      name: item.name.getOrCrash(),
      done: item.done,
    );
  }

  Item toDomain() {
    return Item(
      id: UniqueId.fromUniqueString(id),
      name: ItemName(name),
      done: done,
    );
  }

  factory ItemDto.fromJson(Map<String, dynamic> json) =>
      _$ItemDtoFromJson(json);
}
