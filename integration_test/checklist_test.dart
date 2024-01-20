import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:listzen/domain/checklists/checklist_color.dart';
import 'package:listzen/firebase_options.dart';
import 'package:listzen/injection.dart';

import 'data/test_checklist.dart';
import 'finders.dart';
import 'tester_extension.dart';

void main() {
  setUpAll(() async {
    IntegrationTestWidgetsFlutterBinding.ensureInitialized();
    await configureDependencies();
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  });

  testWidgets('Should be able to create a checklist and add items',
      (tester) async {
    // Test data
    final checklist = groceryChecklist();

    // Load app widget
    await tester.loadAppWidget();

    // Tap Add checklist Fab and verify navigation to the Create checklist page
    await tester.tapAddChecklistFab();
    expect(createChecklistAppBar, findsOne);

    // Enter checklist name
    await tester.enterText(textField, checklist.name);

    // Add items
    for (final item in checklist.items) {
      await tester.tap(addItemFab);
      await tester.enterText(textField.last, item.name);
    }

    // Save checklist
    await tester.tapSaveChecklistButton();

    // Verify navigation to the Checklist overview page
    expect(checklistsOverviewAppBar, findsOne);

    // Verify that new checklist card is on the page
    expect(checklistCard(checklist.name), findsOne);

    // Verify that checklist card shows correct completion statistics
    expect(
      checklistCardStatistics(checklist.name, 0, checklist.items.length),
      findsOne,
    );
  });

  testWidgets('Should be able to view checklist items and mark items as done',
      (tester) async {
    // Load app widget
    await tester.loadAppWidget();

    // Set test preconditions: create a test checklist and add items
    const itemsNumber = 15;
    final checklist = TestChecklist.withItems(itemsNumber: itemsNumber);
    await tester.createChecklist(checklist);

    // Open checklist overview and verify that dialog is open
    await tester.openChecklistOverview(checklist.name);
    expect(dialog, findsOne);

    // Verify that checklist name is shown in the dialog
    expect(dialogChecklistName(checklist.name), findsOne);

    // Verify that all items are shown in the dialog
    for (final item in checklist.items) {
      final itemFinder = dialogItemName(item.name);
      await tester.scrollDownIfNotVisible(itemFinder);
      expect(itemFinder, findsOne);
    }

    // Verify that statistics is correct
    expect(dialogStatistics(0, itemsNumber), findsOne);

    // Verify that dialog can be closed
    await tester.closeDialog();
    expect(dialog, findsNothing);

    // Open view checklist dialog again
    await tester.openChecklistOverview(checklist.name);

    // Mark first four items as completed
    for (int i = 0; i < 5; i++) {
      await tester.tapDialogItem(checklist.items[i].name);
    }

    // Verify statistics
    expect(dialogStatistics(5, itemsNumber), findsOne);

    // Close the dialog
    await tester.closeDialog();

    // Verify statistics on the checkbox card
    expect(checklistCardStatistics(checklist.name, 5, itemsNumber), findsOne);
  });

  testWidgets('Should be able to change checklist card color', (tester) async {
    // Load app widget
    await tester.loadAppWidget();

    // Set test preconditions: create a test checklist and add items
    final checklist = TestChecklist.empty('Colorize');
    await tester.createChecklist(checklist);

    // Verify that default checklist color is teal
    const defaultColor = ChecklistColor.teal;
    expect(tester.getChecklistCardColor(checklist.name), defaultColor);

    // Slide the checklist card to the right
    await tester.slideChecklistCardRight(checklist.name);

    // Verify color buttons
    final expectedColorButtons =
        List<ChecklistColor>.from(ChecklistColor.values)..remove(defaultColor);

    expect(colorChecklistButton, findsExactly(expectedColorButtons.length));
    for (int i = 0; i < expectedColorButtons.length; i++) {
      expect(tester.getSlidableActionColor(i), expectedColorButtons[i]);
    }

    // Change color to blue
    await tester.tapChecklistColorButton(3);

    // Verify that buttons are not visible
    expect(colorChecklistButton, findsNothing);

    // Verify that checklist card changed color to blue
    expect(
      tester.getChecklistCardColor(checklist.name),
      expectedColorButtons[3],
    );
  });

  testWidgets('Should be able to delete a checklist', (tester) async {
    // Load app widget
    await tester.loadAppWidget();

    // Set test preconditions: create a test checklist and add items
    final checklist = TestChecklist.empty('Checklist to delete');
    await tester.createChecklist(checklist);

    // Slide the checklist card to the left
    await tester.slideChecklistCardLeft(checklist.name);

    // Tap Delete button
    await tester.tapChecklistDeleteButton(checklist.name);

    // Verify the dialog is open
    expect(alertDialog, findsOne);

    // Tap Delete
    await tester.tapDialogDeleteButton();

    // Verify the dialog is closed
    expect(alertDialog, findsNothing);

    // Verify the checklist card is not available anymore
    expect(checklistCard(checklist.name), findsNothing);
  });

  testWidgets('Should be able to edit checklist: add, delete and reorder items',
      (tester) async {
    // Load app widget
    await tester.loadAppWidget();

    // Set test preconditions: create a test checklist and add items
    final checklist = TestChecklist.withItems(
      namePrefix: 'Checklist to edit',
      itemsNumber: 8,
    );
    await tester.createChecklist(checklist);

    // Slide the checklist card to the left
    await tester.slideChecklistCardLeft(checklist.name);

    // Tap Edit button
    await tester.tapChecklistEditButton(checklist.name);

    // Verify navigation to the Edit checklist page
    expect(editChecklistAppBar, findsOne);

    // Modify test checklist data
    final updatedChecklist = TestChecklist(
      namePrefix: 'Updated checklist',
      items: [
        checklist.items[7],
        checklist.items[1],
        checklist.items[3],
        checklist.items[5],
        checklist.items[6],
      ],
    );

    final updatedItemsNumber = updatedChecklist.items.length;

    // Edit checklist name
    await tester.enterText(textField.first, updatedChecklist.name);

    // Delete three items
    await tester.deleteItem(checklist.items[0].name);
    await tester.deleteItem(checklist.items[2].name);
    await tester.deleteItem(checklist.items[4].name);

    // Move last item on top
    await tester.reorderItem(checklist.items.last.name, -500);

    // Mark two items as completed
    await tester.editItemTapCheckbox(checklist.items[1].name);
    await tester.editItemTapCheckbox(checklist.items[3].name);

    // Save checklist
    await tester.tapSaveChecklistButton();

    // Verify that checklist card shows a new name and statistics is correct
    expect(checklistCard(updatedChecklist.name), findsOne);
    expect(
      checklistCardStatistics(updatedChecklist.name, 2, updatedItemsNumber),
      findsOne,
    );

    // Open checklist overview dialog
    await tester.openChecklistOverview(updatedChecklist.name);

    // Verify checklist name, statistics, items names and order
    expect(dialogChecklistName(updatedChecklist.name), findsOne);
    expect(dialogStatistics(2, updatedItemsNumber), findsOne);
    expect(dialogItem, findsExactly(updatedItemsNumber));
    for (int i = 0; i < updatedItemsNumber; i++) {
      final finder = find.descendant(
        of: dialogItem.at(i),
        matching: find.text(updatedChecklist.items[i].name),
      );
      expect(finder, findsOne);
    }
  });
}
