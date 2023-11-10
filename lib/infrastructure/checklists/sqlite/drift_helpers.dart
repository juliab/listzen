import 'dart:convert';

import 'package:listzen/domain/auth/value_objects.dart';
import 'package:listzen/domain/checklists/checklist.dart' as c;
import 'package:listzen/domain/checklists/item.dart' as i;
import 'package:listzen/domain/checklists/value_objects.dart';
import 'package:listzen/infrastructure/checklists/sqlite/drift_database.dart';

i.Item jsonToItem(Map<String, dynamic> json) {
  return i.Item(
    id: UniqueId.fromUniqueString(json['id'] as String),
    name: ItemName(json['name'] as String),
    done: json['done'] as bool,
  );
}

Map<String, dynamic> itemToJson(i.Item item) {
  return Item(
    id: item.id.getOrCrash(),
    name: item.name.getOrCrash(),
    done: item.done,
  ).toJson();
}

c.Checklist toDomain(Checklist checklist) {
  final itemsJsonList = jsonDecode(checklist.items) as List<dynamic>;

  return c.Checklist(
    id: UniqueId.fromUniqueString(checklist.id),
    name: ChecklistName(checklist.name),
    color: checklist.color,
    items: itemsJsonList
        .map(
          (itemJson) => jsonToItem(itemJson as Map<String, dynamic>),
        )
        .toList(),
  );
}

ChecklistsCompanion checklistDomainToCompanion(c.Checklist checklist) {
  return ChecklistsCompanion.insert(
    id: checklist.id.getOrCrash(),
    name: checklist.name.getOrCrash(),
    color: checklist.color,
    items: jsonEncode(checklist.items.map((item) => itemToJson(item)).toList()),
    updatedAt: DateTime.now(),
  );
}
