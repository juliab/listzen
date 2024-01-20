import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:listzen/presentation/checklists/checklists_overview/widgets/checklist_card_widget.dart';
import 'package:listzen/presentation/checklists/edit_checklist/widgets/items_list_widget.dart';
import 'package:listzen/presentation/checklists/view_checklist/view_checklist_dialog.dart';

Finder addChecklistFab =
    find.widgetWithText(FloatingActionButton, 'Add checklist');
Finder textField = find.byType(TextFormField);
Finder saveButton = find.byIcon(Icons.check);
Finder addItemFab = find.byIcon(Icons.add);
Finder checklistsOverviewAppBar = find.widgetWithText(AppBar, 'Checklists');
Finder createChecklistAppBar = find.widgetWithText(AppBar, 'Create checklist');
Finder editChecklistAppBar = find.widgetWithText(AppBar, 'Edit checklist');
Finder colorChecklistButton = find.byType(SlidableAction);

Finder editItemTile(String itemName) {
  return find.widgetWithText(EditItemTile, itemName);
}

Finder editItemTileDelete(String itemName) {
  return find.descendant(
    of: editItemTile(itemName),
    matching: find.byIcon(Icons.remove_circle),
  );
}

Finder editItemTileReorder(String itemName) {
  return find.descendant(
    of: editItemTile(itemName),
    matching: find.byIcon(Icons.swap_vert_outlined),
  );
}

Finder editItemTileCheckbox(String itemName) {
  return find.descendant(
    of: editItemTile(itemName),
    matching: find.byType(Checkbox),
  );
}

Finder checklistCard(String name) {
  return find.widgetWithText(ChecklistCard, name);
}

Finder checklistCardDelete(String name) {
  return find.descendant(
    of: checklistCard(name),
    matching: find.text('Delete'),
  );
}

Finder checklistCardEdit(String name) {
  return find.descendant(
    of: checklistCard(name),
    matching: find.text('Edit'),
  );
}

Finder dialog = find.byType(Dialog);
Finder dialogChecklistName(String name) {
  return find.descendant(
    of: dialog,
    matching: find.text(name),
  );
}

Finder dialogItem = find.descendant(
  of: dialog,
  matching: find.byType(ViewItemTile),
);

Finder dialogItemName(String name) {
  return find.descendant(
    of: dialog,
    matching: find.text(name),
  );
}

Finder dialogStatistics(int completed, int total) {
  return find.widgetWithText(Dialog, '$completed / $total');
}

Finder closeButton = find.byType(CloseButton);

Finder checklistCardStatistics(
  String checklistName,
  int completed,
  int total,
) {
  return find.descendant(
    of: checklistCard(checklistName),
    matching: find.text('$completed / $total'),
  );
}

Finder alertDialog = find.byType(CupertinoAlertDialog);
Finder alertDialogDeleteButton =
    find.descendant(of: alertDialog, matching: find.text('Delete'));
