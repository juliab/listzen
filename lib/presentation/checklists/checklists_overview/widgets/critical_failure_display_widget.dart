import 'package:flutter/material.dart';
import 'package:success_check/domain/checklists/checklist_failure.dart';

class CriticalFailureDisplay extends StatelessWidget {
  final ChecklistFailure failure;

  const CriticalFailureDisplay({super.key, required this.failure});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            '😱',
            style: TextStyle(fontSize: 100),
          ),
          Text(
            failure.maybeMap(
                insufficientPermissions: (_) => 'Insufficient permissions',
                orElse: () => 'Unexpected error. \nPlease contact support.'),
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 24),
          ),
        ],
      ),
    );
  }
}
