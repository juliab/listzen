import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:listzen/presentation/core/theming/style.dart';
import 'package:listzen/presentation/routes/app_router.dart';

class DeleteAccountConfirmationDialog extends StatelessWidget {
  const DeleteAccountConfirmationDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
      content: Column(
        children: [
          Text(
            'Are you sure you want to delete your account along with all '
            'the checklists you have created?',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: darkColor,
                ),
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () async {
            AutoRouter.of(context).pop(true);
          },
          child: const Text(
            'Delete',
            style: TextStyle(color: errorColor),
          ),
        ),
        TextButton(
          onPressed: () {
            AutoRouter.of(context)
                .popUntilRouteWithName(ChecklistsOverviewRoute.name);
          },
          child: const Text(
            'Cancel',
            style: TextStyle(color: darkColor),
          ),
        ),
      ],
    );
  }
}
