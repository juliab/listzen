import 'dart:math';

class TestChecklist {
  final String name;
  final List<TestItem> items;

  set name(String name) {
    this.name = name;
  }

  TestChecklist({
    String? namePrefix,
    List<TestItem>? items,
  })  : name = _generateName(namePrefix),
        items = items ?? [];

  TestChecklist.empty(
    String? namePrefix,
  )   : name = _generateName(namePrefix),
        items = [];

  TestChecklist.withItems({
    String? namePrefix,
    required int itemsNumber,
    int completedItemsNumber = 0,
  })  : name = _generateName(namePrefix),
        items = List<TestItem>.generate(
          itemsNumber,
          (i) => TestItem(
            name: 'Item ${i + 1}',
            done: i < completedItemsNumber,
          ),
        );

  static String _generateName(String? prefix) {
    return "${prefix ?? "Test Checklist"} ${Random().nextInt(1000)}";
  }
}

class TestItem {
  final String name;
  final bool done;

  TestItem({
    required this.name,
    required this.done,
  });
}

TestChecklist groceryChecklist() {
  return TestChecklist(
    namePrefix: 'Grocery list',
    items: [
      'Broccoli',
      'Bread',
      'Cream cheese',
      'Milk',
      'Eggs',
      'Roasted chicken',
      'Cheese',
      'Chocolate',
      'Apples',
    ].map((name) => TestItem(name: name, done: false)).toList(),
  );
}
