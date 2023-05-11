import 'package:flutter/material.dart';

import 'package:success_check/domain/checklists/checklist.dart';

class ChecklistStatistics extends StatelessWidget {
  final Checklist checklist;

  const ChecklistStatistics({
    super.key,
    required this.checklist,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      '${checklist.getNumberOfCompletedItems()} / ${checklist.items.length}',
      style: Theme.of(context).primaryTextTheme.bodySmall,
    );
  }
}
