import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:listzen/presentation/checklists/checklists_overview/widgets/checklists_overview_body_widget.dart';
import 'package:listzen/presentation/checklists/checklists_overview/widgets/my_account_drawer.dart';
import 'package:listzen/presentation/core/keyboard_dismisser.dart';
import 'package:listzen/presentation/routes/app_router.dart';

class ChecklistsOverviewScaffold extends StatelessWidget {
  const ChecklistsOverviewScaffold({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return KeyboardDismisser(
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        endDrawer: const MyAccountDrawer(),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Center(child: Text('Checklists')),
          actions: [
            Builder(
              builder: (context) => IconButton(
                icon: const Icon(Icons.account_circle),
                onPressed: () => Scaffold.of(context).openEndDrawer(),
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              ),
            ),
          ],
        ),
        floatingActionButton: const AddChecklistButton(),
        body: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
          child: const Padding(
            padding: EdgeInsets.all(12.0),
            child: ChecklistsOverviewBody(),
          ),
        ),
      ),
    );
  }
}

class AddChecklistButton extends StatelessWidget {
  const AddChecklistButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: FloatingActionButton.extended(
        onPressed: () => AutoRouter.of(context).push(
          EditChecklistRoute(editedChecklistOption: none()),
        ),
        icon: const Icon(Icons.add),
        label: const Text('Add checklist'),
      ),
    );
  }
}
