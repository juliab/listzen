import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:listzen/domain/auth/value_objects.dart';
import 'package:listzen/domain/checklists/checklist.dart';
import 'package:listzen/domain/checklists/checklist_color.dart';
import 'package:listzen/domain/checklists/item.dart';
import 'package:listzen/domain/checklists/value_objects.dart';
import 'package:listzen/presentation/checklists/components/checklist_statistics.dart';

import '../../../data/test_data_generator.dart';

void main() {
  testWidgets("Checklist completion statistics is displayed correctly",
      (tester) async {
    // Test checklist contains 16 items. 8 of them are marked as completed
    final checklist = TestDataGenerator.checklistItemsHalfCompleted(16);

    // Build the widget
    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: ChecklistStatistics(checklist: checklist),
      ),
    ));

    // Verify statistics is displayed correclty
    expect(find.text('8 / 16'), findsOneWidget);
  });
}
