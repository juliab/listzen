import 'package:flutter/material.dart';

import 'package:success_check/presentation/core/theming/style.dart';

class CompletionStatusCheckbox extends StatelessWidget {
  final bool Function() isCompleted;
  final Function(bool?) onChanged;
  final bool insideCard;

  const CompletionStatusCheckbox({
    super.key,
    required this.isCompleted,
    required this.onChanged,
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
        child: Checkbox(
          onChanged: onChanged,
          value: isCompleted(),
          checkColor: insideCard ? whiteColorWithOpacity : Colors.green,
        ),
      ),
    );
  }
}
