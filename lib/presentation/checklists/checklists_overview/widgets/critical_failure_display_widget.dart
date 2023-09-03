import 'package:flutter/material.dart';
import 'package:listzen/domain/checklists/checklist_failure.dart';

class CriticalFailureDisplay extends StatelessWidget {
  final ChecklistFailure failure;

  const CriticalFailureDisplay({super.key, required this.failure});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            failure.maybeMap(
                insufficientPermissions: (_) => 'Insufficient permissions',
                orElse: () => 'Unexpected error. \nPlease contact support.'),
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ],
      ),
    );
  }
}
