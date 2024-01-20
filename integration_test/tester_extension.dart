import 'package:flutter/widgets.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:listzen/domain/checklists/checklist_color.dart';
import 'package:listzen/presentation/core/app_widget.dart';

import 'data/test_checklist.dart';
import 'finders.dart';

extension WidgetTesterX on WidgetTester {
  Future<void> loadAppWidget() async {
    await pumpWidget(AppWidget());
    await pumpAndSettle();
  }

  Future<void> tapAddChecklistFab() async {
    await tap(addChecklistFab);
    await pumpAndSettle();
  }

  Future<void> tapSaveChecklistButton() async {
    await tap(saveButton);
    await pumpAndSettle();
  }

  Future<void> scrollDownIfNotVisible(Finder finder) async {
    if (!finder.tryEvaluate()) {
      await scrollUntilVisible(
        finder,
        50.0,
        scrollable: find.byType(Scrollable).last,
      );
    }
  }

  Future<void> openChecklistOverview(String checklistName) async {
    await tap(checklistCard(checklistName));
    await pumpAndSettle();
  }

  Future<void> closeDialog() async {
    await tap(closeButton);
    await pumpAndSettle();
  }

  Future<void> tapDialogItem(String itemName) async {
    await tap(dialogItemName(itemName));
    await pumpAndSettle();
  }

  Future<void> slideChecklistCardLeft(String checklistName) async {
    await drag(checklistCard(checklistName), const Offset(-500, 0));
    await pumpAndSettle();
  }

  Future<void> slideChecklistCardRight(String checklistName) async {
    await drag(checklistCard(checklistName), const Offset(500, 0));
    await pumpAndSettle();
  }

  Future<void> tapChecklistDeleteButton(String checklistName) async {
    await tap(checklistCardDelete(checklistName));
    await pumpAndSettle();
  }

  Future<void> tapChecklistEditButton(String checklistName) async {
    await tap(checklistCardEdit(checklistName));
    await pumpAndSettle();
  }

  Future<void> tapDialogDeleteButton() async {
    await tap(alertDialogDeleteButton);
    await pumpAndSettle();
  }

  Future<void> createChecklist(TestChecklist checklist) async {
    await tapAddChecklistFab();
    await enterText(textField, checklist.name);
    for (final item in checklist.items) {
      await tap(addItemFab);
      await enterText(textField.last, item.name);
    }
    await tapSaveChecklistButton();
  }

  Future<void> deleteItem(String name) async {
    await tap(editItemTileDelete(name));
    await pumpAndSettle();
  }

  Future<void> reorderItem(String name, double offset) async {
    await drag(editItemTileReorder(name), Offset(0, offset));
    await pumpAndSettle();
  }

  Future<void> editItemTapCheckbox(String itemName) async {
    await tap(editItemTileCheckbox(itemName));
    await pumpAndSettle();
  }

  ChecklistColor getChecklistCardColor(String checklistName) {
    // Get container widget inside a ChecklistCard
    final containerWidget = widget(
      find.descendant(
        of: checklistCard(checklistName),
        matching: find.byType(Container),
      ),
    );

    // Get gradient colors of a container decoration
    final boxDecoration = (containerWidget as Container).decoration;
    final colors = (boxDecoration! as BoxDecoration).gradient!.colors;

    for (final checklistColor in ChecklistColor.values) {
      if (colors[0] == Color(checklistColor.colorValues[0])) {
        return checklistColor;
      }
    }

    throw Exception("Unable to define checklist color");
  }

  ChecklistColor getSlidableActionColor(int colorButtonIndex) {
    // Find SlidableAction widget and get its background color property
    final buttonColor =
        (widget(colorChecklistButton.at(colorButtonIndex)) as SlidableAction)
            .backgroundColor;

    for (final color in ChecklistColor.values) {
      if (buttonColor == Color(color.colorValues[0])) {
        return color;
      }
    }

    throw Exception("Unable to define button color");
  }

  Future<void> tapChecklistColorButton(int colorButtonIndex) async {
    await tap(colorChecklistButton.at(colorButtonIndex));
    await pumpAndSettle();
  }
}
