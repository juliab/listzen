import 'package:flutter/material.dart';

import 'package:success_check/domain/checklists/checklist.dart';

class ChecklistStatisticsWidget extends StatelessWidget {
  final Checklist checklist;

  const ChecklistStatisticsWidget({
    super.key,
    required this.checklist,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      '${checklist.getNumberOfCompletedItems()} / ${checklist.items.length}',
      style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
    );
  }
}
