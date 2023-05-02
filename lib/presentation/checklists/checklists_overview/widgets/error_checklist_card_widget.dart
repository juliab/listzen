import 'package:flutter/material.dart';
import 'package:success_check/domain/checklists/checklist.dart';
import 'package:success_check/presentation/core/theming/themes.dart';

class ErrorChecklistCard extends StatelessWidget {
  final Checklist checklist;

  const ErrorChecklistCard({super.key, required this.checklist});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).colorScheme.error,
      shape: cardInputBorder,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Column(
          children: [
            Text(
              'Invalid checklist, please contact support.',
              style: Theme.of(context)
                  .primaryTextTheme
                  .bodyMedium
                  ?.copyWith(fontSize: 18),
            ),
            const SizedBox(height: 2),
            Text(
              'Details:',
              style: Theme.of(context).primaryTextTheme.bodyMedium,
            ),
            Text(
              checklist.failureOption.fold(() => '', (f) => f.toString()),
              style: Theme.of(context).primaryTextTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}