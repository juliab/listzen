import 'package:listzen/domain/auth/value_objects.dart';
import 'package:listzen/domain/checklists/checklist.dart';
import 'package:listzen/domain/checklists/checklist_color.dart';
import 'package:listzen/domain/checklists/item.dart';
import 'package:listzen/domain/checklists/value_objects.dart';

class TestDataGenerator {
  TestDataGenerator._();

  /// Creates a checklist without the items
  static Checklist basicChecklist() => Checklist(
        id: UniqueId(),
        name: ChecklistName('Test checklist'),
        color: ChecklistColor.orange,
        items: [],
      );

  /// Creates a checklist with specified number of items.
  /// Every other item is marked as completed.
  static Checklist checklistItemsHalfCompleted(
    int numberOfItems,
  ) {
    return Checklist(
      id: UniqueId(),
      name: ChecklistName('Test checklist'),
      color: ChecklistColor.blue,
      items: List<Item>.generate(
        numberOfItems,
        (i) => Item(
          id: UniqueId(),
          name: ItemName('Item $i'),
          done: i.isEven,
        ),
      ),
    );
  }
}
