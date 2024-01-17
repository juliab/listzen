import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:listzen/domain/checklists/checklist_color.dart';
import 'package:listzen/presentation/checklists/components/checklist_info_tile.dart';
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
  });
}
