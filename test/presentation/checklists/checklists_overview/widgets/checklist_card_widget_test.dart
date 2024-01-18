import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:listzen/presentation/checklists/checklists_overview/widgets/checklist_card_widget.dart';

import '../../../../data/test_data_generator.dart';

void main() {
  testWidgets('Verify checklist name, statistics and completion checkbox',
      (tester) async {
    final testChecklist = TestDataGenerator.checklistItemsHalfCompleted(15);

    // Build the widget
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: ChecklistCard(
            checklist: testChecklist,
          ),
        ),
      ),
    );

    // Verify that checklist name is displayed
    expect(find.text(testChecklist.name.getOrCrash()), findsOneWidget);

    // Verify that statistics are correct
    expect(find.text('8 / 15'), findsOneWidget);

    // Verify that completion checkbox is absent
    expect(find.byType(Checkbox), findsNothing);
  });

  testWidgets('Verify Edit and Delete actions on slide left', (tester) async {
    final testChecklist = TestDataGenerator.basicChecklist();
    final editFinderByIcon = find.byIcon(Icons.edit);
    final editFinderByText = find.text('Edit');
    final deleteFinderByIcon = find.byIcon(Icons.delete);
    final deleteFinderByText = find.text('Delete');

    // Build the widget
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: ChecklistCard(
            checklist: testChecklist,
          ),
        ),
      ),
    );

    // Verify that Edit and Delete buttons are not available
    expect(editFinderByIcon, findsNothing);
    expect(editFinderByText, findsNothing);
    expect(deleteFinderByIcon, findsNothing);
    expect(deleteFinderByText, findsNothing);

    // Slide left
    await tester.drag(find.byType(Slidable), const Offset(-500, 0));
    await tester.pumpAndSettle();

    // Verify that Edit and Delete buttons appeared
    expect(editFinderByIcon, findsOne);
    expect(editFinderByText, findsOne);
    expect(deleteFinderByIcon, findsOne);
    expect(deleteFinderByText, findsOne);
  });

  testWidgets('Verify colorize actions on slide right', (tester) async {
    final testChecklist = TestDataGenerator.basicChecklist();
    final colorizeFinder = find.byIcon(Icons.color_lens);

    // Build the widget
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: ChecklistCard(
            checklist: testChecklist,
          ),
        ),
      ),
    );

    // Verify that colorize buttons are not visible
    expect(colorizeFinder, findsNothing);

    // Slide right
    await tester.drag(find.byType(Slidable), const Offset(500, 0));
    await tester.pumpAndSettle();

    // Verify that 5 colorize buttons are visible now
    expect(colorizeFinder, findsExactly(5));
  });
}
