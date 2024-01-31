import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:listzen/presentation/checklists/checklists_overview/widgets/checklists_overview_body_widget.dart';
import 'package:listzen/presentation/checklists/checklists_overview/widgets/my_account_drawer.dart';
import 'package:listzen/presentation/core/widgets/keyboard_dismisser.dart';
import 'package:listzen/presentation/core/widgets/standard_padding.dart';
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
        floatingActionButton: const AddChecklistButton(),
        body: CustomScrollView(
          slivers: [
            _buildSliverAppBar(),
            SliverPadding(
              padding:
                  StandardPadding.edgeInsetsAll(context: context, factor: 0.7),
              sliver: const ChecklistsOverviewBody(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSliverAppBar() {
    return const SliverAppBar(
      automaticallyImplyLeading: false,
      centerTitle: true,
      snap: true,
      floating: true,
      title: Text('Checklists'),
      actions: [
        AccountIconButton(),
      ],
    );
  }
}

class AccountIconButton extends StatelessWidget {
  const AccountIconButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) => IconButton(
        icon: const Icon(Icons.account_circle),
        onPressed: () => Scaffold.of(context).openEndDrawer(),
        tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
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
    return StandardPadding.only(
      bottomFactor: 1,
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
