import 'package:flutter/material.dart';
import 'package:listzen/domain/checklists/checklist.dart';
import 'package:listzen/presentation/core/theming/style.dart';

class ErrorChecklistCard extends StatelessWidget {
  final Checklist checklist;

  const ErrorChecklistCard({super.key, required this.checklist});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          borderRadius: cardBorderRadius,
          color: Theme.of(context).colorScheme.error,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Column(
            children: [
              Text(
                'Invalid checklist, please contact support.',
                style: Theme.of(context).primaryTextTheme.titleMedium,
              ),
              const SizedBox(height: 3),
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
      ),
    );
  }
}
