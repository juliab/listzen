import 'package:flutter/material.dart';

import 'package:listzen/presentation/core/theming/style.dart';

class CompletionStatusCheckbox extends StatelessWidget {
  final bool isCompleted;
  final Function(bool?)? onChanged;
  final bool insideCard;

  const CompletionStatusCheckbox({
    super.key,
    required this.isCompleted,
    this.onChanged,
    required this.insideCard,
  });

  @override
  Widget build(BuildContext context) {
    final size = insideCard ? 30.0 : 25.0;

    return Container(
      decoration: checkboxDecoration(insideCard: insideCard),
      width: size,
      height: size,
      child: Transform.scale(
        scale: 1.5,
        child: Semantics(
          identifier: 'item_edit_checkbox',
          child: Checkbox(
            onChanged: onChanged,
            value: isCompleted,
            checkColor: insideCard ? cardForegroundColor : greenColor,
          ),
        ),
      ),
    );
  }
}
