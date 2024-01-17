import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:listzen/domain/auth/value_objects.dart';
import 'package:listzen/domain/checklists/checklist.dart';
import 'package:listzen/domain/checklists/checklist_color.dart';
import 'package:listzen/domain/checklists/item.dart';
import 'package:listzen/domain/checklists/value_objects.dart';
import 'package:listzen/presentation/checklists/components/checklist_statistics.dart';

void main() {
  testWidgets("Checklist completion statistics is displayed correctly",
      (tester) async {
    // Test checklist contains 15 items. 8 of them are marked as completed
    const checklistName = 'Orange checklist';
    final checklist = Checklist(
      id: UniqueId(),
      name: ChecklistName(checklistName),
      color: ChecklistColor.orange,
      items: List<Item>.generate(
        15,
        (i) => Item(
          id: UniqueId(),
          name: ItemName('Item $i'),
          done: i.isEven,
        ),
      ),
    );

    // Build the widget
    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: ChecklistStatistics(checklist: checklist),
      ),
    ));

    // Verify statistics is displayed correclty
    expect(find.text('8 / 15'), findsOneWidget);
  });
}