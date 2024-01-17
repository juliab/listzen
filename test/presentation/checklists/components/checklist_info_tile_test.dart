import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:listzen/domain/auth/value_objects.dart';
import 'package:listzen/domain/checklists/checklist.dart';
import 'package:listzen/domain/checklists/checklist_color.dart';
import 'package:listzen/domain/checklists/item.dart';
import 'package:listzen/domain/checklists/value_objects.dart';
import 'package:listzen/presentation/checklists/components/checklist_info_tile.dart';
import 'package:listzen/presentation/checklists/components/checklist_statistics.dart';
import 'package:listzen/presentation/checklists/components/completion_status_checkbox.dart';

void main() {
  group('ChecklistInfoTile widget tests', () {
    testWidgets("Widget is read-only and has no checkbox", (tester) async {
      const checklistName = 'Cherry checklist';

      // Build the widget
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: ChecklistInfoTile.readOnly(
              color: ChecklistColor.cherry,
              name: checklistName,
            ),
          ),
        ),
      );

      expect(find.text(checklistName), findsOneWidget);
      expect(find.byType(TextFormField), findsNothing);
      expect(find.byType(Checkbox), findsNothing);
    });

    testWidgets("Widget is read-only and has a checkbox", (tester) async {
      const checklistName = 'Blue checklist';

      // Build the widget
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: ChecklistInfoTile.readOnly(
              color: ChecklistColor.blue,
              name: checklistName,
              completionStatusCheckbox: CompletionStatusCheckbox(
                isCompleted: () => false,
                insideCard: false,
              ),
            ),
          ),
        ),
      );

      expect(find.text(checklistName), findsOneWidget);
      expect(find.byType(TextFormField), findsNothing);
      expect(find.byType(Checkbox), findsOneWidget);
    });

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
          body: ChecklistInfoTile.readOnly(
            color: checklist.color,
            name: checklistName,
            statistics: ChecklistStatistics(checklist: checklist),
          ),
        ),
      ));

      // Verify statistics is displayed correclty
      expect(find.text('8 / 15'), findsOneWidget);
    });
  });
}
