import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:listzen/presentation/core/theming/style.dart';
import 'package:listzen/presentation/core/widgets/spacing.dart';
import 'package:listzen/presentation/core/widgets/standard_padding.dart';

class DeleteConfirmationDialog extends StatelessWidget {
  final String? title;
  final String text;
  final Function() onCancel;
  final Function() onDelete;

  const DeleteConfirmationDialog({
    super.key,
    this.title,
    required this.text,
    required this.onCancel,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
      content: Column(
        children: [
          if (title != null) ...[
            Text(
              title!,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: darkColor,
                  ),
            ),
            const StandardPadding.vertical(
              child: Divider(color: greyColor),
            ),
          ],
          Text(
            text,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: darkColor,
                ),
          ),
          const Spacing.vertical(factor: 0.5),
        ],
      ),
      actions: [
        TextButton(
          onPressed: onDelete,
          child: const Text(
            'Delete',
            style: TextStyle(color: errorColor),
          ),
        ),
        TextButton(
          onPressed: onCancel,
          child: const Text(
            'Cancel',
            style: TextStyle(color: darkColor),
          ),
        ),
      ],
    );
  }
}
