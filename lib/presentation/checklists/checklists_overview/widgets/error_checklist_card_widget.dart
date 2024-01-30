import 'package:flutter/material.dart';
import 'package:listzen/domain/checklists/checklist.dart';
import 'package:listzen/presentation/checklists/theming/style.dart';
import 'package:listzen/presentation/core/theming/style.dart';
import 'package:listzen/presentation/core/widgets/spacing.dart';
import 'package:listzen/presentation/core/widgets/standard_padding.dart';

class ErrorChecklistCard extends StatelessWidget {
  final Checklist checklist;

  const ErrorChecklistCard({
    super.key,
    required this.checklist,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: checklistCardHeight(context),
      width: double.infinity,
      child: Container(
        padding: StandardPadding.edgeInsetsSymmetric(
          horizontalFactor: 1.5,
          context: context,
        ),
        decoration: BoxDecoration(
          borderRadius: cardBorderRadius,
          color: Theme.of(context).colorScheme.error,
        ),
        child: StandardPadding.vertical(
          factor: 0.7,
          child: Column(
            children: [
              Text(
                'Invalid checklist, please contact support.',
                style: Theme.of(context).primaryTextTheme.titleMedium,
              ),
              const Spacing.vertical(factor: 0.2),
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
